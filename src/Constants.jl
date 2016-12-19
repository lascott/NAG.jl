# NAG Constants

# Typedef Enum: 
  const Nag_FALSE = 0
  const Nag_TRUE = 1

# Typedef Enum: Following are used by f06 functions
# -------------------------------------------------
  const NoTranspose = 1001
  const Transpose = 1002
  const ConjugateTranspose = 1003
# Typedef Enum: 
  const BottomPivot = 1010
  const TopPivot = 1011
  const VariablePivot = 1012
  const FixedPivot = 1013
# Typedef Enum: 
  const ForwardSequence = 1014
  const BackwardSequence = 1015

# Typedef Enum: for BLAS functions
# -------------------------------------------------
  const Nag_RowMajor = 101
  const Nag_ColMajor = 102
# Typedef Enum: 
  const Nag_NoTrans = 111
  const Nag_Trans = 112
  const Nag_ConjTrans = 113
# Typedef Enum: 
  const Nag_Upper = 121
  const Nag_Lower = 122
# Typedef Enum: 
  const Nag_NonRefDiag = 130
  const Nag_NonUnitDiag = 131
  const Nag_UnitDiag = 132
# Typedef Enum: 
  const Nag_LeftSide = 141
  const Nag_RightSide = 142
  const Nag_BothSides = 143
# Typedef Enum: 
  const Nag_Base = 151
  const Nag_T = 152
  const Nag_Rnd = 153
  const Nag_Ieee = 154
  const Nag_Emin = 155
  const Nag_Emax = 156
  const Nag_Eps = 157
  const Nag_Prec = 158
  const Nag_Underflow = 159
  const Nag_Overflow = 160
  const Nag_Sfmin = 161
# Typedef Enum: 
  const Nag_OneNorm = 171
  const Nag_RealOneNorm = 172
  const Nag_TwoNorm = 173
  const Nag_FrobeniusNorm = 174
  const Nag_InfNorm = 175
  const Nag_RealInfNorm = 176
  const Nag_MaxNorm = 177
  const Nag_RealMaxNorm = 178
  const Nag_AvTwoNorm = 179
# Typedef Enum: 
  const Nag_IncreasingOrder = 181
  const Nag_DecreasingOrder = 182
# Typedef Enum: 
  const Nag_Conj = 191
  const Nag_NoConj = 192
# Typedef Enum: 
  const Nag_JrotInner = 201
  const Nag_JrotOuter = 202
  const Nag_JrotSorted = 203

# Typedef Enum: Following are used by f08 functions
# -------------------------------------------------
  const Nag_InitQ = 1027
  const Nag_NotQ = 1028
  const Nag_AccumulateQ = 1029
  const Nag_UpdateSchur = 1030
  const Nag_ComputeQ = 50000
# Typedef Enum: 
  const Nag_InitZ = 1031
  const Nag_NotZ = 1032
  const Nag_AccumulateZ = 1033
  const Nag_UpdateZ = 1034
# Typedef Enum: 
  const Nag_HSEQRSource = 1035
  const Nag_NotKnown = 1036
# Typedef Enum: 
  const Nag_ComputeAll = 1037
  const Nag_BackTransform = 1038
  const Nag_ComputeSelected = 1039
# Typedef Enum: 
  const Nag_NoVec = 1040
  const Nag_UserVec = 1041
# Typedef Enum: 
  const Nag_Plus = 1042
  const Nag_Minus = 1043
# Typedef Enum: 
  const Nag_DoBoth = 1044
  const Nag_EigVals = 1045
  const Nag_DoNothing = 1046
  const Nag_Permute = 1047
  const Nag_Schur = 1048
  const Nag_Scale = 1049
  const Nag_Subspace = 1050
  const Nag_EigVecs = 1051
  const Nag_DoAll = 50004
  const Nag_DoSquare = 50005
  const Nag_DoOverwrite = 50006
  const Nag_LeftSingVecs = 50007
  const Nag_RightSingVecs = 50008
  const Nag_Pack = 500026
  const Nag_Unpack = 500027
# Typedef Enum: 
  const Nag_ByBlock = 1052
  const Nag_Entire = 1053
# Typedef Enum: 
  const Nag_AllValues = 1054
  const Nag_Interval = 1055
  const Nag_Indices = 1056
# Typedef Enum: 
  const Nag_FormBoth = 1057
  const Nag_DoNotForm = 1058
  const Nag_FormP = 1059
  const Nag_ApplyP = 1060
  const Nag_FormQ = 1061
  const Nag_ApplyQ = 1062
  const Nag_UpdateQ = 1063
  const Nag_FormX = 1064
# Typedef Enum: 
  const Nag_Compute_1 = 1065
  const Nag_Compute_2 = 1066
  const Nag_Compute_3 = 1067
  const Nag_Compute_Definite = 500046
  const Nag_Compute_Definite_Indefinite = 500047
  const Nag_Compute_Indefinite = 500048
# End of Mark 7 enums
# -------------------------------------------------

# Start of Mark 8 enums
# -------------------------------------------------

# Typedef Enum: 
  const Nag_NoEquilibration = 2000
  const Nag_Equilibrated = 2001
  const Nag_RowEquilibration = 2002
  const Nag_ColumnEquilibration = 2003
  const Nag_RowAndColumnEquilibration = 2004
# Typedef Enum: 
  const Nag_Factored = 2010
  const Nag_NotFactored = 2011
  const Nag_EquilibrateAndFactor = 2012
# Typedef Enum: 
  const Nag_NoBalancing = 2020
  const Nag_BalancePermute = 2021
  const Nag_BalanceScale = 2022
  const Nag_BalanceBoth = 2023
# Typedef Enum: 
  const Nag_NotSingularVecs = 2030
  const Nag_PackedSingularVecs = 2031
  const Nag_SingularVecs = 2032
# Typedef Enum: 
  const Nag_NotEigVecs = 2040
  const Nag_TridiagEigVecs = 2041
  const Nag_OrigEigVecs = 2042
# Typedef Enum: 
  const Nag_NotRCond = 2050
  const Nag_RCondEigVals = 2051
  const Nag_RCondLeft = 2052
  const Nag_RCondRight = 2053
  const Nag_RCondEigVecs = 50002
  const Nag_RCondBoth = 50003
# Typedef Enum: 
  const Nag_AllU = 2060
  const Nag_NotU = 2061
  const Nag_SingularVecsU = 2062
  const Nag_Overwrite = 2063
  const Nag_InitU = 2064
# Typedef Enum: 
  const Nag_ComputeV = 2070
  const Nag_NotV = 2071
  const Nag_InitV = 2072
# Typedef Enum: 
  const Nag_LeftVecs = 2080
  const Nag_NotLeftVecs = 2081
  const Nag_LeftSpan = 2082
  const Nag_NotLeftWork = 2083
  const Nag_LeftVecsCtol = 2084
