#ifndef GUARD_ITEMS_H
#define GUARD_ITEMS_H

#define itemID(item) (item & 0xFF)

enum _IAttributes {
  IA_NONE           = 0x00000000,
  
  IA_WEAPON         = 0x00000001,
  IA_MAGIC          = 0x00000002,
  IA_STAFF          = 0x00000004,
  IA_UNBREAKABLE    = 0x00000008,
  IA_UNSELLABLE     = 0x00000010,
  IA_BRAVE          = 0x00000020,
  IA_MAGICDAMAGE    = 0x00000040,
  IA_UNCOUNTERABLE  = 0x00000080,
  IA_REVERTTRIANGLE = 0x00000100,
  IA_HAMMERNE       = 0x00000200, // Defined as Hammerne effect in FE6 Nightmare module, but as ??? in FE7 & FE8.
  IA_LOCK_3         = 0x00000400, // Dragons or Monster depending of game
  IA_LOCK_1         = 0x00000800,
  IA_LOCK_2         = 0x00001000,
  IA_LOCK_0         = 0x00002000, // King in FE6
  IA_NEGATE_FLYING  = 0x00004000,
  IA_NEGATE_CRIT    = 0x00008000,
  IA_UNUSABLE       = 0x00010000,
  IA_NEGATE_DEFENSE = 0x00020000,
  IA_LOCK_4         = 0x00040000,
  IA_LOCK_5         = 0x00080000,
  IA_LOCK_6         = 0x00100000,
  IA_LOCK_7         = 0x00200000,
  //                = 0x00400000,
  //                = 0x00800000,
  //                = 0x01000000,
  //                = 0x02000000,
  //                = 0x04000000,
  //                = 0x08000000,
  //                = 0x10000000,
  //                = 0x20000000,
  //                = 0x40000000,
  //                = 0x80000000,

  IA_DUMMY
};


