.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_11
	Cmd_e
	Cmd_37 0x0, 0x1, 0xf, Script_branch_18c
	Cmd_37 0x0, 0x1, 0x48, Script_branch_18c
	JumpIfPkmnBattleData TstNe, 0x1, 0x34, 0x7, Script_branch_1b0
	Cmd_37 0x0, 0x1, 0x2b, Script_branch_70
	JumpIf TstNe, Var_Weather, 0xf00, Script_branch_1d0
Script_branch_70: @ 70
	Cmd_3a 0x11, 0x1, 0x30, 0x20
	Cmd_4f 0x0, Var_1, 0x2f, 0x20, Script_branch_228
	Cmd_17 0x1
	Cmd_e
	JumpIfPkmnBattleData TstNe, 0x1, 0x34, 0xfffffff8, Script_branch_d8
	Cmd_12 0xcd, 0x2, 0x1
	Jump Script_branch_108
@ d8

Script_branch_d8: @ d8
	Cmd_42 0x1, 0x0
	ChangePkmnBattleData 0xb, 0x1, 0x34, 0xfffffff8
	Cmd_12 0xd0, 0x2, 0x1
Script_branch_108: @ 108
	Cmd_e
	Cmd_1e 0x1e
	ChangePkmnBattleData 0xa, 0x1, 0x34, 0x3
	Cmd_42 0x1, 0x1
	Cmd_39 0x7, 0x14, 0xf
	Cmd_32 Orr, 0x6, 0x40
	AddNewScript 2
	JumpIfPkmnBattleData TstNe, 0x1, 0x34, 0xfffffff8, Script_branch_d8
	Cmd_12 0xb8, 0x2, 0x1
	Jump Script_branch_250
@ 18c

Script_branch_18c: @ 18c
	Cmd_1e 0x1e
	Cmd_12 0x149, 0xb, 0x1, 0x1
	Jump Script_branch_240
@ 1b0

Script_branch_1b0: @ 1b0
	Cmd_1e 0x1e
	Cmd_12 0x39, 0x2, 0x1
	Jump Script_branch_240
@ 1d0

Script_branch_1d0: @ 1d0
	JumpIfPkmnBattleData TstNe, 0x1, 0x35, 0x70, Script_branch_208
	Cmd_1e 0x1e
	Cmd_12 0x146, 0x2, 0x1
	Jump Script_branch_240
@ 208

Script_branch_208: @ 208
	Cmd_1e 0x1e
	Cmd_12 0x143, 0x2, 0x1
	Jump Script_branch_240
@ 228

Script_branch_228: @ 228
	Cmd_1e 0x1e
	Cmd_12 0xbb, 0x2, 0x1
Script_branch_240: @ 240
	Cmd_32 Orr, 0xa, 0x80000000
Script_branch_250: @ 250
	Cmd_e
	Cmd_1e 0x1e
	end
@ 0x260
@ 260

