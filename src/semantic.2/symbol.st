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

parent "semantic.t"

stub module Symbol
    import Error, statistics, allSymbols
    export PushSymbol, PopSymbol, EnterType,
	EnterAttribute, EnterKind, ChangeKind,
	ClearAttribute, SwapSymbols, SameSymbols, 
	SymbolIdent, SymbolKind, SymbolType, SymbolIndexx,
	SymStats, PushDummySymbol, PushCopyDummySymbol,
	SymbolHasAttribute, SymStackEmpty,
	EnterValue, SymbolValue, BodyNumber, EnterUnionBodyCount,
	DumpSymbols, ReturnSymbolAttributes

	procedure PushSymbol (ident : IdentifierIndex, symbol: SymbolIndex)

	procedure PushDummySymbol

	procedure PushCopyDummySymbol

	procedure PopSymbol

	procedure EnterType (typex: TypeIndex)

	procedure EnterAttribute (attribute: SymbolAttributes)

	procedure EnterKind (kind: SymbolKinds)

	procedure ChangeKind (kind: SymbolKinds)

	procedure ClearAttribute (attribute: SymbolAttributes)

	procedure SwapSymbols

	procedure SymStats

	procedure DumpSymbols

	function SymbolHasAttribute (attribute: SymbolAttributes) : boolean

	function SameSymbols : boolean

	procedure EnterValue (value : ValueIndex)

	function SymbolIdent : IdentifierIndex

	function SymbolKind : SymbolKinds

	function SymbolType : TypeIndex

	function SymbolIndexx : SymbolIndex

	function ReturnSymbolAttributes : SymbolAttributeSet

	function SymStackEmpty : boolean

	function SymbolValue : ValueIndex

	function BodyNumber : int

	procedure EnterUnionBodyCount (count : int)

end Symbol