# Typedef Enum: 
  const Nag_RightVecs = 2090
  const Nag_NotRightVecs = 2091
  const Nag_RightVecsJRots = 2092
  const Nag_NotRightWork = 2093
  const Nag_RightVecsMV = 2094
# Typedef Enum: 
  const Nag_NotVT = 2100
  const Nag_AllVT = 2101
  const Nag_SingularVecsVT = 2102
  const Nag_OverwriteVT = 2103
# Typedef Enum: 
  const Nag_NoSortEigVals = 2110
  const Nag_SortEigVals = 2111

# End of Mark 8 enums
# -------------------------------------------------

# Following used in c06 chapter
# -------------------------------------------------
# Typedef Enum: 
  const Nag_Convolution = 1068
  const Nag_Correlation = 1069
# Typedef Enum: 
  const Nag_ForwardTransform = 1070
  const Nag_BackwardTransform = 1071
# Typedef Enum: 
  const Nag_SeriesGeneral = 2690
  const Nag_SeriesEven = 2691
  const Nag_SeriesOdd = 2692
# Typedef Enum: 
  const Nag_FFT_Initial = 2890
  const Nag_FFT_Subsequent = 2891
  const Nag_FFT_Restart = 2892

# Following used in d01 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_Alg = 1072
  const Nag_Alg_loga = 1073
  const Nag_Alg_logb = 1074
  const Nag_Alg_loga_logb = 1075
# Typedef Enum: 
  const Nag_UpperSemiInfinite = 1076
  const Nag_LowerSemiInfinite = 1077
  const Nag_Infinite = 1078
# Typedef Enum: 
  const Nag_Cosine = 1079
  const Nag_Sine = 1080
# Typedef Enum: 
  const Nag_Legendre = 1081
  const Nag_Rational = 1082
  const Nag_Laguerre = 1083
  const Nag_Hermite = 1084
# Typedef Enum: 
  const Nag_OneIteration = 1085
  const Nag_ManyIterations = 1086

# Following used in d02 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_Relative = 1087
  const Nag_Absolute = 1088
  const Nag_Mixed = 1089
  const Nag_Default = 500028
# Typedef Enum: 
  const Nag_UserInitMesh = 1090
  const Nag_DefInitMesh = 1091
# Typedef Enum: 
  const Nag_RK_range = 1092
  const Nag_RK_onestep = 1093
# Typedef Enum: 
  const Nag_RK_2_3 = 1094
  const Nag_RK_4_5 = 1095
  const Nag_RK_7_8 = 1096
# Typedef Enum: 
  const Nag_ErrorAssess_off = 1097
  const Nag_ErrorAssess_on = 1098
# Typedef Enum: 
  const Nag_Sol = 1099
  const Nag_Der = 1100
  const Nag_SolDer = 1101
# Typedef Enum: 
  const Nag_AnalyticalJacobian = 2180
  const Nag_NumericalJacobian = 2181
  const Nag_DefaultJacobian = 2182
  const Nag_AnalyticalStructJacobian = 2183
  const Nag_NumericalStructJacobian = 2184

# Following used in e01 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_RC = 1102
  const Nag_Shep = 1103

# Following used in e02 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_LeftDerivs = 1104
  const Nag_RightDerivs = 1105
  const Nag_NoDerivs = 500035
  const Nag_LeftDerivs_1 = 500036
  const Nag_RightDerivs_1 = 500037
  const Nag_LeftDerivs_2 = 500038
  const Nag_RightDerivs_2 = 500039
  const Nag_LeftDerivs_3 = 500040
  const Nag_RightDerivs_3 = 500041
# Typedef Enum: 
  const Nag_SplineVectorSort_Sorted = 3010
  const Nag_SplineVectorSort_Sorted_Indexed = 3011
  const Nag_SplineVectorSort_Sorted_Indexed_Perm = 3012
  const Nag_SplineVectorSort_Unsorted = 3013
  const Nag_SplineVectorSort_Unsorted_Indexed = 3014

# Following used by d01 d02 e02 and e04 functions
# -------------------------------------------------
# Typedef Enum: 
  const Nag_StartNotSet = 1106
  const Nag_Cold = 1107
  const Nag_Warm = 1108
  const Nag_Hot = 1109
  const Nag_NewStart = 1110
  const Nag_ReStart = 1111
  const Nag_Continue = 1112
  const Nag_BasisFile = 50001

# Following used in d03 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_EuropeanCall = 1113
  const Nag_AmericanCall = 1114
  const Nag_EuropeanPut = 1115
  const Nag_AmericanPut = 1116
# Typedef Enum: 
  const Nag_UniformMesh = 1117
  const Nag_CustomMesh = 1118
# Typedef Enum: 
  const Nag_LinAlgFull = 1119
  const Nag_LinAlgBand = 1120
  const Nag_LinAlgSparse = 1121
# Typedef Enum: 
  const Nag_OsherOriginal = 1122
  const Nag_OsherPhysical = 1123

# Following used by e04 and g13 functions (& some by h02)
# -------------------------------------------------
# Typedef Enum: 
  const Nag_PrintNotSet = 1124
  const Nag_NoPrint = 1125
  const Nag_Soln_Root = 1126
  const Nag_Soln = 1127
  const Nag_Iter = 1128
  const Nag_Iter_Long = 1129
  const Nag_Soln_Root_Iter = 1130
  const Nag_Soln_Iter = 1131
  const Nag_Soln_Iter_Long = 1132
  const Nag_Soln_Iter_Const = 1133
  const Nag_Soln_Iter_Diag = 1134
  const Nag_Soln_Iter_Full = 1135
# Typedef Enum: 
  const Nag_ChkNotSet = 1136
  const Nag_NoCheck = 1137
  const Nag_SimpleCheck = 1138
  const Nag_CheckObj = 1139
  const Nag_CheckCon = 1140
  const Nag_CheckObjCon = 1141
  const Nag_XSimpleCheck = 1142
  const Nag_XCheckObj = 1143
  const Nag_XCheckCon = 1144
  const Nag_XCheckObjCon = 1145
# Typedef Enum: 
  const Nag_D_NotSet = 1146
  const Nag_D_NoPrint = 1147
  const Nag_D_Print = 1148
  const Nag_D_Sum = 1149
  const Nag_D_Full = 1150
  const Nag_D_Dbg = 1151
# Typedef Enum: 
  const Nag_ObjCheck = 1152
  const Nag_ConCheck = 1153
  const Nag_DiffInt = 1154
# Typedef Enum: 
  const Nag_DWant_NotSet = 1155
  const Nag_Grad_HessDiag = 1156
  const Nag_HessFull = 1157
  const Nag_Grad_HessFull = 1158
# Typedef Enum: 
  const Nag_DInfo_NotSet = 1159
  const Nag_Deriv_OK = 1160
  const Nag_Fun_Constant = 1161
  const Nag_Fun_LinearOdd = 1162
  const Nag_2ndDeriv_Large = 1163
  const Nag_1stDeriv_Small = 1164
