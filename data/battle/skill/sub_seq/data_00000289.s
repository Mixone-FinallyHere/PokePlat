.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_42 0x1, 0x0
	Cmd_1e 0x1e
	ChangePkmnBattleData 0x7, 0x1, 0x34, 0x0
	ChangePkmnBattleData 0xb, 0x1, 0x35, 0x7
	Cmd_23_LoadSubSeq 0x10b
@ 0x44
@ 44

