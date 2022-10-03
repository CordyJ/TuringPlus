	% { Semantic Operations }
	const *firstSemanticOperation := 14
	const *oScopePush := 15
	const *oScopePushCopyScope := 16
	const *oScopePushTypeFormals := 17
	const *oScopePushTypeGrants := 18
	const *oScopePushTypeImports := 19
	const *oScopePushTypeExports := 20
	const *oScopePushTypeFields := 21
	const *oScopePushResultSymbolScope := 22
	const *oScopePop := 23
	const *oScopeEnterSymbol := 24
	const *oScopeAutoImportEnterSymbol := 25
	const *oScopeReplaceCountSymbol := 26
	const *oScopeClose := 27
	const *oScopeMergeScopes := 28
	const *oScopeSave := 29
	const *oScopeStrip := 30
	const *oScopeChooseContainsSymbol := 31
	const *oScopeChooseContainsSymbolIdent := 32
	const *oPredefinedChoose := 33
	const *oPredefinedChooseFunction := 34
	const *oPredefinedChooseStringResult := 35
	const *oSymbolPushLocalScope := 36
	const *oSymbolPushEnclosingLocalScope := 37
	const *oSymbolPushEnclosingEnclosingLocalScope := 38
	const *oSymbolPushClosedScope := 39
	const *oSymbolPushEnclosingClosedScope := 40
	const *oSymbolPushGlobalScope := 41
	const *oSymbolPushDummy := 42
	const *oSymbolPushDummyCopy := 43
	const *oSymbolPushNew := 44
	const *oSymbolPushCopy := 45
	const *oSymbolPushCountClosedScope := 46
	const *oSymbolPushCountScope := 47
	const *oSymbolPushTypeSymbol := 48
	const *oSymbolPushBoundSymbol := 49
	const *oSymbolMakeUpNameAndPushNew := 50
	const *oSymbolEnterType := 51
	const *oSymbolEnterAttribute := 52
	const *oSymbolEnterLeftResultSymbolScope := 53
	const *oSymbolEnterLeftSymbolBoundTo := 54
	const *oSymbolEnterKind := 55
	const *oSymbolEnterScopeLevel := 56
	const *oSymbolEnterScopeLevelPlus1 := 57
	const *oSymbolEnterScopeLevelPlus2 := 58
	const *oSymbolChangeKind := 59
	const *oSymbolClearAttribute := 60
	const *oSymbolPop := 61
	const *oSymbolPopAndChooseKind := 62
	const *oSymbolChooseKind := 63
	const *oSymbolChooseAttribute := 64
	const *oSymbolChooseSameSymbols := 65
	const *oSymbolResolveKind := 66
	const *oSymbolSwapSymbols := 67
	const *oSymbolBodyDeclaredAtSameScopeLevel := 68
	const *oSymbolBodyDeclaredAtSameScopeLevelMinus1 := 69
	const *oSymbolChooseUnqualifiedExport := 70
	const *oSymbolIncrementUnqualifiedExport := 71
	const *oSymbolDecrementUnqualifiedExport := 72
	const *oTypePushBuiltIn := 73
	const *oTypePushNew := 74
	const *oTypePushComponentType := 75
	const *oTypePushResultType := 76
	const *oTypePushSymbolType := 77
	const *oTypeReplaceBuiltIn := 78
	const *oTypeReplaceComponentType := 79
	const *oTypeReplaceResultType := 80
	const *oTypeEnterSymbol := 81
	const *oTypeEnterFieldsScope := 82
	const *oTypeEnterFormalsScope := 83
	const *oTypeEnterGrantScope := 84
	const *oTypeEnterImportsScope := 85
	const *oTypeEnterLeftComponentType := 86
	const *oTypeEnterLeftResultType := 87
	const *oTypeEnterLeftRootType := 88
	const *oTypeEnterAttribute := 89
	const *oTypeEnterKind := 90
	const *oTypeEnterSetBase := 91
	const *oTypeClearAttribute := 92
	const *oTypePop := 93
	const *oTypePopAndChooseKind := 94
	const *oTypeChooseKind := 95
	const *oTypeChooseLeftKind := 96
	const *oTypeChooseAttribute := 97
	const *oTypeCopy := 98
	const *oTypeCopyLeftType := 99
	const *oTypeSwapTypes := 100
	const *oCountPushZero := 101
	const *oCountPushScopeNumberOfEntries := 102
	const *oCountPushClosedScopeNumberOfEntries := 103
	const *oCountDecrement := 104
	const *oCountIncrement := 105
	const *oCountCopy := 106
	const *oCountPop := 107
	const *oCountChooseZero := 108
	const *oCountTopTwoValuesSame := 109
	const *oLoopPush := 110
	const *oLoopPop := 111
	const *oLoopChooseDepth := 112
	const *oActualsPush := 113
	const *oActualsBeginActual := 114
	const *oActualsEndActual := 115
	const *oActualsRemoveActual := 116
	const *oActualsSetAttribute := 117
	const *oActualsEnterDummy := 118
	const *oActualsEnterSymbol := 119
	const *oActualsPop := 120
	const *oActualsFlush := 121
	const *oActualsChooseActualOverlaps := 122
	const *oActualsChooseInActual := 123
	const *oContextSet := 124
	const *oContextClear := 125
	const *oContextPush := 126
	const *oContextPop := 127
	const *oContextChoose := 128
	const *oEmitInteger := 129
	const *oEmitString := 130
	const *oEmitChar := 131
	const *oEmitReal := 132
	const *oEmitSymbol := 133
	const *oEmitExtraIdentSymbol := 134
	const *oEmitPredefined := 135
	const *oEmitAliasCheck := 136
	const *oEmitLine := 137
	const *oEmitBufferPush := 138
	const *oEmitBufferEmit := 139
	const *oEmitBufferPop := 140
	const *oEmitBufferPushDirect := 141
	const *oEmitBufferPopDirect := 142
	const *oCheckDump := 143
	const *lastSemanticOperation := 144

	% { Input Tokens }

	% { Output Tokens }

	% { Input/Output Tokens }
	const *firstOutputToken := 0
	const *aIdent := 0
	const *firstCompoundToken := 0
	const *aPredefinedId := 1
	const *aIntegerLit := 2
	const *aStringLit := 3
	const *aCharLit := 4
	const *aRealLit := 5
	const *aDataDescriptor := 6
	const *aRoutineIndex := 7
	const *aIdentText := 8
	const *aStabInformation := 9
	const *aEndSubstring := 10
	const *lastCompoundToken := 10
	const *firstNonCompoundToken := 20
	const *aAdd := 20
	const *aAddressint := 21
	const *aAbs := 22
	const *aAliasCheck := 23
	const *aAll := 24
	const *aAllocate := 25
	const *aAnd := 26
	const *aAndEqual := 27
	const *aArray := 28
	const *aAsm := 29
	const *aAssert := 30
	const *aAssign := 31
	const *aAssignInverted := 32
	const *aAt := 33
	const *aBegin := 34
	const *aBeginAsm := 35
	const *aBind := 36
	const *aBits := 37
	const *aBody := 38
	const *aBoolean := 39
	const *aBooleanAndEqual := 40
	const *aBooleanOrEqual := 41
	const *aByReference := 42
	const *aCall := 43
	const *aCallVariable := 44
	const *aCase := 45
	const *aCaseBody := 46
	const *aChar := 47
	const *aChild := 48
	const *aChecked := 49
	const *aClose := 50
	const *aCollection := 51
	const *aColon := 52
	const *aCompile := 53
	const *aConcatenate := 54
	const *aConcatenateAssign := 55
	const *aCondition := 56
	const *aConst := 57
	const *aDeallocate := 58
	const *aDecreasing := 59
	const *aDeferred := 60
	const *aDiv := 61
	const *aDivEqual := 62
	const *aDivideReal := 63
	const *aElse := 64
	const *aElsif := 65
	const *aEndAsm := 66
	const *aEndAliasCheck := 67
	const *aEndArrayIndexList := 68
	const *aEndBegin := 69
	const *aEndBind := 70
	const *aEndCase := 71
	const *aEndCaseBody := 72
	const *aEndEnum := 73
	const *aEndExport := 74
	const *aEndExpression := 75
	const *aEndExpressionList := 76
	const *aEndFor := 77
	const *aEndGet := 78
	const *aEndGrant := 79
	const *aEndIf := 80
	const *aEndImport := 81
	const *aEndInit := 82
	const *aEndLoop := 83
	const *aEndModule := 84
	const *aEndMonitor := 85
	const *aEndOpen := 86
	const *aEndPut := 87
	const *aEndRead := 88
	const *aEndRecord := 89
	const *aEndResult := 90
	const *aEndSubprogramBody := 91
	const *aEndSubs := 92
	const *aEndUnion := 93
	const *aEndUnionLabelBody := 94
	const *aEndWrite := 95
	const *aEnum := 96
	const *aEqual := 97
	const *aExit := 98
	const *aExitWhen := 99
	const *aExponentiate := 100
	const *aExponentiateEqual := 101
	const *aExport := 102
	const *aExternal := 103
	const *aExternalAddress := 104
	const *aFalse := 105
	const *aField := 106
	const *aFor := 107
	const *aFork := 108
	const *aForkAddress := 109
	const *aForkStackSize := 110
	const *aForkStatus := 111
	const *aForRange := 112
	const *aForward := 113
	const *aFree := 114
	const *aFunction := 115
	const *aGet := 116
	const *aGrant := 117
	const *aGreater := 118
	const *aGreaterEqual := 119
	const *aHandler := 120
	const *aHash := 121
	const *aIf := 122
	const *aImply := 123
	const *aImport := 124
	const *aIn := 125
	const *aInfixAnd := 126
	const *aInfixBooleanCompare := 127
	const *aInfixCompare := 128
	const *aInfixImply := 129
	const *aInfixOr := 130
	const *aInit := 131
	const *aInt := 132
	const *aInterruptNumber := 133
	const *aInvariant := 134
	const *aIs := 135
	const *aLabel := 136
	const *aLess := 137
	const *aLessEqual := 138
	const *aLogicalAnd := 139
	const *aLogicalOr := 140
	const *aLogicalXor := 141
	const *aLoop := 142
	const *aMax := 143
	const *aMin := 144
	const *aMinus := 145
	const *aMinusEqual := 146
	const *aMissingStub := 147
	const *aMod := 148
	const *aModEqual := 149
	const *aModule := 150
	const *aMonitor := 151
	const *aMonitorPriority := 152
	const *aMultiply := 153
	const *aNat := 154
	const *aNew := 155
	const *aNil := 156
	const *aNoAlias := 157
	const *aNoEnclosure := 158
	const *aNonManifest := 159
	const *aNonScalar := 160
	const *aNot := 161
	const *aNotEqual := 162
	const *aNotIn := 163
	const *aOpaque := 164
	const *aOpen := 165
	const *aOr := 166
	const *aOrEqual := 167
	const *aOtherwise := 168
	const *aPacked := 169
	const *aParent := 170
	const *aPause := 171
	const *aPervasive := 172
	const *aPlus := 173
	const *aPlusEqual := 174
	const *aPointer := 175
	const *aPost := 176
	const *aPre := 177
	const *aPriority := 178
	const *aProcedure := 179
	const *aProcess := 180
	const *aProcessStackSize := 181
	const *aPut := 182
	const *aPutContinue := 183
	const *aQuit := 184
	const *aQuitReason := 185
	const *aRangeCheck := 186
	const *aRangeCheck2 := 187
	const *aRead := 188
	const *aReadWriteSize := 189
	const *aReadWriteSizeResult := 190
	const *aReadWriteStatus := 191
	const *aReal := 192
	const *aRealDivEqual := 193
	const *aRecord := 194
	const *aRecordElementType := 195
	const *aRegister := 196
	const *aResult := 197
	const *aReturn := 198
	const *aSeek := 199
	const *aSet := 200
	const *aSetDifference := 201
	const *aSetDifferenceAssign := 202
	const *aSetGreaterEqual := 203
	const *aSetIntersection := 204
	const *aSetIntersectionAssign := 205
	const *aSetLessEqual := 206
	const *aSetUnion := 207
	const *aSetUnionAssign := 208
	const *aSetXor := 209
	const *aSetXorAssign := 210
	const *aShiftLeft := 211
	const *aShiftLeftEqual := 212
	const *aShiftRight := 213
	const *aShiftRightEqual := 214
	const *aSignal := 215
	const *aSkip := 216
	const *aStar := 217
	const *aStarEqual := 218
	const *aStorageSize := 219
	const *aStreamNumber := 220
	const *aString := 221
	const *aStringSizeBound := 222
	const *aStub := 223
	const *aSubrange := 224
	const *aSubs := 225
	const *aSubstring := 226
	const *aSubtract := 227
	const *aTag := 228
	const *aTagCheck := 229
	const *aTell := 230
	const *aTimeout := 231
	const *aTrue := 232
	const *aType := 233
	const *aTypeCheat := 234
	const *aTypeCheatSize := 235
	const *aUnchecked := 236
	const *aUninitialize := 237
	const *aUnion := 238
	const *aUnionLabelBody := 239
	const *aUnqualified := 240
	const *aVar := 241
	const *aVarInit := 242
	const *aVaryingParameter := 243
	const *aWait := 244
	const *aWaitPriorityOrTimeout := 245
	const *aWrite := 246
	const *aXor := 247
	const *aXorEqual := 248
	const *aFileName := 252
	const *aNewLine := 253
	const *aNewFile := 254
	const *aEndOfFile := 255
	const *tSyntaxError := -1
	const *lastOutputToken := 255

	% { Error Codes }
	const *firstErrorCode := 0
	const *eNoError := 0
	const *firstWarningCode := 10
	const *eIOIllegalInFunction := 10
	const *ePredefinedMisused := 11
	const *eBodyIdentDoesNotMatch := 12
	const *eProcedureEndIdentDoesNotMatch := 13
	const *eEndNameNotModuleName := 14
	const *eEndNameNotMonitorName := 15
	const *eSymbolPreviouslyImported := 16
	const *eBoundVariablesOverlap := 17
	const *eReferenceActualsOverlap := 18
	const *eReferenceActualOverlapsImports := 19
	const *eFunctionTransitivelyImportsSpecialVar := 20
	const *ePotentialAliasDueToParaImportActualOverlap := 21
	const *eParametricImportOverlapsImports := 22
	const *eRecursivePassesGlobalVarByRef := 23
	const *eAutoImportPassesItself := 24
	const *eModuleInvariantNotLegal := 25
	const *eCannotImportVar := 26
	const *eDeviceMonitorCallsStubModule := 27
	const *firstNonSeriousErrorCode := 28
	const *eInvisibleSymbol := 28
	const *eAssignmentToReadOnly := 29
	const *eReadOnlyVarImport := 30
	const *eVarBindToReadOnly := 31
	const *eReadOnlyModuleProcedureCall := 32
	const *eInvisibleImportedSymbol := 33
	const *eReadOnlyCollectionNewOrFree := 34
	const *eReadOnlyOrConstantNewOrFree := 35
	const *eReadOnlyPassedToVarFormal := 36
	const *eFunctionImportsVar := 37
	const *eCannotExportVariable := 38
	const *eFunctionTransitivelyImportsVar := 39
	const *eVarFormalIllegalInFunction := 40
	const *eVarImportReadOnlyInCurrentContext := 41
	const *eInvisibleImportByParametric := 42
	const *eVarParametricImportReadOnlyHere := 43
	const *eCollectionsNotAllowedInSubprograms := 44
	const *eFunctionCannotImportAForwardProcedure := 45
	const *eMonitorEntryInvokedWithinMonitor := 46
	const *eDeviceMonitorCallsMonitor := 47
	const *eDeviceMonitorCallsDangerousRoutine := 48
	const *eUnimportedSymbol := 49
	const *firstSeriousErrorCode := 50
	const *eNamedTypeNotAType := 50
	const *eUndeclaredSymbol := 51
	const *eSymbolPreviouslyDeclared := 52
	const *eModuleFieldNotFound := 53
	const *eUndeclaredRecordField := 54
	const *eNonRecordField := 55
	const *eNonExpressionSubprogram := 56
	const *eNonExpressionVariable := 57
	const *eSymbolNotInEnumeratedRange := 58
	const *eCallToNonProcedure := 59
	const *eConstantPassedToVarFormal := 60
	const *eAssignmentToTag := 61
	const *eBodyNotProcedure := 62
	const *eBodyNotFunction := 63
	const *eIllegalSubprogramBodyname := 64
	const *eIllegalUseOfPredefined := 65
	const *eForwardMustBeResolvedAtSameScope := 66
	const *eNonVariableBind := 67
	const *eForwardTypeInCollectionPreviouslyDefined := 68
	const *eForwardTypeNameReused := 69
	const *eUndeclaredUnionField := 70
	const *eNonCollectionPointer := 71
	const *eMissingActuals := 72
	const *eIllegalSubscripts := 73
	const *eTooManySubscripts := 74
	const *eTooFewSubscripts := 75
	const *eIllegalUseOfAll := 76
	const *eIllegalUseOfSubstring := 77
	const *eIllegalAssignment := 78
	const *eNonCollectionNewOrFree := 79
	const *eNonPointerNewOrFree := 80
	const *eNonVariableNewOrFree := 81
	const *eNonTagInTagStmt := 82
	const *eReadOnlyTag := 83
	const *eValuelessFunctionReturn := 84
	const *eReturnValueInNonFunction := 85
	const *eReturnInModule := 86
	const *eExitNotInLoop := 87
	const *eIllegalPutGetOperandType := 88
	const *eIllegalTypeCheat := 89
	const *eTooManyActuals := 90
	const *eTooFewActuals := 91
	const *eNonVariablePassedToVarFormal := 92
	const *eNonVariablePassedToReferenceParameter := 93
	const *eExpressionPassedByReference := 94
	const *eIllegalVarImport := 95
	const *eForwardInImportImproperlyUsed := 96
	const *eUnresolvedExportedSymbol := 97
	const *eExportedModule := 98
	const *eExportedMonitor := 99
	const *eInitOnlyInPostAssertOrInvariant := 100
	const *eUnresolvedForwardSubprogram := 101
	const *eUnresolvedExternalSubprogram := 102
	const *eForwardInImportsNotRefined := 103
	const *eIllegalUseOfForwardType := 104
	const *eFormalImported := 105
	const *eUnresolvedForwardType := 106
	const *eUnresolvedForwardInCollection := 107
	const *eResultOnlyUsedInPost := 108
	const *eMissingValue := 109
	const *eImportConflictsWithLocalDeclaration := 110
	const *eUnqualifiedNameConflicts := 111
	const *eBodyModuleMustBeStubModule := 112
	const *eBodyMonitorMustBeStubMonitor := 113
	const *eCantGrant := 114
	const *eCantGrantVar := 115
	const *eMoreThanOneModuleBody := 116
	const *eMoreThanOneMonitorBody := 117
	const *eReadOnlyVarGrant := 118
	const *eUnresolvedGrantSymbol := 119
	const *eSymbolNotGrantedVar := 120
	const *eSymbolNotGrantedOrPervasive := 121
	const *eStubConstantMustBeCompileTime := 122
	const *eUnqualifiedBodyNotFound := 123
	const *eRedeclarationOfStubSubprogramHasDifferentFormals := 124
	const *eConditionsMustBeDeferredInDeviceMonitor := 125
	const *eInterruptProcedureCannotBeExported := 126
	const *eInterruptProcedureOnlyInDeviceMonitor := 127
	const *eReadOnlyOpenVariable := 128
	const *eOpenNotVariable := 129
	const *eIOStatusNotVariable := 130
	const *eReadOnlyIOStatusVariable := 131
	const *eReadOnlyTellResultVariable := 132
	const *eTellResultNotVariable := 133
	const *eReadOnlyReadWriteSizeResult := 134
	const *eReadWriteSizeResultNotVariable := 135
	const *eReadWriteItemNotVariable := 136
	const *eReadOnlyReadItem := 137
	const *eForkOfNonProcess := 138
	const *eReadOnlyForkStatusOrAddress := 139
	const *eForkStatusOrAddressNotVariable := 140
	const *eSignalWaitReadOnlyCondition := 141
	const *eSignalWaitNotCondition := 142
	const *eBitsTypeMustNotHaveDotDot := 143
	const *eReferenceToInterruptProcedure := 144
	const *eOrdOnlyAppliesToSingleCharacterStrings := 145
	const *firstFatalErrorCode := 146
	const *eSymbolStackOverflow := 146
	const *eCountValueOverflow := 147
	const *eCountOverflow := 148
	const *eSymbolTableOverflow := 149
	const *eNoFreeDummySymbols := 150
	const *eTypeStackOverflow := 151
	const *eTypeTableOverflow := 152
	const *eScopeDisplayOverflow := 153
	const *eScopeSymbolOverflow := 154
	const *eScopeTableSymbolOverflow := 155
	const *eScopeTableOverflow := 156
	const *eActualsDisplayOverflow := 157
	const *eActualsOverflow := 158
	const *eActualsSymbolOverflow := 159
	const *eSslStackOverflow := 160
	const *eLoopOverflow := 161
	const *eEmitBufferOverflow := 162
	const *lastErrorCode := 162

	% { Type Values }
	const *firstFailureCode := 0
	const *fSemanticChoiceFailed := 0
	const *fChoiceRuleFailed := 1
	const *fInputStreamSyntaxError := 2
	const *fUnimplementedOperation := 3
	const *lastFailureCode := 3
	const *no := 0
	const *yes := 1
	const *maybe := 2
	const *zero := 0
	const *firstPredefinedId := 0
	const *pAbs := 0
	const *pAddr := 1
	const *pArctan := 2
	const *pArctand := 3
	const *pCeil := 4
	const *pChr := 5
	const *pCos := 6
	const *pCosd := 7
	const *pEmpty := 8
	const *pEof := 9
	const *pErealstr := 10
	const *pExp := 11
	const *pFloor := 12
	const *pFrealstr := 13
	const *pGetpriority := 14
	const *pIndex := 15
	const *pIntreal := 16
	const *pIntstr := 17
	const *pLength := 18
	const *pLn := 19
	const *pLower := 20
	const *pMax := 21
	const *pMin := 22
	const *pNatreal := 23
	const *pNatstr := 24
	const *pNil := 25
	const *pOrd := 26
	const *pPred := 27
	const *pRand := 28
	const *pRandInt := 29
	const *pRandNext := 30
	const *pRandSeed := 31
	const *pRandomize := 32
	const *pRealstr := 33
	const *pRepeat := 34
	const *pRound := 35
	const *pSetpriority := 36
	const *pSign := 37
	const *pSin := 38
	const *pSind := 39
	const *pSize := 40
	const *pSqrt := 41
	const *pStrint := 42
	const *pStrnat := 43
	const *pStrdelete := 44
	const *pStrmove := 45
	const *pStrreal := 46
	const *pStrreplace := 47
	const *pSucc := 48
	const *pUpper := 49
	const *lastPredefinedId := 49
	const *firstSymbolKind := 0
	const *sVariable := 0
	const *sReadOnlyVariable := 1
	const *sConstant := 2
	const *sType := 3
	const *sCollection := 4
	const *sReadOnlyCollection := 5
	const *sProcedure := 6
	const *sProcedureCall := 7
	const *sFunction := 8
	const *sFunctionCall := 9
	const *sModule := 10
	const *sReadOnlyModule := 11
	const *sMonitor := 12
	const *sReadOnlyMonitor := 13
	const *sProcess := 14
	const *sProcessCall := 15
	const *sEnumeratedElement := 16
	const *sResult := 17
	const *sInit := 18
	const *sTag := 19
	const *sExport := 20
	const *sForward := 21
	const *sInvisible := 22
	const *sUndefined := 23
	const *sNotFound := 24
	const *lastSymbolKind := 24
	const *firstSymbolAttribute := 0
	const *saPervasive := 0
	const *saUnqualified := 1
	const *saExternal := 2
	const *saImported := 3
	const *saAutoImportedVar := 4
	const *saForwardAutoImports := 5
	const *saFormal := 6
	const *saBinds := 7
	const *saBound := 8
	const *saGrant := 9
	const *saGrantVar := 10
	const *saChild := 11
	const *saProcedureImportsSpecialVar := 12
	const *saCannotImportVar := 13
	const *saForward := 14
	const *saPredefined := 15
	const *saMonitorEntry := 16
	const *saTypeCheat := 17
	const *saExport := 18
	const *saDangerousToCallFromDeviceMonitor := 19
	const *saInterruptProcedure := 20
	const *saBoundVar := 21
	const *saDeferredForward := 22
	const *saWasExternal := 23
	const *saUnqualBody := 24
	const *saWasUnqualBody := 25
	const *lastSymbolAttribute := 25
	const *firstTypeKind := 0
	const *tProcedure := 0
	const *tFunction := 1
	const *tProcess := 2
	const *tModule := 3
	const *tMonitor := 4
	const *tArray := 5
	const *tCollection := 6
	const *tRecord := 7
	const *tUnion := 8
	const *tEnumeratedRange := 9
	const *tSet := 10
	const *tString := 11
	const *tChar := 12
	const *tCondition := 13
	const *tEnumeratedElement := 14
	const *tPointer := 15
	const *tScalar := 16
	const *tVaryingParameter := 17
	const *tNotFound := 18
	const *tError := 19
	const *lastTypeKind := 19
	const *firstTypeAttribute := 0
	const *taUnresolvedImports := 0
	const *taRecursive := 1
	const *taReference := 2
	const *taCompile := 3
	const *taForward := 4
	const *taTypeCheat := 5
	const *taStub := 6
	const *lastTypeAttribute := 6
	const *aaVar := 0
	const *aaSubscript := 1
	const *firstContext := 0
	const *cPervasive := 0
	const *cAliasChecked := 1
	const *cPost := 2
	const *cAssert := 3
	const *cFunction := 4
	const *cAutoImport := 5
	const *cCompile := 6
	const *cForwardFound := 7
	const *cProcessingParameters := 8
	const *cProcessingPredefined := 9
	const *cProcedureImports := 10
	const *cSubprogramStubBody := 11
	const *cDeviceMonitor := 12
	const *cChild := 13
	const *cPrintedErrorMsg := 14
	const *cDontEnterUnimportedSymbols := 15
	const *lastNonStackContext := 15
	const *firstStackContext := 16
	const *cProcessChildImports := 16
	const *cInBody := 17
	const *cModuleInvariantOK := 18
	const *cPredefinedReturnsString := 19
	const *lastContext := 19