# Typedef Enum: 
  const Nag_DerivNotSet = 1165
  const Nag_SomeG_SomeJ = 1166
  const Nag_AllG_SomeJ = 1167
  const Nag_SomeG_AllJ = 1168
  const Nag_AllG_AllJ = 1169
# Typedef Enum: 
  const Nag_Deriv = 1170
  const Nag_NoDeriv = 1171
  const Nag_Function = 1172
# Typedef Enum: 
  const Nag_LinFunNotSet = 1173
  const Nag_Lin_Deriv = 1174
  const Nag_Lin_NoDeriv = 1175
# Typedef Enum: 
  const Nag_InitNotSet = 1176
  const Nag_Init_None = 1177
  const Nag_Init_F_G_H = 1178
  const Nag_Init_All = 1179
  const Nag_Init_H_S = 1180
# Typedef Enum: 
  const Nag_BoundNotSet = 1181
  const Nag_Bounds = 1182
  const Nag_BoundsZero = 1183
  const Nag_BoundsEqual = 1184
  const Nag_NoBounds = 1185
  const Nag_NoBounds_One_Call = 1186
# Typedef Enum: 
  const Nag_ProbTypeNotSet = 1187
  const Nag_FP = 1188
  const Nag_LP = 1189
  const Nag_QP1 = 1190
  const Nag_QP2 = 1191
  const Nag_QP3 = 1192
  const Nag_QP4 = 1193
  const Nag_LS1 = 1194
  const Nag_LS2 = 1195
  const Nag_LS3 = 1196
  const Nag_LS4 = 1197
  const Nag_SparseFP = 1198
  const Nag_SparseLP = 1199
  const Nag_SparseQP = 1200
  const Nag_SparseFPE = 1201
  const Nag_SparseFPL = 1202
  const Nag_SparseFPS = 1203
  const Nag_SparseQPP = 1204
  const Nag_SparseQPS = 1205
# Typedef Enum: 
  const Nag_EndStateNotSet = 1206
  const Nag_Feasible = 1207
  const Nag_Optimal = 1208
  const Nag_Deadpoint = 1209
  const Nag_Weakmin = 1210
  const Nag_Unbounded = 1211
  const Nag_Infeasible = 1212
  const Nag_Too_Many_Iter = 1213
  const Nag_Hess_Too_Big = 1214
  const Nag_Cycling = 1215
  const Nag_Not_Converged = 1216
  const Nag_Not_Kuhn_Tucker = 1217
  const Nag_Deriv_Error = 1218
  const Nag_Hess_Indefinite = 1219
  const Nag_Basis_Ill_Cond = 1220
  const Nag_Basis_Singular = 1221
  const Nag_Out_Of_Workspace = 1222

# Successful outcomes
  const Nag_MIP_Best_ISol = 1223
  const Nag_MIP_Stop_First_ISol = 1224

# Succesfully executed but no solution
  const Nag_MIP_No_ISol = 1225

# Failure at root
  const Nag_MIP_Root_Unbounded = 1226
  const Nag_MIP_Root_Infeasible = 1227
  const Nag_MIP_Root_Max_Itn = 1228
  const Nag_MIP_Root_Big_Hess = 1229

# Integer solution found but could be suboptimal
  const Nag_MIP_Max_Itn_ISol = 1230
  const Nag_MIP_Max_Nodes_ISol = 1231
  const Nag_MIP_Big_Hess_ISol = 1232
  const Nag_MIP_Max_Depth_ISol = 1233

# No integer solution found but didn't complete succesfully
  const Nag_MIP_Big_Hess_No_ISol = 1234
  const Nag_MIP_Max_Itn_No_ISol = 1235
  const Nag_MIP_Max_Nodes_No_ISol = 1236
  const Nag_MIP_Max_Depth_No_ISol = 1237
  const Nag_MIP_User_Stop = 1238
# Typedef Enum: 
  const Nag_DegenInit = 1239
  const Nag_DegenOptimal = 1240
  const Nag_DegenEndCycle = 1241
# Typedef Enum: 
  const Nag_StatesInternal = 1242
  const Nag_StatesExternal = 1243
# Typedef Enum: 
  const Nag_LU_TypeB = 1244
  const Nag_LU_TypeBS = 1245
  const Nag_LU_TypeBT = 1246
# Typedef Enum: 
  const Nag_LU_SolveL = 1247
  const Nag_LU_SolveB = 1248
  const Nag_LU_SolveBt = 1249
# Typedef Enum: 
  const Nag_BasisFactB = 1250
  const Nag_BasisFactBS = 1251
# Typedef Enum: 
  const Nag_CrashNotSet = 1252
  const Nag_NoCrash = 1253
  const Nag_CrashOnce = 1254
  const Nag_CrashTwice = 1255
  const Nag_CrashThreeTimes = 1256
# Typedef Enum: 
  const Nag_ScaleNotSet = 1257
  const Nag_NoScale = 1258
  const Nag_RowColScale = 1259
  const Nag_ExtraScale = 1260
  const Nag_ScaleProvided = 500014
  const Nag_NoScaleProvided = 500015
  const Nag_CondFanLinVanDooren = 500042
  const Nag_FanLinVanDooren = 500043
  const Nag_TropicalLargest = 500044
  const Nag_TropicalSmallest = 500045
# Typedef Enum: 
  const Nag_ElementsIn = 1261
  const Nag_ElementsSeparate = 1262

# Following used in f02 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_Supplied = 1263
  const Nag_NotSupplied = 1264
# Typedef Enum: 
  const Nag_Select_Modulus = 1265
  const Nag_Select_RealPart = 1266

# Following used in f04mcc chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_LDLTX = 1267
  const Nag_LDX = 1268
  const Nag_DLTX = 1269
  const Nag_LLTX = 1270
  const Nag_LX = 1271
  const Nag_LTX = 1272
# Typedef Enum: 
  const Nag_SparseNsym_RGMRES = 1273
  const Nag_SparseNsym_CGS = 1274
  const Nag_SparseNsym_BiCGSTAB = 1275
  const Nag_SparseNsym_CG = 1276
  const Nag_SparseNsym_TFQMR = 1277
  const Nag_SparseNsym_MINRES = 500010
# Typedef Enum: 
  const Nag_SparseNsym_ModFact = 1279
  const Nag_SparseNsym_UnModFact = 1280
# Typedef Enum: 
  const Nag_SparseNsym_NoPiv = 1281
  const Nag_SparseNsym_UserPiv = 1282
  const Nag_SparseNsym_PartialPiv = 1283
  const Nag_SparseNsym_CompletePiv = 1284
  const Nag_SparseNsym_MarkowitzPiv = 1285
