% Turing+ v6.2, Sept 2022
% Copyright 1986 University of Toronto, 2022 Queen's University at Kingston
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy of this software
% and associated documentation files (the “Software”), to deal in the Software without restriction,
% including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
% and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
% subject to the following conditions:
% 
% The above copyright notice and this permission notice shall be included in all copies
% or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
% INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE
% AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
% DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

% The Turing S/SL (Syntax/Semantic Language) Interpreter (table walker)

% This program is the Turing interpreter for Syntax/Semantic Language programs.  
% A Parser will consist of this program plus the Syntax Language representation of the syntax of the language.
% Semantic Passes will each consist of this program plus the Syntax/Semantic Language 
% representation of the semantic processing to be done and the Semantic Mechanisms for the pass, 
% which implement the semantic operations required for the pass.  
% The S/SL Processor itself is a hybrid which parses and handles semantics in the same pass.							

% A Syntax/Semantic Language (S/SL) program must be processed by the S/SL Processor, 
% which will output Turing declarations for the constants defining the input tokens, output tokens, 
% error codes, type values and semantic operation codes used in the S/SL program and a file 
% containing the Turing array constant declaration for the S/SL table for the program.
% These declarations must be merged into this program, replacing the corresponding 
% dummy example declarations below.						

% Primitive S/SL Table Operations:
% These will remain the same independent of the
% pass and form the fundamental table operations. 

const *firstTableOperation := 0
const *firstPrimitiveOperation := 0
const *oCall := 0
const *oReturn := 1
const *oRuleEnd := 2
const *oJump := 3
const *oInput := 4
const *oInputAny := 5
const *oInputChoice := 6
const *oEmit := 7
const *oError := 8
const *oChoice := 9
const *oChoiceEnd := 10
const *oSetParameter := 11
const *oSetResult := 12
const *oSetResultFromInput := 13
const *lastPrimitiveOperation := 13

% Pass Dependent Semantic Operations:
% These will be different for each pass.  
% The semantic operations are implemented by the Semantic Mechanisms of the pass.
% There are two basic kinds of semantic operations:
% Update operations, which cause an update to the Semantic Mechanism, 
% and Choice operations, which return a value based on the state of the Semantic Mechanism 
% which is then used as the tag in a semantic choice.  
% Both Update and Choice operations may be parameterized by a single constant value.		

const *firstSemanticOperation := 14
const *oUpdateOperation := 14	% Example only 
const *oChoiceOperation := 15	% Example only 
const *lastSemanticOperation := 15
const *lastTableOperation := lastSemanticOperation

% The S/SL Table Size 
const *sslTableSize := 30000  % Maximum 

% The Syntax/Semantic Table
% This array constant declaration is generated by the S/SL Processor.					
const sslTable:
    array 0..1 of int := init (1, 0)	% Null table 

% Table Walker State 
var processing:
    boolean := true
var sslPointer:
    0 .. sslTableSize := 0
var operation:
    firstTableOperation .. lastTableOperation

% Tracing Control 
const traceFile := 3
var tracing:
    boolean := false

% Abort flag 
var aborted:
    boolean := false

% The S/SL Rule Call Stack:
% The Rule Call Stack implements Syntax/Semantic
% Language rule call and return.
% Each time an oCall operation is executed,
% the table return address is pushed onto the
% Rule Call Stack.  When an oReturn is executed,
% the return address is popped from the stack.
% An oReturn executed when the Rule Call Stack is
% empty terminates table execution.		

const *sslStackSize := 127
var sslStack:
    array 1 .. sslStackSize of 0 .. sslTableSize
var sslTop:
    0 .. sslStackSize := 0

% Choice Match Flag:
% Set by the Choice Handler to indicate whether
% a match was made or the otherwise path was taken.
% Set to true if a match was made and false otherwise.
% This flag is used in input choices to indicate
% whether the choice input token should be accepted or
% not.							
var choiceTagMatched:
    boolean

% Parameterized And Choice Semantic Operation Values:
% These are used to hold the decoded parameter value to
% a parameterized semantic operation and the result
% value returned by a choice semantic operation
% or rule respectively.					 
var parameterValue:
    int
var resultValue:
    int

% S/SL System Failure Codes 
const *firstFailureCode := 0
const *fSemanticChoiceFailed := 0
const *fChoiceRuleFailed := 1
const *lastFailureCode := 1

type FailureCodes : firstFailureCode..lastFailureCode

