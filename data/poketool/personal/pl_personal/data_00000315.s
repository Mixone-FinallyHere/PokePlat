.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 50, 60, 45, 65, 100, 80, GRASS, POISON, 150, 152, ((0)|(0<<2)|(0<<4)|(0<<6)|(2<<8)|(0<<10)), NO_ITEM, POISON_BARB, 127, 20, 70, 3, EGGGROUP_FAIRY, EGGGROUP_GRASS, NATURAL_CURE, POISON_POINT, 60, 131, 0, 0xa4370720, 0x2101e08, 0x126e3420, 0