# Typedef Enum: 
  const Nag_SparseNsym_RemoveZeros = 1286
  const Nag_SparseNsym_KeepZeros = 1287
  const Nag_SparseNsym_FailZeros = 1288
# Typedef Enum: 
  const Nag_SparseNsym_RemoveDups = 1289
  const Nag_SparseNsym_SumDups = 1290
  const Nag_SparseNsym_FailDups = 1291
# Typedef Enum: 
  const Nag_SparseNsym_StoreCS = 1292
  const Nag_SparseNsym_StoreSCS = 1293
# Typedef Enum: 
  const Nag_SparseSym_CG = 1294
  const Nag_SparseSym_Lanczos = 1295
  const Nag_SparseSym_TFQMR = 1296
  const Nag_SparseSym_SYMMLQ = 500018
  const Nag_SparseSym_MINRES = 500019
# Typedef Enum: 
  const Nag_SparseSym_ModFact = 1297
  const Nag_SparseSym_UnModFact = 1298
# Typedef Enum: 
  const Nag_SparseNsym_NoPrec = 1299
  const Nag_SparseNsym_SSORPrec = 1300
  const Nag_SparseNsym_JacPrec = 1301
  const Nag_SparseNsym_Prec = 1302
# Typedef Enum: 
  const Nag_SparseNsym_Weighted = 1303
  const Nag_SparseNsym_UnWeighted = 1304
# Typedef Enum: 
  const Nag_SparseSym_Weighted = 1305
  const Nag_SparseSym_UnWeighted = 1306
# Typedef Enum: 
  const Nag_SparseSym_Bisect = 1307
  const Nag_SparseSym_NoBisect = 1308
# Typedef Enum: 
  const Nag_SparseSym_OneNorm = 1309
  const Nag_SparseSym_TwoNorm = 1310
  const Nag_SparseSym_InfNorm = 1311
# Typedef Enum: 
  const Nag_SparseSym_TermLanczos = 1312
  const Nag_SparseSym_TermLanczosCG = 1313
# Typedef Enum: 
  const Nag_SparseNsym_NoCheck = 1314
  const Nag_SparseNsym_Check = 1315
# Typedef Enum: 
  const Nag_SparseSym_NoCheck = 1316
  const Nag_SparseSym_Check = 1317
# Typedef Enum: 
  const Nag_SparseSym_NoPiv = 1318
  const Nag_SparseSym_MarkPiv = 1319
  const Nag_SparseSym_UserPiv = 1320
# Typedef Enum: 
  const Nag_SparseSym_Prec = 1321
  const Nag_SparseSym_NoPrec = 1322
  const Nag_SparseSym_SSORPrec = 1323
  const Nag_SparseSym_JacPrec = 1324
# Typedef Enum: 
  const Nag_SparseSym_SumDups = 1325
  const Nag_SparseSym_RemoveDups = 1326
  const Nag_SparseSym_FailDups = 500016
# Typedef Enum: 
  const Nag_SparseSym_KeepZeros = 1327
  const Nag_SparseSym_RemoveZeros = 1328
  const Nag_SparseSym_FailZeros = 500017
# Typedef Enum: 
  const Nag_Sparse_Identity = 2120
  const Nag_Sparse_User = 2121
  const Nag_Sparse_Colamd = 2122
# Typedef Enum: 
  const Nag_NoTransform = 2130
  const Nag_LogTransform = 2131
  const Nag_SqrtTransform = 2132
# Typedef Enum: 
  const Nag_AddVar = 2140
  const Nag_BeginBackward = 2141
  const Nag_ColinearVar = 2142
  const Nag_DropVar = 2143
  const Nag_BeginForward = 2144
  const Nag_NoRemoveVar = 2145
  const Nag_BeginStepwise = 2146
  const Nag_VarianceRatio = 2147
  const Nag_FinishStepwise = 2148

# Following used in s30 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_Call = 2190
  const Nag_Put = 2191
# Typedef Enum: 
  const Nag_DownandIn = 2200
  const Nag_DownandOut = 2201
  const Nag_UpandIn = 2202
  const Nag_UpandOut = 2203

# Following used in g07 chapter (additional)
# -------------------------------------------------
# Typedef Enum: 
  const Nag_PWM = 2660
  const Nag_MOM = 2661
  const Nag_MOMMLE = 2662
  const Nag_PWMMLE = 2663

# Following used in C09 chapter 
# -------------------------------------------------

# FORTRAN: WAVNAM
# Typedef Enum: 
  const Nag_Morlet = 2240
  const Nag_DGauss = 2241
  const Nag_MexHat = 2242
  const Nag_Haar = 2243
  const Nag_Daubechies2 = 2244
  const Nag_Daubechies3 = 2245
  const Nag_Daubechies4 = 2246
  const Nag_Daubechies5 = 2247
  const Nag_Daubechies6 = 2248
  const Nag_Daubechies7 = 2249
  const Nag_Daubechies8 = 2250
  const Nag_Daubechies9 = 2251
  const Nag_Daubechies10 = 2252
  const Nag_Biorthogonal1_1 = 2253
  const Nag_Biorthogonal1_3 = 2254
  const Nag_Biorthogonal1_5 = 2255
  const Nag_Biorthogonal2_2 = 2256
  const Nag_Biorthogonal2_4 = 2257
  const Nag_Biorthogonal2_6 = 2258
  const Nag_Biorthogonal2_8 = 2259
  const Nag_Biorthogonal3_1 = 2260
  const Nag_Biorthogonal3_3 = 2261
  const Nag_Biorthogonal3_5 = 2262
  const Nag_Biorthogonal3_7 = 2263

# FORTRAN: MODE
# Typedef Enum: 
  const Nag_HalfPointSymmetric = 2220
  const Nag_WholePointSymmetric = 2221
  const Nag_Periodic = 2222
  const Nag_ZeroPadded = 2223

# Fortran: WTRANS
# Typedef Enum: 
  const Nag_SingleLevel = 2560
  const Nag_MultiLevel = 2561
  const Nag_MODWTSingle = 2562
  const Nag_MODWTMulti = 2563

# Fortran: KEEPA
# Typedef Enum: 
  const Nag_StoreAll = 2570
  const Nag_StoreFinal = 2571
# Typedef Enum: 
  const Nag_SingleExponential = 2580
  const Nag_BrownsExponential = 2581
  const Nag_LinearHolt = 2582
  const Nag_AdditiveHoltWinters = 2583
  const Nag_MultiplicativeHoltWinters = 2584

# Following used in g01 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_LowerTail = 1329
  const Nag_UpperTail = 1330
  const Nag_TwoTailSignif = 1331
  const Nag_TwoTailConfid = 1332
  const Nag_TwoTail = 1333
  const Nag_Central = 1334
# Typedef Enum: 
  const Nag_RankScores = 1335
  const Nag_NormalScores = 1336
  const Nag_BlomScores = 1337
  const Nag_TukeyScores = 1338
  const Nag_WaerdenScores = 1339
  const Nag_SavageScores = 1340
