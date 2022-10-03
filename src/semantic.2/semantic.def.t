	% { Semantic Operations }
	const *firstSemanticOperation := 14
	const *oPredefinedChoose := 15
	const *oSymbolPush := 16
	const *oSymbolPushDummy := 17
	const *oSymbolPushDummyCopy := 18
	const *oSymbolPushPredefined := 19
	const *oSymbolPushCopy := 20
	const *oSymbolPushCountScope := 21
	const *oSymbolPushTypeSymbol := 22
	const *oSymbolEnterType := 23
	const *oSymbolEnterValue := 24
	const *oSymbolEnterAttribute := 25
	const *oSymbolEnterKind := 26
	const *oSymbolEnterUnionBodyCount := 27
	const *oSymbolChangeKind := 28
	const *oSymbolClearAttribute := 29
	const *oSymbolPop := 30
	const *oSymbolPopAndChooseKind := 31
	const *oSymbolChooseKind := 32
	const *oSymbolChooseAttribute := 33
	const *oSymbolChooseSameSymbols := 34
	const *oSymbolSwapSymbols := 35
	const *oSymbolBodySameAsValue := 36
	const *oSymbolSaveHandlerSymbol := 37
	const *oSymbolPushHandlerSymbol := 38
	const *oTypePushBuiltIn := 39
	const *oTypePushNew := 40
	const *oTypePushBuiltinFromValue := 41
	const *oTypePushComponentType := 42
	const *oTypePushLeftComponentType := 43
	const *oTypePushLeftResultType := 44
	const *oTypePushResultType := 45
	const *oTypePushSymbolType := 46
	const *oTypePushCountIndexType := 47
	const *oTypePushCharStringDummy := 48
	const *oTypeReplaceBuiltIn := 49
	const *oTypeReplaceComponentType := 50
	const *oTypeReplaceFromValue := 51
	const *oTypeReplaceResultType := 52
	const *oTypeReplaceRootType := 53
	const *oTypeEnterSymbol := 54
	const *oTypeEnterFieldsScope := 55
	const *oTypeEnterFormalsScope := 56
	const *oTypeEnterExportsScope := 57
	const *oTypeEnterUnionMap := 58
	const *oTypeReplaceTypeWithSameKindAndStorageSize := 59
	const *oTypeReplaceTypeWithSameKindAndValue := 60
	const *oTypeEnterLeftTypeSizeFromRight := 61
	const *oTypeEnterLeftComponentType := 62
	const *oTypeEnterLeftResultType := 63
	const *oTypeEnterLeftRootType := 64
	const *oTypeEnterAttribute := 65
	const *oTypeEnterKind := 66
	const *oTypeEnterFlexRangeValues := 67
	const *oTypeEnterRangeValues := 68
	const *oTypeMakeOpaque := 69
	const *oTypeUnMakeOpaque := 70
	const *oTypeReMakeOpaque := 71
	const *oTypeEnterFirstArrayIndex := 72
	const *oTypeEnterLastArrayIndex := 73
	const *oTypeEnterArrayBound := 74
	const *oTypeEnterStringBound := 75
	const *oTypeEnterEnumeratedElementRoot := 76
	const *oTypeEnterSetBase := 77
	const *oTypeClearAttribute := 78
	const *oTypePop := 79
	const *oTypePopAndChooseKind := 80
	const *oTypeChooseKind := 81
	const *oTypeChooseLeftKind := 82
	const *oTypeChooseAttribute := 83
	const *oTypeChooseLeftAttribute := 84
	const *oTypeChooseSameSymbols := 85
	const *oTypeChooseSameRanges := 86
	const *oTypeChooseSameEnumeratedRanges := 87
	const *oTypeChooseSameArrayRanges := 88
	const *oTypeChooseSameKinds := 89
	const *oTypeChooseSameKindsAndSizes := 90
	const *oTypeChooseSameTypes := 91
	const *oTypeChooseSameStringBounds := 92
	const *oTypeChooseSameOpaqueTypeNumbers := 93
	const *oTypeCopy := 94
	const *oTypeCopyLeftType := 95
	const *oTypeCopyLeftRangeValues := 96
	const *oTypeSwapTypes := 97
	const *oTypeSwapSecondAndThirdTypes := 98
	const *oUnionMapPush := 99
	const *oUnionMapPop := 100
	const *oUnionMapEnter := 101
	const *oTypeCheatSizeValueMatchesType := 102
	const *oTypeUnionTagValueLegal := 103
	const *oCountPushZero := 104
	const *oCountPushTypeArrayNumberOfIndices := 105
	const *oCountPushValue := 106
	const *oCountPushScopeNumberOfEntries := 107
	const *oCountDecrement := 108
	const *oCountIncrement := 109
	const *oCountCopy := 110
	const *oCountPop := 111
	const *oCountChooseZero := 112
	const *oUnionBodyCountPushZero := 113
	const *oUnionBodyCountIncrement := 114
	const *oUnionBodyCountPop := 115
	const *oScopePush := 116
	const *oScopePushTypeFields := 117
	const *oScopePushTypeFormals := 118
	const *oScopePushTypeExports := 119
	const *oScopeEnterSymbol := 120
	const *oScopePop := 121
	const *oContextSet := 122
	const *oContextClear := 123
	const *oContextChoose := 124
	const *oEmitInteger := 125
	const *oEmitString := 126
	const *oEmitChar := 127
	const *oEmitReal := 128
	const *oEmitSymbol := 129
	const *oEmitExtraIdentSymbol := 130
	const *oEmitPredefined := 131
	const *oEmitManifestValue := 132
	const *oEmitManifestSymbolValue := 133
	const *oEmitTypeTop := 134
	const *oEmitLine := 135
	const *oEmitSubstringKind := 136
	const *oEmitSavedIdentText := 137
	const *oEmitBufferPush := 138
	const *oEmitBufferPushDirect := 139
	const *oEmitBufferPop := 140
	const *oEmitBufferPopDirect := 141
	const *oEmitBufferEmit := 142
	const *oSaveIdentText := 143
	const *oCheckDump := 144
	const *oValuePushIntegerLit := 145
	const *oValuePushRealLit := 146
	const *oValuePushStringLit := 147
	const *oValuePushCharLit := 148
	const *oValuePush := 149
	const *oValuePushStringLiteralLength := 150
	const *oValuePushStringLength := 151
	const *oValuePushSymbolValue := 152
	const *oValuePushSymbolBodyNumber := 153
	const *oValuePushTypeRangeValues := 154
	const *oValuePushCount := 155
	const *oValuePushTypeSize := 156
	const *oValueConvertIntToReal := 157
	const *oValueConvertIntToNat := 158
	const *oValueConvertCharToString := 159
	const *oValueReplaceNonManifest := 160
	const *oValueReplaceUnionBodyNumber := 161
	const *oValueReplaceNil := 162
	const *oValueAddValues := 163
	const *oValueSubtractValues := 164
	const *oValueMultiplyValues := 165
	const *oValueDivValues := 166
	const *oValueModValues := 167
	const *oValueNegate := 168
	const *oValueChr := 169
	const *oValueOrd := 170
	const *oValueGreaterValues := 171
	const *oValueLessValues := 172
	const *oValueEqualValues := 173
	const *oValueNot := 174
	const *oValueLogicalAndValues := 175
	const *oValueLogicalOrValues := 176
	const *oValueLogicalXorValues := 177
	const *oValueLogicalShiftRightValues := 178
	const *oValueLogicalShiftLeftValues := 179
	const *oValueSetDifference := 180
	const *oValueSetIntersection := 181
	const *oValueSetUnion := 182
	const *oValueSetXor := 183
	const *oValueStringConcatenate := 184
	const *oValueTypeSetAll := 185
	const *oValueTypeSetCount := 186
	const *oValuePop := 187
	const *oValuePopAndChooseKind := 188
	const *oValueChooseLegalRangeValues := 189
	const *oValueChooseLegalSubstringValue := 190
	const *oValueChooseLegalSubstringValues := 191
	const *oValueChooseLegalSetRangeValues := 192
	const *oValueChooseIllegalIntNatRange := 193
	const *oValueChooseInTypeRange := 194
	const *oValueChooseKind := 195
	const *oValueChooseLeftKind := 196
	const *oValueChooseSameValues := 197
	const *oValueChooseZero := 198
	const *oValueChooseNonNegative := 199
	const *oValueSwapValues := 200
	const *oSubstringPushNew := 201
	const *oSubstringPop := 202
	const *oSubstringSetLeftKind := 203
	const *oSubstringSetRightKind := 204
	const *oSubstringChooseLeftKind := 205
	const *lastSemanticOperation := 206

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
	const *aDebugInformation := 9
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
	const *eIntInt4Equivalence := 10
	const *eNatNat4Equivalence := 11
	const *eRealReal8Equivalence := 12
	const *eNegativeConstantUsedInLogicalOperation := 13
	const *firstNonSeriousErrorCode := 14
	const *eAssignmentValueOutOfRange := 14
	const *eConstantValueOutOfRange := 15
	const *eDivByZero := 16
	const *eIllegalSubstringValue := 17
	const *eOpaqueOnlyAppliesToTypes := 18
	const *eUnionLabelValueNotInRange := 19
	const *eValueActualOutOfRange := 20
	const *firstSeriousErrorCode := 21
	const *eAddrOfCompileTimeConstant := 21
	const *eAddrOfRegisterVariable := 22
	const *eAsmLabelMustBeString := 23
	const *eAsmOpcodeMustBeString := 24
	const *eAtExpnMustBeInteger := 25
	const *eBadArgToAddr := 26
	const *eBadArgToEmpty := 27
	const *eBadArgToLower := 28
	const *eBadArgToNil := 29
	const *eBadArgToSize := 30
	const *eBadArgToStringop := 31
	const *eBadArgToUpper := 32
	const *eBadSetElement := 33
	const *eBindToCompileTimeConstant := 34
	const *eBitsAssignmentTargetMustBeNat := 35
	const *eBitsExpnMustBeInteger := 36
	const *eBitsTypeMustBeSubrange := 37
	const *eCannotAssignToFlexChar := 38
	const *eCannotAssignToFlexArray := 39
	const *eCannotInitializeFlexChars := 40
	const *eCannotInitializeFlexArrayOrChar := 41
	const *eCharBoundMustBeAnIntegerExpn := 42
	const *eCaseLabelBadValue := 43
	const *eCharLengthIllegal := 44
	const *eCompileTimeReferenceParameter := 45
	const *eDeviceMonitorPriorityMustBeInt := 46
	const *eDimensionRequestedLargerThanArrayNumberOfIndices := 47
	const *eDimensionRequestedLessThanOne := 48
	const *eExpressionPassedByReference := 49
	const *eExternalAddressWrongType := 50
	const *eForkAddressVariableMustBeAddressInt := 51
	const *eForkStackSizeExpnMustBeInteger := 52
	const *eForkStatusVariableMustBeBoolean := 53
	const *eFractionWidthOnlyAppliesToIntegersAndReals := 54
	const *eIOFileNumberExpnMustBeInteger := 55
	const *eIOStatusVariableMustBeInteger := 56
	const *eIllegalAndEqual := 57
	const *eIllegalAssignment := 58
	const *eIllegalCaseType := 59
	const *eIllegalDivEqual := 60
	const *eIllegalExponentialEqual := 61
	const *eIllegalForIndexType := 62
	const *eIllegalIndexType := 63
	const *eIllegalInitType := 64
	const *eIllegalIntNatSubrange := 65
	const *eIllegalMinusEqual := 66
	const *eIllegalModEqual := 67
	const *eIllegalOrEqual := 68
	const *eIllegalPlusEqual := 69
	const *eIllegalPutGetOperandType := 70
	const *eIllegalRangeUpperBoundLessThanLower := 71
	const *eIllegalRealDivEqual := 72
	const *eIllegalSetBaseRange := 73
	const *eIllegalShiftEqual := 74
	const *eIllegalStarEqual := 75
	const *eIllegalSubrangeType := 76
	const *eIllegalSubscripts := 77
	const *eIllegalSubstringIndexType := 78
	const *eIllegalSubstringValues := 79
	const *eIllegalTypeCheatValue := 80
	const *eIllegalUnionInitTagValue := 81
	const *eIllegalUseOfAll := 82
	const *eIllegalUseOfPredefined := 83
	const *eIllegalVariableReference := 84
	const *eIllegalXorEqual := 85
	const *eIncompatibleAssignmentTypes := 86
	const *eIncompatibleCaseLabel := 87
	const *eIncompatibleComparisonTypes := 88
	const *eIncompatibleConstantValueType := 89
	const *eIncompatibleForIndexTypes := 90
	const *eIncompatibleInitValue := 91
	const *eIncompatibleResultType := 92
	const *eIncompatibleSetElementType := 93
	const *eIncompatibleSubrangeTypes := 94
	const *eIncompatibleSubscriptTypes := 95
	const *eIncompatibleTagTypes := 96
	const *eIncompatibleValueActualType := 97
	const *eInitStringValueTooBigToFit := 98
	const *eInitValueNotInRange := 99
	const *eIntegerExponentiatePowerNegative := 100
	const *eInterruptProcedureNumberMustBeNat := 101
	const *eMissingUnionInitTagValue := 102
	const *eNonArithmeticType := 103
	const *eNonBooleanCondition := 104
	const *eNonBooleanType := 105
	const *eNonCompileTimeExpression := 106
	const *eNonComparisonType := 107
	const *eNonLogicalType := 108
	const *eNonPointerNewOrFree := 109
	const *eNonPriorityOrTimeOutConditionMustNotHaveWaitExpn := 110
	const *eNonSetType := 111
	const *eNonStringType := 112
	const *eNonTagInTagStmt := 113
	const *eOpenFileNameMustBeString := 114
	const *eOpenFileNameMustBeStringOrInt := 115
	const *eOpenFileNumberVarMustBeInteger := 116
	const *eOpenModeMustBeString := 117
	const *ePackedBind := 118
	const *ePackedReferenceActual := 119
	const *ePriorityOrTimeOutConditionMustHaveWaitExpn := 120
	const *eProcessStackSizeMustBeInt := 121
	const *eQuitReasonExpnMustBeInteger := 122
	const *eReadOrWriteRegisterVariable := 123
	const *eReadWriteItemNotVariable := 124
	const *eReadWriteSizeMustBeInteger := 125
	const *eReadWriteSizeResultVariableMustBeInteger := 126
	const *eRealStorageSizeMustBeInt := 127
	const *eRedeclarationOfStubSubprogramHasDifferentFormals := 128
	const *eRegisterBind := 129
	const *eRegisterReferenceActual := 130
	const *eRegisterTypeCheatAssignment := 131
	const *eSeekExpnMustBeInteger := 132
	const *eSetBaseTypeMismatch := 133
	const *eSetElementOutOfRange := 134
	const *eSizeOfCompileTimeConstant := 135
	const *eSizeOfOpaqueObject := 136
	const *eStorageSizeMustBeInt := 137
	const *eStorageSizeOnCharSubrange := 138
	const *eStreamNumberMustBeInteger := 139
	const *eStringBoundMustBeAnIntegerExpn := 140
	const *eStringLengthIllegal := 141
	const *eStubConstantMustBeCompileTime := 142
	const *eSubscriptOutOfRange := 143
	const *eTellResultVariableMustBeInteger := 144
	const *eTooFewActuals := 145
	const *eTooFewInitElements := 146
	const *eTooFewSubscripts := 147
	const *eTooManyActuals := 148
	const *eTooManyInitElements := 149
	const *eTooManySubscripts := 150
	const *eTypeCheatSizeNotInteger := 151
	const *eTypeCheatSizeOnlyAppliesToIntReal := 152
	const *eUnionLabelIncompatibleType := 153
	const *eUnionLabelMustBeCompileTime := 154
	const *eUnresolvedForwardInCollection := 155
	const *eUpperOfStringMustNotHaveSecondParm := 156
	const *eVariableTypeCheatExpected := 157
	const *eWaitExpnMustBeInteger := 158
	const *eWidthExprMustBeIntExpr := 159
	const *eWidthExpressionMustBeANonNegativeInteger := 160
	const *eWidthFieldOnlyAppliesToStringGets := 161
	const *eWriteItemCompiletimeConstant := 162
	const *eWrongCollectionNewOrFree := 163
	const *eWrongCollectionSubscriptType := 164
	const *eWrongParametricActualType := 165
	const *eWrongReferenceActualType := 166
	const *eWrongSetElementType := 167
	const *eOrdOnlyAppliesToSingleCharacterStrings := 168
	const *eCompileTimeAdditionOverflow := 169
	const *eCompileTimeMultiplyOverflow := 170
	const *eCompileTimeDivByZero := 171
	const *eCompileTimeModByZero := 172
	const *eCompileTimeShiftByNegativeValue := 173
	const *eStringConcatenateOverflow := 174
	const *firstFatalErrorCode := 175
	const *eSymbolStackOverflow := 175
	const *eScopeStackOverflow := 176
	const *eCountValueOverflow := 177
	const *eCountOverflow := 178
	const *eUnionBodyCountOverflow := 179
	const *eUnionBodyCountValueOverflow := 180
	const *eSymbolTableOverflow := 181
	const *eNoFreeDummySymbols := 182
	const *eNoFreeDummyTypes := 183
	const *eTypeStackOverflow := 184
	const *eTypeTableOverflow := 185
	const *eTypeRangeTableOverflow := 186
	const *eTypeArrayIndexOverflow := 187
	const *eUnionMapTableOverflow := 188
	const *eEmitBufferOverflow := 189
	const *eEmitBufferStackOverflow := 190
	const *eScopeDisplayOverflow := 191
	const *eScopeSymbolOverflow := 192
	const *eScopeTableOverflow := 193
	const *eSubstringOverflow := 194
	const *eValueOverflow := 195
	const *eValueTableOverflow := 196
	const *eNoMoreStringSpace := 197
	const *eSslStackOverflow := 198
	const *lastErrorCode := 198

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
	const *sRuntimeConstant := 1
	const *sCompiletimeConstant := 2
	const *sType := 3
	const *sCollection := 4
	const *sProcedure := 5
	const *sFunction := 6
	const *sModule := 7
	const *sMonitor := 8
	const *sProcess := 9
	const *sEnumeratedElement := 10
	const *sCall := 11
	const *sExport := 12
	const *sNotFound := 13
	const *lastSymbolKind := 13
	const *firstSymbolAttribute := 0
	const *saOpaque := 0
	const *saRegister := 1
	const *saForward := 2
	const *saTypeCheat := 3
	const *saTag := 4
	const *lastSymbolAttribute := 4
	const *firstTypeKind := 0
	const *tProcedure := 0
	const *tFunction := 1
	const *tProcess := 2
	const *tModule := 3
	const *tMonitor := 4
	const *tArray := 5
	const *tFlexArray := 6
	const *tCollection := 7
	const *tRecord := 8
	const *tUnion := 9
	const *tEnumeratedRange := 10
	const *tSet := 11
	const *tString := 12
	const *tChar := 13
	const *tCharString := 14
	const *tFlexChar := 15
	const *tCondition := 16
	const *tEnumeratedElement := 17
	const *tPointer := 18
	const *tBoolean := 19
	const *tInt := 20
	const *tNat := 21
	const *tReal := 22
	const *tSubrange := 23
	const *tAddressInt := 24
	const *tType := 25
	const *tOpaque := 26
	const *tInt4 := 27
	const *tNat4 := 28
	const *tReal8 := 29
	const *tIntNat := 30
	const *tVaryingParameter := 31
	const *tNotFound := 32
	const *tError := 33
	const *lastTypeKind := 33
	const *firstTypeAttribute := 0
	const *taForward := 0
	const *taCompile := 1
	const *taPacked := 2
	const *taTypeCheat := 3
	const *taPriorityOrTimeoutCondition := 4
	const *lastTypeAttribute := 4
	const *firstContext := 0
	const *cCompile := 0
	const *cFunction := 1
	const *cRegister := 2
	const *cPacked := 3
	const *cOpaque := 4
	const *cFlex := 5
	const *cStringExpn := 6
	const *cPervasive := 7
	const *cInHandler := 8
	const *lastContext := 8
	const *wasFlex := 0
	const *wasntFlex := 1
	const *wasntArrayNorChar := 2
	const *firstValueKind := 0
	const *vNoValue := 0
	const *vRunTime := 1
	const *vReal := 2
	const *vTrue := 3
	const *vFalse := 4
	const *vInteger := 5
	const *vString := 6
	const *vChar := 7
	const *vSet := 8
	const *vParameter := 9
	const *vNil := 10
	const *lastValueKind := 10
	const *firstConstantValueIndex := 1
	const *viZero := 1
	const *viOne := 2
	const *viFour := 3
	const *viEight := 4
	const *viTen := 5
	const *viMaxSetElement := 6
	const *viMinLongInt := 7
	const *viMaxLongInt := 8
	const *viMaxNat := 9
	const *viDefaultStringSize := 10
	const *viMaxStringSize := 10
	const *viMaxChar := 10
	const *viDefaultExponentRange := 11
	const *viNonManifest := 12
	const *viTrue := 13
	const *viFalse := 14
	const *viEmptySet := 15
	const *lastConstantValueIndex := 15
	const *substringStar := 0
	const *substringStarMinus := 1
	const *substringExpn := 2
	const *substringNone := 3