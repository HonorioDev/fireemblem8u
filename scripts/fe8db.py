from enum import Enum

EVENT_COMMANDS = {
    0x00: "EV_CMD_NOP",
    0x01: "EV_CMD_END",
    0x02: "EV_CMD_EVSET",
    0x03: "EV_CMD_EVCHECK",
    0x04: "EV_CMD_RANDOMNUMBER",
    0x05: "EV_CMD_SVAL",
    0x06: "EV_CMD_SLOT_OPS",
    0x07: "EV_CMD_QUEUE_OPS",
    0x08: "EV_CMD_LABEL",
    0x09: "EV_CMD_GOTO",
    0x0A: "EV_CMD_CALL",
    0x0B: "EV_CMD_ENQUEUE_CALL",
    0x0C: "EV_CMD_BRANCH",
    0x0D: "EV_CMD_ASMC",
    0x0E: "EV_CMD_STALL",
    0x0F: "EV_CMD_COUNTER",
    0x10: "EV_CMD_EVBITMODIFY",
    0x11: "EV_CMD_IGNOREKEYS",
    0x12: "EV_CMD_BGMCHANGE_12",
    0x13: "EV_CMD_BGMCHANGE_13",
    0x14: "EV_CMD_BGMOVERWRITE",
    0x15: "EV_CMD_BGMVOLUMECHANGE",
    0x16: "EV_CMD_PLAYSE",
    0x17: "EV_CMD_FADE",
    0x18: "EV_CMD_COLORFADE",
    0x19: "EV_CMD_CHECKVARIOUS",
    0x1A: "EV_CMD_SETTEXTTYPE",
    0x1B: "EV_CMD_DISPLAYTEXT",
    0x1C: "EV_CMD_CONTINUETEXT",
    0x1D: "EV_CMD_ENDTEXT",
    0x1E: "EV_CMD_DISPLAYFACE",
    0x1F: "EV_CMD_MOVEFACE",
    0x20: "EV_CMD_CLEARTEXTBOX",
    0x21: "EV_CMD_SHOWBG",
    0x22: "EV_CMD_CLEARSCREEN",
    0x23: "EV_CMD_23",
    0x24: "EV_CMD_24",
    0x25: "EV_CMD_LOMA",
    0x26: "EV_CMD_CAMERACONTROL",
    0x27: "EV_CMD_TILE_CHANGE",
    0x28: "EV_CMD_CHANGEWEATHER",
    0x29: "EV_CMD_CHANGEFOGVISION",
    0x2A: "EV_CMD_CHANGECHAPTER",
    0x2B: "EV_CMD_LOAD_PRECONF",
    0x2C: "EV_CMD_LOADUNIT",
    0x2D: "EV_CMD_CHANGE_PAL",
    0x2E: "EV_CMD_GET_PID",
    0x2F: "EV_CMD_MOVEUNIT",
    0x30: "EV_CMD_ENUN",
    0x31: "EV_CMD_TOGGLERANGE",
    0x32: "EV_CMD_LOADSINGLEUNIT",
    0x33: "EV_CMD_CHECKSTATE",
    0x34: "EV_CMD_CHANGESTATE",
    0x35: "EV_CMD_CHANGECLASS",
    0x36: "EV_CMD_CHECKINAREA",
    0x37: "EV_CMD_GIVEITEM",
    0x38: "EV_CMD_CHANGEACTIVEUNIT",
    0x39: "EV_CMD_CHANGEAI",
    0x3A: "EV_CMD_DISPLAYPOPUP",
    0x3B: "EV_CMD_DISPLAYCURSOR",
    0x3C: "EV_CMD_MOVE_CURSOR",
    0x3D: "EV_CMD_MENUOVERRIDE",
    0x3E: "EV_CMD_PREPSCREEN",
    0x3F: "EV_CMD_SCRIPT_BATTLE",
    0x40: "EV_CMD_PROM",
    0x41: "EV_CMD_WARP",
    0x42: "EV_CMD_EARTHQUAKE",
    0x43: "EV_CMD_SUMMONUNIT",
    0x44: "EV_CMD_BREAKSTONE",
    0x45: "EV_CMD_GLOWING_CROSS",

    0x80: "EV_CMD_WM_80",
    0x81: "EV_CMD_WM_82",
    0x82: "EV_CMD_WM_81",
    0x83: "EV_CMD_WM_SETCAM",
    0x84: "EV_CMD_WM_84",
    0x85: "EV_CMD_WM_CENTERCAMONLORD",
    0x86: "EV_CMD_WM_MOVECAM",
    0x87: "EV_CMD_WM_MOVECAMTO",
    0x88: "EV_CMD_WM_88",
    0x89: "EV_CMD_WM_WAITFORCAM",
    0x8A: "EV_CMD_WM_8A",
    0x8B: "EV_CMD_WM_8B",
    0x8C: "EV_CMD_WM_8C",
    0x8D: "EV_CMD_WM_8D",
    0x8E: "EV_CMD_WM_8E",
    0x8F: "EV_CMD_WM_8F",
    0x90: "EV_CMD_WM_DRAWPATH",
    0x91: "EV_CMD_WM_DRAWPATH2",
    0x92: "EV_CMD_WM_REMOVEPATH",
    0x93: "EV_CMD_WM_LOADLOCATION2",
    0x94: "EV_CMD_WM_REMOVELOCATION",
    0x95: "EV_CMD_WM_LOADLOCATION3",
    0x96: "EV_CMD_DRAWPATH3",
    0x97: "EV_CMD_WM_CREATENEXTDESTINATION",
    0x98: "EV_CMD_WM_98",
    0x99: "EV_CMD_WM_WAITFORFX",
    0x9A: "EV_CMD_WM_SETDESTINATION",
    0x9B: "EV_CMD_WM_9B",
    0x9C: "EV_CMD_WM_9C",
    0x9D: "EV_CMD_WM_9D",
    0x9E: "EV_CMD_PUTSPRITE",
    0x9F: "EV_CMD_WM_9F",
    0xA0: "EV_CMD_WM_REMSPRITE",
    0xA1: "EV_CMD_WM_MAKELORDVISIBLE",
    0xA2: "EV_CMD_WM_MAKELORDDISAPPEAR",
    0xA3: "EV_CMD_WM_FADEINSPRITE",
    0xA4: "EV_CMD_WM_FADEOUTSPRITE",
    0xA5: "EV_CMD_WM_WAITFORSPRITELOAD",
    0xA6: "EV_CMD_WM_A6",
    0xA7: "EV_CMD_WM_PUTSPRITE",
    0xA8: "EV_CMD_WM_PUTMOVINGSPRITE",
    0xA9: "EV_CMD_WM_MOVESPRITETO",
    0xAA: "EV_CMD_WM_AA",
    0xAB: "EV_CMD_WM_AB",
    0xAC: "EV_CMD_WM_WAITFORSPRITES",
    0xAD: "EV_CMD_WM_SATURATE_COLORS",
    0xAE: "EV_CMD_WM_AE",
    0xAF: "EV_CMD_WM_SHOWTEXTWINDOW",
    0xB0: "EV_CMD_WM_B0",
    0xB1: "EV_CMD_WM_WAITFORTEXT",
    0xB2: "EV_CMD_WM_FADEOUT",
    0xB3: "EV_CMD_WM_TEXTDECORATE",
    0xB4: "EV_CMD_WM_SHOWDRAWNMAP",
    0xB5: "EV_CMD_WM_WAITFORFXCLEAR1",
    0xB6: "EV_CMD_WM_MOVECAM2",
    0xB7: "EV_CMD_WM_WAITFORFXCLEAR2",
    0xB8: "EV_CMD_WM_HIGHLIGHT",
    0xB9: "EV_CMD_WM_HIGHLIGHTCLEAR1",
    0xBA: "EV_CMD_WM_HIGHLIGHTCLEAR2",
    0xBB: "EV_CMD_WM_BB",
    0xBC: "EV_CMD_WM_PLACEDOT",
    0xBD: "EV_CMD_WM_FXCLEAR1",
    0xBE: "EV_CMD_WM_FXCLEAR2",
    0xBF: "EV_CMD_WM_BF",
    0xC0: "EV_CMD_WM_C0",
    0xC1: "EV_CMD_WM_SKIPWN",
    0xC2: "EV_CMD_WM_C2",
    0xC3: "EV_CMD_WM_SPAWNLORD",
    0xC4: "EV_CMD_WM_SHOWPORTRAIT",
    0xC5: "EV_CMD_WM_CLEARPORTRAIT",
    0xC6: "EV_CMD_WM_TEXT",
    0xC7: "EV_CMD_WM_TEXTSTART",
    0xC8: "EV_CMD_WM_C8",
    0xC9: "EV_CMD_WM_REMOVETEXT",
    0xCA: "EV_CMD_WM_CA",
    0xCB: "EV_CMD_WM_CB",
    0xCC: "EV_CMD_WM_CC",
    0xCD: "EV_CMD_WM_CD",
    0xCE: "EV_CMD_WM_CE",
    0xCF: "EV_CMD_WM_CF",
}

