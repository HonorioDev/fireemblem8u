    .section .rodata

	.global SioDefaultBgConfig
SioDefaultBgConfig:  @ 0x080D9FE4
	.incbin "baserom.gba", 0xD9FE4, 0xB8

	.global gUnknown_080DA09C
gUnknown_080DA09C:  @ 0x080DA09C
	.incbin "baserom.gba", 0xDA09C, 0x3E

	.global gUnknown_080DA0DA
gUnknown_080DA0DA:  @ 0x080DA0DA
    .incbin "baserom.gba", 0xDA0DA, 0x20

	.global gUnknown_080DA0FA
gUnknown_080DA0FA:  @ 0x080DA0FA
	.incbin "baserom.gba", 0xDA0FA, 0x8

	.global gUnknown_080DA102
gUnknown_080DA102:  @ 0x080DA102
    .incbin "baserom.gba", 0xDA102, 0x30

	.global gUnknown_080DA132
gUnknown_080DA132:  @ 0x080DA132
	.incbin "baserom.gba", 0xDA132, 0x48

	.global gUnknown_080DA17A
gUnknown_080DA17A:  @ 0x080DA17A
	.incbin "baserom.gba", 0xDA17A, 0x14

	.global gUnknown_080DA18E
gUnknown_080DA18E:  @ 0x080DA18E
	.incbin "baserom.gba", 0xDA18E, 0x14

	.global gUnknown_080DA1A2
gUnknown_080DA1A2:  @ 0x080DA1A2
	.incbin "baserom.gba", 0xDA1A2, 0x14

	.global gUnknown_080DA1B6
gUnknown_080DA1B6:  @ 0x080DA1B6
	.incbin "baserom.gba", 0xDA1B6, 0x14

	.global gUnknown_080DA1CA
gUnknown_080DA1CA:  @ 0x080DA1CA
	.incbin "baserom.gba", 0xDA1CA, 0x42

	.global gUnknown_080DA20C
gUnknown_080DA20C:  @ 0x080DA20C
@ replacing .incbin "baserom.gba", 0x000da20c, 0x10
.4byte gUnknown_085AE7EC + 0x5e8
.4byte gUnknown_085AE7EC + 0x6a4
.4byte gUnknown_085AE7EC + 0x768
.4byte gUnknown_085AE7EC + 0x840

	.global gUnknown_080DA21C
gUnknown_080DA21C:  @ 0x080DA21C
@ replacing .incbin "baserom.gba", 0x000da21c, 0x10
.4byte gUnknown_085AE7EC + 0x904
.4byte gUnknown_085AE7EC + 0x944
.4byte gUnknown_085AE7EC + 0x924
.4byte gUnknown_085AE7EC + 0x964

	.global gUnknown_080DA22C
gUnknown_080DA22C:  @ 0x080DA22C
@ replacing .incbin "baserom.gba", 0xDA22C, 0x30
    .4byte Pal_PhaseChangePlayer
    .4byte Pal_PhaseChangeOther
    .4byte Pal_PhaseChangeEnemy
    .4byte Pal_PhaseChangeOther + 0x20
    .4byte 0x43000001
    .4byte 0x37008000
    .4byte 0x43000001
    .4byte 0x47048200
    .4byte 0x43000001
    .4byte 0x57088400
    .4byte 0x43000001
    .4byte 0x670c8600

	.global gUnknown_080DA25C
gUnknown_080DA25C:  @ 0x080DA25C
	.incbin "baserom.gba", 0xDA25C, 0xE

	.global gUnknown_080DA26A
gUnknown_080DA26A:  @ 0x080DA26A
	.incbin "baserom.gba", 0xDA26A, 0x14

	.global gUnknown_080DA27E
gUnknown_080DA27E:  @ 0x080DA27E
	.incbin "baserom.gba", 0xDA27E, 0x32

	.global gUnknown_080DA2B0
gUnknown_080DA2B0:  @ 0x080DA2B0
	.incbin "baserom.gba", 0xDA2B0, 0x44
