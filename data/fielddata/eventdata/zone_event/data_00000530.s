.include "source/macros_asm.s"

.word 1 @ # of Furnitures
@ Script, ?, ?, ?, ?, ?, Z, ?, Orientation, ?
.hword 8275, 2, 6, 0, 5, 0, 0, 0, 4, 0

.word 1 @ # of Overworlds
@     ID,        Overworld, Movement, Trainer, Flag, Script, Orientation, Sight, ?, ?, Movement Width, Movement Length, X (Matrix,Map), Y (Matrix,Map), Z, ?
.hword  0,       SPRITE_POKEBALL,  0, 0, 1338,  7323,    ORIENT_UP, 0, 0, 0, 0, 0,  0 << 5 |  7,  0 << 5 |  7, 0, 0

.word 1 @ # of Warps
@ X (Matrix,Map), Y (Matrix,Map), Header, WarpID, ?, ?
.hword  0 << 5 |  7,  0 << 5 | 12, 217, 2, 0, 0

.word 0 @ # of Triggers
@ Script, ?, ?, Width, Length, ?, ?, Flag