EVENT_SLOTS = {
    0x00: "EVT_SLOT_0",
    0x01: "EVT_SLOT_1",
    0x02: "EVT_SLOT_2",
    0x03: "EVT_SLOT_3",
    0x04: "EVT_SLOT_4",
    0x05: "EVT_SLOT_5",
    0x06: "EVT_SLOT_6",
    0x07: "EVT_SLOT_7",
    0x08: "EVT_SLOT_8",
    0x09: "EVT_SLOT_9",
    0x0A: "EVT_SLOT_A",
    0x0B: "EVT_SLOT_B",
    0x0C: "EVT_SLOT_C",
    0x0D: "EVT_SLOT_D",
    0x0E: "EVT_SLOT_E",
    0x0F: "EVT_SLOT_F",
}

EVENT0B_TRIGGER_TYPE = {
    0: "TUTORIAL_EVT_TYPE_PHASECHANGE",
    1: "TUTORIAL_EVT_TYPE_POSTACTION",
    2: "TUTORIAL_EVT_TYPE_ONSELECT",
    3: "TUTORIAL_EVT_TYPE_DESTSELECTED",
    4: "TUTORIAL_EVT_TYPE_AFTERMOVE",
    5: "TUTORIAL_EVT_TYPE_FORECAST",
    6: "TUTORIAL_EVT_TYPE_PLAYERPHASE",
}

FACTION_IDX = {
    0: 'FACTION_ID_BLUE',
    1: 'FACTION_ID_GREEN',
    2: 'FACTION_ID_RED',
    3: 'FACTION_ID_PURPLE',
}

FACTION_NAMES = {
    0x00: 'FACTION_BLUE',
    0x40: 'FACTION_GREEN',
    0x80: 'FACTION_RED',
    0xC0: 'FACTION_PURPLE'}

BOOL_NAMES = { 0: 'FALSE', 1: 'TRUE' }

