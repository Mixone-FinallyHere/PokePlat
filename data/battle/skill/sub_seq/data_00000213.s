.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_45 0xff, 0xa
	Cmd_e
	Cmd_32 Orr, 0x6, 0x40
	AddNewScript 2
	Cmd_12 0x38c, 0xf, 0xff, 0x15
	Cmd_e
	Cmd_1e 0x1e
	end
@ 0x4c
@ 4c

