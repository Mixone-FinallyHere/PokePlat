.include "macros/script_seq.s"


Script_1: @ 0
	Cmd_45 0xff, 0xa
	Cmd_e
	Cmd_12 0x389, 0xf, 0xff, 0xff
	Cmd_e
	Cmd_1e 0x1e
	AddNewScript 290
	end
@ 0x3c
@ 3c