_PID_IDX = {
    0x01: "CHARACTER_EIRIKA",
    0x02: "CHARACTER_SETH",
    0x03: "CHARACTER_GILLIAM",
    0x04: "CHARACTER_FRANZ",
    0x05: "CHARACTER_MOULDER",
    0x06: "CHARACTER_VANESSA",
    0x07: "CHARACTER_ROSS",
    0x08: "CHARACTER_NEIMI",
    0x09: "CHARACTER_COLM",
    0x0A: "CHARACTER_GARCIA",
    0x0B: "CHARACTER_INNES",
    0x0C: "CHARACTER_LUTE",
    0x0D: "CHARACTER_NATASHA",
    0x0E: "CHARACTER_CORMAG",
    0x0F: "CHARACTER_EPHRAIM",
    0x10: "CHARACTER_FORDE",
    0x11: "CHARACTER_KYLE",
    0x12: "CHARACTER_AMELIA",
    0x13: "CHARACTER_ARTUR",
    0x14: "CHARACTER_GERIK",
    0x15: "CHARACTER_TETHYS",
    0x16: "CHARACTER_MARISA",
    0x17: "CHARACTER_SALEH",
    0x18: "CHARACTER_EWAN",
    0x19: "CHARACTER_LARACHEL",
    0x1A: "CHARACTER_DOZLA",
    0x1C: "CHARACTER_RENNAC",
    0x1D: "CHARACTER_DUESSEL",
    0x1E: "CHARACTER_MYRRH",
    0x1F: "CHARACTER_KNOLL",
    0x20: "CHARACTER_JOSHUA",
    0x21: "CHARACTER_SYRENE",
    0x22: "CHARACTER_TANA",
    0x23: "CHARACTER_LYON_CC",
    0x24: "CHARACTER_ORSON_CC",
    0x25: "CHARACTER_GLEN_CC",
    0x26: "CHARACTER_SELENA_CC",
    0x27: "CHARACTER_VALTER_CC",
    0x28: "CHARACTER_RIEV_CC",
    0x29: "CHARACTER_CAELLACH_CC",
    0x2A: "CHARACTER_FADO_CC",
    0x2B: "CHARACTER_ISMAIRE_CC",
    0x2C: "CHARACTER_HAYDEN_CC",

    # Summoned Characters
    0x3B: "CHARACTER_SUMMON_LYON",
    0x3E: "CHARACTER_SUMMON_KNOLL",
    0x3F: "CHARACTER_SUMMON_EWAN",

    # Boss/Unique Enemy Characters
    0x40: "CHARACTER_LYON",
    0x41: "CHARACTER_MORVA",
    0x42: "CHARACTER_ORSON_CH5X",
    0x43: "CHARACTER_VALTER",
    0x44: "CHARACTER_SELENA",
    0x45: "CHARACTER_VALTER_PROLOGUE",
    0x46: "CHARACTER_BREGUET",
    0x47: "CHARACTER_BONE",
    0x48: "CHARACTER_BAZBA",
    0x49: "CHARACTER_ENTOUMBED_CH4",
    0x4A: "CHARACTER_SAAR",
    0x4B: "CHARACTER_NOVALA",
    0x4C: "CHARACTER_MURRAY",
    0x4D: "CHARACTER_TIRADO",
    0x4E: "CHARACTER_BINKS",
    0x4F: "CHARACTER_PABLO",
    0x50: "CHARACTER_MAELDUIN_CHUnk",
    0x51: "CHARACTER_AIAS",
    0x52: "CHARACTER_CARLYLE",
    0x53: "CHARACTER_CAELLACH",
    0x54: "CHARACTER_PABLO_2",
    0x56: "CHARACTER_GORGON_CHUnk",
    0x57: "CHARACTER_RIEV",
    0x5A: "CHARACTER_GHEB",
    0x5B: "CHARACTER_BERAN",
    0x5C: "CHARACTER_CYCLOPS_CHUnk",
    0x5D: "CHARACTER_WIGHT_CHUnk",
    0x5E: "CHARACTER_DEATHGOYLE_CHUnk",
    0x66: "CHARACTER_BANDIT_CH5",
    0x68: "CHARACTER_ONEILL",
    0x69: "CHARACTER_GLEN",
    0x6A: "CHARACTER_ZONTA",
    0x6B: "CHARACTER_VIGARDE",
    0x6C: "CHARACTER_LYON_FINAL",
    0x6D: "CHARACTER_ORSON",

    0x83: "CHARACTER_SOLDIER_83",

    0xBA: "CHARACTER_MONSTER_BA",
    0xBE: "CHARACTER_FOMORTIIS",

    0xC0: "CHARACHER_FRELIAN",
    0xC5: "CHARACTER_FADO",

    0xC7: "CHARACTER_HAYDEN",
    0xC8: "CHARACTER_MANSEL",
    0xC9: "CHARACTER_KLIMT",
    0xCA: "CHARACTER_DARA",
    0xCB: "CHARACTER_ISMAIRE",
    0xCC: "CHARACTER_MESSENGER",

    0xFC: "CHARACTER_CITIZEN",
    0xFD: "CHARACTER_ARENA_OPPONENT",
}

def PID_IDX(pid):
    if pid in _PID_IDX:
        return _PID_IDX[pid]

    if pid == 0:
        return "CHAR_EVT_PLAYER_LEADER"

    if pid == -1:
        return "CHAR_EVT_ACTIVE_UNIT"

    if pid == -2:
        return "CHAR_EVT_POSITION_AT_SLOTB"

    if pid == -3:
        return "CHAR_EVT_SLOT2"

    return hex(pid)

