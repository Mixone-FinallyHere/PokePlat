.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	script Script_6
	script Script_7
	script Script_8
	script Script_9
	script Script_10
	script Script_11
	script Script_12
	.hword 0xfd13
@ 32

Script_1: @ 32
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x2
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 45

Script_2: @ 45
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 58

Script_3: @ 58
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6b

Script_4: @ 6b
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7e

Script_5: @ 7e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 91

Script_6: @ 91
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	Message 0x7
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a4

Script_7: @ a4
	PlayFanfare 0x5dc
	LockAll
	CheckFlag 0xb9
	CompareLastResultJump EQUAL, Script_branch_d0
	SetFlag 0xb9
	SetFlag 0x185
	Message 0x0
	FacePlayer
	SetVarHero 0x0
	Message 0x1
	Jump Script_branch_e0
@ ce

.byte 0x2 @ 0xce
.byte 0x0 @ 0xcf

Script_branch_d0: @ d0
	FacePlayer
	SetVarHero 0x0
	Message 0x1
	Jump Script_branch_e0
@ de

.byte 0x2 @ 0xde
.byte 0x0 @ 0xdf

Script_branch_e0: @ e0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ e8

Script_11: @ e8
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0x13
	ReleaseAll
	End
@ fe

Script_8: @ fe
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ShowMoney 0x14, 0x2
	Message 0x8
	Multi2 0x1f, 0xb, 0x0, 0x1, 0x800c
	Cmd_33a 0x1
	Cmd_42 0xe, 0x0
	Cmd_42 0xf, 0x1
	Cmd_42 0x10, 0x2
	CloseMulti
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_150
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_18f
	Jump Script_branch_215
@ 14e

.byte 0x2 @ 0x14e
.byte 0x0 @ 0x14f

Script_branch_150: @ 150
	SetVar 0x8004, 0x1
	SetVar 0x8005, 0xc8
	CheckStoreItem 0x2a, 0x8004, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1ff
	CheckMoneyDCare 0x800c, 0xc8
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_20a
	Message 0x9
	Jump Script_branch_1ce
@ 18d

.byte 0x2 @ 0x18d
.byte 0x0 @ 0x18e

Script_branch_18f: @ 18f
	SetVar 0x8004, 0xa
	SetVar 0x8005, 0x7d0
	CheckStoreItem 0x2a, 0x8004, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_1ff
	CheckMoneyDCare 0x800c, 0x7d0
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_20a
	Message 0xa
	Jump Script_branch_1ce
@ 1cc

.byte 0x2 @ 0x1cc
.byte 0x0 @ 0x1cd

Script_branch_1ce: @ 1ce
	TakeItem LAVA_COOKIE, 0x8004, 0x800c
	PlayFanfare 0x644
	Cmd_334 0x23, 0x8005
	TakeMoneyDCare 0x8005
	UpdateMoney
	WaitFanfare 0x644
	If 0x4042, 0x2710
	CompareLastResultCall LESSER, Script_branch_700
	Jump Script_branch_220
@ 1fd

.byte 0x2 @ 0x1fd
.byte 0x0 @ 0x1fe

Script_branch_1ff: @ 1ff
	Message 0xb
	Jump Script_branch_220
@ 208

.byte 0x2 @ 0x208
.byte 0x0 @ 0x209

Script_branch_20a: @ 20a
	Message 0xc
	Jump Script_branch_220
@ 213

.byte 0x2 @ 0x213
.byte 0x0 @ 0x214

Script_branch_215: @ 215
	Message 0xd
	Jump Script_branch_220
@ 21e

.byte 0x2 @ 0x21e
.byte 0x0 @ 0x21f

Script_branch_220: @ 220
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 22a

Script_9: @ 22a
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	ShowMoney 0x14, 0x2
	Message 0x11
	YesNoBox 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_25b
	If 0x800c, 0x1
	CompareLastResultJump EQUAL, Script_branch_306
	End
@ 25b

Script_branch_25b: @ 25b
	CheckItem 0x1c1, 0x1, 0x800c
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_537
	Call Function_697
	CopyVar 0x8008, 0x800c
	If 0x8008, 0x0
	CompareLastResultJump EQUAL, Script_branch_31b
	If 0x8008, 0x1
	CompareLastResultJump EQUAL, Script_branch_344
	If 0x8008, 0x2
	CompareLastResultJump EQUAL, Script_branch_36d
	If 0x8008, 0x3
	CompareLastResultJump EQUAL, Script_branch_396
	If 0x8008, 0x4
	CompareLastResultJump EQUAL, Script_branch_3bf
	If 0x8008, 0x5
	CompareLastResultJump EQUAL, Script_branch_3e8
	If 0x8008, 0x6
	CompareLastResultJump EQUAL, Script_branch_411
	If 0x8008, 0x7
	CompareLastResultJump EQUAL, Script_branch_43a
	If 0x8008, 0x8
	CompareLastResultJump EQUAL, Script_branch_463
	If 0x8008, 0x9
	CompareLastResultJump EQUAL, Script_branch_48c
	Jump Script_branch_306