% Error Signal Codes 
const *firstErrorCode := 0
const *eNoError := 0
const *eSyntaxError := 1
const *ePrematureEndOfFile := 2
const *eExtraneousProgramText := 3
% Pass dependent non-fatal error codes go here 

const *firstFatalErrorCode := 10
const *eSslStackOverflow := 10
% Pass dependent fatal error codes go here 
const *lastErrorCode := 10

type ErrorCodes : firstErrorCode .. lastErrorCode

% Error Counter 
const *maxErrors := 20
var noErrors:
    0 .. maxErrors := 0

% Input Tokens 
const *firstInputToken := -1

% Nonexistent input token used only in syntax error recovery 
const *tSyntaxError := -1

% Compound Input Tokens 
const *firstCompoundToken := 0
const *tInteger := 0
% Other compound input tokens go here 
const *lastCompoundToken := 0

% Non-Compound Input Tokens 
const *tSemicolon := 10	% Example values only 
const *tNewLine := 11
const *tEndOfFile := 12
% Other non-compound input tokens go here 
const *lastInputToken := 12

type InputTokens : firstInputToken .. lastInputToken

% Input Interface 
const inStream: File := 1
var nextInputToken:
    InputTokens := tNewLine

% The Compound Input Token Buffer
% When a compound input token is accepted from
% the input stream, its associated value is
% saved in the compound token buffer for use by
% the Semantic Mechanisms of the pass.		
var compoundToken:
    InputTokens		% Last compound input token accepted 
var compoundValue:
    int	 	% Its associated value; often more than
			  simply an integer 

% Line Counters 
const *maxLineNumber := 9999
var nextLineNumber:
    0 .. maxLineNumber := 0
var lineNumber:
    0 .. maxLineNumber

% Output Tokens 
const *firstOutputToken := 0
const *aOutputToken := 0
const *lastOutputToken := 0

type OutputTokens : firstOutputToken .. lastOutputToken

% Output Interface 
const outStream: File := 2

% Variables Used in Syntax Error Recovery 
var newInputLine:
    boolean := false
var savedInputToken:
    InputTokens


procedure Error (errCode: ErrorCodes) 
    import (nextLineNumber, lineNumber, var noErrors,
	var processing, var aborted)
    % This procedure emits the error message associated with errCode 

    pre errCode not = eNoError

    put "Line " ..

    if errCode = eSyntaxError then
	% Syntax errors are in the lookahead token 
	put nextLineNumber ..
    else
	% Semantic errors are in the accepted token 
	put lineNumber ..
    end if

    put ": " ..

    case errCode of
	label eSyntaxError:
	    put "Syntax error"
	label ePrematureEndOfFile:
	    put "Unexpected end of file"
	label eExtraneousProgramText:
	    put "Extraneous program text"
	label eSslStackOverflow:
	    put "Nesting too deep"
    end case

    noErrors += 1

    if (errCode >= firstFatalErrorCode) or (noErrors = maxErrors) then
	put "*** Processing aborted"
	aborted := true
	processing := false
    end if
end Error


procedure AcceptInputToken 
    import (inStream, InputTokens, var nextInputToken,
	var nextLineNumber, var lineNumber, var newInputLine,
	var compoundToken, var compoundValue, tracing)
    % This procedure provides the interface to the
    % previous pass.  It is reponsible for handling
    % all input including line number indicators and
    % the values and text associated with input tokens.  

    pre nextInputToken not = tEndOfFile

    var acceptedToken:
	InputTokens
    var inputInt:
	int

    % Accept Token 
    acceptedToken := nextInputToken
    lineNumber := nextLineNumber

    % If the token is a compound token,
    % read its associated value		    
    if (acceptedToken > firstCompoundToken) and 
	    (acceptedToken < lastCompoundToken) then
	compoundToken := acceptedToken
	get :inStream, compoundValue
    end if

    % Update Line Number 
    lineNumber := nextLineNumber

    % Read Next Input Token 
    newInputLine := false
    loop
	get :inStream, inputInt
	nextInputToken := inputInt

	if nextInputToken = tNewLine then
	    % Update Line Counter and Set Flag 
	    newInputLine := true

	    if nextLineNumber < maxLineNumber then
		nextLineNumber += 1
	    else
		nextLineNumber := 0
	    end if
	end if

	exit when nextInputToken not = tNewLine
    end loop

    % Trace Input 
    if tracing then
	put "Input token accepted ", acceptedToken, "  Line ", lineNumber,
	    "  Next input token ", nextInputToken
    end if