_JID_IDX = {
    0x00: "CLASS_NONE",
    0x01: "CLASS_EPHRAIM_LORD",
    0x02: "CLASS_EIRIKA_LORD",
    0x03: "CLASS_EPHRAIM_MASTER_LORD",
    0x04: "CLASS_EIRIKA_MASTER_LORD",
    0x05: "CLASS_CAVALIER",
    0x06: "CLASS_CAVALIER_F",
    0x07: "CLASS_PALADIN",
    0x08: "CLASS_PALADIN_F",
    0x09: "CLASS_ARMOR_KNIGHT",
    0x0A: "CLASS_ARMOR_KNIGHT_F",
    0x0B: "CLASS_GENERAL",
    0x0C: "CLASS_GENERAL_F",
    0x0D: "CLASS_THIEF",
    0x0E: "CLASS_MANAKETE",
    0x0F: "CLASS_MERCENARY",
    0x10: "CLASS_MERCENARY_F",
    0x11: "CLASS_HERO",
    0x12: "CLASS_HERO_F",
    0x13: "CLASS_MYRMIDON",
    0x14: "CLASS_MYRMIDON_F",
    0x15: "CLASS_SWORDMASTER",
    0x16: "CLASS_SWORDMASTER_F",
    0x17: "CLASS_ASSASSIN",
    0x18: "CLASS_ASSASSIN_F",
    0x19: "CLASS_ARCHER",
    0x1A: "CLASS_ARCHER_F",
    0x1B: "CLASS_SNIPER",
    0x1C: "CLASS_SNIPER_F",
    0x1D: "CLASS_RANGER",
    0x1E: "CLASS_RANGER_F",
    0x1F: "CLASS_WYVERN_RIDER",
    0x20: "CLASS_WYVERN_RIDER_F",
    0x21: "CLASS_WYVERN_LORD",
    0x22: "CLASS_WYVERN_LORD_F",
    0x23: "CLASS_WYVERN_KNIGHT",
    0x24: "CLASS_WYVERN_KNIGHT_F",
    0x25: "CLASS_MAGE",
    0x26: "CLASS_MAGE_F",
    0x27: "CLASS_SAGE",
    0x28: "CLASS_SAGE_F",
    0x29: "CLASS_MAGE_KNIGHT",
    0x2A: "CLASS_MAGE_KNIGHT_F",
    0x2B: "CLASS_BISHOP",
    0x2C: "CLASS_BISHOP_F",
    0x2D: "CLASS_SHAMAN",
    0x2E: "CLASS_SHAMAN_F",
    0x2F: "CLASS_DRUID",
    0x30: "CLASS_DRUID_F",
    0x31: "CLASS_SUMMONER",
    0x32: "CLASS_SUMMONER_F",
    0x33: "CLASS_ROGUE",
    0x34: "CLASS_GORGONEGG2",
    0x35: "CLASS_GREAT_KNIGHT",
    0x36: "CLASS_GREAT_KNIGHT_F",
    0x37: "CLASS_RECRUIT_T1",
    0x38: "CLASS_JOURNEYMAN_T2",
    0x39: "CLASS_PUPIL_T2",
    0x3A: "CLASS_RECRUIT_T2",
    0x3B: "CLASS_MANAKETE_2",
    0x3C: "CLASS_MANAKETE_MYRRH",
    0x3D: "CLASS_JOURNEYMAN",
    0x3E: "CLASS_PUPIL",
    0x3F: "CLASS_FIGHTER",
    0x40: "CLASS_WARRIOR",
    0x41: "CLASS_BRIGAND",
    0x42: "CLASS_PIRATE",
    0x43: "CLASS_BERSERKER",
    0x44: "CLASS_MONK",
    0x45: "CLASS_PRIEST",
    0x46: "CLASS_BARD",
    0x47: "CLASS_RECRUIT",
    0x48: "CLASS_PEGASUS_KNIGHT",
    0x49: "CLASS_FALCON_KNIGHT",
    0x4A: "CLASS_CLERIC",
    0x4B: "CLASS_TROUBADOUR",
    0x4C: "CLASS_VALKYRIE",
    0x4D: "CLASS_DANCER",
    0x4E: "CLASS_SOLDIER",
    0x4F: "CLASS_NECROMANCER",
    0x50: "CLASS_FLEET",
    0x51: "CLASS_PHANTOM",
    0x52: "CLASS_REVENANT",
    0x53: "CLASS_ENTOUMBED",
    0x54: "CLASS_BONEWALKER",
    0x55: "CLASS_BONEWALKER_BOW",
    0x56: "CLASS_WIGHT",
    0x57: "CLASS_WIGHT_BOW",
    0x58: "CLASS_BAEL",
    0x59: "CLASS_ELDER_BAEL",
    0x5A: "CLASS_CYCLOPS",
    0x5B: "CLASS_MAUTHEDOOG",
    0x5C: "CLASS_GWYLLGI",
    0x5D: "CLASS_TARVOS",
    0x5E: "CLASS_MAELDUIN",
    0x5F: "CLASS_MOGALL",
    0x60: "CLASS_ARCH_MOGALL",
    0x61: "CLASS_GORGON",
    0x62: "CLASS_GORGONEGG",
    0x63: "CLASS_GARGOYLE",
    0x64: "CLASS_DEATHGOYLE",
    0x65: "CLASS_DRACO_ZOMBIE",
    0x66: "CLASS_DEMON_KING",
    0x67: "CLASS_BLST_REGULAR_USED",
    0x68: "CLASS_BLST_LONG_USED",
    0x69: "CLASS_BLST_KILLER_USED",
    0x6A: "CLASS_BLST_REGULAR_EMPTY",
    0x6B: "CLASS_BLST_LONG_EMPTY",
    0x6C: "CLASS_BLST_KILLER_EMPTY",
    0x6D: "CLASS_CIVILIAN_M1",
    0x6E: "CLASS_CIVILIAN_F1",
    0x6F: "CLASS_CIVILIAN_M2",
    0x70: "CLASS_CIVILIAN_F2",
    0x71: "CLASS_CIVILIAN_M3",
    0x72: "CLASS_CIVILIAN_F3",
    0x73: "CLASS_PEER",
    0x74: "CLASS_QUEEN",
    0x75: "CLASS_PRINCE",
    0x76: "CLASS_QUEEN_2",
    0x77: "CLASS_UNK77",
    0x78: "CLASS_FALLEN_PRINCE",
    0x79: "CLASS_TENT",
    0x7A: "CLASS_PONTIFEX",
    0x7B: "CLASS_FALLEN_PEER",
    0x7C: "CLASS_CYCLOPS_2",
    0x7D: "CLASS_ELDER_BAEL_2",
    0x7E: "CLASS_JOURNEYMAN_T1",
    0x7F: "CLASS_PUPIL_T1",
}

