	% { Semantic Operations }
	const *oSaveIdent := 14
	const *oEmitSavedIdent := 15
	const *oEmitIdent := 16
	const *oEmitIntegerLit := 17
	const *oEmitRealLit := 18
	const *oEmitStringLit := 19
	const *oEmitCharLit := 20
	const *oEmitLine := 21
	const *oEmitIdentText := 22
	const *oEmitTypeSizeAsIntegerLit := 23
	const *oEmitFakeParent := 24
	const *oSeparateCompilationEnterAlternateFileAndMark := 25
	const *oSeparateCompilationIsAlternateFile := 26
	const *oSeparateCompilationSwitchToAlternateFile := 27
	const *oSeparateCompilationExitProgram := 28
	const *oSeparateCompilationEnterParent := 29
	const *oSeparateCompilationExitParent := 30
	const *oSeparateCompilationEnterChild := 31
	const *oSeparateCompilationExitChild := 32
	const *oSeparateCompilationChildMatchesParent := 33
	const *oSeparateCompilationSetOriginalFile := 34
	const *oSeparateCompilationIsOriginalFile := 35
	const *oSeparateCompilationIsParent := 36
	const *oSeparateCompilationIsChildThatCalledMe := 37
	const *oSeparateCompilationDisableScannerLookahead := 38
	const *oSeparateCompilationMarkModuleStub := 39
	const *oSeparateCompilationIsMarkedModuleStub := 40
	const *oSeparateCompilationEmitMarkedStubIdent := 41
	const *oSeparateCompilationDisableOutput := 42
	const *oSeparateCompilationEnableOutput := 43
	const *oExternalSetOverideName := 44
	const *oExternalSetNoOveride := 45
	const *oExternalOverideName := 46
	const *oExternalEmitOverideName := 47

	% { Input Tokens }
	const *firstInputToken := 0
	const *firstCompoundToken := 0
	const *tIdent := 0
	const *tPredefinedId := 1
	const *tStringLit := 2
	const *tCharLit := 3
	const *tIntegerLit := 4
	const *tRealLit := 5
	const *lastCompoundToken := 5
	const *tKeyword := 6
	const *tAddressInt := 6
	const *tAll := 7
	const *tAnd := 8
	const *tArray := 9
	const *tAsm := 10
	const *tAssert := 11
	const *tBegin := 12
	const *tBind := 13
	const *tBits := 14
	const *tBody := 15
	const *tBoolean := 16
	const *tCase := 17
	const *tChar := 18
	const *tChecked := 19
	const *tChild := 20
	const *tClose := 21
	const *tCollection := 22
	const *tCondition := 23
	const *tConst := 24
	const *tDecreasing := 25
	const *tDeferred := 26
	const *tDiv := 27
	const *tElse := 28
	const *tElsif := 29
	const *tEnd := 30
	const *tEndCase := 31
	const *tEndFor := 32
	const *tEndIf := 33
	const *tEndLoop := 34
	const *tEnum := 35
	const *tExit := 36
	const *tExport := 37
	const *tExternal := 38
	const *tFalse := 39
	const *tFcn := 40
	const *tFor := 41
	const *tFork := 42
	const *tForward := 43
	const *tFree := 44
	const *tFunction := 45
	const *tGet := 46
	const *tGrant := 47
	const *tHandler := 48
	const *tIf := 49
	const *tImport := 50
	const *tIn := 51
	const *tInclude := 52
	const *tInit := 53
	const *tInt := 54
	const *tInt1 := 55
	const *tInt2 := 56
	const *tInt4 := 57
	const *tInvariant := 58
	const *tLabel := 59
	const *tLoop := 60
	const *tMod := 61
	const *tModule := 62
	const *tMonitor := 63
	const *tNat := 64
	const *tNat1 := 65
	const *tNat2 := 66
	const *tNat4 := 67
	const *tNew := 68
	const *tNot := 69
	const *tOf := 70
	const *tOpaque := 71
	const *tOpen := 72
	const *tOr := 73
	const *tPacked := 74
	const *tParent := 75
	const *tPause := 76
	const *tPervasive := 77
	const *tPointer := 78
	const *tPost := 79
	const *tPre := 80
	const *tPriority := 81
	const *tProc := 82
	const *tProcedure := 83
	const *tProcess := 84
	const *tPut := 85
	const *tQuit := 86
	const *tRead := 87
	const *tReal := 88
	const *tReal4 := 89
	const *tReal8 := 90
	const *tRecord := 91
	const *tRegister := 92
	const *tResult := 93
	const *tReturn := 94
	const *tSeek := 95
	const *tSet := 96
	const *tShl := 97
	const *tShr := 98
	const *tSignal := 99
	const *tSkip := 100
	const *tString := 101
	const *tStub := 102
	const *tTag := 103
	const *tTell := 104
	const *tThen := 105
	const *tTimeout := 106
	const *tTo := 107
	const *tTrue := 108
	const *tType := 109
	const *tUnchecked := 110
	const *tUnion := 111
	const *tUnqualified := 112
	const *tVar := 113
	const *tWait := 114
	const *tWhen := 115
	const *tWrite := 116
	const *tXor := 117
	const *lastKeywordToken := 117
	const *tPlus := 118
	const *tMinus := 119
	const *tStar := 120
	const *tSlash := 121
	const *tLess := 122
	const *tGreater := 123
	const *tEqual := 124
	const *tDot := 125
	const *tColon := 126
	const *tComma := 127
	const *tSemiColon := 128
	const *tParen := 129
	const *tEndParen := 130
	const *tBracket := 131
	const *tEndBracket := 132
	const *tBrace := 133
	const *tEndBrace := 134
	const *tBar := 135
	const *tAmpersand := 136
	const *tTilde := 137
	const *tBang := 138
	const *tQuestion := 139
	const *tDollar := 140
	const *tStarStar := 141
	const *tDotDot := 142
	const *tAssign := 143
	const *tLessEqual := 144
	const *tGreaterEqual := 145
	const *tImply := 146
	const *tShortExit := 147
	const *tShortReturnResult := 148
	const *tAt := 149
	const *tHash := 150
	const *tEndCompilationUnit := 151
	const *tNewFile := 152
	const *tNewLine := 153
	const *tEndOfFile := 154
	const *tDummyTokenForStart := 155
	const *lastInputToken := 155

	% { Output Tokens }
	const *firstOutputToken := 0
	const *aIdent := 0
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

	% { Input/Output Tokens }

	% { Error Codes }
	const *firstErrorCode := 0
	const *eNoError := 0
	const *firstWarningCode := 10
	const *eMissingForwardImport := 11
	const *eSyntaxErrorInsert := 12
	const *eSyntaxErrorReplace := 13
	const *lastWarningCode := 13
	const *eChildMismatchParent := 14
	const *eNoProgramAfterParent := 15
	const *eNullOverideName := 16
	const *eSyntaxErrorMismatchedEnd := 17
	const *eParentDoesNotIncludeChild := 18
	const *ePrematureEndOfFile := 19
	const *lastPreviousLineErrorCode := 19
	const *eSyntaxError := 20
	const *eExtraneousProgramText := 21
	const *eStubSyntaxError := 22
	const *eOnlyCollectionVarsInStub := 23
	const *lastNonFatalErrorCode := 23

	% { Type Values }
	const *no := 0
	const *yes := 1
	const *starBound := 1