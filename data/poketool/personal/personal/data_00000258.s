.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 50, 70, 50, 40, 50, 50, WATER, WATER, 45, 65, ((0)|(1<<2)|(0<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 31, 20, 70, 3, EGGGROUP_MONSTER, EGGGROUP_WATER1, TORRENT, CACOPHONY, 0, 1, 0, 0x8c533264, 0x2001e40, 0xc246a000, 6