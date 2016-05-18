.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	script Script_5
	.hword 0xfd13
@ 16

Script_1: @ 16
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x82
	CompareLastResultJump 0x1, Script_branch_52
	Message 0x0
	SetVar 0x8004, 0x1c2
	SetVar 0x8005, 0x1
	CallStandard 0x7fc
	SetFlag 0x82
	SetVar 0x4114, 0x1
	ActBike 0x9
	Jump Script_branch_52
	End
@ 52

Script_branch_52: @ 52
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 5d

Script_2: @ 5d
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	WaitFanfare 0x5dc
	PlayCry 0x23, 0x0
	Message 0x2
	WaitCry
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 7c

Script_3: @ 7c
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CheckFlag 0x81
	CompareLastResultJump 0x1, Script_branch_9a
	Message 0x3
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 9a

Script_branch_9a: @ 9a
	Message 0x4
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ a5

Script_4: @ a5
	PlayFanfare 0x5dc
	LockAll
	Message 0x5
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ b6

Script_5: @ b6
	PlayFanfare 0x5dc
	LockAll
	Message 0x6
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ c7


.incbin "./baserom/data/fielddata/script/scr_seq_narc/data_00000078.bin", 0xc7, 0xc8 - 0xc7


@ end_0xc8