end AcceptInputToken


procedure EmitOutputToken (emittedToken: OutputTokens) 
    import (outStream, tracing)
    % Emit an output token to the output stream 

    put :outStream, emittedToken

    % Trace Output 
    if tracing then
	put "Output token emitted ", emittedToken
    end if
end EmitOutputToken


% The constants, variables, types, modules and procedures 
% used in implementing the Semantic Mechanisms of the pass
% go here.  These implement the facilities used in the semantic
% operations.							


% Syntax Error Handling 

procedure SslGenerateCompoundInputToken (expectedToken: InputTokens)
    import (nextToken, var compoundToken, var compoundValue,
	var compoundText)
    pre (nextToken = tSyntaxError) or (nextToken = tEndOfFile)

    compoundToken := expectedToken
    compoundValue := 0

    case expectedToken of
	label tInteger:
	    compoundText := "0"
	label tString:
	    compoundText := "'?'"
	label tIdent:
	    compoundText := "IL"
    end case
end SslGenerateCompoundInputToken


procedure SslSyntaxError
    import (operation, var nextToken, sslTable,
	sslPointer, Error, var processing, var savedToken, var newInputLine,
	var lineNumber, nextLineNumber, SslGenerateCompoundInputToken,
	AcceptInputToken)

    % This procedure handles syntax errors in the input
    % to the Parser pass, for Semantic passes this procedure
    % will simply assert false since a syntax error in
    % input would indicate an error in the previous pass.    

    % Syntax error recovery:
    % When a mismatch occurs between the the next input
    % token and the syntax table, the following recovery
    % is employed.						

    % If the expected token is tNewLine then if there
    % has been no previous syntax error on the line,
    % ignore the error.  (A missing logical new line
    % is not a real error.)					

    % If the expected token is tNewLine or tSemicolon and
    % a syntax error has already been detected on the
    % current logical line (flagged by nextToken =
    % tSyntaxError), then flush the input     exit when a
    % new line or end of file is found.			

    % Otherwise, if this is the first syntax error
    % detected on the line (flagged by nextToken
    % not = tSyntaxError), then if the input token
    % is tEndOfFile then emit the ePrematureEndOfFile
    % error code and terminate execution.  Otherwise,
    % emit the eSyntaxError error code and set
    % the nextToken to tSyntaxError to prevent
    % further input     exit when the expected input is
    % tSemicolon or tNewLine.				

    % If the expected token is not tSemicolon nor
    % tNewLine and a syntax error has already been
    % detected on the current line (flagged by
    % nextToken = tSyntaxError), then do nothing
    % and continue as if the expected token had
    % been matched.					

    pre (operation = oInput) or (operation = oInputAny)

    if nextToken = tSyntaxError then
	% Currently recovering from syntax error 
	if (sslTable(sslPointer) = tNewLine)
		or (sslTable(sslPointer) = tSemicolon) then
	    % Complete recovery by synchronizing
	    % input to a new line			 
	    nextToken := savedToken
	    newInputLine := false
	    loop
		exit when (nextToken = tSemicolon) or
		    (nextToken = tEndOfFile) or
		    newInputLine
		AcceptInputToken
	    end loop
	end if
    else
	% First syntax error on the line 
	if sslTable(sslPointer) = tNewLine then
	    % Ignore missing logical newlines 
	elseif nextToken = tEndOfFile then
	    % Flag error and terminate processing 
	    Error (ePrematureEndOfFile)
	    processing := false
	else
	    Error (eSyntaxError)
	    savedToken := nextToken
	    nextToken := tSyntaxError
	    lineNumber := nextLineNumber
	end if
    end if

    % If the expected input token is a compound
    % token, generate a dummy one.		
    if (sslTable(sslPointer) >= firstCompoundToken) and
	    (sslTable(sslPointer) <= lastCompoundToken) then
	SslGenerateCompoundInputToken (sslTable(sslPointer))
    end if
end SslSyntaxError


procedure SslTrace
    import (sslPointer, operation, sslTable)
    put "Table index ", sslPointer-1, "  Operation ", operation, "  Argument ",
	sslTable(sslPointer)
end  SslTrace


procedure SslFailure (failCode: FailureCodes)
    import (lineNumber, SslTrace)

    put "### S/SL program failure:  " ..

    case failCode of
	label fSemanticChoiceFailed:
	    put "Semantic choice failed"
	label fChoiceRuleFailed:
	    put "Choice rule returned without a value"
    end case

    put "while processing line ", lineNumber

    SslTrace
    assert false
