.include "source/macros_asm_.s"


Script_1: @ 0
	Cmd_37 0x1, 0x1, 0x78, Script_branch_24
	Cmd_32 Cmd32_Store, 0x8, 0xc
Script_branch_24: @ 24
	Cmd_32 Cmd32_Orr, 0x6, 0x1000
	Cmd_26
	Cmd_f
	end
@ 40

@ end_0x40