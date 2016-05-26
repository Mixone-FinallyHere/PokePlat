.include "source/macros_asm.s"


Script: @ 0
	script Script_1
	script Script_2
	script Script_3
	script Script_4
	.hword 0xfd13
@ 12

Script_1: @ 12
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart 0x1
	ReleaseAll
	End
@ 28

Script_2: @ 28
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	CallStandard StdFunc_PkmnMarket
	FreezeMessageBox
	Pokemart1 0x10
	ReleaseAll
	End
@ 3e

Script_3: @ 3e
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarItem 0x0, 0x18
	Message 0x0
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 56

Script_4: @ 56
	PlayFanfare 0x5dc
	LockAll
	FacePlayer
	SetVarItem 0x0, 0x39
	Message 0x1
	WaitButton
	CloseMsgOnKeyPress
	ReleaseAll
	End
@ 6e

.byte 0x0 @ 0x6e
.byte 0x0 @ 0x6f

@ end_0x70