end SslFailure


procedure SslChoice (choiceTag: int)
    import (var sslPointer, sslTable, var choiceTagMatched)

    % This procedure performs both input and semantic
    % choices.  It sequentially tests each alternative
    % value against the tag value, and when a match is
    % found, performs a branch to the corresponding
    % alternative path.  If none of the alternative
    % values matches the tag value, sslTable interpretation
    % proceeds to the operation immediately following
    % the list of alternatives (normally the otherwise
    % path).  The flag choiceTagMatched is set to true
    % if a match is found and false otherwise.		

    var numberOfChoices:
	int
    var choicePointer:
	0..sslTableSize

    choicePointer := sslTable(sslPointer)
    numberOfChoices := sslTable(choicePointer)
    choicePointer += 1
    choiceTagMatched := false

    loop
	if sslTable(choicePointer) = choiceTag then
	    choicePointer := sslTable(choicePointer+1)
	    choiceTagMatched := true
	    numberOfChoices := 0
	else
	    choicePointer += 2
	    numberOfChoices -= 1
	end if
	exit when numberOfChoices = 0
    end loop

    sslPointer := choicePointer
end SslChoice


procedure SslWalker 
    import (inStream, outStream, traceFile, var operation,
	sslTable, var sslPointer, var processing, aborted,
	var tracing, var sslStack, var sslTop, nextInputToken,
	choiceTagMatched, var parameterValue, var resultValue,
	AcceptInputToken, EmitOutputToken, Error, SslChoice,
	SslSyntaxError, SslFailure, SslTrace)

    var argString: string

    % Trace Execution if Required 
    get :traceFile, argString

    if argString(1) = "t" then
	tracing := true
    end if

    % Initialize Input/Output 
    AcceptInputToken

    % Walk the S/SL Table 

    loop
	exit when not processing

	operation := sslTable(sslPointer)
	sslPointer += 1

	% Trace Execution 
	if tracing then
	    SslTrace
	end if

	case operation of
	    label oCall:
		if sslTop < sslStackSize then
		    sslTop += 1
		    sslStack(sslTop) := sslPointer + 1
		    sslPointer := sslTable(sslPointer)
		else
		    Error (eSslStackOverflow)
		    processing := false
		end if

	    label oReturn:
		if sslTop = 0 then
		    % Return from main S/SL procedure 
		    processing := false
		else
		    sslPointer := sslStack(sslTop)
		    sslTop -= 1
		end if

	    label oRuleEnd:
		SslFailure (fChoiceRuleFailed)

	    label oJump:
		sslPointer := sslTable(sslPointer)

	    label oInput:
		if sslTable(sslPointer) = nextInputToken then
		    AcceptInputToken
		else
		    % Syntax error in input 
		    SslSyntaxError
		end if

		sslPointer += 1

	    label oInputAny:
		if nextInputToken not = tEndOfFile then
		    AcceptInputToken
		else
		    % Premature end of file 
		    SslSyntaxError
		end if

	    label oInputChoice:
		SslChoice (nextInputToken)

		if choiceTagMatched then
		    AcceptInputToken
		end if

	    label oEmit:
		EmitOutputToken (sslTable(sslPointer))
		sslPointer += 1

	    label oError:
		Error (sslTable(sslPointer))
		sslPointer += 1

	    label oChoice:
		SslChoice (resultValue)

	    label oChoiceEnd:
		SslFailure (fSemanticChoiceFailed)

	    label oSetParameter:
		parameterValue := sslTable(sslPointer)
		sslPointer += 1

	    label oSetResult:
		resultValue := sslTable(sslPointer)
		sslPointer += 1

	    label oSetResultFromInput:
		resultValue := nextToken

	    % The Following Are Pass Dependent
	      Semantic Mechanism Operations	  

	    label oUpdateOperation:
		% Execute the Update Semantic Operation
		% The parameter value for parameterized
		% operations is in "parameterValue"		

	    label oChoiceOperation:
		% Execute the Choice Semantic Operation
		% Leave the result value in "resultValue".
		% The parameter value for parameterized 
		% operations is in "parameterValue"		 
		
	end case

    end loop

    if (nextInputToken not = tEndOfFile) and not aborted then
	Error (eExtraneousProgramText)
    end if

end SslWalker


% Walk the S/SL Table 
SslWalker