def JID_IDX(jid):
    if jid in _JID_IDX:
        return _JID_IDX[jid]

    return hex(jid)

_ITEM_IDX = {
	0x00: "ITEM_NONE",
	0x01: "ITEM_SWORD_IRON",
	0x02: "ITEM_SWORD_SLIM",
	0x03: "ITEM_SWORD_STEEL",
	0x04: "ITEM_SWORD_SILVER",
	0x05: "ITEM_BLADE_IRON",
	0x06: "ITEM_BLADE_STEEL",
	0x07: "ITEM_BLADE_SILVER",
	0x08: "ITEM_SWORD_VENIN",
	0x09: "ITEM_SWORD_RAPIER",
	0x0A: "ITEM_SWORD_MKATTI",
	0x0B: "ITEM_SWORD_BRAVE",
	0x0C: "ITEM_SWORD_SHAMSIR",
	0x0D: "ITEM_SWORD_KILLER",
	0x0E: "ITEM_SWORD_ARMORSLAYER",
	0x0F: "ITEM_SWORD_WYRMSLAYER",
	0x10: "ITEM_SWORD_LIGHTBRAND",
	0x11: "ITEM_SWORD_RUNESWORD",
	0x12: "ITEM_SWORD_LANCEREAVER",
	0x13: "ITEM_SWORD_ZANBATO",
	0x14: "ITEM_LANCE_IRON",
	0x15: "ITEM_LANCE_SLIM",
	0x16: "ITEM_LANCE_STEEL",
	0x17: "ITEM_LANCE_SILVER",
	0x18: "ITEM_LANCE_VENIN",
	0x19: "ITEM_LANCE_BRAVE",
	0x1A: "ITEM_LANCE_KILLER",
	0x1B: "ITEM_LANCE_HORSESLAYER",
	0x1C: "ITEM_LANCE_JAVELIN",
	0x1D: "ITEM_LANCE_SPEAR",
	0x1E: "ITEM_LANCE_AXEREAVER",
	0x1F: "ITEM_AXE_IRON",
	0x20: "ITEM_AXE_STEEL",
	0x21: "ITEM_AXE_SILVER",
	0x22: "ITEM_AXE_VENIN",
	0x23: "ITEM_AXE_BRAVE",
	0x24: "ITEM_AXE_KILLER",
	0x25: "ITEM_AXE_HALBERD",
	0x26: "ITEM_AXE_HAMMER",
	0x27: "ITEM_AXE_DEVIL",
	0x28: "ITEM_AXE_HANDAXE",
	0x29: "ITEM_AXE_TOMAHAWK",
	0x2A: "ITEM_AXE_SWORDREAVER",
	0x2B: "ITEM_AXE_SWORDSLAYER",
	0x2C: "ITEM_AXE_HATCHET",
	0x2D: "ITEM_BOW_IRON",
	0x2E: "ITEM_BOW_STEEL",
	0x2F: "ITEM_BOW_SILVER",
	0x30: "ITEM_BOW_VENIN",
	0x31: "ITEM_BOW_KILLER",
	0x32: "ITEM_BOW_BRAVE",
	0x33: "ITEM_BOW_SHORTBOW",
	0x34: "ITEM_BOW_LONGBOW",
	0x35: "ITEM_BALLISTA_REGULAR",
	0x36: "ITEM_BALLISTA_LONG",
	0x37: "ITEM_BALLISTA_KILLER",
	0x38: "ITEM_ANIMA_FIRE",
	0x39: "ITEM_ANIMA_THUNDER",
	0x3A: "ITEM_ANIMA_ELFIRE",
	0x3B: "ITEM_ANIMA_BOLTING",
	0x3C: "ITEM_ANIMA_FIMBULVETR",
	0x3D: "ITEM_ANIMA_FORBLAZE",
	0x3E: "ITEM_ANIMA_EXCALIBUR",
	0x3F: "ITEM_LIGHT_LIGHTNING",
	0x40: "ITEM_LIGHT_SHINE",
	0x41: "ITEM_LIGHT_DIVINE",
	0x42: "ITEM_LIGHT_PURGE",
	0x43: "ITEM_LIGHT_AURA",
	0x44: "ITEM_LIGHT_LUCE",
	0x45: "ITEM_DARK_FLUX",
	0x46: "ITEM_DARK_LUNA",
	0x47: "ITEM_DARK_NOSFERATU",
	0x48: "ITEM_DARK_ECLIPSE",
	0x49: "ITEM_DARK_FENRIR",
	0x4A: "ITEM_DARK_GLEIPNIR",
	0x4B: "ITEM_STAFF_HEAL",
	0x4C: "ITEM_STAFF_MEND",
	0x4D: "ITEM_STAFF_RECOVER",
	0x4E: "ITEM_STAFF_PHYSIC",
	0x4F: "ITEM_STAFF_FORTIFY",
	0x50: "ITEM_STAFF_RESTORE",
	0x51: "ITEM_STAFF_SILENCE",
	0x52: "ITEM_STAFF_SLEEP",
	0x53: "ITEM_STAFF_BERSERK",
	0x54: "ITEM_STAFF_WARP",
	0x55: "ITEM_STAFF_RESCUE",
	0x56: "ITEM_STAFF_TORCH",
	0x57: "ITEM_STAFF_REPAIR",
	0x58: "ITEM_STAFF_UNLOCK",
	0x59: "ITEM_STAFF_BARRIER",
	0x5A: "ITEM_AXE_DRAGON",
	0x5B: "ITEM_BOOSTER_HP",
	0x5C: "ITEM_BOOSTER_POW",
	0x5D: "ITEM_BOOSTER_SKL",
	0x5E: "ITEM_BOOSTER_SPD",
	0x5F: "ITEM_BOOSTER_LCK",
	0x60: "ITEM_BOOSTER_DEF",
	0x61: "ITEM_BOOSTER_RES",
	0x62: "ITEM_BOOSTER_MOV",
	0x63: "ITEM_BOOSTER_CON",
	0x64: "ITEM_HEROCREST",
	0x65: "ITEM_KNIGHTCREST",
	0x66: "ITEM_ORIONSBOLT",
	0x67: "ITEM_ELYSIANWHIP",
	0x68: "ITEM_GUIDINGRING",
	0x69: "ITEM_CHESTKEY",
	0x6A: "ITEM_DOORKEY",
	0x6B: "ITEM_LOCKPICK",
	0x6C: "ITEM_VULNERARY",
	0x6D: "ITEM_ELIXIR",
	0x6E: "ITEM_PUREWATER",
	0x6F: "ITEM_ANTITOXIN",
	0x70: "ITEM_TORCH",
	0x71: "ITEM_DELPHISHIELD",
	0x72: "ITEM_MEMBERCARD",
	0x73: "ITEM_SILVERCARD",
	0x74: "ITEM_WHITEGEM",
	0x75: "ITEM_BLUEGEM",
	0x76: "ITEM_REDGEM",
	0x77: "ITEM_GOLD",
	0x78: "ITEM_LANCE_REGINLEIF",
	0x79: "ITEM_CHESTKEY_BUNDLE",
	0x7A: "ITEM_MINE",
	0x7B: "ITEM_LIGHTRUNE",
	0x7C: "ITEM_HOPLON_SHIELD",
	0x7D: "ITEM_FILLAS_MIGHT",
	0x7E: "ITEM_NINISS_GRACE",
	0x7F: "ITEM_THORS_IRE",
	0x80: "ITEM_SETS_LITANY",
	0x81: "ITEM_SWORD_SHADOWKILLR",
	0x82: "ITEM_LANCE_BRIGHTLANCE",
	0x83: "ITEM_AXE_FIENDCLEAVER",
	0x84: "ITEM_BOW_BEACONBOW",
	0x85: "ITEM_SWORD_SIEGLINDE",
	0x86: "ITEM_AXE_BATTLEAXE",
	0x87: "ITEM_LIGHT_IVALDI",
	0x88: "ITEM_MASTERSEAL",
	0x89: "ITEM_METISSTOME",
	0x8A: "ITEM_HEAVENSEAL",
	0x8B: "ITEM_MONSTER_SHARPCLAW",
	0x8C: "ITEM_STAFF_LATONA",
	0x8D: "ITEM_LANCE_DRAGON",
	0x8E: "ITEM_LANCE_VIDOFNIR",
	0x8F: "ITEM_DARK_NAGLFAR",
	0x90: "ITEM_MONSTER_WRETCHAIR",
	0x91: "ITEM_SWORD_AUDHULMA",
	0x92: "ITEM_LANCE_SIEGMUND",
	0x93: "ITEM_AXE_GARM",
	0x94: "ITEM_BOW_NIDHOGG",
	0x95: "ITEM_LANCE_HEAVYSPEAR",
	0x96: "ITEM_LANCE_SHORTSPEAR",
	0x97: "ITEM_OCEANSEAL",
	0x98: "ITEM_LUNARBRACE",
	0x99: "ITEM_SOLARBRACE",
	0x9A: "ITEM_1G",
	0x9B: "ITEM_5G",
	0x9C: "ITEM_10G",
	0x9D: "ITEM_50G",
	0x9E: "ITEM_100G",
	0x9F: "ITEM_3000G",
	0xA0: "ITEM_5000G",
	0xA1: "ITEM_SWORD_WINDSWORD",
	0xA2: "ITEM_VULNERARY_2",
	0xA3: "ITEM_UNK_GREENNOTE",
	0xA4: "ITEM_UNK_REDNOTE",
	0xA5: "ITEM_DANCE",
	0xA6: "ITEM_NIGHTMARE",
	0xA7: "ITEM_DEMONSTONE",
	0xA8: "ITEM_DEMONLIGHT",
	0xA9: "ITEM_RAVAGER",
	0xAA: "ITEM_DIVINESTONE",
	0xAB: "ITEM_MONSTER_DEMONSURG",
	0xAC: "ITEM_MONSTER_SHADOWSHT",
	0xAD: "ITEM_MONSTER_ROTTENCLW",
	0xAE: "ITEM_MONSTER_FETIDCLW",
	0xAF: "ITEM_MONSTER_VENINCLW",
	0xB0: "ITEM_MONSTER_LTHLTALON",
	0xB1: "ITEM_MONSTER_FIREFANG",
	0xB2: "ITEM_MONSTER_HELLFANG",
	0xB3: "ITEM_MONSTER_EVILEYE",
	0xB4: "ITEM_MONSTER_CRIMSNEYE",
	0xB5: "ITEM_MONSTER_STONE",
	0xB6: "ITEM_ANIMA_AIRCALIBUR",
	0xB7: "ITEM_JUNAFRUIT",
	0xB8: "ITEM_150G",
	0xB9: "ITEM_200G",
	0xBA: "ITEM_BLACKGEM",
	0xBB: "ITEM_GOLDGEM",
	0xBC: "ITEM_UNK_BC",
	0xBD: "ITEM_UNK_BD",
	0xBE: "ITEM_UNK_BE",
	0xBF: "ITEM_UNK_BF",
	0xC0: "ITEM_UNK_C0",
	0xC1: "ITEM_UNK_C1",
	0xC2: "ITEM_UNK_C2",
	0xC3: "ITEM_UNK_C3",
	0xC4: "ITEM_UNK_C4",
	0xC5: "ITEM_UNK_C5",
	0xC6: "ITEM_UNK_C6",
	0xC7: "ITEM_UNK_C7",
	0xC8: "ITEM_UNK_C8",
	0xC9: "ITEM_UNK_C9",
	0xCA: "ITEM_UNK_CA",
	0xCB: "ITEM_UNK_CB",
	0xCC: "ITEM_UNK_CC",
	0xCD: "ITEM_UNK_CD",
}

