.include "source/macros_asm_.s"


Script_1: @ 0
	Init
	Cmd_39 0x0
	Cmd_39 0x1
	Cmd_39 0x2
	Cmd_39 0x3
	Cmd_3a 0x4, 0x0, 0x0, 0x0
	Cmd_3a 0x5, 0x0, 0x1, 0x1
	Cmd_3a 0x6, 0x0, 0x2, 0x2
	Cmd_3a 0x7, 0x0, 0x3, 0x3
	Cmd_2d 0x4e, 0x1, 0x0
	Cmd_33 0x0, 0x23, 0x1
	Cmd_3b
	Cmd_3c 0x0
	Cmd_3c 0x1
	Cmd_3c 0x2
	Cmd_3c 0x3
	Cmd_2d 0x21, 0x5, 0x0, 0x1, 0x0, 0xc, 0x0
	Cmd_2e 0x0, 0x2, 0x4
	Cmd_2e 0x0, 0x0, 0x4
	Cmd_2e 0x0, 0x1, 0x4
	Cmd_1a 0x737, 0x75, 0x1
	Cmd_2d 0x24, 0x5, 0x4, 0x0, 0x1, 0x2, 0x108
	Cmd_32
	Cmd_35 0x0
	Cmd_2d 0x21, 0x5, 0x0, 0x1, 0xc, 0x0, 0x0
	Cmd_1
	End
@ 16c

@ end_0x16c
