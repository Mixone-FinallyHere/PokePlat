.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 50, 75, 75, 50, 65, 65, DARK, GHOST, 45, 98, ((0)|(1<<2)|(1<<4)|(0<<6)|(0<<8)|(0<<10)), NO_ITEM, NO_ITEM, 127, 25, 35, 3, EGGGROUP_HUMANLIKE, EGGGROUP_HUMANLIKE, KEEN_EYE, STALL, 0, 6, 0, 0xfc130e2d, 0x52813fc2, 0x125e7023, 2