@ 304

.byte 0x2 @ 0x304
.byte 0x0 @ 0x305

Script_branch_306: @ 306
	Message 0x17
	Jump Script_branch_311
@ 30f

.byte 0x2 @ 0x30f
.byte 0x0 @ 0x310

Script_branch_311: @ 311
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 31b

Script_branch_31b: @ 31b
	CheckMoney 0x800c, 0x1900
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52c
	SetVar 0x8005, 0x1
	Call Function_557
	Jump Script_branch_4b5
@ 342

.byte 0x2 @ 0x342
.byte 0x0 @ 0x343

Script_branch_344: @ 344
	CheckMoney 0x800c, 0x1900
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52c
	SetVar 0x8005, 0x1
	Call Function_577
	Jump Script_branch_4b5
@ 36b

.byte 0x2 @ 0x36b
.byte 0x0 @ 0x36c

Script_branch_36d: @ 36d
	CheckMoney 0x800c, 0x1900
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52c
	SetVar 0x8005, 0x1
	Call Function_597
	Jump Script_branch_4b5
@ 394

.byte 0x2 @ 0x394
.byte 0x0 @ 0x395

Script_branch_396: @ 396
	CheckMoney 0x800c, 0x1900
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52c
	SetVar 0x8005, 0x1
	Call Function_5b7
	Jump Script_branch_4b5
@ 3bd

.byte 0x2 @ 0x3bd
.byte 0x0 @ 0x3be

Script_branch_3bf: @ 3bf
	CheckMoney 0x800c, 0x1900
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52c
	SetVar 0x8005, 0x1
	Call Function_5d7
	Jump Script_branch_4b5
@ 3e6

.byte 0x2 @ 0x3e6
.byte 0x0 @ 0x3e7

Script_branch_3e8: @ 3e8
	CheckMoney 0x800c, 0x1900
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52c
	SetVar 0x8005, 0x1
	Call Function_5f7
	Jump Script_branch_4b5
@ 40f

.byte 0x2 @ 0x40f
.byte 0x0 @ 0x410

Script_branch_411: @ 411
	CheckMoney 0x800c, 0x1900
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52c
	SetVar 0x8005, 0x1
	Call Function_617
	Jump Script_branch_4b5
@ 438

.byte 0x2 @ 0x438
.byte 0x0 @ 0x439

Script_branch_43a: @ 43a
	CheckMoney 0x800c, 0x1900
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52c
	SetVar 0x8005, 0x1
	Call Function_637
	Jump Script_branch_4b5
@ 461

.byte 0x2 @ 0x461
.byte 0x0 @ 0x462

Script_branch_463: @ 463
	CheckMoney 0x800c, 0x1900
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52c
	SetVar 0x8005, 0x1
	Call Function_657
	Jump Script_branch_4b5
@ 48a

.byte 0x2 @ 0x48a
.byte 0x0 @ 0x48b

Script_branch_48c: @ 48c
	CheckMoney 0x800c, 0x1900
	If 0x800c, 0x0
	CompareLastResultJump EQUAL, Script_branch_52c
	SetVar 0x8005, 0x1
	Call Function_677
	Jump Script_branch_4b5
@ 4b3

.byte 0x2 @ 0x4b3
.byte 0x0 @ 0x4b4

Script_branch_4b5: @ 4b5
	Cmd_307 0x800c
	If2 0x800c, 0x8005
	CompareLastResultJump LESSER, Script_branch_521
	Jump Script_branch_4ce
@ 4cc

.byte 0x2 @ 0x4cc
.byte 0x0 @ 0x4cd

Script_branch_4ce: @ 4ce
	If 0x8005, 0x0
	CompareLastResultJump EQUAL, Script_branch_503
	CheckPoffinItem 0x800c, 0x8007, 0x8000, 0x8001, 0x8002, 0x8003, 0x14
	Cmd_334 0x23, 0x1900
	TakeMoneyDCare 0x1900
	ScriptCmd_SubValue 0x8005, 0x1
	Jump Script_branch_4ce
@ 501

.byte 0x2 @ 0x501
.byte 0x0 @ 0x502

Script_branch_503: @ 503
	PlayFanfare 0x644
	UpdateMoney
	If 0x4042, 0x2710
	CompareLastResultCall LESSER, Script_branch_700
	Message 0x14
	Jump Script_branch_54d
@ 51f

.byte 0x2 @ 0x51f
.byte 0x0 @ 0x520

Script_branch_521: @ 521
	Message 0x16
	Jump Script_branch_54d
@ 52a

.byte 0x2 @ 0x52a
.byte 0x0 @ 0x52b