def ITEM_IDX(iid):
    if iid in _ITEM_IDX:
        return _ITEM_IDX[iid]

    return iid

_ITYPE_IDX = {
    0x00: "ITYPE_SWORD",
    0x01: "ITYPE_LANCE",
    0x02: "ITYPE_AXE",
    0x03: "ITYPE_BOW",
    0x04: "ITYPE_STAFF",
    0x05: "ITYPE_ANIMA",
    0x06: "ITYPE_LIGHT",
    0x07: "ITYPE_DARK",
    0x08: "ITYPE_BLLST",
    0x09: "ITYPE_ITEM",
    0x0A: "ITYPE_DRAGN",
    0x0B: "ITYPE_11",
    0x0C: "ITYPE_12",
}

def ITYPE_IDX(itype):
    if itype in _ITYPE_IDX:
        return _ITYPE_IDX[itype]

    return itype

_WPN_EXP = {
    0: "WPN_EXP_0",
    1: "WPN_EXP_E",
    31: "WPN_EXP_D",
    71: "WPN_EXP_C",
    121: "WPN_EXP_B",
    181: "WPN_EXP_A",
    251: "WPN_EXP_S",
}

def WPN_EXP(exp):
    if exp in _WPN_EXP:
        return _WPN_EXP[exp]

    return exp

