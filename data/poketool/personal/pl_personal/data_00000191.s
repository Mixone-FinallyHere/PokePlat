.include "source/macros_asm.s"

@ HP, Atk, Def, Spe, SpA, SpD, Type1, Type2, CatchRate, BaseExp, EV ((EV_HP)|(EV_Atk<<2)|(EV_Def<<4)|(EV_Spe<<6)|(EV_SpA<<8)|(EV_SpD<<10)), Item1, Item2, Gender, HatchCycle, BaseHappiness, ExpRate, EggGroup1, EggGroup2, Ability1, Ability2, Flee, unknown, unknown, unknown, unknown, unknown, unknown
PkmnBaseData 30, 30, 30, 30, 30, 30, GRASS, GRASS, 235, 52, ((0)|(0<<2)|(0<<4)|(0<<6)|(1<<8)|(0<<10)), NO_ITEM, COBA_BERRY, 127, 20, 70, 3, EGGGROUP_GRASS, EGGGROUP_GRASS, CHLOROPHYLL, SOLAR_POWER, 0, 2, 0, 0x843d8720, 0x2101e08, 0x12662420, 0