#define IronSword 0x01
#define SlimSword 0x02
#define SteelSword 0x03
#define SilverSword 0x04
#define IronBlade 0x05
#define SteelBlade 0x06
#define SilverBlade 0x07
#define PoisonSword 0x08
#define Rapier 0x09
#define ManiKatti 0x0A
#define BraveSword 0x0B
#define Shamshir 0x0C
#define KillingEdge 0x0D
#define Armourslayer 0x0E
#define Armorslayer 0x0E
#define Wyrmslayer 0x0F
#define LightBrand 0x10
#define Lightbrand 0x10
#define Runesword 0x11
#define Lancereaver 0x12
#define Longsword 0x13
#define Zanbato 0x13
#define Zanbatou 0x13
#define IronLance 0x14
#define SlimLance 0x15
#define SteelLance 0x16
#define SilverLance 0x17
#define PoisonLance 0x18
#define ToxicLance 0x18
#define ToxinLance 0x18
#define BraveLance 0x19
#define KillerLance 0x1A
#define Horseslayer 0x1B
#define Ridersbane 0x1B
#define Horsekiller 0x1B
#define Javelin 0x1C
#define Spear 0x1D
#define Axereaver 0x1E
#define IronAxe 0x1F
#define SteelAxe 0x20
#define SilverAxe 0x21
#define PoisonAxe 0x22
#define BraveAxe 0x23
#define KillerAxe 0x24
#define Halberd 0x25
#define Hammer 0x26
#define DevilAxe 0x27
#define HandAxe 0x28
#define Tomahawk 0x29
#define Swordreaver 0x2A
#define Swordslayer 0x2B
#define Hatchet 0x2C
#define IronBow 0x2D
#define SteelBow 0x2E
#define SilverBow 0x2F
#define PoisonBow 0x30
#define KillerBow 0x31
#define BraveBow 0x32
#define ShortBow 0x33
#define Longbow 0x34
#define Ballista 0x35
#define IronBallista 0x36
#define KillerBallista 0x37
#define Fire 0x38
#define Thunder 0x39
#define Elfire 0x3A
#define Bolting 0x3B
#define Fimbulvetr 0x3C
#define Forblaze 0x3D
#define Excalibur 0x3E
#define Lightning 0x3F
#define Shine 0x40
#define Divine 0x41
#define Purge 0x42
#define Aura 0x43
#define Luce 0x44
#define Flux 0x45
#define Luna 0x46
#define Nosferatu 0x47
#define Eclipse 0x48
#define Fenrir 0x49
#define Gleipnir 0x4A
#define Heal 0x4B
#define Mend 0x4C
#define Recover 0x4D
#define Physic 0x4E
#define Fortify 0x4F
#define Restore 0x50
#define Silence 0x51
#define Sleep 0x52
#define Berserk 0x53
#define Warp 0x54
#define Rescue 0x55
#define TorchStaff 0x56
#define Hammerne 0x57
#define Unlock 0x58
#define Barrier 0x59
#define DragonAxe 0x5A
#define AngelicRobe 0x5B
#define EnergyRing 0x5C
#define SecretBook 0x5D
#define Speedwings 0x5E
#define GoddessIcon 0x5F
#define Dragonshield 0x60
#define Talisman 0x61
#define Boots 0x62
#define BodyRing 0x63
#define HeroCrest 0x64
#define KnightCrest 0x65
#define OrionsBolt 0x66
#define ElysianWhip 0x67
#define GuidingRing 0x68
#define ChestKey 0x69
#define DoorKey 0x6A
#define Lockpick 0x6B
#define Vulnerary 0x6C
#define Elixir 0x6D
#define PureWater 0x6E
#define Antitoxin 0x6F
#define TorchItem 0x70
#define DelphiShield 0x71
#define MemberCard 0x72
#define SilverCard 0x73
#define WhiteGem 0x74
#define BlueGem 0x75
#define RedGem 0x76
#define Gold 0x77
#define Reginleif 0x78
#define ChestKey_5 0x79
#define Mine 0x7A
#define LightRune 0x7B
#define HoplonShield 0x7C
#define FillasMight 0x7D
#define NinissGrace 0x7E
#define ThorsIre 0x7F
#define SetsLitany 0x80
#define ShadowKiller 0x81
#define BrightLance 0x82
#define FiendCleaver 0x83
#define BeaconBow 0x84
#define Sieglinde 0x85
#define BattleAxe 0x86
#define Ivaldi 0x87
#define MasterSeal 0x88
#define MetissTome 0x89
#define HeavenSeal 0x8A
#define SharpClaw 0x8B
#define Latona 0x8C
#define DragonSpear 0x8D
#define Vidofnir 0x8E
#define Naglfar 0x8F
#define WretchedAir 0x90
#define Audhulma 0x91
#define Siegmund 0x92
#define Garm 0x93
#define Nidhogg 0x94
#define HeavySpear 0x95
#define ShortSpear 0x96
#define OceanSeal 0x97
#define LunarBracelet 0x98
#define SolarBracelet 0x99
#define Item1G 0x9A
#define Item5G 0x9B
#define Item10G 0x9C
#define Item50G 0x9D
#define Item100G 0x9E
#define Item3000G 0x9F
#define Item5000G 0xA0
#define WindSword 0xA1
#define Vulnerary_2 0xA2
#define Greennote 0xA3
#define Rednote 0xA4
#define Dance 0xA5
#define NightmareStaff 0xA6
#define DemonStone 0xA7
#define DemonLight 0xA8
#define Ravager 0xA9
#define DivineDragonStone 0xAA
#define DemonSurge 0xAB
#define Shadowshot 0xAC
#define RottenClaw 0xAD
#define FetidClaw 0xAE
#define PoisonClaw 0xAF
#define LethalTalon 0xB0
#define FireFang 0xB1
#define HellFang 0xB2
#define EvilEye 0xB3
#define CrimsonEye 0xB4
#define Stone 0xB5
#define Alacalibur 0xB6
#define JunaFruit 0xB7
#define Item150G 0xB8
#define Item200G 0xB9
#define BlackGem 0xBA
#define GoldGem 0xBB

#endif // GUARD_ITEMS_H