# Typedef Enum: 
  const Nag_AverageTies = 1341
  const Nag_LowestTies = 1342
  const Nag_HighestTies = 1343
  const Nag_RandomTies = 1344
  const Nag_IgnoreTies = 1345
# Typedef Enum: 
  const Nag_ClassBoundaryUser = 1346
  const Nag_ClassBoundaryComp = 1347
# Typedef Enum: 
  const Nag_LCCPan = 1348
  const Nag_LCCImhof = 1349
  const Nag_LCCDefault = 1350
# Typedef Enum: 
  const Nag_CumulantsOnly = 1351
  const Nag_ComputeMoments = 1352
# Typedef Enum: 
  const Nag_RatioMoments = 1353
  const Nag_LinearRatio = 1354
  const Nag_QuadRatio = 1355

# Following used in g02 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_WeightedEstimate = 1356
  const Nag_UnweightedEstimate = 1357
# Typedef Enum: 
  const Nag_MeanInclude = 1358
  const Nag_MeanZero = 1359
# Typedef Enum: 
  const Nag_ObservAdd = 1360
  const Nag_ObservDel = 1361
# Typedef Enum: 
  const Nag_AboutMean = 1362
  const Nag_AboutZero = 1363
# Typedef Enum: 
  const Nag_FirstCall = 1364
  const Nag_Update = 1365
# Typedef Enum: 
  const Nag_Expo = 1366
  const Nag_Iden = 1367
  const Nag_Log = 1368
  const Nag_Sqrt = 1369
  const Nag_Reci = 1370
  const Nag_Logistic = 1371
  const Nag_Probit = 1372
  const Nag_Compl = 1373
# Typedef Enum: 
  const Nag_RegNotSet = 1374
  const Nag_HuberReg = 1375
  const Nag_MallowsReg = 1376
  const Nag_SchweppeReg = 1377
# Typedef Enum: 
  const Nag_PsiNotSet = 1378
  const Nag_Lsq = 1379
  const Nag_HuberFun = 1380
  const Nag_HampelFun = 1381
  const Nag_AndrewFun = 1382
  const Nag_TukeyFun = 1383
# Typedef Enum: 
  const Nag_SigmaNotSet = 1384
  const Nag_SigmaRes = 1385
  const Nag_SigmaConst = 1386
  const Nag_SigmaChi = 1387
# Typedef Enum: 
  const Nag_CovNotSet = 1388
  const Nag_CovMatAve = 1389
  const Nag_CovMatObs = 1390
# Typedef Enum: 
  const Nag_SigmaSimul = 1391
  const Nag_SigmaBypas = 1392

# Following used in g03 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_MatCorrelation = 1393
  const Nag_MatStandardised = 1394
  const Nag_MatSumSq = 1395
  const Nag_MatVarCovar = 1396
# Typedef Enum: 
  const Nag_ScoresStand = 1397
  const Nag_ScoresNotStand = 1398
  const Nag_ScoresUnitVar = 1399
  const Nag_ScoresEigenval = 1400
# Typedef Enum: 
  const Nag_NoWeights = 1401
  const Nag_Weights = 1402
  const Nag_Weightsfreq = 1403
  const Nag_Weightsvar = 1404
  const Nag_WeightObs = 500020
  const Nag_WeightWindow = 500021
  const Nag_WeightWindowPos = 500022
# Typedef Enum: 
  const Nag_RoLoadStand = 1405
  const Nag_RoLoadNotStand = 1406
# Typedef Enum: 
  const Nag_NoTransNorm = 1407
  const Nag_Orig = 1408
  const Nag_OrigCentroid = 1409
  const Nag_Norm = 1410
  const Nag_OrigNorm = 1411
  const Nag_OrigNormCentroid = 1412
# Typedef Enum: 
  const Nag_LsqScale = 1413
  const Nag_NotLsqScale = 1414
# Typedef Enum: 
  const Nag_DataCorr = 1415
  const Nag_DataCovar = 1416
  const Nag_MatCorr_Covar = 1417
# Typedef Enum: 
  const Nag_FacScoreRegsn = 1418
  const Nag_FacScoreBart = 1419
# Typedef Enum: 
  const Nag_FacRotate = 1420
  const Nag_FacNoRotate = 1421
# Typedef Enum: 
  const Nag_EqualCovar = 1422
  const Nag_NotEqualCovar = 1423
# Typedef Enum: 
  const Nag_SamplePoints = 1424
  const Nag_GroupMeans = 1425
# Typedef Enum: 
  const Nag_DiscrimEstimate = 1426
  const Nag_DiscrimPredict = 1427
# Typedef Enum: 
  const Nag_EqualPrior = 1428
  const Nag_GroupSizePrior = 1429
  const Nag_UserPrior = 1430
# Typedef Enum: 
  const Nag_MatUp = 1431
  const Nag_NoMatUp = 1432
# Typedef Enum: 
  const Nag_DistAbs = 1433
  const Nag_DistEuclid = 1434
  const Nag_DistSquared = 1435
# Typedef Enum: 
  const Nag_VarScaleStd = 1436
  const Nag_VarScaleRange = 1437
  const Nag_VarScaleUser = 1438
  const Nag_NoVarScale = 1439
# Typedef Enum: 
  const Nag_SingleLink = 1440
  const Nag_CompleteLink = 1441
  const Nag_GroupAverage = 1442
  const Nag_Centroid = 1443
  const Nag_Median = 1444
  const Nag_MinVariance = 1445
# Typedef Enum: 
  const Nag_DendNorth = 1446
  const Nag_DendSouth = 1447
  const Nag_DendEast = 1448
  const Nag_DendWest = 1449
# Typedef Enum: 
  const Nag_AllEigVals = 1450
  const Nag_LargeEigVals = 1451
# Typedef Enum: 
  const Nag_Stress = 1452
  const Nag_SStress = 1453
# Typedef Enum: 
  const Nag_GroupCovar = 2920
  const Nag_PooledCovar = 2921
  const Nag_GroupVar = 2922
  const Nag_PooledVar = 2923
  const Nag_OverallVar = 2924

# Following used in g04 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_NoBlocks = 1454
  const Nag_SerialBlocks = 1455
  const Nag_ParallelBlocks = 1456
# Typedef Enum: 
  const Nag_Poly = 1457
  const Nag_Helmert = 1458
  const Nag_FirstLevel = 1459
  const Nag_LastLevel = 1460
  const Nag_AllLevels = 1461
# Typedef Enum: 
  const Nag_TukeyInterval = 1462
  const Nag_BonferroniInterval = 1463
  const Nag_DunnInterval = 1464
  const Nag_FisherInterval = 1465
  const Nag_ScheffeInterval = 1466