Script_branch_52c: @ 52c
	Message 0x15
	Jump Script_branch_54d
@ 535

.byte 0x2 @ 0x535
.byte 0x0 @ 0x536

Script_branch_537: @ 537
	Message 0x18
	Jump Script_branch_54d
@ 540

.byte 0x2 @ 0x540
.byte 0x0 @ 0x541
.byte 0x2c @ 0x542
.byte 0x0 @ 0x543
.byte 0x17 @ 0x544
.byte 0x16 @ 0x545
.byte 0x0 @ 0x546
.byte 0x2 @ 0x547
.byte 0x0 @ 0x548
.byte 0x0 @ 0x549
.byte 0x0 @ 0x54a
.byte 0x2 @ 0x54b
.byte 0x0 @ 0x54c

Script_branch_54d: @ 54d
	WaitButton
	CloseMsgOnKeyPress
	HideMoney
	ReleaseAll
	End
@ 557

Function_557: @ 557
	SetVar 0x8007, 0x20
	SetVar 0x8000, 0x20
	SetVar 0x8001, 0x0
	SetVar 0x8002, 0x0
	SetVar 0x8003, 0x0
	Return
@ 577

Function_577: @ 577
	SetVar 0x8007, 0x20
	SetVar 0x8000, 0x0
	SetVar 0x8001, 0x20
	SetVar 0x8002, 0x0
	SetVar 0x8003, 0x0
	Return
@ 597

Function_597: @ 597
	SetVar 0x8007, 0x20
	SetVar 0x8000, 0x0
	SetVar 0x8001, 0x0
	SetVar 0x8002, 0x20
	SetVar 0x8003, 0x0
	Return
@ 5b7

Function_5b7: @ 5b7
	SetVar 0x8007, 0x20
	SetVar 0x8000, 0x0
	SetVar 0x8001, 0x0
	SetVar 0x8002, 0x0
	SetVar 0x8003, 0x20
	Return
@ 5d7

Function_5d7: @ 5d7
	SetVar 0x8007, 0x0
	SetVar 0x8000, 0x20
	SetVar 0x8001, 0x20
	SetVar 0x8002, 0x0
	SetVar 0x8003, 0x0
	Return
@ 5f7

Function_5f7: @ 5f7
	SetVar 0x8007, 0x0
	SetVar 0x8000, 0x20
	SetVar 0x8001, 0x0
	SetVar 0x8002, 0x20
	SetVar 0x8003, 0x0
	Return
@ 617

Function_617: @ 617
	SetVar 0x8007, 0x0
	SetVar 0x8000, 0x20
	SetVar 0x8001, 0x0
	SetVar 0x8002, 0x0
	SetVar 0x8003, 0x20
	Return
@ 637

Function_637: @ 637
	SetVar 0x8007, 0x0
	SetVar 0x8000, 0x0
	SetVar 0x8001, 0x20
	SetVar 0x8002, 0x20
	SetVar 0x8003, 0x0
	Return
@ 657

Function_657: @ 657
	SetVar 0x8007, 0x0
	SetVar 0x8000, 0x0
	SetVar 0x8001, 0x20
	SetVar 0x8002, 0x0
	SetVar 0x8003, 0x20
	Return
@ 677

Function_677: @ 677
	SetVar 0x8007, 0x0
	SetVar 0x8000, 0x0
	SetVar 0x8001, 0x0
	SetVar 0x8002, 0x20
	SetVar 0x8003, 0x20
	Return
@ 697

Function_697: @ 697
	Message 0x12
	Multi4 0x1, 0x1, 0x0, 0x1, 0x800c
	TxtMsgScrpMulti 0x19, 0xff, 0x0
	TxtMsgScrpMulti 0x1a, 0xff, 0x1
	TxtMsgScrpMulti 0x1b, 0xff, 0x2
	TxtMsgScrpMulti 0x1c, 0xff, 0x3
	TxtMsgScrpMulti 0x1d, 0xff, 0x4
	TxtMsgScrpMulti 0x1e, 0xff, 0x5
	TxtMsgScrpMulti 0x1f, 0xff, 0x6
	TxtMsgScrpMulti 0x20, 0xff, 0x7
	TxtMsgScrpMulti 0x21, 0xff, 0x8
	TxtMsgScrpMulti 0x22, 0xff, 0x9
	TxtMsgScrpMulti 0x23, 0xff, 0xa
	CloseMulti4
	Return
@ 6fe

Script_10: @ 6fe
	End
@ 700

Script_branch_700: @ 700
	ScriptCmd_AddValue 0x4042, 0x1
	Return
@ 708

Script_12: @ 708
	PlayFanfare 0x5dc
	LockAll
	Message 0x25
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 719

.byte 0x0 @ 0x719
.byte 0x0 @ 0x71a
.byte 0x0 @ 0x71b

@ end_0x71c