WPN_EFFECT = {
    0: "WPN_EFFECT_NONE",
    1: "WPN_EFFECT_POISON",
    2: "WPN_EFFECT_HPDRAIN",
    3: "WPN_EFFECT_HPHALVE",
    4: "WPN_EFFECT_DEVIL",
    5: "WPN_EFFECT_PETRIFY",
}

DIRECTION_IDX = {
    0: "FACING_LEFT",
    1: "FACING_RIGHT",
    2: "FACING_DOWN",
    3: "FACING_UP",
}

POSITION_IDX = {
    0: "POS_L",
    1: "POS_R",
}

_UNIT_AFFIN = {
    1: "UNIT_AFFIN_FIRE",
    2: "UNIT_AFFIN_THUNDER",
    3: "UNIT_AFFIN_WIND",
    4: "UNIT_AFFIN_ICE",
    5: "UNIT_AFFIN_DARK",
    6: "UNIT_AFFIN_LIGHT",
    7: "UNIT_AFFIN_ANIMA",
}

def UNIT_AFFIN(affin):
    if affin in _UNIT_AFFIN:
        return _UNIT_AFFIN[affin]

    return None

_TERRAIN_IDX = {
	0x00: "TERRAIN_TILE_00",
	0x01: "TERRAIN_PLAINS",
	0x02: "TERRAIN_ROAD",
	0x03: "TERRAIN_VILLAGE_03",
	0x04: "TERRAIN_VILLAGE_04",
	0x05: "TERRIAN_HOUSE",
	0x06: "TERRAIN_ARMORY",
	0x07: "TERRAIN_VENDOR",
	0x08: "TERRAIN_ARENA_08",
	0x09: "TERRAIN_C_ROOM_09",
	0x0A: "TERRAIN_FORT",
	0x0B: "TERRAIN_GATE_0B",
	0x0C: "TERRAIN_FOREST",
	0x0D: "TERRAIN_THICKET",
	0x0E: "TERRAIN_SAND",
	0x0F: "TERRAIN_DESERT",
	0x10: "TERRAIN_RIVER",
	0x11: "TERRAIN_MOUNTAIN",
	0x12: "TERRAIN_PEAK",
	0x13: "TERRAIN_BRIDGE_13",
	0x14: "TERRAIN_BRIDGE_14",
	0x15: "TERRAIN_SEA",
	0x16: "TERRAIN_LAKE",
	0x17: "TERRAIN_FLOOR_17",
	0x18: "TERRAIN_FLOOR_18",
	0x19: "TERRAIN_FENCE_19",
	0x1A: "TERRAIN_WALL_1A",
	0x1B: "TERRAIN_WALL_1B",
	0x1C: "TERRAIN_RUBBLE",
	0x1D: "TERRAIN_PILLAR",
	0x1E: "TERRAIN_DOOR",
	0x1F: "TERRAIN_THRONE",
	0x20: "TERRAIN_CHEST_20",
	0x21: "TERRAIN_CHEST_21",
	0x22: "TERRAIN_ROOF",
	0x23: "TERRAIN_GATE_23",
	0x24: "TERRAIN_CHURCH",
	0x25: "TERRAIN_RUINS_25",
	0x26: "TERRAIN_CLIFF",
	0x27: "TERRAIN_BALLISTA_REGULAR",
	0x28: "TERRAIN_BALLISTA_LONG",
	0x29: "TERRAIN_BALLISTA_KILLER",
	0x2A: "TERRAIN_SHIP_FLAT",
	0x2B: "TERRAIN_SHIP_WRECK",
	0x2C: "TERRAIN_TILE_2C",
	0x2D: "TERRAIN_STAIRS",
	0x2E: "TERRAIN_TILE_2E",
	0x2F: "TERRAIN_GLACIER",
	0x30: "TERRAIN_ARENA_30",
	0x31: "TERRAIN_VALLEY",
	0x32: "TERRAIN_FENCE_32",
	0x33: "TERRAIN_SNAG",
	0x34: "TERRAIN_BRIDGE_34",
	0x35: "TERRAIN_SKY",
	0x36: "TERRAIN_DEEPS",
	0x37: "TERRAIN_RUINS_37",
	0x38: "TERRAIN_INN",
	0x39: "TERRAIN_BARREL",
	0x3A: "TERRAIN_BONE",
	0x3B: "TERRAIN_DARK",
	0x3C: "TERRAIN_WATER",
	0x3D: "TERRAIN_GUNNELS",
	0x3E: "TERRAIN_DECK",
	0x3F: "TERRAIN_BRACE",
	0x40: "TERRAIN_MAST",
	0x41: "TERRAIN_COUNT",
}