# Typedef Enum: 
  const Nag_CompProbExact = 1467
  const Nag_CompProbApprox = 1468

# Following used in g05 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_PDF = 1469
  const Nag_CDF = 1470
# Typedef Enum: 
  const Nag_InitializeI = 1471
  const Nag_InputA = 1472
# Typedef Enum: 
  const Nag_Basic = 2150
  const Nag_WichmannHill_I = 2151
  const Nag_MersenneTwister = 2152
  const Nag_WichmannHill_II = 2153
  const Nag_ACORN = 2154
  const Nag_MRG32k3a = 2155
# Typedef Enum: 
  const Nag_InitializeReference = 2160
  const Nag_GenerateFromReference = 2161
  const Nag_InitializeAndGenerate = 2162
  const Nag_GenerateWithoutReference = 2163
  const Nag_ReInitializeAndGenerate = 2164
  const Nag_ReGenerateFromReference = 2165
# Typedef Enum: 
  const Nag_ContinueAndUpdate = 2170
  const Nag_EstimateInitialValues = 2171
  const Nag_InitialValuesSupplied = 2172
  const Nag_ContinueNoUpdate = 2173
# Typedef Enum: 
  const Nag_Use_Default = 2680
  const Nag_Use_Supplied = 2681
# Typedef Enum: 
  const Nag_VgmSymmStab = 2930
  const Nag_VgmCauchy = 2931
  const Nag_VgmDifferential = 2932
  const Nag_VgmExponential = 2933
  const Nag_VgmGauss = 2934
  const Nag_VgmNugget = 2935
  const Nag_VgmSpherical = 2936
  const Nag_VgmBessel = 2937
  const Nag_VgmHole = 2938
  const Nag_VgmWhittleMatern = 2939
  const Nag_VgmContParam = 2940
  const Nag_VgmGenHyp = 2941
  const Nag_VgmCosine = 2942
  const Nag_VgmBrownian = 2943
# Typedef Enum: 
  const Nag_EmbedPadZeros = 2950
  const Nag_EmbedPadValues = 2951
# Typedef Enum: 
  const Nag_EmbedScaleTraces = 2960
  const Nag_EmbedScaleSqrtTraces = 2961
  const Nag_EmbedScaleOne = 2962
# Typedef Enum: 
  const Nag_Even = 2970
  const Nag_Odd = 2971
# Typedef Enum: 
  const Nag_LRRoundDown = 2980
  const Nag_LRRoundUp = 2981
  const Nag_RLRoundDown = 2982
  const Nag_RLRoundUp = 2983

# Following used in g07 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_PopVarEqual = 1473
  const Nag_PopVarNotEqual = 1474
# Typedef Enum: 
  const Nag_CE_EM = 1475
  const Nag_CE_NR = 1476
# Typedef Enum: 
  const Nag_Censored = 1477
  const Nag_NoCensored = 1478
# Typedef Enum: 
  const Nag_RCI_Exact = 1479
  const Nag_RCI_Approx = 1480
# Typedef Enum: 
  const Nag_NormalDistn = 1481
  const Nag_Tdistn = 1482

# Following used in g08 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_IncSignZerosY = 1483
  const Nag_IncSignZerosN = 1484
# Typedef Enum: 
  const Nag_Uniform = 1485
  const Nag_Normal = 1486
  const Nag_Gamma = 1487
  const Nag_Beta = 1488
  const Nag_ChiSquare = 1489
  const Nag_Binomial = 1490
  const Nag_Exponential = 1491
  const Nag_Poisson = 1492
  const Nag_UserProb = 1493
  const Nag_LogNormal = 1494
  const Nag_StudentT = 1495
  const Nag_NegBinomial = 500011
  const Nag_GenPareto = 500012
# Typedef Enum: 
  const Nag_ParaSupplied = 1496
  const Nag_ParaEstimated = 1497
# Typedef Enum: 
  const Nag_TestStatisticsDAbs = 1498
  const Nag_TestStatisticsDPos = 1499
  const Nag_TestStatisticsDNeg = 1500
  const Nag_AlternativeDAbs = 500029
  const Nag_AlternativeDPos = 500030
  const Nag_AlternativeDNeg = 500031
  const Nag_DavidsAndMoodsTest = 500032
  const Nag_DavidsTest = 500033
  const Nag_MoodsTest = 500034
# Typedef Enum: 
  const Nag_SingleCallR = 1501
  const Nag_FirstCallR = 1502
  const Nag_IntermediateCallR = 1503
  const Nag_LastCallR = 1504

# Following used in g10 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_4253H = 1505
  const Nag_3RSSH = 1506
# Typedef Enum: 
  const Nag_SmoothFitPartial = 1507
  const Nag_SmoothFitQuick = 1508
  const Nag_SmoothFitFull = 1509
# Typedef Enum: 
  const Nag_SmoothParamCV = 1510
  const Nag_SmoothParamGCV = 1511
  const Nag_SmoothParamDF = 1512
# Typedef Enum: 
  const Nag_UseFFT_Y = 1513
  const Nag_UseFFT_N = 1514

# Following used in g11 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_TableStatsNObs = 1515
  const Nag_TableStatsTotal = 1516
  const Nag_TableStatsAv = 1517
  const Nag_TableStatsMedian = 1518
  const Nag_TableStatsVar = 1519
  const Nag_TableStatsLarge = 1520
  const Nag_TableStatsSmall = 1521
# Typedef Enum: 
  const Nag_TableUpdateU = 1522
  const Nag_TableUpdateI = 1523
# Typedef Enum: 
  const Nag_TabulateVarDiscr = 1524
  const Nag_TabulateVarCont = 1525

# Following used in g12 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_Freq = 1526
  const Nag_NoFreq = 1527
# Typedef Enum: 
  const Nag_UseOffset_Y = 1528
  const Nag_UseOffset_N = 1529

# Following used in g13 chapter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_CriteriaNotSet = 1530
  const Nag_LeastSquares = 1531
  const Nag_Exact = 1532
  const Nag_Marginal = 1533
# Typedef Enum: 
  const Nag_Rectangular = 1534
  const Nag_Bartlett = 1535
  const Nag_Tukey = 1536
  const Nag_Parzen = 1537
# Typedef Enum: 
  const Nag_NoCorrection = 1538
  const Nag_Mean = 1539
  const Nag_Trend = 1540
# Typedef Enum: 
  const Nag_Unlogged = 1541
  const Nag_Logged = 1542
# Typedef Enum: 
  const Nag_UseRange = 1543
  const Nag_UseSD = 1544
# Typedef Enum: 
  const Nag_AutoCov = 1545
  const Nag_AutoCorr = 1546

# Following used in g13 chapter, Kalman filter 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_next_state = 1547
  const Nag_curr_state = 1548
# Typedef Enum: 
  const Nag_ab_prod = 1549
  const Nag_ab_sep = 1550
# Typedef Enum: 
  const Nag_UH_Observer = 1551
  const Nag_LH_Observer = 1552
# Typedef Enum: 
  const Nag_UH_Controller = 1553
  const Nag_LH_Controller = 1554

# Following used in g13 chapter, GARCH 
# -------------------------------------------------
# Typedef Enum: 
  const Nag_Garch_Useht_True = 1555
  const Nag_Garch_Useht_False = 1556
# Typedef Enum: 
  const Nag_Garch_Fcall_True = 1557
  const Nag_Garch_Fcall_False = 1558
# Typedef Enum: 
  const Nag_Garch_Stationary_True = 1559
  const Nag_Garch_Stationary_False = 1560
# Typedef Enum: 
  const Nag_Garch_Est_Initial_True = 1561
  const Nag_Garch_Est_Initial_False = 1562

# Following used in CL24, G chapters
# -------------------------------------------------
# Typedef Enum: 
  const Nag_WindowSupplied = 2900
  const Nag_RuleOfThumb = 2901

# Following used in CL24, E04 chapters
# -------------------------------------------------
# Typedef Enum: 
  const Nag_Regularized = 2910
  const Nag_NotRegularized = 2911

# Following used in CL24, h02 chapter
# -------------------------------------------------
# Typedef Enum: 
  const Nag_OutputNotSet = 1563
  const Nag_NoOutput = 1564
  const Nag_MPS_Summary = 1565
  const Nag_MPS_List = 1566
# Typedef Enum: 
  const Nag_BB_OK = 1567
  const Nag_BB_Alloc_Fail = 1568
  const Nag_BB_Internal_Error = 1569
# Typedef Enum: 
  const Nag_MIP_TypeNotSet = 1570
  const Nag_MILP = 1571
  const Nag_MIQP1 = 1572
  const Nag_MIQP2 = 1573
  const Nag_MIQP3 = 1574
  const Nag_MIQP4 = 1575
# Typedef Enum: 
  const Nag_NodSel_NotSet = 1576
  const Nag_Deep_Search = 1577
  const Nag_Broad_Search = 1578
  const Nag_MinObj_Search = 1579
  const Nag_DeepBroad_Search = 1580
  const Nag_DeepMinObj_Search = 1581
# Typedef Enum: 
  const Nag_VarSel_NotSet = 1582
  const Nag_First_Int = 1583
  const Nag_Nearest_Half = 1584
  const Nag_Use_Priority = 1585
# Typedef Enum: 
  const Nag_BrDir_NotSet = 1586
  const Nag_Branch_Left = 1587
  const Nag_Branch_Right = 1588
  const Nag_Branch_InitX = 1589
# Typedef Enum: 
  const Nag_NS_NotSet = 1590
  const Nag_NS_NotSolved = 1591
  const Nag_NS_NotBranched = 1592
  const Nag_NS_Integer = 1593
  const Nag_NS_Bounded = 1594
  const Nag_NS_Infeasible = 1595
  const Nag_NS_Terminated = 1596

# Following used in m01 chapters
# -------------------------------------------------
# Typedef Enum: 
  const Nag_Ascending = 1597
  const Nag_Descending = 1598
  const Nag_Unsorted = 500013
# Typedef Enum: 
  const Nag_First = 1599
  const Nag_Last = 1600

# Following used in s chapter
# -------------------------------------------------
# Typedef Enum: 
  const Nag_ScaleRes = 1601
  const Nag_UnscaleRes = 1602

# Following used in x04 chapter
# -------------------------------------------------
# Typedef Enum: 
  const Nag_NoLabels = 1603
  const Nag_IntegerLabels = 1604
  const Nag_CharacterLabels = 1605
# Typedef Enum: 
  const Nag_GeneralMatrix = 1606
  const Nag_LowerMatrix = 1607
  const Nag_UpperMatrix = 1608
  const Nag_DiagonalMatrix = 500023
  const Nag_LowerFactored = 500024
  const Nag_UpperFactored = 500025
# Typedef Enum: 
  const Nag_AboveForm = 1609
  const Nag_BracketForm = 1610
  const Nag_DirectForm = 1611
# Typedef Enum: 
  const Nag_HashOK = 1612
  const Nag_HashTableTooBig = 1613
# Typedef Enum: 
  const Nag_BIC = 2600
  const Nag_FPE = 2601
  const Nag_LOOCV = 2602
  const Nag_EUV = 2603
  const Nag_GCV = 2604
  const Nag_UEV = 2605
# Typedef Enum: 
  const Nag_EstimatesOrig = 2610
  const Nag_EstimatesStand = 2611
# Typedef Enum: 
  const Nag_PredNoScale = 2620
  const Nag_PredStdScale = 2621
  const Nag_PredUserScale = 2622
# Typedef Enum: 
  const Nag_NoPara = 2630
  const Nag_OrigPara = 2631
  const Nag_StandPara = 2632
# Typedef Enum: 
  const Nag_WantLOO = 2640
  const Nag_NoLOO = 2641
# Typedef Enum: 
  const Nag_NoVIF = 2650
  const Nag_WantVIF = 2651
# Typedef Enum: 
  const Nag_HessianNotSet = 1614
  const Nag_HessianFull = 1615
  const Nag_HessianLimited = 1616
# Typedef Enum: 
  const Nag_DirectionNotSet = 1617
  const Nag_Minimize = 1618
  const Nag_Maximize = 1619
  const Nag_FeasiblePoint = 1620
# Typedef Enum: 
  const Nag_UnitRoot = 3020
  const Nag_UnitRootWithDrift = 3021
  const Nag_UnitRootWithDriftAndTrend = 3022
# Typedef Enum: 
  const Nag_ViaLookUp = 3030
  const Nag_ViaLookUpOriginal = 3031
  const Nag_ViaSimulation = 3032
# Typedef Enum: 
  const Nag_NormalMean = 2990
  const Nag_NormalStd = 2991
  const Nag_NormalMeanStd = 2992
  const Nag_GammaScale = 2993
  const Nag_ExponentialLambda = 2994
  const Nag_PoissonLambda = 2995
# Typedef Enum: 
  const Nag_FirstSegCall = 3000
  const Nag_SecondSegCall = 3001
  const Nag_LeftSubSeg = 3002
  const Nag_RightSubSeg = 3003
# Typedef Enum: 
  const Nag_NoCondBackErr = 3040
  const Nag_CondOnly = 3041
  const Nag_BackErrLeft = 3042
  const Nag_BackErrRight = 3043
  const Nag_BackErrBoth = 3044
  const Nag_CondBackErrLeft = 3045
  const Nag_CondBackErrRight = 3046
  const Nag_CondBackErrBoth = 3047
# Typedef Enum: 
  const Nag_LowerMinus = 3050
  const Nag_UpperMinus = 3051
# Typedef Enum: 
  const Nag_DataByVar = 3070
  const Nag_DataByObs = 3071