def TERRAIN_IDX(terrain):
    if terrain in _TERRAIN_IDX:
        return _TERRAIN_IDX[terrain]

    return hex(terrain)

CHAPTER_MODES = {
    1: "CHAPTER_MODE_COMMON",
    2: "CHAPTER_MODE_EIRIKA",
    3: "CHAPTER_MODE_EPHRAIM",
    0xFF: "CHAPTER_MODE_ANY",
}

WM_NODES = {
    0: "WM_NODE_BorderMulan",
    1: "WM_NODE_CastleFrelia",
    2: "WM_NODE_Ide",
    3: "WM_NODE_BorgoRidge",
    4: "WM_NODE_ZahaWoods",
    5: "WM_NODE_Serafew",
    6: "WM_NODE_AdlasPlains",
    7: "WM_NODE_Renvall1",
    8: "WM_NODE_Renvall2",
    9: "WM_NODE_PortKiris",
    10: "WM_NODE_TerazPlateau",
    11: "WM_NODE_CaerPelyn",
    12: "WM_NODE_HamillCanyon",
    13: "WM_NODE_JehannaHall",
    14: "WM_NODE_FortRigwald",
    15: "WM_NODE_Bethroen",
    16: "WM_NODE_Taizel",
    17: "WM_NODE_ZaalbulMarsh",
    18: "WM_NODE_GradoKeep",
    19: "WM_NODE_JehannaHall",
    20: "WM_NODE_RenaisCastle",
    21: "WM_NODE_NarubeRiver",
    22: "WM_NODE_NelerasPeak",
    23: "WM_NODE_RaustenCourt",
    24: "WM_NODE_DarklingWoods",
    25: "WM_NODE_BlackTemple",
    26: "WM_NODE_TowerOfValni",
    27: "WM_NODE_LagdouRuins",
    28: "WM_NODE_MelkaenCoast",
}

WM_NATIONS = {
    0: "WM_NATION_Frelia",
    1: "WM_NATION_Grado",
    2: "WM_NATION_Jehanna",
    3: "WM_NATION_Carcino",
    4: "WM_NATION_ZahaWoods",
    5: "WM_NATION_Rausten",
    6: "WM_NATION_Pokhara",
    7: "WM_NATION_Renais",
}

WM_MU_IDX = {
    0 : "WM_MU_0",
    1 : "WM_MU_1",
    2 : "WM_MU_2",
    3 : "WM_MU_3",
    4 : "WM_MU_4",
    5 : "WM_MU_5",
    6 : "WM_MU_6",

    -1: "WM_MU_ANY"
}

WM_PATH_IDX = {
	0x00: "WM_PATH_00",
	0x01: "WM_PATH_01",
	0x02: "WM_PATH_02",
	0x03: "WM_PATH_03",
	0x04: "WM_PATH_04",
	0x05: "WM_PATH_05",
	0x06: "WM_PATH_06",
	0x07: "WM_PATH_07",
	0x08: "WM_PATH_08",
	0x09: "WM_PATH_09",
	0x0A: "WM_PATH_0A",
	0x0B: "WM_PATH_0B",
	0x0C: "WM_PATH_0C",
	0x0D: "WM_PATH_0D",
	0x0E: "WM_PATH_0E",
	0x0F: "WM_PATH_0F",
	0x10: "WM_PATH_10",
	0x11: "WM_PATH_11",
	0x12: "WM_PATH_12",
	0x13: "WM_PATH_13",
	0x14: "WM_PATH_14",
	0x15: "WM_PATH_15",
	0x16: "WM_PATH_16",
	0x17: "WM_PATH_17",
	0x18: "WM_PATH_18",
	0x19: "WM_PATH_19",
	0x1A: "WM_PATH_1A",
	0x1B: "WM_PATH_1B",
	0x1C: "WM_PATH_1C",
	0x1D: "WM_PATH_1D",
	0x1E: "WM_PATH_1E",
	0x1F: "WM_PATH_1F",
}