# Following used in e05jb
# -------------------------------------------------
# Typedef Enum: 
  const Nag_SimpleBdry = 2670
  const Nag_SimpleOffBdry = 2671
  const Nag_Linesearch = 2672
  const Nag_UserSet = 2673
  const Nag_Random = 2674

# Following used in g05 chapter, Quasi Random Number Generators
# -------------------------------------------------
# Typedef Enum: 
  const Nag_QuasiRandom_Init = 1621
  const Nag_QuasiRandom_Cont = 1622
  const Nag_QuasiRandom_Finish = 1623
# Typedef Enum: 
  const Nag_QuasiRandom_Sobol = 1624
  const Nag_QuasiRandom_Faure = 1625
  const Nag_QuasiRandom_Nied = 1626
  const Nag_QuasiRandom_SobolA659 = 1627
# Typedef Enum: 
  const Nag_NoScrambling = 2590
  const Nag_OwenLike = 2591
  const Nag_FaureTezuka = 2592
  const Nag_OwenFaureTezuka = 2593
# Typedef Enum: 
  const Nag_RFP_Normal = 2700
  const Nag_RFP_Trans = 2701
  const Nag_RFP_ConjTrans = 2702
# Typedef Enum: 
  const Nag_Quad_Gauss_Legendre = 2710
  const Nag_Quad_Gauss_Jacobi = 2711
  const Nag_Quad_Gauss_Exponential = 2712
  const Nag_Quad_Gauss_Laguerre = 2713
  const Nag_Quad_Gauss_Hermite = 2714
  const Nag_Quad_Gauss_Rational = 2715
  const Nag_Quad_Gauss_Kronrod_15 = 2716
  const Nag_Quad_Gauss_Kronrod_21 = 2717
  const Nag_Quad_Gauss_Kronrod_31 = 2718
  const Nag_Quad_Gauss_Kronrod_41 = 2719
  const Nag_Quad_Gauss_Kronrod_51 = 2720
  const Nag_Quad_Gauss_Kronrod_61 = 2721
  const Nag_Quad_Gauss_Laguerre_Adjusted = 2722
  const Nag_Quad_Gauss_Rational_Adjusted = 2723
  const Nag_Quad_Gauss_Exponential_Adjusted = 2724
  const Nag_Quad_Gauss_Jacobi_Adjusted = 2725
  const Nag_Quad_Gauss_Hermite_Adjusted = 2726
  const Nag_Quad_Sphere_LowAcc = 2727
  const Nag_Quad_Sphere_HighAcc = 2728
  const Nag_Quad_Sphere_LowAcc_BadSurface = 2729
  const Nag_Quad_Sphere_HighAcc_BadSurface = 2730
  const Nag_Quad_Sphere_LowAcc_BadCentre = 2731
  const Nag_Quad_Sphere_HighAcc_BadCentre = 2732
  const Nag_Quad_Sphere_Default = 2733
  const Nag_Quad_Gauss_Chebyshev_first = 2734
  const Nag_Quad_Gauss_Chebyshev_second = 2735
# Typedef Enum: 
  const Nag_Real = 2740
  const Nag_Integer = 2741
  const Nag_Character = 2742
  const Nag_Integer_Additional = 2743
  const Nag_Real_Additional = 2744
# Typedef Enum: 
  const Nag_Adams = 2750
  const Nag_BDF = 2751
# Typedef Enum: 
  const Nag_NoCentroSymm = 2760
  const Nag_CentroSymmOdd = 2761
  const Nag_CentroSymmEven = 2762
  const Nag_CentroSymmNeither = 2763
# Typedef Enum: 
  const Nag_InitWeights = 2770
  const Nag_ReuseWeights = 2771
# Typedef Enum: 
  const Nag_ColpivRrank = 2780
  const Nag_ColpivRrankCond = 2781
  const Nag_FullpivRrank = 2782
  const Nag_FullpivRrankCond = 2783
  const Nag_ColpivSVrankAbs = 2784
  const Nag_ColpivSVrankRel = 2785
# Typedef Enum: 
  const Nag_ZeroColsNormal = 2790
  const Nag_ZeroColsRestrict = 2791
# Typedef Enum: 
  const Nag_PerturbOn = 2800
  const Nag_PerturbOff = 2801
# Typedef Enum: 
  const Nag_LowerBound = 2810
  const Nag_WeightedNorm = 2811
  const Nag_Both = 2812
# Typedef Enum: 
  const Nag_Coord_Cartesian = 2820
  const Nag_Coord_Spherical = 2821
  const Nag_Coord_Spherical_Special = 2822
# Typedef Enum: 
  const Nag_Exp = 2830
  const Nag_Sin = 2831
  const Nag_Cos = 2832
  const Nag_Sinh = 2833
  const Nag_Cosh = 2834
  const Nag_Loga = 2835
# Typedef Enum: 
  const Nag_Intercept = 2840
  const Nag_NoIntercept = 2841
# Typedef Enum: 
  const Nag_PreviousPoint = 2850
  const Nag_Linear = 2851
  const Nag_NextPoint = 2852
# Typedef Enum: 
  const Nag_Identity = 2860
  const Nag_AbsVal = 2861
  const Nag_AbsDiff = 2862
  const Nag_AbsValScaled = 2863
  const Nag_AbsDiffScaled = 2864
# Typedef Enum: 
  const Nag_ModifiedNewton = 2880
  const Nag_Functional = 2881
# Typedef Enum: 
  const Nag_CentralDifferences = 3080
  const Nag_UpwindDifferences = 3081
# Typedef Enum: 
  const Nag_LARS_StepNumber = 4020
  const Nag_LARS_ScaledNorm = 4021
  const Nag_LARS_ProportionScaledNorm = 4022
  const Nag_LARS_UnscaledNorm = 4023
  const Nag_LARS_ProportionUnscaledNorm = 4024
# Typedef Enum: 
  const Nag_LARS_LAR = 4000
  const Nag_LARS_ForwardStagewise = 4001
  const Nag_LARS_LASSO = 4002
  const Nag_LARS_PositiveLASSO = 4003
# Typedef Enum: 
  const Nag_LARS_None = 4010
  const Nag_LARS_Centered = 4011
  const Nag_LARS_Normalized = 4012
  const Nag_LARS_CenteredNormalized = 4013

# Following used in g13 chapter
# -------------------------------------------------
# Typedef Enum: 
  const Nag_Quad_sort_integral_magnitude_descending = 4030
  const Nag_Quad_sort_integral_descending = 4031
  const Nag_Quad_sort_error_descending = 4032
  const Nag_Quad_sort_bounds_descending = 4033
  const Nag_Quad_sort_bounds_ascending = 4034
  const Nag_Quad_sort_error_ascending = 4035
  const Nag_Quad_sort_integral_ascending = 4036
  const Nag_Quad_sort_integral_magnitude_ascending = 4037

