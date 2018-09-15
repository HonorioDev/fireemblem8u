	.INCLUDE "macro.inc"

	.SYNTAX UNIFIED

	@ Everything related to (non-map) battle animations
	@ Needs further splitting

	THUMB_FUNC_START sub_804FD48
sub_804FD48: @ 0x0804FD48
	ldr r1, _0804FD50  @ gUnknown_0203E0F0
	str r0, [r1]
	bx lr
	.align 2, 0
_0804FD50: .4byte gUnknown_0203E0F0

	THUMB_FUNC_START sub_804FD54
sub_804FD54: @ 0x0804FD54
	ldr r0, _0804FD5C  @ gUnknown_0203E0F0
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0804FD5C: .4byte gUnknown_0203E0F0

	THUMB_FUNC_START NewEkrBattleDeamon
NewEkrBattleDeamon: @ 0x0804FD60
	push {r4, lr}
	ldr r4, _0804FD80  @ gUnknown_0203E0F8
	ldr r0, _0804FD84  @ gUnknown_085B9358
	movs r1, #3
	bl Proc_Create
	str r0, [r4]
	ldr r1, _0804FD88  @ gUnknown_0203E0F4
	movs r0, #1
	str r0, [r1]
	bl AddSkipThread2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804FD80: .4byte gUnknown_0203E0F8
_0804FD84: .4byte gUnknown_085B9358
_0804FD88: .4byte gUnknown_0203E0F4

	THUMB_FUNC_START EndEkrBattleDeamon
EndEkrBattleDeamon: @ 0x0804FD8C
	push {lr}
	ldr r0, _0804FD9C  @ gUnknown_0203E0F8
	ldr r0, [r0]
	bl Proc_Delete
	pop {r0}
	bx r0
	.align 2, 0
_0804FD9C: .4byte gUnknown_0203E0F8

	THUMB_FUNC_START IsBattleDeamonActive
IsBattleDeamonActive: @ 0x0804FDA0
	push {lr}
	ldr r0, _0804FDB0  @ gUnknown_0203E0F4
	ldr r0, [r0]
	cmp r0, #1
	beq _0804FDB4
	movs r0, #0
	b _0804FDB6
	.align 2, 0
_0804FDB0: .4byte gUnknown_0203E0F4
_0804FDB4:
	movs r0, #1
_0804FDB6:
	pop {r1}
	bx r1

	THUMB_FUNC_START ekrBattleDeamon_Destructor
ekrBattleDeamon_Destructor: @ 0x0804FDBC
	push {lr}
	ldr r1, _0804FDCC  @ gUnknown_0203E0F4
	movs r0, #0
	str r0, [r1]
	bl SubSkipThread2
	pop {r0}
	bx r0
	.align 2, 0
_0804FDCC: .4byte gUnknown_0203E0F4

	THUMB_FUNC_START nullsub_35
nullsub_35: @ 0x0804FDD0
	bx lr

	THUMB_FUNC_START NewEkrBattle
NewEkrBattle: @ 0x0804FDD4
	push {r4, lr}
	bl ClearAISArray
	ldr r4, _0804FE1C  @ gUnknown_02000064
	ldr r0, _0804FE20  @ gUnknown_085B9378
	movs r1, #3
	bl Proc_Create
	str r0, [r4]
	ldr r0, _0804FE24  @ InBattleMainRoutine
	bl SetMainUpdateRoutine
	bl sub_8052220
	ldr r0, _0804FE28  @ gUnknown_02017724
	movs r1, #0
	str r1, [r0]
	ldr r0, _0804FE2C  @ gUnknown_02000018
	str r1, [r0]
	ldr r0, _0804FE30  @ gUnknown_0200001C
	str r1, [r0]
	ldr r0, _0804FE34  @ gUnknown_02000020
	str r1, [r0]
	ldr r0, _0804FE38  @ gUnknown_02000024
	str r1, [r0]
	ldr r0, _0804FE3C  @ gUnknown_0203E0FC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0804FE14
	bl sub_80726AC
_0804FE14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804FE1C: .4byte gUnknown_02000064
_0804FE20: .4byte gUnknown_085B9378
_0804FE24: .4byte InBattleMainRoutine
_0804FE28: .4byte gUnknown_02017724
_0804FE2C: .4byte gUnknown_02000018
_0804FE30: .4byte gUnknown_0200001C
_0804FE34: .4byte gUnknown_02000020
_0804FE38: .4byte gUnknown_02000024
_0804FE3C: .4byte gUnknown_0203E0FC

	THUMB_FUNC_START InBattleMainRoutine
InBattleMainRoutine: @ 0x0804FE40
	push {lr}
	ldr r0, _0804FE58  @ gKeyStatusPtr
	ldr r0, [r0]
	bl UpdateKeyStatus
	ldr r0, _0804FE5C  @ gUnknown_0200001C
	ldr r0, [r0]
	cmp r0, #0
	bne _0804FE60
	bl MainUpdate_804FEE4
	b _0804FE6C
	.align 2, 0
_0804FE58: .4byte gKeyStatusPtr
_0804FE5C: .4byte gUnknown_0200001C
_0804FE60:
	ldr r0, _0804FE80  @ gUnknown_02000020
	ldr r0, [r0]
	cmp r0, #1
	bne _0804FE6C
	bl MainUpdate_804FEE4
_0804FE6C:
	ldr r0, _0804FE84  @ gUnknown_02017724
	ldr r0, [r0]
	cmp r0, #1
	beq _0804FE88
	cmp r0, #1
	bcc _0804FEC4
	cmp r0, #2
	beq _0804FE98
	b _0804FEC4
	.align 2, 0
_0804FE80: .4byte gUnknown_02000020
_0804FE84: .4byte gUnknown_02017724
_0804FE88:
	ldr r0, _0804FE94  @ gUnknown_0203E0FC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0804FEC4
	b _0804FEA2
	.align 2, 0
_0804FE94: .4byte gUnknown_0203E0FC
_0804FE98:
	ldr r0, _0804FEB0  @ gUnknown_0203E0FC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0804FEB8
_0804FEA2:
	ldr r0, _0804FEB4  @ gUnknown_02000064
	ldr r0, [r0]
	bl Proc_Delete
	bl sub_8055C38
	b _0804FEC4
	.align 2, 0
_0804FEB0: .4byte gUnknown_0203E0FC
_0804FEB4: .4byte gUnknown_02000064
_0804FEB8:
	ldr r0, _0804FED8  @ gUnknown_02000064
	ldr r0, [r0]
	bl Proc_Delete
	bl EndEkrGauge
_0804FEC4:
	ldr r1, _0804FEDC  @ gUnknown_0202BCB0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0804FEE0  @ 0x04000006
	ldrh r0, [r0]
	strh r0, [r1, #6]
	bl VBlankIntrWait
	pop {r0}
	bx r0
	.align 2, 0
_0804FED8: .4byte gUnknown_02000064
_0804FEDC: .4byte gUnknown_0202BCB0
_0804FEE0: .4byte 0x04000006

	THUMB_FUNC_START MainUpdate_804FEE4
MainUpdate_804FEE4: @ 0x0804FEE4
	push {r4, lr}
	bl ClearIntermediateOAMBuffers
	bl sub_8071A8C
	bl GetThread2SkipStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0804FF00
	ldr r0, _0804FF50  @ gRootProcesses
	ldr r0, [r0, #8]
	bl Proc_Run
_0804FF00:
	ldr r4, _0804FF50  @ gRootProcesses
	ldr r0, [r4, #0xc]
	bl Proc_Run
	ldr r0, [r4, #0x14]
	bl Proc_Run
	movs r0, #0
	bl FlushIntermediateOAMBuffer
	ldr r0, [r4, #4]
	bl Proc_Run
	bl AIS_ExecAll
	bl BattleAIS_ExecCommands
	ldr r0, [r4, #0x10]
	bl Proc_Run
	ldr r1, _0804FF54  @ gUnknown_02000020
	movs r0, #0
	str r0, [r1]
	ldr r1, _0804FF58  @ gUnknown_0201FB04
	ldr r0, [r1]
	ldr r1, [r1, #4]
	adds r0, r0, r1
	cmp r0, #2
	beq _0804FF42
	ldr r1, _0804FF5C  @ gUnknown_02000018
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_0804FF42:
	movs r0, #0xd
	bl FlushIntermediateOAMBuffer
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804FF50: .4byte gRootProcesses
_0804FF54: .4byte gUnknown_02000020
_0804FF58: .4byte gUnknown_0201FB04
_0804FF5C: .4byte gUnknown_02000018

	THUMB_FUNC_START nullsub_36
nullsub_36: @ 0x0804FF60
	bx lr

	THUMB_FUNC_START ekrBattle_Init
ekrBattle_Init: @ 0x0804FF64
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0804FF88  @ gUnknown_0201FB0C
	movs r0, #0
	str r0, [r1]
	ldr r0, _0804FF8C  @ gUnknown_02017744
	ldr r0, [r0]
	cmp r0, #0
	bne _0804FF9A
	ldr r0, _0804FF90  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #1
	bne _0804FF94
	movs r0, #0x20
	negs r0, r0
	b _0804FF98
	.align 2, 0
_0804FF88: .4byte gUnknown_0201FB0C
_0804FF8C: .4byte gUnknown_02017744
_0804FF90: .4byte gUnknown_0203E120
_0804FF94:
	movs r0, #0xf0
	negs r0, r0
_0804FF98:
	str r0, [r1]
_0804FF9A:
	bl sub_8059D28
	bl sub_8070B3C
	bl sub_8070254
	ldr r0, _0804FFB8  @ gUnknown_02000024
	movs r1, #1
	str r1, [r0]
	bl sub_805B028
	cmp r0, #1
	bne _0804FFBC
	movs r0, #0
	b _0804FFBE
	.align 2, 0
_0804FFB8: .4byte gUnknown_02000024
_0804FFBC:
	movs r0, #0x1e
_0804FFBE:
	strh r0, [r4, #0x2c]
	ldr r0, _0804FFD4  @ gUnknown_0203E100
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0804FFDC
	ldr r1, _0804FFD8  @ gUnknown_0203E190
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	b _0804FFE2
	.align 2, 0
_0804FFD4: .4byte gUnknown_0203E100
_0804FFD8: .4byte gUnknown_0203E190
_0804FFDC:
	ldr r1, _0804FFFC  @ gUnknown_0203E190
	ldrb r0, [r1, #1]
	ldrb r1, [r1]
_0804FFE2:
	bl ShouldCallBattleQuote
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r4, #0x54]
	movs r0, #0
	str r0, [r4, #0x58]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804FFFC: .4byte gUnknown_0203E190

	THUMB_FUNC_START ekrBattle_8050000
ekrBattle_8050000: @ 0x08050000
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bne _08050048
	bl sub_804FD54
	cmp r0, #1
	beq _08050040
	ldr r0, [r4, #0x54]
	cmp r0, #1
	beq _08050026
	ldr r0, [r4, #0x58]
	cmp r0, #1
	bne _08050040
_08050026:
	movs r0, #1
	movs r1, #7
	bl NewEkrWindowAppear
	movs r0, #1
	movs r1, #7
	movs r2, #0
	bl NewEkrNamewinAppear
	ldr r0, _0805003C  @ ekrBattle_8050054
	b _08050042
	.align 2, 0
_0805003C: .4byte ekrBattle_8050054
_08050040:
	ldr r0, _08050050  @ ekrBattle_8050158
_08050042:
	str r0, [r4, #0xc]
	movs r0, #0
	strh r0, [r4, #0x2c]
_08050048:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050050: .4byte ekrBattle_8050158

	THUMB_FUNC_START ekrBattle_8050054
ekrBattle_8050054: @ 0x08050054
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_8056D74
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _080500DE
	bl EkrGauge_8051218
	bl sub_8051B90
	movs r0, #0
	str r0, [sp]
	ldr r1, _080500B8  @ gBG0TilemapBuffer
	ldr r2, _080500BC  @ 0x01000200
	mov r0, sp
	bl CpuFastSet
	ldr r0, _080500C0  @ gUnknown_02000038
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	movs r0, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	bl BG_EnableSyncByMask
	bl EkrGauge_8051190
	ldr r0, [r4, #0x54]
	cmp r0, #1
	bne _080500DA
	ldr r0, _080500C4  @ gUnknown_0203E100
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080500CC
	ldr r1, _080500C8  @ gUnknown_0203E190
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	bl CallBattleQuoteEventsIfAny
	b _080500D6
	.align 2, 0
_080500B8: .4byte gBG0TilemapBuffer
_080500BC: .4byte 0x01000200
_080500C0: .4byte gUnknown_02000038
_080500C4: .4byte gUnknown_0203E100
_080500C8: .4byte gUnknown_0203E190
_080500CC:
	ldr r1, _080500E8  @ gUnknown_0203E190
	ldrb r0, [r1, #1]
	ldrb r1, [r1]
	bl CallBattleQuoteEventsIfAny
_080500D6:
	movs r0, #0
	str r0, [r4, #0x54]
_080500DA:
	ldr r0, _080500EC  @ ekrBattle_80500F0
	str r0, [r4, #0xc]
_080500DE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080500E8: .4byte gUnknown_0203E190
_080500EC: .4byte ekrBattle_80500F0

	THUMB_FUNC_START ekrBattle_80500F0
ekrBattle_80500F0: @ 0x080500F0
	push {r4, lr}
	adds r4, r0, #0
	bl BattleEventEngineExists
	cmp r0, #0
	bne _08050128
	bl sub_8051F1C
	movs r0, #1
	bl BG_EnableSyncByMask
	movs r0, #0
	movs r1, #7
	bl NewEkrWindowAppear
	movs r0, #0
	movs r1, #7
	movs r2, #0
	bl NewEkrNamewinAppear
	bl EkrGauge_8051228
	bl sub_8051BA0
	bl EkrGauge_8051180
	ldr r0, _08050130  @ ekrBattle_8050134
	str r0, [r4, #0xc]
_08050128:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050130: .4byte ekrBattle_8050134

	THUMB_FUNC_START ekrBattle_8050134
ekrBattle_8050134: @ 0x08050134
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8056D74
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0805014C
	ldr r0, _08050154  @ ekrBattle_8050158
	str r0, [r4, #0xc]
	movs r0, #0
	strh r0, [r4, #0x2c]
_0805014C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050154: .4byte ekrBattle_8050158

	THUMB_FUNC_START ekrBattle_8050158
ekrBattle_8050158: @ 0x08050158
	ldr r1, _0805016C  @ gUnknown_0203E100
	movs r2, #0
	ldrsh r1, [r1, r2]
	str r1, [r0, #0x44]
	movs r1, #0
	str r1, [r0, #0x48]
	ldr r1, _08050170  @ ekrBattle_8050174
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_0805016C: .4byte gUnknown_0203E100
_08050170: .4byte ekrBattle_8050174

	THUMB_FUNC_START ekrBattle_8050174
ekrBattle_8050174: @ 0x08050174
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #2
	bne _08050188
	ldr r0, _08050184  @ ekrBattle_8050244
	str r0, [r4, #0xc]
	b _0805021A
	.align 2, 0
_08050184: .4byte ekrBattle_8050244
_08050188:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _080501D4
	ldr r0, _080501A8  @ gUnknown_02000000
	ldr r0, [r0]
	str r0, [r4, #0x5c]
	bl sub_806FA6C
	cmp r0, #2
	beq _080501BA
	cmp r0, #2
	bhi _080501AC
	cmp r0, #1
	beq _080501B2
	b _080501CC
	.align 2, 0
_080501A8: .4byte gUnknown_02000000
_080501AC:
	cmp r0, #3
	beq _080501C2
	b _080501CC
_080501B2:
	ldr r0, [r4, #0x5c]
	bl sub_80701B8
	b _080501C8
_080501BA:
	ldr r0, [r4, #0x5c]
	bl sub_8076540
	b _080501C8
_080501C2:
	ldr r0, [r4, #0x5c]
	bl sub_80708CC
_080501C8:
	ldr r0, _080501D0  @ ekrBattle_8050224
	str r0, [r4, #0xc]
_080501CC:
	movs r0, #1
	b _08050212
	.align 2, 0
_080501D0: .4byte ekrBattle_8050224
_080501D4:
	ldr r0, _080501EC  @ gUnknown_02000000
	ldr r0, [r0, #8]
	str r0, [r4, #0x5c]
	bl sub_806FA6C
	cmp r0, #2
	beq _080501FE
	cmp r0, #2
	bhi _080501F0
	cmp r0, #1
	beq _080501F6
	b _08050210
	.align 2, 0
_080501EC: .4byte gUnknown_02000000
_080501F0:
	cmp r0, #3
	beq _08050206
	b _08050210
_080501F6:
	ldr r0, [r4, #0x5c]
	bl sub_80701B8
	b _0805020C
_080501FE:
	ldr r0, [r4, #0x5c]
	bl sub_8076540
	b _0805020C
_08050206:
	ldr r0, [r4, #0x5c]
	bl sub_80708CC
_0805020C:
	ldr r0, _08050220  @ ekrBattle_8050224
	str r0, [r4, #0xc]
_08050210:
	movs r0, #0
_08050212:
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	adds r0, #1
	str r0, [r4, #0x48]
_0805021A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050220: .4byte ekrBattle_8050224

	THUMB_FUNC_START ekrBattle_8050224
ekrBattle_8050224: @ 0x08050224
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl sub_806FBF8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _0805023A
	ldr r0, _08050240  @ ekrBattle_8050174
	str r0, [r4, #0xc]
_0805023A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050240: .4byte ekrBattle_8050174

	THUMB_FUNC_START ekrBattle_8050244
ekrBattle_8050244: @ 0x08050244
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08050270  @ gUnknown_0203E100
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08050274  @ gUnknown_02017744
	ldr r0, [r0]
	cmp r1, r0
	beq _08050280
	ldr r1, _08050278  @ gUnknown_02000000
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r0, _0805027C  @ ekrBattle_8050290
	b _08050282
	.align 2, 0
_08050270: .4byte gUnknown_0203E100
_08050274: .4byte gUnknown_02017744
_08050278: .4byte gUnknown_02000000
_0805027C: .4byte ekrBattle_8050290
_08050280:
	ldr r0, _0805028C  @ ekrBattle_80502B0
_08050282:
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805028C: .4byte ekrBattle_80502B0

	THUMB_FUNC_START ekrBattle_8050290
ekrBattle_8050290: @ 0x08050290
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _080502A6
	ldr r0, _080502AC  @ ekrBattle_80502B0
	str r0, [r1, #0xc]
_080502A6:
	pop {r0}
	bx r0
	.align 2, 0
_080502AC: .4byte ekrBattle_80502B0

	THUMB_FUNC_START ekrBattle_80502B0
ekrBattle_80502B0: @ 0x080502B0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080502F4  @ gUnknown_02000000
	ldr r0, [r4]
	bl NewEfxStatusUnit
	ldr r0, [r4, #8]
	bl NewEfxStatusUnit
	ldr r1, _080502F8  @ gUnknown_0203E1D8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl sub_8054E8C
	ldr r0, _080502FC  @ gUnknown_0203A4D4
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080502E2
	ldr r0, [r4]
	bl sub_8054B64
_080502E2:
	ldr r0, [r4]
	bl sub_80545C0
	ldr r0, _08050300  @ ekrBattle_8050304
	str r0, [r5, #0xc]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080502F4: .4byte gUnknown_02000000
_080502F8: .4byte gUnknown_0203E1D8
_080502FC: .4byte gUnknown_0203A4D4
_08050300: .4byte ekrBattle_8050304

	THUMB_FUNC_START ekrBattle_8050304
ekrBattle_8050304: @ 0x08050304
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805031C  @ gUnknown_0203E194
	ldr r0, [r0]
	cmp r0, #0
	beq _08050328
	ldr r0, _08050320  @ gUnknown_02000000
	ldr r0, [r0, #8]
	bl NewEkrTriangle
	ldr r0, _08050324  @ ekrBattle_8050338
	b _0805032A
	.align 2, 0
_0805031C: .4byte gUnknown_0203E194
_08050320: .4byte gUnknown_02000000
_08050324: .4byte ekrBattle_8050338
_08050328:
	ldr r0, _08050334  @ ekrBattle_8050360
_0805032A:
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050334: .4byte ekrBattle_8050360

	THUMB_FUNC_START ekrBattle_8050338
ekrBattle_8050338: @ 0x08050338
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8074F3C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050354
	bl nullsub_18
	movs r0, #0x1e
	strh r0, [r4, #0x2c]
	ldr r0, _0805035C  @ ekrBattle_8050360
	str r0, [r4, #0xc]
_08050354:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805035C: .4byte ekrBattle_8050360

	THUMB_FUNC_START ekrBattle_8050360
ekrBattle_8050360: @ 0x08050360
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	movs r1, #0
	mov ip, r1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _080503D4
	ldr r6, _080503DC  @ gUnknown_0203E104
	movs r7, #0
	ldrsh r0, [r6, r7]
	cmp r0, #1
	bne _080503A0
	ldr r3, _080503E0  @ gUnknown_02000000
	ldr r4, [r3]
	movs r2, #0x80
	lsls r2, r2, #8
	strh r2, [r4, #0x10]
	ldrh r0, [r4, #0xc]
	movs r7, #0x80
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4, #0xc]
	ldr r4, [r3, #4]
	strh r2, [r4, #0x10]
	ldrh r0, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080503A0:
	movs r1, #2
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bne _080503C8
	ldr r3, _080503E0  @ gUnknown_02000000
	ldr r4, [r3, #8]
	movs r2, #0x80
	lsls r2, r2, #8
	strh r2, [r4, #0x10]
	ldrh r0, [r4, #0xc]
	movs r6, #0x80
	lsls r6, r6, #7
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r4, #0xc]
	ldr r4, [r3, #0xc]
	strh r2, [r4, #0x10]
	ldrh r0, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_080503C8:
	ldr r0, _080503E4  @ gUnknown_0201FB04
	mov r7, ip
	str r7, [r0]
	str r7, [r0, #4]
	ldr r0, _080503E8  @ ekrBattle_80503EC
	str r0, [r5, #0xc]
_080503D4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080503DC: .4byte gUnknown_0203E104
_080503E0: .4byte gUnknown_02000000
_080503E4: .4byte gUnknown_0201FB04
_080503E8: .4byte ekrBattle_80503EC

	THUMB_FUNC_START ekrBattle_80503EC
ekrBattle_80503EC: @ 0x080503EC
	ldr r2, _080503F8  @ gUnknown_02000024
	movs r1, #0
	str r1, [r2]
	ldr r1, _080503FC  @ ekrBattle_8050400
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080503F8: .4byte gUnknown_02000024
_080503FC: .4byte ekrBattle_8050400

	THUMB_FUNC_START ekrBattle_8050400
ekrBattle_8050400: @ 0x08050400
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805041C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bne _08050428
	ldr r0, _08050420  @ gUnknown_02000000
	ldr r0, [r0, #8]
	bl NewEkrClassChg
	ldr r0, _08050424  @ ekrBattle_8050440
	b _08050432
	.align 2, 0
_0805041C: .4byte gUnknown_0203E120
_08050420: .4byte gUnknown_02000000
_08050424: .4byte ekrBattle_8050440
_08050428:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0805043C  @ ekrBattle_805046C
_08050432:
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805043C: .4byte ekrBattle_805046C

	THUMB_FUNC_START ekrBattle_8050440
ekrBattle_8050440: @ 0x08050440
	push {r4, r5, lr}
	adds r5, r0, #0
	bl EkrClasschgFinished
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #1
	bne _0805045C
	bl EndEkrClasschg
	ldr r0, _08050464  @ gUnknown_0203E1C8
	strh r4, [r0]
	ldr r0, _08050468  @ ekrBattle_CheckForLevelup_8050C34
	str r0, [r5, #0xc]
_0805045C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08050464: .4byte gUnknown_0203E1C8
_08050468: .4byte ekrBattle_CheckForLevelup_8050C34

	THUMB_FUNC_START ekrBattle_805046C
ekrBattle_805046C: @ 0x0805046C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r7, #0
	ldr r0, _080504A4  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805048C
	mov r1, r8
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
_0805048C:
	ldr r0, _080504A8  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #3
	bne _08050498
	b _080505C0
_08050498:
	cmp r0, #3
	ble _080504AC
	cmp r0, #4
	bne _080504A2
	b _080505CC
_080504A2:
	b _080505CE
	.align 2, 0
_080504A4: .4byte gKeyStatusPtr
_080504A8: .4byte gUnknown_0203E120
_080504AC:
	cmp r0, #0
	bge _080504B2
	b _080505CE
_080504B2:
	ldr r0, _080504FC  @ gUnknown_0201FB04
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	cmp r1, #2
	beq _080504C0
	b _080505CE
_080504C0:
	bl sub_805B028
	cmp r0, #0
	bne _080504CA
	b _080505CC
_080504CA:
	ldr r4, _08050500  @ gUnknown_0203E1C8
	ldr r0, _08050504  @ gUnknown_0203E188
	ldr r0, [r0]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4]
	ldr r0, _08050508  @ gUnknown_0203E18C
	ldr r0, [r0]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #2]
	ldr r1, _0805050C  @ gUnknown_0203E1AC
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08050510
	movs r0, #1
	bl sub_8031EE4
	b _080505CC
	.align 2, 0
_080504FC: .4byte gUnknown_0201FB04
_08050500: .4byte gUnknown_0203E1C8
_08050504: .4byte gUnknown_0203E188
_08050508: .4byte gUnknown_0203E18C
_0805050C: .4byte gUnknown_0203E1AC
_08050510:
	movs r2, #2
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08050522
	movs r0, #2
_0805051A:
	bl sub_8031EE4
	strh r7, [r4, #2]
	b _080505CC
_08050522:
	mov r0, r8
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _08050534
	bl sub_805B094
	movs r0, #4
	b _0805051A
_08050534:
	movs r1, #0
	ldr r0, _080505B8  @ gUnknown_02000000
	ldr r4, [r0]
	ldr r5, [r0, #8]
	ldrb r0, [r4, #0x12]
	cmp r0, #8
	bgt _08050548
	cmp r0, #6
	blt _08050548
	movs r1, #1
_08050548:
	ldrb r0, [r5, #0x12]
	cmp r0, #8
	bgt _08050558
	cmp r0, #6
	blt _08050558
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_08050558:
	cmp r1, #2
	bne _080505CE
	adds r0, r4, #0
	bl sub_8054BD4
	movs r6, #0xc
	ands r0, r6
	cmp r0, #0
	beq _08050572
	adds r0, r4, #0
	movs r1, #0
	bl sub_8054BA4
_08050572:
	adds r0, r5, #0
	bl sub_8054BD4
	ands r0, r6
	cmp r0, #0
	beq _08050586
	adds r0, r5, #0
	movs r1, #0
	bl sub_8054BA4
_08050586:
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0x44
	bne _08050598
	movs r1, #1
	negs r1, r1
	adds r0, r4, #0
	bl sub_80533D0
_08050598:
	bl sub_8031EF0
	bl sub_80581EC
	bl ClearAISArray
	bl sub_80599E8
	bl sub_8059D28
	movs r0, #0
	mov r2, r8
	strh r0, [r2, #0x2c]
	ldr r0, _080505BC  @ ekrBattle_8050360
	str r0, [r2, #0xc]
	b _080505CE
	.align 2, 0
_080505B8: .4byte gUnknown_02000000
_080505BC: .4byte ekrBattle_8050360
_080505C0:
	ldr r0, _080505E4  @ gUnknown_0201FB04
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r1, r1, r0
	cmp r1, #1
	bne _080505CE
_080505CC:
	movs r7, #1
_080505CE:
	cmp r7, #1
	bne _080505D8
	ldr r0, _080505E8  @ ekrBattle_80505EC
	mov r1, r8
	str r0, [r1, #0xc]
_080505D8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080505E4: .4byte gUnknown_0201FB04
_080505E8: .4byte ekrBattle_80505EC

	THUMB_FUNC_START ekrBattle_80505EC
ekrBattle_80505EC: @ 0x080505EC
	adds r2, r0, #0
	adds r2, #0x29
	movs r1, #0
	strb r1, [r2]
	ldr r1, _080505FC  @ ekrBattle_8050600
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080505FC: .4byte ekrBattle_8050600

	THUMB_FUNC_START ekrBattle_8050600
ekrBattle_8050600: @ 0x08050600
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0805066C  @ gUnknown_02017728
	ldr r0, [r0]
	cmp r0, #0
	bne _08050666
	ldr r0, _08050670  @ gUnknown_02017738
	ldr r4, [r0]
	cmp r4, #0
	bne _08050666
	bl sub_8056E60
	lsls r0, r0, #0x18
	asrs r6, r0, #0x18
	cmp r6, #1
	bne _08050666
	strh r4, [r5, #0x2c]
	ldr r0, _08050674  @ ekrBattle_8050684
	str r0, [r5, #0xc]
	ldr r4, _08050678  @ gUnknown_02000000
	ldr r0, [r4]
	bl sub_8070214
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08050666
	ldr r0, _0805067C  @ gUnknown_0203E1C8
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #1
	cmp r0, #0
	beq _08050642
	movs r2, #0
_08050642:
	ldr r3, _08050680  @ gUnknown_02017744
	ldr r0, [r3]
	adds r1, r5, #0
	adds r1, #0x29
	cmp r2, r0
	beq _08050650
	strb r6, [r1]
_08050650:
	ldrb r0, [r1]
	cmp r0, #1
	bne _08050666
	ldr r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_08050666:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805066C: .4byte gUnknown_02017728
_08050670: .4byte gUnknown_02017738
_08050674: .4byte ekrBattle_8050684
_08050678: .4byte gUnknown_02000000
_0805067C: .4byte gUnknown_0203E1C8
_08050680: .4byte gUnknown_02017744

	THUMB_FUNC_START ekrBattle_8050684
ekrBattle_8050684: @ 0x08050684
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _080506BC
	bl sub_804FD54
	cmp r0, #1
	beq _080506B8
	ldr r0, _080506B0  @ gUnknown_0203E1C8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmn r1, r0
	beq _080506B8
	ldr r0, _080506B4  @ ekrBattle_80506C8
	b _080506BA
	.align 2, 0
_080506B0: .4byte gUnknown_0203E1C8
_080506B4: .4byte ekrBattle_80506C8
_080506B8:
	ldr r0, _080506C4  @ ekrBattle_MakePopups
_080506BA:
	str r0, [r4, #0xc]
_080506BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080506C4: .4byte ekrBattle_MakePopups

	THUMB_FUNC_START ekrBattle_80506C8
ekrBattle_80506C8: @ 0x080506C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r0, _080507CC  @ gUnknown_02019490
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	mov sl, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r7, _080507D0  @ gLCDControlBuffer
	ldrb r0, [r7, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r7, #1]
	adds r1, r7, #0
	adds r1, #0x2d
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x31
	movs r2, #0x94
	strb r2, [r0]
	subs r1, #1
	movs r0, #0xf0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x30
	strb r2, [r0]
	adds r6, r7, #0
	adds r6, #0x34
	ldrb r1, [r6]
	movs r2, #1
	mov r8, r2
	mov r0, r8
	orrs r1, r0
	movs r2, #2
	mov r9, r2
	mov r0, r9
	orrs r1, r0
	movs r5, #4
	orrs r1, r5
	movs r4, #8
	orrs r1, r4
	movs r3, #0x10
	orrs r1, r3
	movs r2, #0x36
	adds r2, r2, r7
	mov ip, r2
	ldrb r0, [r2]
	mov r2, r8
	orrs r0, r2
	movs r2, #3
	negs r2, r2
	ands r0, r2
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	subs r2, #0x1e
	ands r1, r2
	strb r1, [r6]
	ands r0, r2
	mov r1, ip
	strb r0, [r1]
	ldr r0, _080507D4  @ gUnknown_08802D44
	ldr r1, _080507D8  @ 0x06002000
	movs r2, #0xc0
	lsls r2, r2, #2
	bl RegisterTileGraphics
	ldr r0, _080507DC  @ gUnknown_08803524
	ldr r1, _080507E0  @ gUnknown_020238F4
	movs r2, #1
	str r2, [sp]
	adds r2, #0xff
	str r2, [sp, #4]
	movs r2, #0x12
	movs r3, #3
	bl sub_8070E94
	ldr r0, _080507E4  @ gUnknown_08803590
	ldr r1, _080507E8  @ gUnknown_020228C8
	movs r2, #8
	bl CpuFastSet
	movs r0, #2
	bl BG_EnableSyncByMask
	bl EnablePaletteSync
	bl sub_806FAB0
	cmp r0, #2
	bhi _080507EC
	cmp r0, #1
	bcc _080507EC
	ldrb r2, [r7, #0x10]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r7, #0x10]
	ldrb r2, [r7, #0xc]
	adds r0, r1, #0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strb r0, [r7, #0xc]
	ldrb r0, [r7, #0x18]
	ands r1, r0
	mov r0, r9
	orrs r1, r0
	strb r1, [r7, #0x18]
	ldrb r0, [r7, #0x14]
	movs r1, #3
	orrs r0, r1
	strb r0, [r7, #0x14]
	b _08050818
	.align 2, 0
_080507CC: .4byte gUnknown_02019490
_080507D0: .4byte gLCDControlBuffer
_080507D4: .4byte gUnknown_08802D44
_080507D8: .4byte 0x06002000
_080507DC: .4byte gUnknown_08803524
_080507E0: .4byte gUnknown_020238F4
_080507E4: .4byte gUnknown_08803590
_080507E8: .4byte gUnknown_020228C8
_080507EC:
	ldr r3, _08050830  @ gLCDControlBuffer
	ldrb r2, [r3, #0x10]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0x10]
	ldrb r2, [r3, #0xc]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r3, #0xc]
	ldrb r0, [r3, #0x14]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r3, #0x14]
	ldrb r0, [r3, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x18]
_08050818:
	movs r0, #1
	bl EkrGauge_80511C0
	ldr r0, _08050834  @ gUnknown_0203E1C8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805083C
	ldr r0, _08050838  @ gUnknown_0203E1C4
	movs r2, #0
	ldrsh r0, [r0, r2]
	b _08050842
	.align 2, 0
_08050830: .4byte gLCDControlBuffer
_08050834: .4byte gUnknown_0203E1C8
_08050838: .4byte gUnknown_0203E1C4
_0805083C:
	ldr r0, _080508D8  @ gUnknown_0203E1C4
	movs r1, #2
	ldrsh r0, [r0, r1]
_08050842:
	movs r1, #0x64
	bl DivRem
	adds r6, r0, #0
	movs r1, #0xa
	bl Div
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	subs r4, r6, r0
	cmp r5, #0
	bne _08050860
	movs r5, #0xa
_08050860:
	ldr r0, _080508DC  @ gUnknown_02019490
	adds r1, r6, #0
	bl sub_8071140
	lsls r5, r5, #5
	mov r8, r5
	lsls r4, r4, #5
	mov r9, r4
	mov r5, sl
	ldr r4, _080508DC  @ gUnknown_02019490
	ldr r7, _080508E0  @ gUnknown_088030C4
	movs r6, #0xc
_08050878:
	ldrh r0, [r4]
	lsls r0, r0, #5
	adds r0, r0, r7
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r5, #0x20
	adds r4, #2
	subs r6, #1
	cmp r6, #0
	bge _08050878
	ldr r4, _080508E4  @ gUnknown_088033C4
	mov r2, r8
	adds r0, r2, r4
	movs r1, #0xd0
	lsls r1, r1, #1
	add r1, sl
	movs r2, #8
	bl CpuFastSet
	add r4, r9
	movs r1, #0xe0
	lsls r1, r1, #1
	add r1, sl
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r1, _080508E8  @ 0x060021A0
	movs r2, #0xf0
	lsls r2, r2, #1
	mov r0, sl
	bl RegisterTileGraphics
	movs r0, #0
	ldr r1, [sp, #8]
	strh r0, [r1, #0x2c]
	ldr r0, _080508EC  @ ekrBattle_80508F0
	str r0, [r1, #0xc]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080508D8: .4byte gUnknown_0203E1C4
_080508DC: .4byte gUnknown_02019490
_080508E0: .4byte gUnknown_088030C4
_080508E4: .4byte gUnknown_088033C4
_080508E8: .4byte 0x060021A0
_080508EC: .4byte ekrBattle_80508F0

	THUMB_FUNC_START ekrBattle_80508F0
ekrBattle_80508F0: @ 0x080508F0
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r1, r0, #1
	strh r1, [r2, #0x2c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _08050910
	movs r0, #0
	strh r0, [r2, #0x2c]
	ldr r0, _0805090C  @ ekrBattle_8050940
	str r0, [r2, #0xc]
	b _08050936
	.align 2, 0
_0805090C: .4byte ekrBattle_8050940
_08050910:
	ldr r3, _0805093C  @ gLCDControlBuffer
	adds r2, r3, #0
	adds r2, #0x2d
	movs r0, #0
	strb r0, [r2]
	movs r2, #0x6c
	negs r2, r2
	adds r0, r2, #0
	subs r0, r0, r1
	adds r2, r3, #0
	adds r2, #0x31
	strb r0, [r2]
	subs r2, #5
	movs r0, #0xf0
	strb r0, [r2]
	subs r1, #0x6c
	adds r0, r3, #0
	adds r0, #0x30
	strb r1, [r0]
_08050936:
	pop {r0}
	bx r0
	.align 2, 0
_0805093C: .4byte gLCDControlBuffer

	THUMB_FUNC_START ekrBattle_8050940
ekrBattle_8050940: @ 0x08050940
	push {r4, lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _08050998
	ldr r2, _08050964  @ gUnknown_0203E1C8
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #0
	beq _0805096C
	ldr r0, _08050968  @ gUnknown_0203E1C4
	ldrh r0, [r0]
	b _0805097A
	.align 2, 0
_08050964: .4byte gUnknown_0203E1C8
_08050968: .4byte gUnknown_0203E1C4
_0805096C:
	ldrh r3, [r2, #2]
	movs r4, #2
	ldrsh r0, [r2, r4]
	cmp r0, #0
	beq _08050980
	ldr r0, _080509A0  @ gUnknown_0203E1C4
	ldrh r0, [r0, #2]
_0805097A:
	strh r0, [r1, #0x2c]
	adds r0, r0, r3
	strh r0, [r1, #0x2e]
_08050980:
	ldr r0, _080509A4  @ ekrBattle_80509A8
	str r0, [r1, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0x74
	bl SomePlaySound_8071990
	movs r0, #0x74
	movs r1, #0x78
	movs r2, #0
	bl sub_8071AB0
_08050998:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080509A0: .4byte gUnknown_0203E1C4
_080509A4: .4byte ekrBattle_80509A8

	THUMB_FUNC_START ekrBattle_80509A8
ekrBattle_80509A8: @ 0x080509A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, _08050A70  @ gUnknown_02019490
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #1
	add r1, r8
	mov sl, r1
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	movs r1, #0x64
	bl DivRem
	adds r5, r0, #0
	movs r1, #0xa
	bl Div
	adds r4, r0, #0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r6, r5, r0
	cmp r4, #0
	bne _080509E4
	movs r4, #0xa
_080509E4:
	mov r0, r8
	adds r1, r5, #0
	bl sub_8071140
	lsls r4, r4, #5
	mov r9, r4
	lsls r6, r6, #5
	str r6, [sp]
	mov r6, sl
	mov r5, r8
	ldr r0, _08050A74  @ gUnknown_088030C4
	mov r8, r0
	movs r4, #0xc
_080509FE:
	ldrh r0, [r5]
	lsls r0, r0, #5
	add r0, r8
	adds r1, r6, #0
	movs r2, #8
	bl CpuFastSet
	adds r6, #0x20
	adds r5, #2
	subs r4, #1
	cmp r4, #0
	bge _080509FE
	ldr r4, _08050A78  @ gUnknown_088033C4
	mov r1, r9
	adds r0, r1, r4
	movs r1, #0xd0
	lsls r1, r1, #1
	add r1, sl
	movs r2, #8
	bl CpuFastSet
	ldr r2, [sp]
	adds r4, r2, r4
	movs r1, #0xe0
	lsls r1, r1, #1
	add r1, sl
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r1, _08050A7C  @ 0x060021A0
	movs r2, #0xf0
	lsls r2, r2, #1
	mov r0, sl
	bl RegisterTileGraphics
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	cmp r0, r1
	ble _08050A60
	movs r0, #0
	strh r0, [r7, #0x2c]
	ldr r0, _08050A80  @ ekrBattle_8050A84
	str r0, [r7, #0xc]
_08050A60:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050A70: .4byte gUnknown_02019490
_08050A74: .4byte gUnknown_088030C4
_08050A78: .4byte gUnknown_088033C4
_08050A7C: .4byte 0x060021A0
_08050A80: .4byte ekrBattle_8050A84

	THUMB_FUNC_START ekrBattle_8050A84
ekrBattle_8050A84: @ 0x08050A84
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08050A96
	movs r0, #0x74
	bl sub_8071A44
_08050A96:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _08050AAC
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r0, _08050AB4  @ ekrBattle_8050AB8
	str r0, [r4, #0xc]
_08050AAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050AB4: .4byte ekrBattle_8050AB8

	THUMB_FUNC_START ekrBattle_8050AB8
ekrBattle_8050AB8: @ 0x08050AB8
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	adds r2, r0, #1
	strh r2, [r1, #0x2c]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _08050AD8
	movs r0, #0
	strh r0, [r1, #0x2c]
	ldr r0, _08050AD4  @ ekrBattle_8050B08
	str r0, [r1, #0xc]
	b _08050AFE
	.align 2, 0
_08050AD4: .4byte ekrBattle_8050B08
_08050AD8:
	ldr r3, _08050B04  @ gLCDControlBuffer
	adds r1, r3, #0
	adds r1, #0x2d
	movs r0, #0
	strb r0, [r1]
	adds r0, r2, #0
	subs r0, #0x78
	adds r1, #4
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xf0
	strb r0, [r1]
	movs r1, #0x60
	negs r1, r1
	adds r0, r1, #0
	subs r0, r0, r2
	adds r1, r3, #0
	adds r1, #0x30
	strb r0, [r1]
_08050AFE:
	pop {r0}
	bx r0
	.align 2, 0
_08050B04: .4byte gLCDControlBuffer

	THUMB_FUNC_START ekrBattle_8050B08
ekrBattle_8050B08: @ 0x08050B08
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	bne _08050B4C
	ldr r2, _08050B30  @ gUnknown_0203E1C8
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08050B38
	ldr r0, _08050B34  @ gUnknown_0203E1C4
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0
	ldrsh r0, [r2, r3]
	b _08050B42
	.align 2, 0
_08050B30: .4byte gUnknown_0203E1C8
_08050B34: .4byte gUnknown_0203E1C4
_08050B38:
	ldr r0, _08050B98  @ gUnknown_0203E1C4
	movs r3, #2
	ldrsh r1, [r0, r3]
	movs r3, #2
	ldrsh r0, [r2, r3]
_08050B42:
	adds r1, r1, r0
	cmp r1, #0x63
	ble _08050B4C
	bl NewEkrLvlupFan
_08050B4C:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0x28
	ble _08050C28
	bl ClearBG1
	movs r0, #0
	bl EkrGauge_80511C0
	bl sub_806FAB0
	cmp r0, #2
	bhi _08050BA0
	cmp r0, #1
	bcc _08050BA0
	ldr r3, _08050B9C  @ gLCDControlBuffer
	ldrb r2, [r3, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xc]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r3, #0x10]
	ldrb r0, [r3, #0x18]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r3, #0x18]
	ldrb r0, [r3, #0x14]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x14]
	b _08050BCC
	.align 2, 0
_08050B98: .4byte gUnknown_0203E1C4
_08050B9C: .4byte gLCDControlBuffer
_08050BA0:
	ldr r3, _08050BFC  @ gLCDControlBuffer
	ldrb r2, [r3, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xc]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r3, #0x10]
	ldrb r0, [r3, #0x14]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r3, #0x14]
	ldrb r0, [r3, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x18]
_08050BCC:
	adds r2, r3, #0
	adds r1, r2, #0
	adds r1, #0x2d
	movs r0, #0
	strb r0, [r1]
	adds r1, #4
	strb r0, [r1]
	subs r1, #5
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	ldr r2, _08050C00  @ gUnknown_0203E1C8
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _08050C08
	ldr r0, _08050C04  @ gUnknown_0203E1C4
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0
	ldrsh r0, [r2, r3]
	b _08050C12
	.align 2, 0
_08050BFC: .4byte gLCDControlBuffer
_08050C00: .4byte gUnknown_0203E1C8
_08050C04: .4byte gUnknown_0203E1C4
_08050C08:
	ldr r0, _08050C1C  @ gUnknown_0203E1C4
	movs r3, #2
	ldrsh r1, [r0, r3]
	movs r3, #2
	ldrsh r0, [r2, r3]
_08050C12:
	adds r1, r1, r0
	cmp r1, #0x63
	ble _08050C24
	ldr r0, _08050C20  @ ekrBattle_CheckForLevelup_8050C34
	b _08050C26
	.align 2, 0
_08050C1C: .4byte gUnknown_0203E1C4
_08050C20: .4byte ekrBattle_CheckForLevelup_8050C34
_08050C24:
	ldr r0, _08050C30  @ ekrBattle_MakePopups
_08050C26:
	str r0, [r4, #0xc]
_08050C28:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050C30: .4byte ekrBattle_MakePopups

	THUMB_FUNC_START ekrBattle_CheckForLevelup_8050C34
ekrBattle_CheckForLevelup_8050C34: @ 0x08050C34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08050C48  @ gUnknown_0203E1C8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08050C50
	ldr r0, _08050C4C  @ gUnknown_02000000
	ldr r0, [r0]
	b _08050C54
	.align 2, 0
_08050C48: .4byte gUnknown_0203E1C8
_08050C4C: .4byte gUnknown_02000000
_08050C50:
	ldr r0, _08050C64  @ gUnknown_02000000
	ldr r0, [r0, #8]
_08050C54:
	bl NewEkrLevelup
	ldr r0, _08050C68  @ ekrBattle_WaitForLevelup_8050C6C
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050C64: .4byte gUnknown_02000000
_08050C68: .4byte ekrBattle_WaitForLevelup_8050C6C

	THUMB_FUNC_START ekrBattle_WaitForLevelup_8050C6C
ekrBattle_WaitForLevelup_8050C6C: @ 0x08050C6C
	push {r4, lr}
	adds r4, r0, #0
	bl DoesEkrLevelUpSomething
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050C84
	bl EndEkrLevelUp
	ldr r0, _08050C8C  @ ekrBattle_MakePopups
	str r0, [r4, #0xc]
_08050C84:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050C8C: .4byte ekrBattle_MakePopups

	THUMB_FUNC_START ekrBattle_MakePopups
ekrBattle_MakePopups: @ 0x08050C90
	push {r4, lr}
	adds r4, r0, #0
	bl Battle_MakePopups
	ldr r0, _08050CA4  @ ekrBattle_WaitForPopup
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050CA4: .4byte ekrBattle_WaitForPopup

	THUMB_FUNC_START ekrBattle_WaitForPopup
ekrBattle_WaitForPopup: @ 0x08050CA8
	push {r4, lr}
	adds r4, r0, #0
	bl DoesBattlePopupExist
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050CC0
	bl DeleteAnimsOnPopup
	ldr r0, _08050CC8  @ ekrBattle_8050CCC
	str r0, [r4, #0xc]
_08050CC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050CC8: .4byte ekrBattle_8050CCC

	THUMB_FUNC_START ekrBattle_8050CCC
ekrBattle_8050CCC: @ 0x08050CCC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8054ED4
	bl sub_80546B0
	ldr r0, _08050CF0  @ gUnknown_0203E100
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r4, #0x44]
	movs r0, #0
	str r0, [r4, #0x48]
	ldr r0, _08050CF4  @ ekrBattle_8050CF8
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050CF0: .4byte gUnknown_0203E100
_08050CF4: .4byte ekrBattle_8050CF8

	THUMB_FUNC_START ekrBattle_8050CF8
ekrBattle_8050CF8: @ 0x08050CF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	cmp r0, #2
	bne _08050D0C
	ldr r0, _08050D08  @ ekrBattle_8050DA8
	str r0, [r4, #0xc]
	b _08050D7C
	.align 2, 0
_08050D08: .4byte ekrBattle_8050DA8
_08050D0C:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _08050D48
	ldr r0, _08050D2C  @ gUnknown_02000000
	ldr r0, [r0]
	str r0, [r4, #0x5c]
	bl sub_806FA6C
	cmp r0, #2
	beq _08050D34
	cmp r0, #2
	bhi _08050D30
	cmp r0, #1
	beq _08050D34
	b _08050D3E
	.align 2, 0
_08050D2C: .4byte gUnknown_02000000
_08050D30:
	cmp r0, #3
	bne _08050D3E
_08050D34:
	ldr r0, [r4, #0x5c]
	bl sub_80701E8
	ldr r0, _08050D44  @ ekrBattle_8050D88
	str r0, [r4, #0xc]
_08050D3E:
	movs r0, #1
	b _08050D74
	.align 2, 0
_08050D44: .4byte ekrBattle_8050D88
_08050D48:
	ldr r0, _08050D60  @ gUnknown_02000000
	ldr r0, [r0, #8]
	str r0, [r4, #0x5c]
	bl sub_806FA6C
	cmp r0, #2
	beq _08050D68
	cmp r0, #2
	bhi _08050D64
	cmp r0, #1
	beq _08050D68
	b _08050D72
	.align 2, 0
_08050D60: .4byte gUnknown_02000000
_08050D64:
	cmp r0, #3
	bne _08050D72
_08050D68:
	ldr r0, [r4, #0x5c]
	bl sub_80701E8
	ldr r0, _08050D84  @ ekrBattle_8050D88
	str r0, [r4, #0xc]
_08050D72:
	movs r0, #0
_08050D74:
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x48]
	adds r0, #1
	str r0, [r4, #0x48]
_08050D7C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050D84: .4byte ekrBattle_8050D88

	THUMB_FUNC_START ekrBattle_8050D88
ekrBattle_8050D88: @ 0x08050D88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl sub_806FC14
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08050D9E
	ldr r0, _08050DA4  @ ekrBattle_8050CF8
	str r0, [r4, #0xc]
_08050D9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050DA4: .4byte ekrBattle_8050CF8

	THUMB_FUNC_START ekrBattle_8050DA8
ekrBattle_8050DA8: @ 0x08050DA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08050DD4  @ gUnknown_02017724
	movs r0, #1
	str r0, [r1]
	ldr r0, _08050DD8  @ gUnknown_0203E0FC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08050DCA
	movs r0, #2
	movs r1, #7
	movs r2, #0
	bl NewEkrNamewinAppear
	bl sub_807289C
_08050DCA:
	ldr r0, _08050DDC  @ nullsub_69
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08050DD4: .4byte gUnknown_02017724
_08050DD8: .4byte gUnknown_0203E0FC
_08050DDC: .4byte nullsub_69

	THUMB_FUNC_START nullsub_69
nullsub_69: @ 0x08050DE0
	bx lr

	THUMB_FUNC_START NewEkrLvlupFan
NewEkrLvlupFan: @ 0x08050DE4
	push {lr}
	ldr r0, _08050DFC  @ gUnknown_085B93A0
	movs r1, #3
	bl Proc_Create
	movs r1, #0
	strh r1, [r0, #0x2c]
	movs r0, #0x80
	bl Sound_SetVolume80022EC
	pop {r0}
	bx r0
	.align 2, 0
_08050DFC: .4byte gUnknown_085B93A0

	THUMB_FUNC_START sub_8050E00
sub_8050E00: @ 0x08050E00
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bne _08050E28
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0x5b
	bl SomePlaySound_8071990
	movs r0, #0x5b
	movs r1, #0x78
	movs r2, #0
	bl sub_8071AB0
	b _08050E3A
_08050E28:
	cmp r0, #0x74
	bne _08050E3A
	movs r0, #0x80
	lsls r0, r0, #1
	bl Sound_SetVolume80022EC
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08050E3A:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8050E40
sub_8050E40: @ 0x08050E40
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	adds r5, r7, #0
_08050E4C:
	ldrh r0, [r4]
	movs r1, #0xf
	cmp r0, #0xff
	beq _08050E56
	adds r1, r0, #0
_08050E56:
	lsls r0, r1, #5
	ldr r1, _08050E88  @ gUnknown_08802904
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r4, #2
	adds r5, #0x20
	adds r6, #1
	cmp r6, #0xa
	bls _08050E4C
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r2, _08050E8C  @ 0x01000008
	mov r0, sp
	bl CpuFastSet
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08050E88: .4byte gUnknown_08802904
_08050E8C: .4byte 0x01000008

	THUMB_FUNC_START sub_8050E90
sub_8050E90: @ 0x08050E90
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r0, #1
	negs r0, r0
	cmp r6, r0
	bne _08050EAC
	movs r0, #0xb
	strh r0, [r5]
	movs r0, #0xa
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	b _08050EF0
_08050EAC:
	adds r0, r6, #0
	movs r1, #0x64
	bl Div
	strh r0, [r5]
	ldrh r1, [r5]
	movs r0, #0x64
	adds r4, r1, #0
	muls r4, r0, r4
	subs r4, r6, r4
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
	strh r0, [r5, #2]
	ldrh r1, [r5, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r4, r4, r0
	strh r4, [r5, #4]
	ldrh r1, [r5]
	ldrh r0, [r5, #2]
	cmn r1, r0
	bne _08050EE6
	movs r0, #0xb
	strh r0, [r5, #2]
_08050EE6:
	ldrh r0, [r5]
	cmp r0, #0
	bne _08050EF0
	movs r0, #0xb
	strh r0, [r5]
_08050EF0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START NewEkrGauge
NewEkrGauge: @ 0x08050EF8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r4, _08050F44  @ gUnknown_02000068
	ldr r0, _08050F48  @ gUnknown_085B93B8
	movs r1, #1
	bl Proc_Create
	str r0, [r4]
	movs r0, #0
	bl EkrGauge_80511C0
	bl EkrGauge_8051180
	bl EkrGauge_8051228
	bl EkrGauge_8051208
	ldr r1, _08050F4C  @ gUnknown_02000038
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl EkrGauge_80511D0
	ldr r0, _08050F50  @ gUnknown_0203E1AC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x50
	ble _08050F5C
	ldr r0, _08050F54  @ gUnknown_08802C84
	ldr r1, _08050F58  @ gUnknown_02022C08
	movs r2, #0x10
	bl CpuSet
	b _08050F70
	.align 2, 0
_08050F44: .4byte gUnknown_02000068
_08050F48: .4byte gUnknown_085B93B8
_08050F4C: .4byte gUnknown_02000038
_08050F50: .4byte gUnknown_0203E1AC
_08050F54: .4byte gUnknown_08802C84
_08050F58: .4byte gUnknown_02022C08
_08050F5C:
	ldr r0, _08050F88  @ gUnknown_0203E114
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	ldr r1, _08050F8C  @ gUnknown_08802B04
	adds r0, r0, r1
	ldr r1, _08050F90  @ gUnknown_02022C08
	movs r2, #0x10
	bl CpuSet
_08050F70:
	ldr r0, _08050F94  @ gUnknown_0203E1AC
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0x50
	ble _08050FA0
	ldr r0, _08050F98  @ gUnknown_08802C84
	ldr r1, _08050F9C  @ gUnknown_02022C28
	movs r2, #0x10
	bl CpuSet
	b _08050FB4
	.align 2, 0
_08050F88: .4byte gUnknown_0203E114
_08050F8C: .4byte gUnknown_08802B04
_08050F90: .4byte gUnknown_02022C08
_08050F94: .4byte gUnknown_0203E1AC
_08050F98: .4byte gUnknown_08802C84
_08050F9C: .4byte gUnknown_02022C28
_08050FA0:
	ldr r0, _08051108  @ gUnknown_0203E114
	movs r2, #2
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	ldr r1, _0805110C  @ gUnknown_08802B04
	adds r0, r0, r1
	ldr r1, _08051110  @ gUnknown_02022C28
	movs r2, #0x10
	bl CpuSet
_08050FB4:
	ldr r1, _08051114  @ gUnknown_0203E1B4
	ldr r0, _08051118  @ 0x0000FFFF
	strh r0, [r1]
	movs r0, #1
	negs r0, r0
	strh r0, [r1, #2]
	ldr r0, _0805111C  @ gUnknown_088025D8
	ldr r1, _08051120  @ 0x06013800
	bl LZ77UnCompVram
	ldr r0, _08051124  @ gUnknown_08802674
	ldr r1, _08051128  @ 0x06013940
	bl LZ77UnCompVram
	ldr r0, _0805112C  @ gUnknown_08802698
	ldr r1, _08051130  @ 0x06013D40
	bl LZ77UnCompVram
	ldr r6, _08051108  @ gUnknown_0203E114
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #5
	ldr r5, _08051134  @ gUnknown_08802884
	adds r0, r0, r5
	ldr r4, _08051138  @ gUnknown_02022B48
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r2, #2
	ldrsh r0, [r6, r2]
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r4, #0x20
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	bl EnablePaletteSync
	ldr r6, _0805113C  @ gUnknown_0203E1B8
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r7, _08051140  @ gUnknown_02017700
	adds r1, r7, #0
	bl sub_8050E90
	ldr r5, _08051144  @ gUnknown_0203E1BC
	movs r2, #0
	ldrsh r0, [r5, r2]
	adds r1, r7, #6
	bl sub_8050E90
	ldr r4, _08051148  @ gUnknown_0203E1C0
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r7, #0
	adds r1, #0xc
	bl sub_8050E90
	movs r2, #2
	ldrsh r0, [r6, r2]
	adds r1, r7, #0
	adds r1, #0x12
	bl sub_8050E90
	movs r1, #2
	ldrsh r0, [r5, r1]
	adds r1, r7, #0
	adds r1, #0x18
	bl sub_8050E90
	movs r2, #2
	ldrsh r0, [r4, r2]
	adds r1, r7, #0
	adds r1, #0x1e
	bl sub_8050E90
	movs r0, #0
	str r0, [sp]
	ldr r1, _0805114C  @ gUnknown_020169C8
	ldr r2, _08051150  @ 0x01000100
	mov r0, sp
	bl CpuFastSet
	movs r6, #0
	mov r9, r7
_08051062:
	movs r5, #0
	lsls r3, r6, #1
	adds r0, r6, #1
	mov r8, r0
	lsls r4, r6, #7
_0805106C:
	adds r0, r3, r6
	adds r0, r0, r5
	lsls r0, r0, #1
	add r0, r9
	ldrh r0, [r0]
	lsls r0, r0, #5
	ldr r1, _08051154  @ gUnknown_088026E4
	adds r0, r0, r1
	ldr r7, _0805114C  @ gUnknown_020169C8
	adds r1, r4, r7
	movs r2, #0x10
	str r3, [sp, #4]
	bl CpuSet
	adds r4, #0x20
	adds r5, #1
	ldr r3, [sp, #4]
	cmp r5, #2
	bls _0805106C
	mov r6, r8
	cmp r6, #5
	bls _08051062
	ldr r1, _08051158  @ 0x06013A00
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r0, r7, #0
	adds r2, r4, #0
	bl RegisterTileGraphics
	adds r0, r7, r4
	ldr r1, _0805115C  @ 0x06013E00
	adds r2, r4, #0
	bl RegisterTileGraphics
	bl ResetIconGraphics_
	movs r0, #0
	movs r1, #0x1d
	bl LoadIconPalette
	movs r0, #0
	movs r1, #0x1e
	bl LoadIconPalette
	ldr r0, _08051160  @ gUnknown_0203E188
	ldr r0, [r0]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIconId
	movs r1, #0xee
	lsls r1, r1, #1
	bl LoadIconObjectGraphics
	ldr r0, _08051164  @ gUnknown_0203E18C
	ldr r0, [r0]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIconId
	movs r1, #0xef
	lsls r1, r1, #1
	bl LoadIconObjectGraphics
	ldr r0, _08051168  @ gUnknown_0859ED70
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x20
	bl CopyToPaletteBuffer
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051108: .4byte gUnknown_0203E114
_0805110C: .4byte gUnknown_08802B04
_08051110: .4byte gUnknown_02022C28
_08051114: .4byte gUnknown_0203E1B4
_08051118: .4byte 0x0000FFFF
_0805111C: .4byte gUnknown_088025D8
_08051120: .4byte 0x06013800
_08051124: .4byte gUnknown_08802674
_08051128: .4byte 0x06013940
_0805112C: .4byte gUnknown_08802698
_08051130: .4byte 0x06013D40
_08051134: .4byte gUnknown_08802884
_08051138: .4byte gUnknown_02022B48
_0805113C: .4byte gUnknown_0203E1B8
_08051140: .4byte gUnknown_02017700
_08051144: .4byte gUnknown_0203E1BC
_08051148: .4byte gUnknown_0203E1C0
_0805114C: .4byte gUnknown_020169C8
_08051150: .4byte 0x01000100
_08051154: .4byte gUnknown_088026E4
_08051158: .4byte 0x06013A00
_0805115C: .4byte 0x06013E00
_08051160: .4byte gUnknown_0203E188
_08051164: .4byte gUnknown_0203E18C
_08051168: .4byte gUnknown_0859ED70

	THUMB_FUNC_START EndEkrGauge
EndEkrGauge: @ 0x0805116C
	push {lr}
	ldr r0, _0805117C  @ gUnknown_02000068
	ldr r0, [r0]
	bl Proc_Delete
	pop {r0}
	bx r0
	.align 2, 0
_0805117C: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_8051180
EkrGauge_8051180: @ 0x08051180
	ldr r0, _0805118C  @ gUnknown_02000068
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	bx lr
	.align 2, 0
_0805118C: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_8051190
EkrGauge_8051190: @ 0x08051190
	ldr r0, _0805119C  @ gUnknown_02000068
	ldr r1, [r0]
	movs r0, #1
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	bx lr
	.align 2, 0
_0805119C: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_80511A0
EkrGauge_80511A0: @ 0x080511A0
	ldr r0, _080511AC  @ gUnknown_02000068
	ldr r1, [r0]
	movs r0, #1
	str r0, [r1, #0x4c]
	bx lr
	.align 2, 0
_080511AC: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_80511B0
EkrGauge_80511B0: @ 0x080511B0
	ldr r0, _080511BC  @ gUnknown_02000068
	ldr r1, [r0]
	movs r0, #1
	str r0, [r1, #0x50]
	bx lr
	.align 2, 0
_080511BC: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_80511C0
EkrGauge_80511C0: @ 0x080511C0
	lsls r0, r0, #0x10
	ldr r1, _080511CC  @ gUnknown_02000068
	ldr r1, [r1]
	lsrs r0, r0, #6
	str r0, [r1, #0x44]
	bx lr
	.align 2, 0
_080511CC: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_80511D0
EkrGauge_80511D0: @ 0x080511D0
	ldr r2, _080511E0  @ gUnknown_02000068
	ldr r2, [r2]
	movs r3, #0
	strh r0, [r2, #0x32]
	strh r1, [r2, #0x3a]
	adds r2, #0x29
	strb r3, [r2]
	bx lr
	.align 2, 0
_080511E0: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_80511E4
EkrGauge_80511E4: @ 0x080511E4
	ldr r2, _080511F4  @ gUnknown_02000068
	ldr r2, [r2]
	strh r0, [r2, #0x32]
	strh r1, [r2, #0x3a]
	adds r2, #0x29
	movs r0, #1
	strb r0, [r2]
	bx lr
	.align 2, 0
_080511F4: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_80511F8
EkrGauge_80511F8: @ 0x080511F8
	ldr r0, _08051204  @ gUnknown_02000068
	ldr r0, [r0]
	adds r0, #0x29
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08051204: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_8051208
EkrGauge_8051208: @ 0x08051208
	ldr r0, _08051214  @ gUnknown_02000068
	ldr r0, [r0]
	adds r0, #0x29
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08051214: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_8051218
EkrGauge_8051218: @ 0x08051218
	ldr r0, _08051224  @ gUnknown_02000068
	ldr r0, [r0]
	adds r0, #0x2a
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08051224: .4byte gUnknown_02000068

	THUMB_FUNC_START EkrGauge_8051228
EkrGauge_8051228: @ 0x08051228
	ldr r0, _08051234  @ gUnknown_02000068
	ldr r0, [r0]
	adds r0, #0x2a
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08051234: .4byte gUnknown_02000068

	THUMB_FUNC_START sub_8051238
sub_8051238: @ 0x08051238
	push {lr}
	adds r3, r0, #0
	cmp r1, #0
	ble _08051260
	cmp r2, #1
	beq _08051250
	cmp r2, #1
	bcs _08051258
	ldr r0, _0805124C  @ gUnknown_085B955C
	b _0805127A
	.align 2, 0
_0805124C: .4byte gUnknown_085B955C
_08051250:
	ldr r0, _08051254  @ gUnknown_085B9574
	b _0805127A
	.align 2, 0
_08051254: .4byte gUnknown_085B9574
_08051258:
	ldr r0, _0805125C  @ gUnknown_085B958C
	b _0805127A
	.align 2, 0
_0805125C: .4byte gUnknown_085B958C
_08051260:
	cmp r2, #1
	beq _08051270
	cmp r2, #1
	bcs _08051278
	ldr r0, _0805126C  @ gUnknown_085B95A4
	b _0805127A
	.align 2, 0
_0805126C: .4byte gUnknown_085B95A4
_08051270:
	ldr r0, _08051274  @ gUnknown_085B95BC
	b _0805127A
	.align 2, 0
_08051274: .4byte gUnknown_085B95BC
_08051278:
	ldr r0, _08051280  @ gUnknown_085B95D4
_0805127A:
	str r0, [r3, #0x3c]
	pop {r0}
	bx r0
	.align 2, 0
_08051280: .4byte gUnknown_085B95D4

	THUMB_FUNC_START ekrGauge_Loop
ekrGauge_Loop: @ 0x08051284
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x118
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0xd8]
	bl GetGameClock
	lsrs r0, r0, #3
	movs r1, #3
	bl DivRem
	str r0, [sp, #0xe8]
	mov r0, sl
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _080512B0
	b _08051A7E
_080512B0:
	mov r0, sl
	adds r0, #0x29
	ldrb r1, [r0]
	str r0, [sp, #0x110]
	cmp r1, #0
	beq _080512BE
	b _080513C4
_080512BE:
	mov r1, sl
	ldrh r0, [r1, #0x3a]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x13
	lsls r0, r4, #5
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r7, r0, r2
	cmp r7, #0
	bge _080512D4
	movs r7, #0
_080512D4:
	adds r6, r4, #7
	cmp r6, #7
	ble _080512DC
	movs r6, #7
_080512DC:
	movs r0, #7
	subs r0, r0, r6
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	mov r8, r1
	ldr r0, _08051300  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	blt _08051304
	cmp r0, #2
	bgt _08051304
	movs r4, #0
	mov r9, r4
	movs r5, #0xf
	str r5, [sp, #0xdc]
	b _0805130A
	.align 2, 0
_08051300: .4byte gUnknown_0203E120
_08051304:
	movs r0, #8
	str r0, [sp, #0xdc]
	mov r9, r0
_0805130A:
	ldr r4, _08051374  @ gUnknown_02022FE8
	movs r1, #0x80
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl FillBGRect
	mov r2, sl
	ldr r0, [r2, #0x4c]
	cmp r0, #0
	bne _0805135C
	ldr r0, _08051378  @ gUnknown_08802274
	add r0, r8
	lsls r5, r7, #1
	mov r3, r9
	lsls r1, r3, #1
	ldr r3, _0805137C  @ 0xFFFFFCC0
	adds r2, r4, r3
	adds r1, r1, r2
	adds r5, r5, r1
	lsls r4, r6, #0x10
	lsrs r4, r4, #0x10
	movs r1, #1
	negs r1, r1
	str r1, [sp]
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r2, #0xf
	adds r3, r4, #0
	bl sub_8070E94
	movs r0, #0x80
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xf
	adds r2, r4, #0
	movs r3, #2
	bl sub_8070D04
_0805135C:
	mov r1, sl
	ldr r0, [r1, #0x50]
	cmp r0, #0
	bne _080513BE
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bne _08051384
	ldr r0, _08051380  @ gUnknown_08802348
	mov r3, r8
	adds r2, r3, r0
	b _0805138A
	.align 2, 0
_08051374: .4byte gUnknown_02022FE8
_08051378: .4byte gUnknown_08802274
_0805137C: .4byte 0xFFFFFCC0
_08051380: .4byte gUnknown_08802348
_08051384:
	ldr r0, _0805141C  @ gUnknown_08802428
	mov r4, r8
	adds r2, r4, r0
_0805138A:
	lsls r5, r7, #1
	ldr r1, [sp, #0xdc]
	lsls r0, r1, #1
	ldr r1, _08051420  @ gBG0TilemapBuffer
	adds r0, r0, r1
	adds r5, r5, r0
	lsls r4, r6, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	negs r0, r0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r2, #0
	adds r1, r5, #0
	movs r2, #0x10
	adds r3, r4, #0
	bl sub_8070E94
	movs r0, #0x80
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	adds r2, r4, #0
	movs r3, #3
	bl sub_8070D04
_080513BE:
	movs r0, #1
	bl BG_EnableSyncByMask
_080513C4:
	ldr r3, _08051424  @ gUnknown_0203E1B4
	ldr r0, _08051428  @ gUnknown_0203E1AC
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldrh r4, [r0]
	movs r5, #0
	ldrsh r1, [r0, r5]
	adds r5, r0, #0
	cmp r2, r1
	beq _080513DC
	movs r6, #1
	str r6, [sp, #0xd8]
_080513DC:
	movs r0, #2
	ldrsh r1, [r3, r0]
	ldrh r2, [r5, #2]
	movs r6, #2
	ldrsh r0, [r5, r6]
	cmp r1, r0
	beq _080513EE
	movs r0, #1
	str r0, [sp, #0xd8]
_080513EE:
	strh r4, [r3]
	strh r2, [r3, #2]
	ldrh r7, [r5]
	ldr r0, _0805142C  @ gUnknown_0203E1B0
	ldrh r6, [r0]
	ldrh r1, [r5, #2]
	mov r8, r1
	ldrh r0, [r0, #2]
	str r0, [sp, #0xd4]
	ldr r0, _08051430  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #3
	beq _08051434
	cmp r0, #3
	bgt _08051454
	cmp r0, #0
	blt _08051454
	mov r3, sl
	movs r4, #0x32
	ldrsh r3, [r3, r4]
	str r3, [sp, #0xe0]
	b _0805145E
	.align 2, 0
_0805141C: .4byte gUnknown_08802428
_08051420: .4byte gBG0TilemapBuffer
_08051424: .4byte gUnknown_0203E1B4
_08051428: .4byte gUnknown_0203E1AC
_0805142C: .4byte gUnknown_0203E1B0
_08051430: .4byte gUnknown_0203E120
_08051434:
	ldr r0, _08051448  @ gUnknown_0203E104
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0805144C
	mov r2, sl
	movs r3, #0x32
	ldrsh r0, [r2, r3]
	adds r0, #0x38
	b _0805145C
	.align 2, 0
_08051448: .4byte gUnknown_0203E104
_0805144C:
	mov r4, sl
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	b _0805145A
_08051454:
	mov r2, sl
	movs r3, #0x32
	ldrsh r0, [r2, r3]
_0805145A:
	subs r0, #0x38
_0805145C:
	str r0, [sp, #0xe0]
_0805145E:
	ldr r4, [sp, #0x110]
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805147C
	mov r0, sl
	movs r1, #0x3a
	ldrsh r0, [r0, r1]
	str r0, [sp, #0xe4]
	ldr r0, _08051478  @ 0x0000FFF8
	ldr r2, [sp, #0xe4]
	ands r2, r0
	str r2, [sp, #0xe4]
	b _08051484
	.align 2, 0
_08051478: .4byte 0x0000FFF8
_0805147C:
	mov r3, sl
	movs r4, #0x3a
	ldrsh r3, [r3, r4]
	str r3, [sp, #0xe4]
_08051484:
	adds r4, r5, #0
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #0xa
	bl Div
	add r3, sp, #0x68
	strh r0, [r3]
	ldrh r1, [r3]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	ldrh r1, [r4]
	subs r1, r1, r2
	strh r1, [r3, #2]
	lsls r0, r0, #0x10
	mov r9, r3
	cmp r0, #0
	bne _080514AE
	movs r0, #0xb
	strh r0, [r3]
_080514AE:
	movs r2, #2
	ldrsh r0, [r4, r2]
	movs r1, #0xa
	bl Div
	mov r3, r9
	strh r0, [r3, #4]
	ldrh r1, [r3, #4]
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #1
	ldrh r1, [r4, #2]
	subs r1, r1, r2
	strh r1, [r3, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080514D4
	movs r0, #0xb
	strh r0, [r3, #4]
_080514D4:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x50
	ble _080514E4
	movs r0, #0xc
	mov r2, r9
	strh r0, [r2]
	strh r0, [r2, #2]
_080514E4:
	movs r3, #2
	ldrsh r0, [r5, r3]
	cmp r0, #0x50
	ble _080514F4
	movs r0, #0xc
	mov r4, r9
	strh r0, [r4, #4]
	strh r0, [r4, #6]
_080514F4:
	ldr r5, [sp, #0xe0]
	adds r5, #9
	str r5, [sp, #0xfc]
	ldr r0, [sp, #0xe4]
	adds r0, #0x91
	str r0, [sp, #0xf4]
	ldr r1, [sp, #0xe0]
	adds r1, #0x81
	str r1, [sp, #0xf0]
	lsls r2, r7, #0x10
	str r2, [sp, #0x100]
	lsls r6, r6, #0x10
	str r6, [sp, #0x104]
	ldr r3, [sp, #0xe0]
	adds r3, #0x1d
	str r3, [sp, #0x114]
	mov r4, r8
	lsls r4, r4, #0x10
	str r4, [sp, #0x108]
	ldr r5, [sp, #0xd4]
	lsls r5, r5, #0x10
	str r5, [sp, #0x10c]
	ldr r6, [sp, #0xe0]
	adds r6, #0x95
	str r6, [sp, #0xf8]
	ldr r0, [sp, #0xd8]
	cmp r0, #1
	bne _08051582
	add r0, sp, #0xd0
	movs r1, #0
	str r1, [r0]
	ldr r1, _080515BC  @ gUnknown_02016DC8
	ldr r2, _080515C0  @ 0x01000020
	bl CpuFastSet
	movs r0, #0
_0805153C:
	adds r1, r0, #1
	mov r8, r1
	lsls r5, r0, #6
	lsls r0, r0, #2
	mov r2, r9
	adds r4, r0, r2
	movs r6, #1
_0805154A:
	ldrh r0, [r4]
	lsls r0, r0, #5
	ldr r1, _080515C4  @ gUnknown_088026E4
	adds r0, r0, r1
	ldr r7, _080515BC  @ gUnknown_02016DC8
	adds r1, r5, r7
	movs r2, #0x10
	bl CpuSet
	adds r5, #0x20
	adds r4, #2
	subs r6, #1
	cmp r6, #0
	bge _0805154A
	mov r0, r8
	cmp r0, #1
	ble _0805153C
	ldr r1, _080515C8  @ 0x060139C0
	adds r0, r7, #0
	movs r2, #0x40
	bl RegisterTileGraphics
	adds r0, r7, #0
	adds r0, #0x40
	ldr r1, _080515CC  @ 0x06013DC0
	movs r2, #0x40
	bl RegisterTileGraphics
_08051582:
	add r0, sp, #8
	movs r4, #0
	ldr r1, _080515D0  @ 0x0000B1CE
	strh r1, [r0, #8]
	adds r2, r0, #0
	mov r3, sl
	ldr r0, [r3, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	adds r0, r2, #0
	add r5, sp, #0xfc
	ldrh r5, [r5]
	strh r5, [r0, #2]
	add r6, sp, #0xf4
	ldrh r6, [r6]
	strh r6, [r0, #4]
	strh r4, [r0, #0xc]
	movs r0, #0
	bl sub_80522F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #1
	beq _080515D8
	ldr r0, _080515D4  @ gUnknown_085B940C
	str r0, [sp, #0x44]
	str r4, [sp, #0x24]
	b _08051602
	.align 2, 0
_080515BC: .4byte gUnknown_02016DC8
_080515C0: .4byte 0x01000020
_080515C4: .4byte gUnknown_088026E4
_080515C8: .4byte 0x060139C0
_080515CC: .4byte 0x06013DC0
_080515D0: .4byte 0x0000B1CE
_080515D4: .4byte gUnknown_085B940C
_080515D8:
	add r1, sp, #0x70
	str r1, [sp, #0x44]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	add r2, sp, #8
	adds r0, r2, #0
	ldrh r0, [r0, #2]
	subs r0, #8
	strh r0, [r2, #2]
	adds r0, r2, #0
	ldrh r0, [r0, #4]
	subs r0, #8
	strh r0, [r2, #4]
	ldr r0, _0805164C  @ gUnknown_085B940C
	movs r2, #0x80
	lsls r2, r2, #1
	str r3, [sp]
	movs r3, #0x80
	bl sub_807180C
_08051602:
	mov r1, sl
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	bne _08051610
	add r0, sp, #8
	bl AIS_Display
_08051610:
	movs r4, #0
	str r4, [sp, #0x24]
	add r0, sp, #8
	ldr r1, _08051650  @ 0x0000C1EE
	strh r1, [r0, #8]
	adds r2, r0, #0
	mov r3, sl
	ldr r0, [r3, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	adds r0, r2, #0
	add r5, sp, #0xf0
	ldrh r5, [r5]
	strh r5, [r0, #2]
	add r6, sp, #0xf4
	ldrh r6, [r6]
	strh r6, [r0, #4]
	strh r4, [r0, #0xc]
	movs r0, #1
	bl sub_80522F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #1
	beq _08051654
	ldr r0, _0805164C  @ gUnknown_085B940C
	str r0, [sp, #0x44]
	str r4, [sp, #0x24]
	b _0805167E
	.align 2, 0
_0805164C: .4byte gUnknown_085B940C
_08051650: .4byte 0x0000C1EE
_08051654:
	add r1, sp, #0x70
	str r1, [sp, #0x44]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x24]
	add r2, sp, #8
	adds r0, r2, #0
	ldrh r0, [r0, #2]
	subs r0, #8
	strh r0, [r2, #2]
	adds r0, r2, #0
	ldrh r0, [r0, #4]
	subs r0, #8
	strh r0, [r2, #4]
	ldr r0, _08051778  @ gUnknown_085B940C
	movs r2, #0x80
	lsls r2, r2, #1
	str r3, [sp]
	movs r3, #0x80
	bl sub_807180C
_0805167E:
	mov r1, sl
	ldr r0, [r1, #0x50]
	cmp r0, #0
	bne _0805168C
	add r0, sp, #8
	bl AIS_Display
_0805168C:
	ldr r2, [sp, #0x100]
	ldr r3, _0805177C  @ 0xFFD80000
	adds r1, r2, r3
	ldr r4, [sp, #0x104]
	adds r0, r4, r3
	lsrs r5, r0, #0x10
	lsrs r7, r2, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x28
	ble _080516A8
	movs r6, #0x28
_080516A8:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080516B2
	movs r5, #0x28
_080516B2:
	lsls r0, r6, #0x10
	cmp r0, #0
	bge _080516BA
	movs r6, #0
_080516BA:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _080516C2
	movs r5, #0
_080516C2:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080516CC
	movs r7, #0x28
_080516CC:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080516DA
	movs r2, #0x28
	mov r8, r2
_080516DA:
	add r0, sp, #8
	movs r3, #0
	movs r1, #0xb0
	lsls r1, r1, #8
	strh r1, [r0, #8]
	adds r2, r0, #0
	mov r4, sl
	ldr r0, [r4, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	str r3, [sp, #0x24]
	adds r0, r2, #0
	add r1, sp, #0x114
	ldrh r1, [r1]
	strh r1, [r0, #2]
	ldr r0, _08051780  @ gUnknown_085B93D0
	str r0, [sp, #0x44]
	ldr r2, [r4, #0x4c]
	mov r9, r2
	cmp r2, #0
	bne _080517B0
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	add r4, sp, #0x50
	cmp r2, #0
	beq _0805174A
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8071068
	ldr r3, [sp, #0xd8]
	cmp r3, #1
	bne _08051726
	ldr r1, _08051784  @ gUnknown_02016E48
	adds r0, r4, #0
	bl sub_8050E40
_08051726:
	add r1, sp, #8
	ldr r0, [sp, #0xe4]
	adds r0, #0x8e
	strh r0, [r1, #4]
	adds r2, r1, #0
	adds r0, r1, #0
	ldrh r1, [r0, #8]
	movs r0, #0xfc
	lsls r0, r0, #8
	ands r0, r1
	strh r0, [r2, #8]
	adds r1, r2, #0
	strh r0, [r1, #8]
	adds r0, r1, #0
	mov r6, r9
	strh r6, [r0, #0xc]
	bl AIS_Display
_0805174A:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_8071068
	ldr r1, [sp, #0xd8]
	cmp r1, #1
	bne _08051768
	ldr r1, _08051788  @ gUnknown_02017248
	adds r0, r4, #0
	bl sub_8050E40
_08051768:
	cmp r5, #0
	beq _0805178C
	add r1, sp, #8
	ldr r0, [sp, #0xe4]
	adds r0, #0x95
	strh r0, [r1, #4]
	b _08051794
	.align 2, 0
_08051778: .4byte gUnknown_085B940C
_0805177C: .4byte 0xFFD80000
_08051780: .4byte gUnknown_085B93D0
_08051784: .4byte gUnknown_02016E48
_08051788: .4byte gUnknown_02017248
_0805178C:
	add r0, sp, #8
	add r2, sp, #0xf4
	ldrh r2, [r2]
	strh r2, [r0, #4]
_08051794:
	add r2, sp, #8
	adds r0, r2, #0
	ldrh r1, [r0, #8]
	movs r0, #0xfc
	lsls r0, r0, #8
	ands r0, r1
	movs r3, #0
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2, #8]
	adds r0, r2, #0
	strh r3, [r0, #0xc]
	bl AIS_Display
_080517B0:
	ldr r3, [sp, #0x108]
	ldr r4, _080518A8  @ 0xFFD80000
	adds r1, r3, r4
	ldr r5, [sp, #0x10c]
	adds r0, r5, r4
	lsrs r5, r0, #0x10
	lsrs r7, r3, #0x10
	ldr r6, [sp, #0x10c]
	lsrs r6, r6, #0x10
	mov r8, r6
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x28
	ble _080517CE
	movs r6, #0x28
_080517CE:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080517D8
	movs r5, #0x28
_080517D8:
	lsls r0, r6, #0x10
	cmp r0, #0
	bge _080517E0
	movs r6, #0
_080517E0:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _080517E8
	movs r5, #0
_080517E8:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _080517F2
	movs r7, #0x28
_080517F2:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _08051800
	movs r2, #0x28
	mov r8, r2
_08051800:
	add r0, sp, #8
	movs r3, #0
	mov r9, r3
	movs r1, #0xc0
	lsls r1, r1, #8
	strh r1, [r0, #8]
	adds r2, r0, #0
	mov r4, sl
	ldr r0, [r4, #0x44]
	add r4, sp, #0xec
	strh r3, [r4]
	orrs r0, r1
	strh r0, [r2, #8]
	mov r0, r9
	str r0, [sp, #0x24]
	adds r0, r2, #0
	add r1, sp, #0xf8
	ldrh r1, [r1]
	strh r1, [r0, #2]
	ldr r0, _080518AC  @ gUnknown_085B93D0
	str r0, [sp, #0x44]
	mov r2, sl
	ldr r2, [r2, #0x50]
	mov r9, r2
	cmp r2, #0
	bne _080518DC
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r5, r0, #0
	add r4, sp, #0x50
	cmp r2, #0
	beq _0805187C
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_8071068
	ldr r3, [sp, #0xd8]
	cmp r3, #1
	bne _08051858
	ldr r1, _080518B0  @ gUnknown_02017048
	adds r0, r4, #0
	bl sub_8050E40
_08051858:
	add r1, sp, #8
	ldr r0, [sp, #0xe4]
	adds r0, #0x8e
	strh r0, [r1, #4]
	adds r2, r1, #0
	adds r0, r1, #0
	ldrh r1, [r0, #8]
	movs r0, #0xfc
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2, #8]
	adds r0, r2, #0
	mov r6, r9
	strh r6, [r0, #0xc]
	bl AIS_Display
_0805187C:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_8071068
	ldr r1, [sp, #0xd8]
	cmp r1, #1
	bne _0805189A
	ldr r1, _080518B4  @ gUnknown_02017448
	adds r0, r4, #0
	bl sub_8050E40
_0805189A:
	cmp r5, #0
	beq _080518B8
	add r1, sp, #8
	ldr r0, [sp, #0xe4]
	adds r0, #0x95
	strh r0, [r1, #4]
	b _080518C0
	.align 2, 0
_080518A8: .4byte 0xFFD80000
_080518AC: .4byte gUnknown_085B93D0
_080518B0: .4byte gUnknown_02017048
_080518B4: .4byte gUnknown_02017448
_080518B8:
	add r0, sp, #8
	add r2, sp, #0xf4
	ldrh r2, [r2]
	strh r2, [r0, #4]
_080518C0:
	add r2, sp, #8
	adds r0, r2, #0
	ldrh r1, [r0, #8]
	movs r0, #0xfc
	lsls r0, r0, #8
	ands r0, r1
	movs r3, #0
	movs r1, #0x30
	orrs r0, r1
	strh r0, [r2, #8]
	adds r0, r2, #0
	strh r3, [r0, #0xc]
	bl AIS_Display
_080518DC:
	ldr r3, [sp, #0xd8]
	cmp r3, #1
	bne _080518EE
	ldr r0, _08051A90  @ gUnknown_02016E48
	ldr r1, _08051A94  @ 0x06013000
	movs r2, #0x80
	lsls r2, r2, #4
	bl RegisterTileGraphics
_080518EE:
	mov r5, sl
	ldr r4, [r5, #0x4c]
	cmp r4, #0
	bne _0805194A
	str r4, [sp, #0x24]
	ldr r0, _08051A98  @ gUnknown_085B9424
	str r0, [sp, #0x44]
	add r0, sp, #8
	ldr r1, _08051A9C  @ 0x0000B1D0
	strh r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r5, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	adds r1, r2, #0
	ldr r0, [sp, #0xe0]
	adds r0, #0x12
	strh r0, [r1, #2]
	ldr r0, [sp, #0xe4]
	adds r0, #0x70
	strh r0, [r1, #4]
	adds r0, r1, #0
	strh r4, [r0, #0xc]
	bl AIS_Display
	str r4, [sp, #0x24]
	ldr r0, _08051AA0  @ gUnknown_085B949C
	str r0, [sp, #0x44]
	add r0, sp, #8
	ldr r1, _08051AA4  @ 0x0000B1C0
	strh r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r5, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	adds r1, r2, #0
	ldr r0, [sp, #0xe0]
	adds r0, #0x65
	strh r0, [r1, #2]
	ldr r0, [sp, #0xe4]
	adds r0, #0x78
	strh r0, [r1, #4]
	adds r0, r1, #0
	strh r4, [r0, #0xc]
	bl AIS_Display
_0805194A:
	mov r6, sl
	ldr r4, [r6, #0x50]
	cmp r4, #0
	bne _080519A6
	str r4, [sp, #0x24]
	ldr r0, _08051A98  @ gUnknown_085B9424
	str r0, [sp, #0x44]
	add r0, sp, #8
	ldr r1, _08051AA8  @ 0x0000C1F0
	strh r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r6, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	adds r1, r2, #0
	ldr r0, [sp, #0xe0]
	adds r0, #0xd8
	strh r0, [r1, #2]
	ldr r0, [sp, #0xe4]
	adds r0, #0x70
	strh r0, [r1, #4]
	adds r0, r1, #0
	strh r4, [r0, #0xc]
	bl AIS_Display
	str r4, [sp, #0x24]
	ldr r0, _08051AAC  @ gUnknown_085B94F0
	str r0, [sp, #0x44]
	add r0, sp, #8
	ldr r1, _08051AB0  @ 0x0000C1C0
	strh r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r6, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	adds r1, r2, #0
	ldr r0, [sp, #0xe0]
	adds r0, #0x87
	strh r0, [r1, #2]
	ldr r0, [sp, #0xe4]
	adds r0, #0x78
	strh r0, [r1, #4]
	adds r0, r1, #0
	strh r4, [r0, #0xc]
	bl AIS_Display
_080519A6:
	mov r0, sl
	ldr r4, [r0, #0x4c]
	cmp r4, #0
	bne _08051A12
	str r4, [sp, #0x24]
	ldr r1, _08051AB4  @ gUnknown_0203E1D4
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r5, [sp, #0xe4]
	adds r5, #0x79
	cmp r0, #0
	beq _080519EC
	adds r1, r0, #0
	add r0, sp, #8
	ldr r2, [sp, #0xe8]
	bl sub_8051238
	add r0, sp, #8
	movs r1, #0xe5
	lsls r1, r1, #1
	strh r1, [r0, #8]
	adds r2, r0, #0
	mov r6, sl
	ldr r0, [r6, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	adds r1, r2, #0
	ldr r0, [sp, #0xe0]
	adds r0, #0x36
	strh r0, [r1, #2]
	adds r0, r1, #0
	strh r5, [r0, #4]
	strh r4, [r0, #0xc]
	bl AIS_Display
_080519EC:
	ldr r0, _08051AB8  @ gUnknown_085B9544
	str r0, [sp, #0x44]
	add r0, sp, #8
	ldr r1, _08051ABC  @ 0x0000D1DC
	strh r1, [r0, #8]
	adds r2, r0, #0
	mov r3, sl
	ldr r0, [r3, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	adds r1, r2, #0
	ldr r0, [sp, #0xe0]
	adds r0, #0x2c
	strh r0, [r1, #2]
	adds r0, r1, #0
	strh r5, [r0, #4]
	strh r4, [r0, #0xc]
	bl AIS_Display
_08051A12:
	mov r5, sl
	ldr r4, [r5, #0x50]
	cmp r4, #0
	bne _08051A7E
	str r4, [sp, #0x24]
	ldr r1, _08051AB4  @ gUnknown_0203E1D4
	movs r6, #2
	ldrsh r0, [r1, r6]
	ldr r5, [sp, #0xe4]
	adds r5, #0x79
	cmp r0, #0
	beq _08051A58
	adds r1, r0, #0
	add r0, sp, #8
	ldr r2, [sp, #0xe8]
	bl sub_8051238
	add r0, sp, #8
	movs r1, #0xe5
	lsls r1, r1, #1
	strh r1, [r0, #8]
	adds r2, r0, #0
	mov r3, sl
	ldr r0, [r3, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	adds r1, r2, #0
	ldr r0, [sp, #0xe0]
	adds r0, #0x85
	strh r0, [r1, #2]
	adds r0, r1, #0
	strh r5, [r0, #4]
	strh r4, [r0, #0xc]
	bl AIS_Display
_08051A58:
	ldr r0, _08051AB8  @ gUnknown_085B9544
	str r0, [sp, #0x44]
	add r0, sp, #8
	ldr r1, _08051AC0  @ 0x0000E1DE
	strh r1, [r0, #8]
	adds r2, r0, #0
	mov r6, sl
	ldr r0, [r6, #0x44]
	orrs r0, r1
	strh r0, [r2, #8]
	adds r1, r2, #0
	ldr r0, [sp, #0xe0]
	adds r0, #0x7b
	strh r0, [r1, #2]
	adds r0, r1, #0
	strh r5, [r0, #4]
	strh r4, [r0, #0xc]
	bl AIS_Display
_08051A7E:
	add sp, #0x118
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051A90: .4byte gUnknown_02016E48
_08051A94: .4byte 0x06013000
_08051A98: .4byte gUnknown_085B9424
_08051A9C: .4byte 0x0000B1D0
_08051AA0: .4byte gUnknown_085B949C
_08051AA4: .4byte 0x0000B1C0
_08051AA8: .4byte 0x0000C1F0
_08051AAC: .4byte gUnknown_085B94F0
_08051AB0: .4byte 0x0000C1C0
_08051AB4: .4byte gUnknown_0203E1D4
_08051AB8: .4byte gUnknown_085B9544
_08051ABC: .4byte 0x0000D1DC
_08051AC0: .4byte 0x0000E1DE

	THUMB_FUNC_START NewEkrDispUP
NewEkrDispUP: @ 0x08051AC4
	push {r4, lr}
	ldr r4, _08051AEC  @ gUnknown_0200006C
	ldr r0, _08051AF0  @ gUnknown_085B95EC
	movs r1, #5
	bl Proc_Create
	str r0, [r4]
	movs r0, #0
	movs r1, #0
	bl EkrDispUP_8051B48
	bl sub_8051B08
	bl sub_8051BA0
	bl sub_8051B80
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08051AEC: .4byte gUnknown_0200006C
_08051AF0: .4byte gUnknown_085B95EC

	THUMB_FUNC_START sub_8051AF4
sub_8051AF4: @ 0x08051AF4
	push {lr}
	ldr r0, _08051B04  @ gUnknown_0200006C
	ldr r0, [r0]
	bl Proc_Delete
	pop {r0}
	bx r0
	.align 2, 0
_08051B04: .4byte gUnknown_0200006C

	THUMB_FUNC_START sub_8051B08
sub_8051B08: @ 0x08051B08
	ldr r0, _08051B14  @ gUnknown_0200006C
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	bx lr
	.align 2, 0
_08051B14: .4byte gUnknown_0200006C

	THUMB_FUNC_START sub_8051B18
sub_8051B18: @ 0x08051B18
	ldr r0, _08051B24  @ gUnknown_0200006C
	ldr r1, [r0]
	movs r0, #1
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	bx lr
	.align 2, 0
_08051B24: .4byte gUnknown_0200006C

	THUMB_FUNC_START sub_8051B28
sub_8051B28: @ 0x08051B28
	ldr r0, _08051B34  @ gUnknown_0200006C
	ldr r1, [r0]
	movs r0, #1
	str r0, [r1, #0x4c]
	bx lr
	.align 2, 0
_08051B34: .4byte gUnknown_0200006C

	THUMB_FUNC_START sub_8051B38
sub_8051B38: @ 0x08051B38
	ldr r0, _08051B44  @ gUnknown_0200006C
	ldr r1, [r0]
	movs r0, #1
	str r0, [r1, #0x50]
	bx lr
	.align 2, 0
_08051B44: .4byte gUnknown_0200006C

	THUMB_FUNC_START EkrDispUP_8051B48
EkrDispUP_8051B48: @ 0x08051B48
	ldr r2, _08051B58  @ gUnknown_0200006C
	ldr r2, [r2]
	movs r3, #0
	strh r0, [r2, #0x32]
	strh r1, [r2, #0x3a]
	adds r2, #0x29
	strb r3, [r2]
	bx lr
	.align 2, 0
_08051B58: .4byte gUnknown_0200006C

	THUMB_FUNC_START sub_8051B5C
sub_8051B5C: @ 0x08051B5C
	ldr r2, _08051B6C  @ gUnknown_0200006C
	ldr r2, [r2]
	strh r0, [r2, #0x32]
	strh r1, [r2, #0x3a]
	adds r2, #0x29
	movs r0, #1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08051B6C: .4byte gUnknown_0200006C

	THUMB_FUNC_START sub_8051B70
sub_8051B70: @ 0x08051B70
	ldr r0, _08051B7C  @ gUnknown_0200006C
	ldr r0, [r0]
	adds r0, #0x29
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08051B7C: .4byte gUnknown_0200006C

	THUMB_FUNC_START sub_8051B80
sub_8051B80: @ 0x08051B80
	ldr r0, _08051B8C  @ gUnknown_0200006C
	ldr r0, [r0]
	adds r0, #0x29
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08051B8C: .4byte gUnknown_0200006C

	THUMB_FUNC_START sub_8051B90
sub_8051B90: @ 0x08051B90
	ldr r0, _08051B9C  @ gUnknown_0200006C
	ldr r0, [r0]
	adds r0, #0x2a
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08051B9C: .4byte gUnknown_0200006C

	THUMB_FUNC_START sub_8051BA0
sub_8051BA0: @ 0x08051BA0
	ldr r0, _08051BAC  @ gUnknown_0200006C
	ldr r0, [r0]
	adds r0, #0x2a
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08051BAC: .4byte gUnknown_0200006C

	THUMB_FUNC_START ekrDispUP_Loop
ekrDispUP_Loop: @ 0x08051BB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	beq _08051CA6
	adds r0, r7, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _08051CA6
	ldrh r0, [r7, #0x3a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	lsls r1, r0, #5
	mov r8, r1
	cmp r1, #0
	bge _08051BE2
	movs r2, #0
	mov r8, r2
_08051BE2:
	adds r6, r0, #7
	cmp r6, #6
	ble _08051BEA
	movs r6, #6
_08051BEA:
	movs r0, #6
	subs r0, r0, r6
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	str r1, [sp, #8]
	ldr r0, _08051C08  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08051C0C
	cmp r0, #2
	bgt _08051C0C
	movs r4, #0
	b _08051C0E
	.align 2, 0
_08051C08: .4byte gUnknown_0203E120
_08051C0C:
	movs r4, #0xf
_08051C0E:
	ldr r2, _08051CB8  @ gBG0TilemapBuffer
	mov r9, r2
	movs r0, #0x80
	mov sl, r0
	str r0, [sp]
	mov r0, r9
	movs r1, #0x1e
	movs r2, #7
	movs r3, #0
	bl FillBGRect
	cmp r6, #0
	ble _08051CA0
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	bne _08051C64
	ldr r0, _08051CBC  @ gUnknown_0880210C
	ldr r1, [sp, #8]
	adds r0, r1, r0
	mov r2, r8
	lsls r5, r2, #1
	lsls r1, r4, #1
	add r1, r9
	adds r5, r5, r1
	lsls r4, r6, #0x10
	lsrs r4, r4, #0x10
	movs r1, #1
	negs r1, r1
	str r1, [sp]
	str r1, [sp, #4]
	adds r1, r5, #0
	movs r2, #0xf
	adds r3, r4, #0
	bl sub_8070E94
	mov r0, sl
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xf
	adds r2, r4, #0
	movs r3, #2
	bl sub_8070D04
_08051C64:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	bne _08051CA0
	ldr r0, _08051CC0  @ gUnknown_088021C0
	ldr r1, [sp, #8]
	adds r0, r1, r0
	mov r2, r8
	lsls r5, r2, #1
	movs r2, #0xf
	lsls r1, r2, #1
	add r1, r9
	adds r5, r5, r1
	lsls r4, r6, #0x10
	lsrs r4, r4, #0x10
	movs r1, #1
	negs r1, r1
	str r1, [sp]
	str r1, [sp, #4]
	adds r1, r5, #0
	adds r3, r4, #0
	bl sub_8070E94
	mov r0, sl
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0xf
	adds r2, r4, #0
	movs r3, #3
	bl sub_8070D04
_08051CA0:
	movs r0, #1
	bl BG_EnableSyncByMask
_08051CA6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051CB8: .4byte gBG0TilemapBuffer
_08051CBC: .4byte gUnknown_0880210C
_08051CC0: .4byte gUnknown_088021C0

	THUMB_FUNC_START sub_8051CC4
sub_8051CC4: @ 0x08051CC4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r4, _08051DB8  @ gLCDControlBuffer
	ldrb r0, [r4]
	movs r2, #8
	negs r2, r2
	ands r2, r0
	ldrb r0, [r4, #1]
	movs r5, #1
	orrs r0, r5
	movs r6, #2
	orrs r0, r6
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #1]
	movs r0, #0x41
	negs r0, r0
	ands r2, r0
	strb r2, [r4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #0
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r0, #1
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r0, #2
	movs r1, #0
	bl SetBackgroundTileDataOffset
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #3
	bl SetBackgroundTileDataOffset
	movs r1, #0xc0
	lsls r1, r1, #7
	movs r0, #0
	bl SetBackgroundMapDataOffset
	movs r1, #0xd0
	lsls r1, r1, #7
	movs r0, #1
	bl SetBackgroundMapDataOffset
	movs r1, #0xe0
	lsls r1, r1, #7
	movs r0, #2
	bl SetBackgroundMapDataOffset
	movs r1, #0xf0
	lsls r1, r1, #7
	movs r0, #3
	bl SetBackgroundMapDataOffset
	ldrb r2, [r4, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0xc]
	ldrb r2, [r4, #0x10]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r5
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x14]
	ands r1, r0
	orrs r1, r6
	strb r1, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r4, #0
	str r4, [sp]
	ldr r1, _08051DBC  @ gBG0TilemapBuffer
	ldr r5, _08051DC0  @ 0x01000200
	mov r0, sp
	adds r2, r5, #0
	bl CpuFastSet
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r1, _08051DC4  @ gBG1TilemapBuffer
	adds r2, r5, #0
	bl CpuFastSet
	str r4, [sp, #8]
	add r0, sp, #8
	ldr r6, _08051DC8  @ gBG2TilemapBuffer
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl sub_805B028
	cmp r0, #0
	bne _08051DCC
	bl sub_8051E00
	b _08051DD8
	.align 2, 0
_08051DB8: .4byte gLCDControlBuffer
_08051DBC: .4byte gBG0TilemapBuffer
_08051DC0: .4byte 0x01000200
_08051DC4: .4byte gBG1TilemapBuffer
_08051DC8: .4byte gBG2TilemapBuffer
_08051DCC:
	str r4, [sp, #0xc]
	add r0, sp, #0xc
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuFastSet
_08051DD8:
	bl sub_8051F1C
	bl EnablePaletteSync
	movs r0, #1
	bl BG_EnableSyncByMask
	movs r0, #2
	bl BG_EnableSyncByMask
	movs r0, #4
	bl BG_EnableSyncByMask
	bl SetDefaultColorEffects
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8051E00
sub_8051E00: @ 0x08051E00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _08051E40  @ gUnknown_0201FADC
	ldr r2, _08051E44  @ gUnknown_0203E11C
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, _08051E48  @ gUnknown_08EE0008
	adds r5, r0, r3
	movs r6, #2
	ldrsh r1, [r2, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r3, r0, r3
	ldr r0, _08051E4C  @ gUnknown_0203E120
	movs r7, #0
	ldrsh r1, [r0, r7]
	mov r8, r2
	adds r6, r0, #0
	cmp r1, #3
	bgt _08051E54
	cmp r1, #1
	bge _08051E78
	cmp r1, #0
	beq _08051E5C
	ldr r0, _08051E50  @ gUnknown_020145C8
	b _08051E8A
	.align 2, 0
_08051E40: .4byte gUnknown_0201FADC
_08051E44: .4byte gUnknown_0203E11C
_08051E48: .4byte gUnknown_08EE0008
_08051E4C: .4byte gUnknown_0203E120
_08051E50: .4byte gUnknown_020145C8
_08051E54:
	ldr r7, _08051E70  @ gUnknown_020145C8
	mov ip, r7
	cmp r1, #4
	bne _08051E8C
_08051E5C:
	ldr r0, _08051E74  @ gUnknown_0200003C
	ldr r1, _08051E70  @ gUnknown_020145C8
	str r1, [r0]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r2, r1, r7
	str r2, [r0, #4]
	mov ip, r1
	b _08051E8C
	.align 2, 0
_08051E70: .4byte gUnknown_020145C8
_08051E74: .4byte gUnknown_0200003C
_08051E78:
	ldr r0, _08051EFC  @ gUnknown_0200003C
	ldr r1, _08051F00  @ gUnknown_02014DC8
	str r1, [r0]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r2, r1, r7
	str r2, [r0, #4]
	ldr r0, _08051F04  @ 0xFFFFF800
	adds r0, r0, r1
_08051E8A:
	mov ip, r0
_08051E8C:
	ldr r0, _08051F08  @ gUnknown_0202BCF0
	ldrb r0, [r0, #0x15]
	ldr r0, _08051F0C  @ gUnknown_0200004C
	ldr r1, [r5, #0x10]
	str r1, [r0]
	ldr r1, [r3, #0x10]
	str r1, [r0, #4]
	ldr r2, _08051F10  @ gUnknown_02000044
	ldr r1, _08051F14  @ gUnknown_085B9D6C
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2, #4]
	mov r1, r8
	ldrh r0, [r1]
	movs r2, #0
	strh r0, [r4]
	movs r0, #4
	strh r0, [r4, #2]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r4, #4]
	mov r3, r8
	ldrh r0, [r3, #2]
	strh r0, [r4, #6]
	movs r0, #5
	strh r0, [r4, #8]
	strh r1, [r4, #0xa]
	ldrh r0, [r6]
	strh r0, [r4, #0xc]
	movs r0, #2
	strh r0, [r4, #0xe]
	str r2, [r4, #0x1c]
	mov r6, ip
	str r6, [r4, #0x20]
	ldr r0, _08051F18  @ gUnknown_0203E102
	ldrh r0, [r0]
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_805AA68
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08051EFC: .4byte gUnknown_0200003C
_08051F00: .4byte gUnknown_02014DC8
_08051F04: .4byte 0xFFFFF800
_08051F08: .4byte gUnknown_0202BCF0
_08051F0C: .4byte gUnknown_0200004C
_08051F10: .4byte gUnknown_02000044
_08051F14: .4byte gUnknown_085B9D6C
_08051F18: .4byte gUnknown_0203E102

	THUMB_FUNC_START sub_8051F1C
sub_8051F1C: @ 0x08051F1C
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r4, _08051F5C  @ gUnknown_0859EF00
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0x20
	bl CopyToPaletteBuffer
	adds r0, r4, #0
	movs r1, #0x60
	movs r2, #0x20
	bl CopyToPaletteBuffer
	ldr r0, _08051F60  @ gUnknown_02017648
	ldr r1, _08051F64  @ 0x06001880
	movs r2, #0xc4
	movs r3, #2
	bl Font_InitForUI
	bl Font_SetSomeSpecialDrawingRoutine
	ldr r0, _08051F68  @ gUnknown_08801C14
	ldr r1, _08051F6C  @ 0x06001000
	bl LZ77UnCompVram
	ldr r0, _08051F70  @ gUnknown_0203E104
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08051F78
	ldr r5, _08051F74  @ gUnknown_085B9354
	b _08051F86
	.align 2, 0
_08051F5C: .4byte gUnknown_0859EF00
_08051F60: .4byte gUnknown_02017648
_08051F64: .4byte 0x06001880
_08051F68: .4byte gUnknown_08801C14
_08051F6C: .4byte 0x06001000
_08051F70: .4byte gUnknown_0203E104
_08051F74: .4byte gUnknown_085B9354
_08051F78:
	ldr r0, _08051FC0  @ gUnknown_0203E188
	ldr r0, [r0]
	ldr r0, [r0]
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r5, r0, #0
_08051F86:
	ldr r4, _08051FC4  @ gUnknown_02017660
	adds r0, r4, #0
	movs r1, #7
	bl Text_Init
	movs r0, #0x38
	adds r1, r5, #0
	bl GetStringTextCenteredPos
	adds r1, r0, #0
	adds r0, r4, #0
	bl Text_SetXCursor
	ldr r0, _08051FC8  @ gUnknown_08801F7C
	ldr r1, _08051FCC  @ 0x06001880
	bl LZ77UnCompVram
	adds r0, r4, #0
	adds r1, r5, #0
	bl Text_AppendString
	ldr r0, _08051FD0  @ gUnknown_0203E104
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08051FD8
	ldr r5, _08051FD4  @ gUnknown_085B9354
	b _08051FE6
	.align 2, 0
_08051FC0: .4byte gUnknown_0203E188
_08051FC4: .4byte gUnknown_02017660
_08051FC8: .4byte gUnknown_08801F7C
_08051FCC: .4byte 0x06001880
_08051FD0: .4byte gUnknown_0203E104
_08051FD4: .4byte gUnknown_085B9354
_08051FD8:
	ldr r0, _08052020  @ gUnknown_0203E188
	ldr r0, [r0]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemNameString
	adds r5, r0, #0
_08051FE6:
	ldr r4, _08052024  @ gUnknown_02017670
	adds r0, r4, #0
	movs r1, #8
	bl Text_Init
	movs r0, #0x40
	adds r1, r5, #0
	bl GetStringTextCenteredPos
	adds r1, r0, #0
	adds r0, r4, #0
	bl Text_SetXCursor
	ldr r0, _08052028  @ gUnknown_08801FF4
	ldr r1, _0805202C  @ 0x06001A40
	bl LZ77UnCompVram
	adds r0, r4, #0
	adds r1, r5, #0
	bl Text_AppendString
	ldr r0, _08052030  @ gUnknown_0203E104
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08052038
	ldr r5, _08052034  @ gUnknown_085B9354
	b _08052046
	.align 2, 0
_08052020: .4byte gUnknown_0203E188
_08052024: .4byte gUnknown_02017670
_08052028: .4byte gUnknown_08801FF4
_0805202C: .4byte 0x06001A40
_08052030: .4byte gUnknown_0203E104
_08052034: .4byte gUnknown_085B9354
_08052038:
	ldr r0, _08052080  @ gUnknown_0203E18C
	ldr r0, [r0]
	ldr r0, [r0]
	ldrh r0, [r0]
	bl GetStringFromIndex
	adds r5, r0, #0
_08052046:
	ldr r4, _08052084  @ gUnknown_02017678
	adds r0, r4, #0
	movs r1, #7
	bl Text_Init
	movs r0, #0x38
	adds r1, r5, #0
	bl GetStringTextCenteredPos
	adds r1, r0, #0
	adds r0, r4, #0
	bl Text_SetXCursor
	ldr r0, _08052088  @ gUnknown_08802044
	ldr r1, _0805208C  @ 0x06001C40
	bl LZ77UnCompVram
	adds r0, r4, #0
	adds r1, r5, #0
	bl Text_AppendString
	ldr r0, _08052090  @ gUnknown_0203E104
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08052098
	ldr r5, _08052094  @ gUnknown_085B9354
	b _080520A6
	.align 2, 0
_08052080: .4byte gUnknown_0203E18C
_08052084: .4byte gUnknown_02017678
_08052088: .4byte gUnknown_08802044
_0805208C: .4byte 0x06001C40
_08052090: .4byte gUnknown_0203E104
_08052094: .4byte gUnknown_085B9354
_08052098:
	ldr r0, _0805215C  @ gUnknown_0203E18C
	ldr r0, [r0]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemNameString
	adds r5, r0, #0
_080520A6:
	ldr r4, _08052160  @ gUnknown_02017668
	adds r0, r4, #0
	movs r1, #8
	bl Text_Init
	movs r0, #0x3e
	adds r1, r5, #0
	bl GetStringTextCenteredPos
	adds r1, r0, #0
	adds r0, r4, #0
	bl Text_SetXCursor
	ldr r0, _08052164  @ gUnknown_088020BC
	ldr r1, _08052168  @ 0x06001E00
	bl LZ77UnCompVram
	adds r0, r4, #0
	adds r1, r5, #0
	bl Text_AppendString
	ldr r4, _0805216C  @ gBG0TilemapBuffer
	adds r0, r4, #0
	movs r1, #0x80
	bl BG_Fill
	ldr r0, _08052170  @ gUnknown_08802508
	adds r6, r4, #0
	adds r6, #0x3c
	movs r1, #1
	negs r1, r1
	str r1, [sp]
	str r1, [sp, #4]
	adds r1, r6, #0
	movs r2, #2
	movs r3, #0x14
	bl sub_8070E94
	adds r4, #0x3e
	movs r5, #0x80
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x14
	movs r3, #2
	bl sub_8070D04
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0x14
	movs r3, #3
	bl sub_8070D04
	movs r0, #1
	bl BG_EnableSyncByMask
	ldr r6, _08052174  @ gUnknown_0203E114
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r0, r0, #5
	ldr r5, _08052178  @ gUnknown_08802558
	adds r0, r0, r5
	ldr r4, _0805217C  @ gUnknown_020228E8
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r1, #2
	ldrsh r0, [r6, r1]
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r4, #0x20
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	bl EnablePaletteSync
	ldr r1, _08052180  @ gUnknown_02000038
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805215C: .4byte gUnknown_0203E18C
_08052160: .4byte gUnknown_02017668
_08052164: .4byte gUnknown_088020BC
_08052168: .4byte 0x06001E00
_0805216C: .4byte gBG0TilemapBuffer
_08052170: .4byte gUnknown_08802508
_08052174: .4byte gUnknown_0203E114
_08052178: .4byte gUnknown_08802558
_0805217C: .4byte gUnknown_020228E8
_08052180: .4byte gUnknown_02000038

	THUMB_FUNC_START sub_8052184
sub_8052184: @ 0x08052184
	push {r4, r5, lr}
	ldr r0, _0805219C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bhi _080521C4
	lsls r0, r0, #2
	ldr r1, _080521A0  @ _080521A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805219C: .4byte gUnknown_0203E120
_080521A0: .4byte _080521A4
_080521A4: @ jump table
	.4byte _0805220C @ case 0
	.4byte _080521B8 @ case 1
	.4byte _080521C4 @ case 2
	.4byte _0805220C @ case 3
	.4byte _0805220C @ case 4
_080521B8:
	ldr r0, _080521C0  @ gUnknown_0203E100
	movs r2, #0
	ldrsh r0, [r0, r2]
	b _0805220E
	.align 2, 0
_080521C0: .4byte gUnknown_0203E100
_080521C4:
	movs r1, #0
	movs r5, #0
	ldr r0, _080521F4  @ gUnknown_0203E0FC
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080521EC
	ldr r4, _080521F8  @ gUnknown_0203E190
	ldrb r0, [r4]
	ldrb r1, [r4, #1]
	bl ShouldCallBattleQuote
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	ldrb r0, [r4, #1]
	ldrb r1, [r4]
	bl ShouldCallBattleQuote
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
_080521EC:
	cmp r5, #1
	bne _080521FC
	movs r0, #0
	b _0805220E
	.align 2, 0
_080521F4: .4byte gUnknown_0203E0FC
_080521F8: .4byte gUnknown_0203E190
_080521FC:
	cmp r1, #1
	beq _0805220C
	ldr r0, _08052208  @ gUnknown_0203E100
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _0805220E
	.align 2, 0
_08052208: .4byte gUnknown_0203E100
_0805220C:
	movs r0, #1
_0805220E:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8052214
sub_8052214: @ 0x08052214
	ldr r2, _0805221C  @ gUnknown_02017760
	strh r0, [r2]
	strh r1, [r2, #2]
	bx lr
	.align 2, 0
_0805221C: .4byte gUnknown_02017760

	THUMB_FUNC_START sub_8052220
sub_8052220: @ 0x08052220
	push {r4, lr}
	ldr r0, _08052284  @ gUnknown_02017728
	movs r4, #0
	str r4, [r0]
	ldr r0, _08052288  @ gUnknown_0201772C
	str r4, [r0]
	ldr r0, _0805228C  @ gUnknown_02017730
	str r4, [r0]
	ldr r0, _08052290  @ gUnknown_02017738
	str r4, [r0]
	ldr r0, _08052294  @ gUnknown_0201773C
	str r4, [r0]
	ldr r0, _08052298  @ gUnknown_02017740
	str r4, [r0]
	ldr r0, _0805229C  @ gUnknown_02017748
	str r4, [r0]
	ldr r0, _080522A0  @ gUnknown_0201774C
	str r4, [r0]
	ldr r0, _080522A4  @ gUnknown_02017750
	str r4, [r0]
	ldr r0, _080522A8  @ gUnknown_02017754
	str r4, [r0]
	ldr r0, _080522AC  @ gUnknown_02017758
	str r4, [r0]
	ldr r0, _080522B0  @ gUnknown_0201775C
	str r4, [r0]
	movs r0, #0
	movs r1, #0
	bl sub_8052214
	ldr r0, _080522B4  @ gUnknown_02017764
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, _080522B8  @ gUnknown_02017768
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, _080522BC  @ gUnknown_02017780
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, _080522C0  @ gUnknown_0201776C
	str r4, [r0]
	str r4, [r0, #4]
	ldr r0, _080522C4  @ gUnknown_02017778
	str r4, [r0]
	ldr r0, _080522C8  @ gUnknown_0201777C
	str r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052284: .4byte gUnknown_02017728
_08052288: .4byte gUnknown_0201772C
_0805228C: .4byte gUnknown_02017730
_08052290: .4byte gUnknown_02017738
_08052294: .4byte gUnknown_0201773C
_08052298: .4byte gUnknown_02017740
_0805229C: .4byte gUnknown_02017748
_080522A0: .4byte gUnknown_0201774C
_080522A4: .4byte gUnknown_02017750
_080522A8: .4byte gUnknown_02017754
_080522AC: .4byte gUnknown_02017758
_080522B0: .4byte gUnknown_0201775C
_080522B4: .4byte gUnknown_02017764
_080522B8: .4byte gUnknown_02017768
_080522BC: .4byte gUnknown_02017780
_080522C0: .4byte gUnknown_0201776C
_080522C4: .4byte gUnknown_02017778
_080522C8: .4byte gUnknown_0201777C

	THUMB_FUNC_START sub_80522CC
sub_80522CC: @ 0x080522CC
	push {lr}
	ldr r0, _080522E4  @ gUnknown_02017728
	ldr r0, [r0]
	cmp r0, #0
	bne _080522EC
	ldr r0, _080522E8  @ gUnknown_0201772C
	ldr r0, [r0]
	cmp r0, #0
	bne _080522EC
	movs r0, #1
	b _080522EE
	.align 2, 0
_080522E4: .4byte gUnknown_02017728
_080522E8: .4byte gUnknown_0201772C
_080522EC:
	movs r0, #0
_080522EE:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80522F4
sub_80522F4: @ 0x080522F4
	ldr r1, _08052300  @ gUnknown_02017780
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08052300: .4byte gUnknown_02017780

	THUMB_FUNC_START sub_8052304
sub_8052304: @ 0x08052304
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r4, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	movs r1, #0x80
	lsls r1, r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080523E0
	ldr r1, _08052350  @ gUnknown_02017728
	ldr r0, [r1]
	cmp r0, #0
	bne _080523E0
	movs r0, #1
	str r0, [r1]
	ldr r0, _08052354  @ gUnknown_085B9604
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	str r4, [r6, #0x64]
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805235C
	ldr r0, _08052358  @ gUnknown_02000000
	ldr r1, [r0, #8]
	str r1, [r6, #0x5c]
	ldr r0, [r0]
	b _08052364
	.align 2, 0
_08052350: .4byte gUnknown_02017728
_08052354: .4byte gUnknown_085B9604
_08052358: .4byte gUnknown_02000000
_0805235C:
	ldr r0, _080523B8  @ gUnknown_02000000
	ldr r1, [r0]
	str r1, [r6, #0x5c]
	ldr r0, [r0, #8]
_08052364:
	str r0, [r6, #0x60]
	ldr r4, _080523BC  @ gUnknown_0203E152
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r5, [r0, r1]
	adds r4, r5, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	lsls r5, r5, #1
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x4c]
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	lsls r4, r4, #0x10
	asrs r4, r4, #0xf
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x50]
	ldr r1, [r6, #0x4c]
	cmp r1, r0
	ble _080523C0
	movs r0, #1
	negs r0, r0
	b _080523C2
	.align 2, 0
_080523B8: .4byte gUnknown_02000000
_080523BC: .4byte gUnknown_0203E152
_080523C0:
	movs r0, #1
_080523C2:
	str r0, [r6, #0x48]
	movs r1, #0
	strh r1, [r6, #0x2c]
	ldr r0, [r6, #0x4c]
	strh r0, [r6, #0x2e]
	str r1, [r6, #0x54]
	str r1, [r6, #0x58]
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	ldr r1, _080523E8  @ gUnknown_02017780
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #1
	strh r1, [r0]
_080523E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080523E8: .4byte gUnknown_02017780

	THUMB_FUNC_START sub_80523EC
sub_80523EC: @ 0x080523EC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, _08052490  @ gUnknown_02000000
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r6, [r0]
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r7, [r0]
	ldr r1, [r5, #0x58]
	cmp r1, #0
	bne _0805244E
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _0805244E
	strh r1, [r5, #0x2c]
	ldr r1, [r5, #0x48]
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	ldr r1, _08052494  @ gUnknown_0203E1AC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r2, [r5, #0x48]
	ldrh r1, [r0]
	adds r1, r1, r2
	strh r1, [r0]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x50]
	cmp r1, r0
	bne _0805244E
	movs r0, #1
	str r0, [r5, #0x58]
_0805244E:
	ldr r1, [r5, #0x54]
	cmp r1, #0x1e
	bne _080524F0
	ldr r0, [r5, #0x58]
	cmp r0, #1
	bne _080524F0
	ldr r4, _08052498  @ gUnknown_0203E152
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r1, #1
	movs r4, #0
	strh r1, [r0]
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	ldr r1, _0805249C  @ gUnknown_02017780
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r4, [r0]
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _080524E4
	bl sub_804FD54
	cmp r0, #1
	bne _080524A0
	movs r0, #0
	b _080524B4
	.align 2, 0
_08052490: .4byte gUnknown_02000000
_08052494: .4byte gUnknown_0203E1AC
_08052498: .4byte gUnknown_0203E152
_0805249C: .4byte gUnknown_02017780
_080524A0:
	ldr r4, _080524C4  @ gUnknown_0203E190
	adds r0, r6, #0
	bl GetAISSubjectId
	adds r0, r0, r4
	ldrb r0, [r0]
	bl sub_80835A8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_080524B4:
	cmp r0, #1
	bne _080524C8
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_8052DD4
	b _080524E4
	.align 2, 0
_080524C4: .4byte gUnknown_0203E190
_080524C8:
	bl sub_805B07C
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_8052FAC
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	ldr r1, _080524EC  @ gUnknown_0203E104
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_080524E4:
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
	b _080524FC
	.align 2, 0
_080524EC: .4byte gUnknown_0203E104
_080524F0:
	adds r0, r1, #1
	str r0, [r5, #0x54]
	cmp r0, #0x1d
	bls _080524FC
	movs r0, #0x1e
	str r0, [r5, #0x54]
_080524FC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8052504
sub_8052504: @ 0x08052504
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0805254C  @ gUnknown_0201774C
	ldr r0, [r0]
	cmp r0, #0
	bne _0805259C
	ldr r0, _08052550  @ gUnknown_0201772C
	ldr r0, [r0]
	cmp r0, #0
	bne _0805259C
	strh r0, [r5, #0x2c]
	movs r0, #1
	strh r0, [r5, #0x2e]
	ldr r0, [r5, #0x64]
	bl GetCoreAIStruct
	adds r4, r0, #0
	bl sub_805A2F0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_805A21C
	cmp r0, #1
	bne _08052596
	ldr r0, _08052554  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bhi _08052596
	lsls r0, r0, #2
	ldr r1, _08052558  @ _0805255C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805254C: .4byte gUnknown_0201774C
_08052550: .4byte gUnknown_0201772C
_08052554: .4byte gUnknown_0203E120
_08052558: .4byte _0805255C
_0805255C: @ jump table
	.4byte _08052570 @ case 0
	.4byte _08052570 @ case 1
	.4byte _08052584 @ case 2
	.4byte _08052570 @ case 3
	.4byte _08052570 @ case 4
_08052570:
	movs r0, #0x10
	strh r0, [r5, #0x2e]
	adds r0, r4, #0
	bl GetCoreAIStruct
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _08052596
_08052584:
	movs r0, #0x14
	strh r0, [r5, #0x2e]
	adds r0, r4, #0
	bl GetCoreAIStruct
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_08052596:
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805259C:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80525A4
sub_80525A4: @ 0x080525A4
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r3, #0x2e
	ldrsh r0, [r2, r3]
	subs r0, #4
	cmp r1, r0
	bne _080525CA
	ldr r0, [r2, #0x64]
	bl GetCoreAIStruct
	movs r0, #4
	bl BG_EnableSyncByMask
	b _080525E0
_080525CA:
	movs r3, #0x2e
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bne _080525E0
	ldr r1, _080525E4  @ gUnknown_02017728
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_080525E0:
	pop {r0}
	bx r0
	.align 2, 0
_080525E4: .4byte gUnknown_02017728

	THUMB_FUNC_START sub_80525E8
sub_80525E8: @ 0x080525E8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, _08052620  @ gUnknown_02017728
	ldr r0, [r1]
	cmp r0, #0
	bne _080526BA
	movs r0, #1
	str r0, [r1]
	ldr r0, _08052624  @ gUnknown_085B962C
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r6, #0x64]
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805262C
	ldr r0, _08052628  @ gUnknown_02000000
	ldr r1, [r0, #8]
	str r1, [r6, #0x5c]
	ldr r0, [r0]
	b _08052634
	.align 2, 0
_08052620: .4byte gUnknown_02017728
_08052624: .4byte gUnknown_085B962C
_08052628: .4byte gUnknown_02000000
_0805262C:
	ldr r0, _08052688  @ gUnknown_02000000
	ldr r1, [r0]
	str r1, [r6, #0x5c]
	ldr r0, [r0, #8]
_08052634:
	str r0, [r6, #0x60]
	ldr r4, _0805268C  @ gUnknown_0203E152
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r5, [r0, r1]
	adds r4, r5, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	lsls r5, r5, #1
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x4c]
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	lsls r4, r4, #0x10
	asrs r4, r4, #0xf
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x50]
	ldr r1, [r6, #0x4c]
	cmp r1, r0
	ble _08052690
	movs r0, #1
	negs r0, r0
	b _08052692
	.align 2, 0
_08052688: .4byte gUnknown_02000000
_0805268C: .4byte gUnknown_0203E152
_08052690:
	movs r0, #1
_08052692:
	str r0, [r6, #0x48]
	adds r0, r6, #0
	adds r0, #0x29
	movs r1, #0
	strb r1, [r0]
	strh r1, [r6, #0x2c]
	ldr r0, [r6, #0x4c]
	strh r0, [r6, #0x2e]
	str r1, [r6, #0x54]
	str r1, [r6, #0x58]
	ldr r0, _080526C0  @ gUnknown_02017750
	str r1, [r0]
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	ldr r1, _080526C4  @ gUnknown_02017780
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #1
	strh r1, [r0]
_080526BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080526C0: .4byte gUnknown_02017750
_080526C4: .4byte gUnknown_02017780

	THUMB_FUNC_START sub_80526C8
sub_80526C8: @ 0x080526C8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	ldr r1, [r5, #0x58]
	cmp r1, #0
	bne _08052718
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _08052718
	strh r1, [r5, #0x2c]
	ldr r1, [r5, #0x48]
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	ldr r1, _08052764  @ gUnknown_0203E1AC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r2, [r5, #0x48]
	ldrh r1, [r0]
	adds r1, r1, r2
	strh r1, [r0]
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x50]
	cmp r1, r0
	bne _08052718
	movs r0, #1
	str r0, [r5, #0x58]
_08052718:
	ldr r0, [r5, #0x54]
	cmp r0, #0x54
	bne _08052774
	ldr r6, [r5, #0x58]
	cmp r6, #1
	bne _08052774
	ldr r4, _08052768  @ gUnknown_0203E152
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r1, #1
	movs r4, #0
	strh r1, [r0]
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	ldr r1, _0805276C  @ gUnknown_02017780
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r4, [r0]
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _08052752
	adds r0, r5, #0
	adds r0, #0x29
	strb r6, [r0]
_08052752:
	strh r4, [r5, #0x2c]
	movs r0, #0xa
	strh r0, [r5, #0x2e]
	ldr r0, _08052770  @ gUnknown_02017750
	str r6, [r0]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
	b _08052780
	.align 2, 0
_08052764: .4byte gUnknown_0203E1AC
_08052768: .4byte gUnknown_0203E152
_0805276C: .4byte gUnknown_02017780
_08052770: .4byte gUnknown_02017750
_08052774:
	adds r0, #1
	str r0, [r5, #0x54]
	cmp r0, #0x53
	bls _08052780
	movs r0, #0x54
	str r0, [r5, #0x54]
_08052780:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8052788
sub_8052788: @ 0x08052788
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	movs r7, #0
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	cmp r0, r1
	ble _08052822
	ldr r4, _08052804  @ gUnknown_0203E152
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r5, [r0, r1]
	adds r4, r5, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	lsls r5, r5, #1
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x4c]
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	lsls r4, r4, #0x10
	asrs r4, r4, #0xf
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x50]
	strh r7, [r6, #0x2c]
	ldr r1, [r6, #0x4c]
	strh r1, [r6, #0x2e]
	str r7, [r6, #0x54]
	str r7, [r6, #0x58]
	cmp r1, r0
	bne _080527F6
	movs r0, #1
	str r0, [r6, #0x58]
_080527F6:
	ldr r1, [r6, #0x4c]
	ldr r0, [r6, #0x50]
	cmp r1, r0
	ble _08052808
	movs r0, #1
	negs r0, r0
	b _0805280A
	.align 2, 0
_08052804: .4byte gUnknown_0203E152
_08052808:
	movs r0, #1
_0805280A:
	str r0, [r6, #0x48]
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	ldr r1, _08052828  @ gUnknown_02017780
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #2
	strh r1, [r0]
_08052822:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052828: .4byte gUnknown_02017780

	THUMB_FUNC_START sub_805282C
sub_805282C: @ 0x0805282C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r4, _08052900  @ gUnknown_02000000
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r7, [r0]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r6, [r0]
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	mov r8, r0
	ldr r1, [r5, #0x58]
	cmp r1, #0
	bne _080528BC
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bne _080528BC
	strh r1, [r5, #0x2c]
	ldr r1, [r5, #0x48]
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	ldr r1, _08052904  @ gUnknown_0203E1AC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r2, [r5, #0x48]
	ldrh r1, [r0]
	adds r1, r1, r2
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0x75
	bl SomePlaySound_8071990
	movs r0, #2
	ldrsh r1, [r7, r0]
	movs r0, #0x75
	movs r2, #1
	bl sub_8071AB0
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x50]
	cmp r1, r0
	bne _080528BC
	movs r0, #1
	str r0, [r5, #0x58]
_080528BC:
	ldr r1, [r5, #0x54]
	cmp r1, #0x1e
	bne _08052960
	ldr r0, [r5, #0x58]
	cmp r0, #1
	bne _08052960
	ldr r4, _08052908  @ gUnknown_0203E152
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r1, #1
	movs r4, #0
	strh r1, [r0]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	ldr r1, _0805290C  @ gUnknown_02017780
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r4, [r0]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _08052954
	bl sub_804FD54
	cmp r0, #1
	bne _08052910
	movs r0, #0
	b _08052924
	.align 2, 0
_08052900: .4byte gUnknown_02000000
_08052904: .4byte gUnknown_0203E1AC
_08052908: .4byte gUnknown_0203E152
_0805290C: .4byte gUnknown_02017780
_08052910:
	ldr r4, _08052934  @ gUnknown_0203E190
	adds r0, r6, #0
	bl GetAISSubjectId
	adds r0, r0, r4
	ldrb r0, [r0]
	bl sub_80835A8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08052924:
	cmp r0, #1
	bne _08052938
	adds r0, r6, #0
	mov r1, r8
	bl sub_8052DD4
	b _08052954
	.align 2, 0
_08052934: .4byte gUnknown_0203E190
_08052938:
	bl sub_805B07C
	adds r0, r6, #0
	mov r1, r8
	bl sub_8052FAC
	ldr r0, [r5, #0x60]
	bl GetAISSubjectId
	ldr r1, _0805295C  @ gUnknown_0203E104
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
_08052954:
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
	b _0805296C
	.align 2, 0
_0805295C: .4byte gUnknown_0203E104
_08052960:
	adds r0, r1, #1
	str r0, [r5, #0x54]
	cmp r0, #0x1d
	bls _0805296C
	movs r0, #0x1e
	str r0, [r5, #0x54]
_0805296C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8052978
sub_8052978: @ 0x08052978
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _080529A8  @ gUnknown_02017728
	ldr r5, [r1]
	cmp r5, #0
	bne _080529E6
	movs r0, #1
	str r0, [r1]
	ldr r0, _080529AC  @ gUnknown_085B9664
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	strh r5, [r4, #0x2c]
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _080529B4
	ldr r0, _080529B0  @ gUnknown_02000000
	ldr r1, [r0, #8]
	str r1, [r4, #0x5c]
	ldr r0, [r0]
	b _080529BC
	.align 2, 0
_080529A8: .4byte gUnknown_02017728
_080529AC: .4byte gUnknown_085B9664
_080529B0: .4byte gUnknown_02000000
_080529B4:
	ldr r0, _080529EC  @ gUnknown_02000000
	ldr r1, [r0]
	str r1, [r4, #0x5c]
	ldr r0, [r0, #8]
_080529BC:
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x60]
	movs r1, #1
	bl sub_806C61C
	str r6, [r4, #0x64]
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0xd7
	bl SomePlaySound_8071990
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r0, #0xd7
	movs r2, #1
	bl sub_8071AB0
_080529E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080529EC: .4byte gUnknown_02000000

	THUMB_FUNC_START sub_80529F0
sub_80529F0: @ 0x080529F0
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	bne _08052A08
	adds r0, r1, #0
	bl Proc_ClearNativeCallback
_08052A08:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8052A0C
sub_8052A0C: @ 0x08052A0C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, _08052A3C  @ gUnknown_02017728
	ldr r0, [r1]
	cmp r0, #0
	bne _08052AD8
	movs r0, #1
	str r0, [r1]
	ldr r0, _08052A40  @ gUnknown_085B968C
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	adds r0, r7, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08052A48
	ldr r0, _08052A44  @ gUnknown_02000000
	ldr r1, [r0, #8]
	str r1, [r6, #0x5c]
	ldr r0, [r0]
	b _08052A50
	.align 2, 0
_08052A3C: .4byte gUnknown_02017728
_08052A40: .4byte gUnknown_085B968C
_08052A44: .4byte gUnknown_02000000
_08052A48:
	ldr r0, _08052AA8  @ gUnknown_02000000
	ldr r1, [r0]
	str r1, [r6, #0x5c]
	ldr r0, [r0, #8]
_08052A50:
	str r0, [r6, #0x60]
	ldr r4, _08052AAC  @ gUnknown_0203E152
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r5, [r0, r1]
	adds r4, r5, #1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	lsls r5, r5, #1
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x4c]
	ldr r0, [r6, #0x60]
	bl GetAISSubjectId
	lsls r4, r4, #0x10
	asrs r4, r4, #0xf
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	str r1, [r6, #0x50]
	movs r0, #0
	str r0, [r6, #0x54]
	str r0, [r6, #0x58]
	ldr r0, [r6, #0x4c]
	cmp r0, r1
	bne _08052AB0
	movs r0, #1
	str r0, [r6, #0x58]
	b _08052ABE
	.align 2, 0
_08052AA8: .4byte gUnknown_02000000
_08052AAC: .4byte gUnknown_0203E152
_08052AB0:
	cmp r0, r1
	ble _08052ABA
	movs r0, #1
	negs r0, r0
	b _08052ABC
_08052ABA:
	movs r0, #1
_08052ABC:
	str r0, [r6, #0x48]
_08052ABE:
	movs r0, #0
	strh r0, [r6, #0x2c]
	ldr r0, [r6, #0x4c]
	strh r0, [r6, #0x2e]
	str r7, [r6, #0x64]
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	ldr r1, _08052AE0  @ gUnknown_02017780
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #2
	strh r1, [r0]
_08052AD8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052AE0: .4byte gUnknown_02017780

	THUMB_FUNC_START sub_8052AE4
sub_8052AE4: @ 0x08052AE4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x60]
	ldr r1, [r5, #0x58]
	cmp r1, #0
	bne _08052B40
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bne _08052B40
	strh r1, [r5, #0x2c]
	ldr r1, [r5, #0x48]
	ldrh r0, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	bl GetAISSubjectId
	ldr r1, _08052B78  @ gUnknown_0203E1AC
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r2, [r5, #0x48]
	ldrh r1, [r0]
	adds r1, r1, r2
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0x75
	bl SomePlaySound_8071990
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r0, #0x75
	movs r2, #1
	bl sub_8071AB0
	movs r0, #0x2e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x50]
	cmp r1, r0
	bne _08052B40
	movs r0, #1
	str r0, [r5, #0x58]
_08052B40:
	ldr r1, [r5, #0x54]
	cmp r1, #0x1e
	bne _08052B84
	ldr r0, [r5, #0x58]
	cmp r0, #1
	bne _08052B84
	ldr r4, _08052B7C  @ gUnknown_0203E152
	adds r0, r6, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r1, #1
	movs r4, #0
	strh r1, [r0]
	adds r0, r6, #0
	bl GetAISSubjectId
	ldr r1, _08052B80  @ gUnknown_02017780
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r4, [r0]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
	b _08052B90
	.align 2, 0
_08052B78: .4byte gUnknown_0203E1AC
_08052B7C: .4byte gUnknown_0203E152
_08052B80: .4byte gUnknown_02017780
_08052B84:
	adds r0, r1, #1
	str r0, [r5, #0x54]
	cmp r0, #0x1d
	bls _08052B90
	movs r0, #0x1e
	str r0, [r5, #0x54]
_08052B90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8052B98
sub_8052B98: @ 0x08052B98
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r5, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	movs r1, #0x80
	lsls r1, r1, #3
	ands r1, r0
	cmp r1, #0
	bne _08052C12
	adds r0, r5, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08052BD0
	ldr r0, _08052BCC  @ gUnknown_0203E18C
	b _08052BD2
	.align 2, 0
_08052BCC: .4byte gUnknown_0203E18C
_08052BD0:
	ldr r0, _08052C18  @ gUnknown_0203E188
_08052BD2:
	ldr r0, [r0]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0xb5
	beq _08052C12
	ldr r1, _08052C1C  @ gUnknown_02017728
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08052C20  @ gUnknown_085B96B4
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	str r6, [r4, #0x60]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x29
	strb r7, [r0]
	str r5, [r4, #0x64]
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl sub_806C61C
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x60]
	bl sub_8052C7C
_08052C12:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052C18: .4byte gUnknown_0203E188
_08052C1C: .4byte gUnknown_02017728
_08052C20: .4byte gUnknown_085B96B4

	THUMB_FUNC_START sub_8052C24
sub_8052C24: @ 0x08052C24
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #8
	bne _08052C70
	ldr r6, _08052C78  @ gUnknown_0203E152
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _08052C6A
	adds r0, r5, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
_08052C6A:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08052C70:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08052C78: .4byte gUnknown_0203E152

	THUMB_FUNC_START sub_8052C7C
sub_8052C7C: @ 0x08052C7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08052C9C  @ gUnknown_085B96DC
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	str r5, [r0, #0x60]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052C9C: .4byte gUnknown_085B96DC

	THUMB_FUNC_START sub_8052CA0
sub_8052CA0: @ 0x08052CA0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x5c]
	mov r8, r0
	ldr r1, [r7, #0x60]
	mov r9, r1
	ldr r4, _08052D04  @ gUnknown_080DA438
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _08052D10
	bl sub_806FAB0
	cmp r0, #0
	bne _08052CFC
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	ldr r5, _08052D08  @ gUnknown_02000028
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r4, _08052D0C  @ gUnknown_0201FB0C
	ldr r1, [r4]
	ldrh r0, [r0]
	subs r0, r0, r1
	mov r1, r8
	strh r0, [r1, #2]
	ldr r0, [r7, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r5
	ldr r1, [r4]
	ldrh r0, [r0]
	subs r0, r0, r1
	mov r2, r9
	strh r0, [r2, #2]
_08052CFC:
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
	b _08052D78
	.align 2, 0
_08052D04: .4byte gUnknown_080DA438
_08052D08: .4byte gUnknown_02000028
_08052D0C: .4byte gUnknown_0201FB0C
_08052D10:
	mov r0, r8
	bl GetAISSubjectId
	cmp r0, #1
	bne _08052D2C
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08052D36
_08052D2C:
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r4, [r0]
_08052D36:
	bl sub_806FAB0
	cmp r0, #0
	bne _08052D72
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	ldr r6, _08052D84  @ gUnknown_02000028
	lsls r0, r0, #1
	adds r0, r0, r6
	ldr r5, _08052D88  @ gUnknown_0201FB0C
	ldr r1, [r5]
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, r0
	mov r1, r8
	strh r0, [r1, #2]
	ldr r0, [r7, #0x60]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r6
	ldr r1, [r5]
	ldrh r0, [r0]
	subs r0, r0, r1
	adds r4, r4, r0
	mov r2, r9
	strh r4, [r2, #2]
_08052D72:
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
_08052D78:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052D84: .4byte gUnknown_02000028
_08052D88: .4byte gUnknown_0201FB0C

	THUMB_FUNC_START sub_8052D8C
sub_8052D8C: @ 0x08052D8C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08052DB0  @ gUnknown_02017728
	ldr r4, [r1]
	cmp r4, #0
	bne _08052DA8
	movs r0, #1
	str r0, [r1]
	ldr r0, _08052DB4  @ gUnknown_085B96F4
	movs r1, #3
	bl Proc_Create
	strh r4, [r0, #0x2c]
	str r5, [r0, #0x64]
_08052DA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052DB0: .4byte gUnknown_02017728
_08052DB4: .4byte gUnknown_085B96F4

	THUMB_FUNC_START sub_8052DB8
sub_8052DB8: @ 0x08052DB8
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x11
	bne _08052DD0
	adds r0, r1, #0
	bl Proc_ClearNativeCallback
_08052DD0:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8052DD4
sub_8052DD4: @ 0x08052DD4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08052DF4  @ gUnknown_085B9724
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	str r5, [r0, #0x60]
	ldr r1, _08052DF8  @ gUnknown_02017738
	movs r0, #1
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052DF4: .4byte gUnknown_085B9724
_08052DF8: .4byte gUnknown_02017738

	THUMB_FUNC_START sub_8052DFC
sub_8052DFC: @ 0x08052DFC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r7, r0, #0
	movs r6, #0
	ldr r0, _08052E68  @ gUnknown_0201774C
	ldr r0, [r0]
	cmp r0, #0
	bne _08052E2E
	ldr r0, _08052E6C  @ gUnknown_0201772C
	ldr r0, [r0]
	cmp r0, #0
	bne _08052E2E
	ldr r4, _08052E70  @ gUnknown_0201FB04
	adds r0, r7, #0
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #1
	bne _08052E2E
	movs r6, #1
_08052E2E:
	cmp r6, #1
	bne _08052E62
	movs r0, #7
	strh r0, [r5, #0x2c]
	ldr r0, _08052E74  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08052E5C
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	ldr r1, _08052E78  @ gUnknown_02017744
	ldr r1, [r1]
	cmp r0, r1
	beq _08052E5C
	movs r1, #1
	negs r1, r1
	adds r0, r7, #0
	bl sub_80533D0
	movs r0, #0
	strh r0, [r5, #0x2c]
_08052E5C:
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_08052E62:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052E68: .4byte gUnknown_0201774C
_08052E6C: .4byte gUnknown_0201772C
_08052E70: .4byte gUnknown_0201FB04
_08052E74: .4byte gUnknown_0203E120
_08052E78: .4byte gUnknown_02017744

	THUMB_FUNC_START sub_8052E7C
sub_8052E7C: @ 0x08052E7C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _08052EA6
	movs r0, #1
	movs r1, #7
	bl NewEkrWindowAppear
	movs r0, #1
	movs r1, #7
	movs r2, #0
	bl NewEkrNamewinAppear
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08052EA6:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8052EAC
sub_8052EAC: @ 0x08052EAC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl sub_8056D74
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08052F0A
	bl EkrGauge_8051218
	bl sub_8051B90
	movs r0, #0
	str r0, [sp]
	ldr r1, _08052F14  @ gBG0TilemapBuffer
	ldr r2, _08052F18  @ 0x01000200
	mov r0, sp
	bl CpuFastSet
	ldr r0, _08052F1C  @ gUnknown_02000038
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	movs r0, #0
	bl BG_SetPosition
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	movs r0, #1
	bl BG_EnableSyncByMask
	bl EkrGauge_8051190
	ldr r4, _08052F20  @ gUnknown_0203E190
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	adds r0, r0, r4
	ldrb r0, [r0]
	bl sub_80835DC
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_08052F0A:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052F14: .4byte gBG0TilemapBuffer
_08052F18: .4byte 0x01000200
_08052F1C: .4byte gUnknown_02000038
_08052F20: .4byte gUnknown_0203E190

	THUMB_FUNC_START sub_8052F24
sub_8052F24: @ 0x08052F24
	push {r4, r5, lr}
	adds r4, r0, #0
	bl BattleEventEngineExists
	adds r5, r0, #0
	cmp r5, #0
	bne _08052F7A
	bl sub_805B07C
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x60]
	bl sub_8052FAC
	bl sub_8051F1C
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	ldr r1, _08052F80  @ gUnknown_0203E104
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r5, [r0]
	movs r0, #1
	bl BG_EnableSyncByMask
	movs r0, #0
	movs r1, #7
	bl NewEkrWindowAppear
	movs r0, #0
	movs r1, #7
	movs r2, #0
	bl NewEkrNamewinAppear
	bl EkrGauge_8051228
	bl sub_8051BA0
	bl EkrGauge_8051180
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08052F7A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052F80: .4byte gUnknown_0203E104

	THUMB_FUNC_START sub_8052F84
sub_8052F84: @ 0x08052F84
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8056D74
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08052FA0
	ldr r1, _08052FA8  @ gUnknown_02017738
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08052FA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052FA8: .4byte gUnknown_02017738

	THUMB_FUNC_START sub_8052FAC
sub_8052FAC: @ 0x08052FAC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08052FE0  @ gUnknown_02017728
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08052FE4  @ gUnknown_02017734
	movs r0, #1
	str r0, [r1]
	ldr r0, _08052FE8  @ gUnknown_085B975C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	str r5, [r0, #0x60]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	adds r0, r4, #0
	bl sub_8054B64
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052FE0: .4byte gUnknown_02017728
_08052FE4: .4byte gUnknown_02017734
_08052FE8: .4byte gUnknown_085B975C

	THUMB_FUNC_START sub_8052FEC
sub_8052FEC: @ 0x08052FEC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_806FAB0
	cmp r0, #1
	bne _08053030
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08053030
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	adds r4, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	adds r1, r0, #0
	ldr r0, _0805302C  @ gUnknown_0203E152
	lsls r4, r4, #1
	adds r4, r4, r0
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	b _08053032
	.align 2, 0
_0805302C: .4byte gUnknown_0203E152
_08053030:
	movs r4, #1
_08053032:
	ldr r0, _08053054  @ gUnknown_0201774C
	ldr r0, [r0]
	cmp r0, #0
	bne _0805307A
	ldr r0, _08053058  @ gUnknown_0201772C
	ldr r0, [r0]
	cmp r0, #0
	bne _0805307A
	bl sub_806FAB0
	cmp r0, #2
	bne _0805305C
	ldr r0, [r5, #0x5c]
	bl sub_80701F4
	b _08053070
	.align 2, 0
_08053054: .4byte gUnknown_0201774C
_08053058: .4byte gUnknown_0201772C
_0805305C:
	cmp r4, #0
	bne _08053068
	ldr r0, [r5, #0x5c]
	bl sub_8070204
	b _08053070
_08053068:
	ldr r0, [r5, #0x5c]
	ldr r1, [r5, #0x60]
	bl sub_8053120
_08053070:
	movs r0, #0x32
	strh r0, [r5, #0x2e]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805307A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8053080
sub_8053080: @ 0x08053080
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x5c]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x1e
	bne _080530F6
	adds r0, r5, #0
	bl sub_8070214
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08053112
	ldr r0, [r4, #0x5c]
	bl sub_8070234
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080530D2
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x60]
	bl sub_805328C
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0xd6
	bl SomePlaySound_8071990
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r0, #0xd6
	movs r2, #1
	bl sub_8071AB0
	movs r0, #0x64
	strh r0, [r4, #0x2e]
	b _08053112
_080530D2:
	ldr r0, [r4, #0x5c]
	ldr r1, [r4, #0x60]
	bl sub_80531A4
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0xd6
	bl SomePlaySound_8071990
	movs r2, #2
	ldrsh r1, [r5, r2]
	movs r0, #0xd6
	movs r2, #1
	bl sub_8071AB0
	movs r0, #0x32
	strh r0, [r4, #0x2e]
	b _08053112
_080530F6:
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _08053112
	ldr r1, _08053118  @ gUnknown_02017728
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldr r1, _0805311C  @ gUnknown_02017734
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08053112:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053118: .4byte gUnknown_02017728
_0805311C: .4byte gUnknown_02017734

	THUMB_FUNC_START sub_8053120
sub_8053120: @ 0x08053120
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08053140  @ gUnknown_085B977C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	str r5, [r0, #0x60]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053140: .4byte gUnknown_085B977C

	THUMB_FUNC_START sub_8053144
sub_8053144: @ 0x08053144
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x5c]
	ldr r5, [r3, #0x60]
	ldrh r0, [r3, #0x2c]
	adds r0, #1
	strh r0, [r3, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _0805317C
	ldrh r2, [r4]
	ldr r1, _08053178  @ 0x0000FFFD
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldrh r0, [r5]
	ands r1, r0
	strh r1, [r5]
	movs r0, #0
	strh r0, [r3, #0x2c]
	ldrh r0, [r3, #0x2e]
	adds r0, #1
	strh r0, [r3, #0x2e]
	b _0805318A
	.align 2, 0
_08053178: .4byte 0x0000FFFD
_0805317C:
	ldrh r0, [r4]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4]
	ldrh r0, [r5]
	orrs r0, r1
	strh r0, [r5]
_0805318A:
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	cmp r0, #5
	ble _0805319E
	movs r0, #0
	strh r0, [r3, #0x2c]
	strh r0, [r3, #0x2e]
	adds r0, r3, #0
	bl Proc_ClearNativeCallback
_0805319E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80531A4
sub_80531A4: @ 0x080531A4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08053204  @ gUnknown_085B9794
	movs r1, #3
	bl Proc_Create
	str r5, [r0, #0x5c]
	str r6, [r0, #0x60]
	movs r4, #0
	strh r4, [r0, #0x2c]
	strh r4, [r0, #0x2e]
	movs r0, #0xa
	strh r0, [r5, #0xa]
	strh r0, [r6, #0xa]
	bl AISArray_Sort
	movs r0, #0
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8001ED0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_8001F0C
	ldr r1, _08053208  @ gLCDControlBuffer
	adds r1, #0x3d
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053204: .4byte gUnknown_085B9794
_08053208: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_805320C
sub_805320C: @ 0x0805320C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, [r4, #0x5c]
	ldr r3, [r4, #0x60]
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0x1c]
	ldr r0, [r3, #0x1c]
	orrs r0, r1
	str r0, [r3, #0x1c]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _08053260
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r0, [r2, #0x1c]
	ldr r1, _0805325C  @ 0xFFFFFBFF
	ands r0, r1
	str r0, [r2, #0x1c]
	ldr r0, [r3, #0x1c]
	ands r0, r1
	str r0, [r3, #0x1c]
	bl SetDefaultColorEffects
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _08053282
	.align 2, 0
_0805325C: .4byte 0xFFFFFBFF
_08053260:
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r0, #0x3c
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_8012DCC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
_08053282:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805328C
sub_805328C: @ 0x0805328C
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08053360  @ gUnknown_085B97AC
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	str r6, [r4, #0x60]
	ldrh r0, [r5]
	movs r1, #2
	movs r2, #0
	mov r9, r2
	movs r2, #0
	mov r8, r2
	orrs r0, r1
	strh r0, [r5]
	ldrh r0, [r6]
	orrs r0, r1
	strh r0, [r6]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	bl sub_806FC8C
	mov r0, r8
	strh r0, [r4, #0x2c]
	strh r0, [r4, #0x2e]
	movs r0, #1
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	mov r1, r8
	str r1, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_8001ED0
	mov r2, r8
	str r2, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_8001F0C
	ldr r4, _08053364  @ gLCDControlBuffer
	ldrb r0, [r4, #1]
	movs r2, #0x20
	orrs r0, r2
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #1]
	adds r0, r4, #0
	adds r0, #0x2d
	mov r1, r9
	strb r1, [r0]
	adds r0, #4
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x34
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	orrs r0, r2
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08053360: .4byte gUnknown_085B97AC
_08053364: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_8053368
sub_8053368: @ 0x08053368
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080533A4
	movs r0, #0
	bl sub_80559D0
	ldr r0, _080533A0  @ gBG3TilemapBuffer
	movs r1, #0xf0
	lsls r1, r1, #8
	bl BG_Fill
	movs r0, #8
	bl BG_EnableSyncByMask
	bl SetDefaultColorEffects
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _080533C6
	.align 2, 0
_080533A0: .4byte gBG3TilemapBuffer
_080533A4:
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r0, #0x3c
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_8012DCC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
_080533C6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80533D0
sub_80533D0: @ 0x080533D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _080533EC  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bhi _0805349E
	lsls r0, r0, #2
	ldr r1, _080533F0  @ _080533F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080533EC: .4byte gUnknown_0203E120
_080533F0: .4byte _080533F4
_080533F4: @ jump table
	.4byte _0805349E @ case 0
	.4byte _08053408 @ case 1
	.4byte _08053408 @ case 2
	.4byte _0805349E @ case 3
	.4byte _0805349E @ case 4
_08053408:
	ldr r0, _0805343C  @ gUnknown_085B97C4
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetAISSubjectId
	adds r2, r4, #0
	adds r2, #0x29
	movs r1, #0
	strb r0, [r2]
	strh r1, [r4, #0x2c]
	lsls r1, r6, #0x10
	asrs r2, r1, #0x10
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	beq _08053444
	asrs r0, r1, #0x11
	strh r0, [r4, #0x2e]
	subs r0, r2, r0
	strh r0, [r4, #0x30]
	ldr r2, _08053440  @ gUnknown_0203E120
	b _0805345E
	.align 2, 0
_0805343C: .4byte gUnknown_085B97C4
_08053440: .4byte gUnknown_0203E120
_08053444:
	ldr r0, _08053454  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #1
	bne _08053458
	movs r0, #5
	b _0805345A
	.align 2, 0
_08053454: .4byte gUnknown_0203E120
_08053458:
	movs r0, #7
_0805345A:
	strh r0, [r4, #0x2e]
	strh r0, [r4, #0x30]
_0805345E:
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0xf0
	cmp r0, #1
	bne _0805346A
	movs r1, #0x20
_0805346A:
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r2, [r0]
	cmp r2, #0
	bne _08053482
	negs r0, r1
	strh r0, [r4, #0x32]
	lsrs r0, r0, #1
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	strh r2, [r4, #0x38]
	b _08053490
_08053482:
	movs r0, #0
	strh r0, [r4, #0x32]
	negs r1, r1
	lsrs r0, r1, #1
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	strh r1, [r4, #0x38]
_08053490:
	ldr r1, _080534A4  @ gUnknown_0201FB0C
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	str r0, [r1]
	ldr r1, _080534A8  @ gUnknown_02017748
	movs r0, #1
	str r0, [r1]
_0805349E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080534A4: .4byte gUnknown_0201FB0C
_080534A8: .4byte gUnknown_02017748

	THUMB_FUNC_START sub_80534AC
sub_80534AC: @ 0x080534AC
	push {r4, lr}
	ldr r3, _080534DC  @ gUnknown_02000000
	ldr r4, [r3]
	negs r1, r1
	ldr r2, _080534E0  @ gUnknown_02000028
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	ldr r4, [r3, #4]
	ldrh r0, [r2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	ldr r4, [r3, #8]
	ldrh r0, [r2, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	ldr r4, [r3, #0xc]
	ldrh r0, [r2, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080534DC: .4byte gUnknown_02000000
_080534E0: .4byte gUnknown_02000028

	THUMB_FUNC_START sub_80534E4
sub_80534E4: @ 0x080534E4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	adds r0, r4, #0
	bl sub_80534AC
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	movs r1, #0
	bl sub_806FB2C
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	bl sub_8053618
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8053514
sub_8053514: @ 0x08053514
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r5, #0x34
	ldrsh r2, [r4, r5]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	str r0, [sp]
	movs r0, #1
	bl sub_8012DCC
	adds r1, r0, #0
	ldr r5, _08053580  @ gUnknown_0201FB0C
	str r1, [r5]
	adds r0, r4, #0
	bl sub_80534AC
	ldr r0, [r5]
	movs r1, #0
	bl sub_806FB2C
	ldr r0, [r5]
	bl sub_8053618
	bl sub_805B028
	cmp r0, #0
	beq _0805355A
	ldr r0, [r5]
	bl sub_805B034
_0805355A:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _08053576
	movs r0, #1
	strh r0, [r4, #0x2c]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08053576:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053580: .4byte gUnknown_0201FB0C

	THUMB_FUNC_START sub_8053584
sub_8053584: @ 0x08053584
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	movs r5, #0x38
	ldrsh r2, [r4, r5]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r5, #0x30
	ldrsh r0, [r4, r5]
	str r0, [sp]
	movs r0, #4
	bl sub_8012DCC
	adds r1, r0, #0
	ldr r5, _080535EC  @ gUnknown_0201FB0C
	str r1, [r5]
	adds r0, r4, #0
	bl sub_80534AC
	ldr r0, [r5]
	movs r1, #0
	bl sub_806FB2C
	ldr r0, [r5]
	bl sub_8053618
	bl sub_805B028
	cmp r0, #0
	beq _080535CA
	ldr r0, [r5]
	bl sub_805B034
_080535CA:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _08053606
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _080535F4
	ldr r1, _080535F0  @ gUnknown_02017744
	movs r0, #1
	b _080535F8
	.align 2, 0
_080535EC: .4byte gUnknown_0201FB0C
_080535F0: .4byte gUnknown_02017744
_080535F4:
	ldr r1, _08053610  @ gUnknown_02017744
	movs r0, #0
_080535F8:
	str r0, [r1]
	ldr r1, _08053614  @ gUnknown_02017748
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08053606:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053610: .4byte gUnknown_02017744
_08053614: .4byte gUnknown_02017748

	THUMB_FUNC_START sub_8053618
sub_8053618: @ 0x08053618
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	bl sub_806FAB0
	cmp r0, #2
	beq _08053668
	bl sub_805B028
	cmp r0, #0
	bne _08053668
	asrs r4, r5, #3
	movs r1, #7
	ands r1, r5
	movs r0, #2
	movs r2, #0
	bl BG_SetPosition
	lsls r4, r4, #1
	ldr r0, _08053670  @ gUnknown_0201C912
	adds r4, r4, r0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r2, _08053674  @ gBG2TilemapBuffer
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	subs r0, #0x15
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x42
	movs r3, #0x20
	bl sub_8070EF4
	movs r0, #4
	bl BG_EnableSyncByMask
_08053668:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053670: .4byte gUnknown_0201C912
_08053674: .4byte gBG2TilemapBuffer

	THUMB_FUNC_START sub_8053678
sub_8053678: @ 0x08053678
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080536B0  @ gUnknown_085B97EC
	movs r1, #3
	bl Proc_Create
	ldr r2, _080536B4  @ gUnknown_085B9804
	lsls r1, r4, #3
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #0x44]
	lsls r4, r4, #1
	adds r4, #1
	lsls r4, r4, #2
	adds r4, r4, r2
	ldr r1, [r4]
	adds r3, r0, #0
	adds r3, #0x29
	movs r2, #0
	strb r1, [r3]
	adds r1, r0, #0
	adds r1, #0x2a
	strb r5, [r1]
	strh r2, [r0, #0x2c]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080536B0: .4byte gUnknown_085B97EC
_080536B4: .4byte gUnknown_085B9804

	THUMB_FUNC_START sub_80536B8
sub_80536B8: @ 0x080536B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x44]
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	adds r2, r0, r3
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _080536E4  @ 0x00007FFF
	cmp r1, r0
	beq _080536E8
	adds r0, r1, #0
	movs r3, #2
	ldrsh r1, [r2, r3]
	bl sub_8052214
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	b _08053710
	.align 2, 0
_080536E4: .4byte 0x00007FFF
_080536E8:
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	beq _080536F8
	cmp r0, #1
	beq _08053708
	b _08053710
_080536F8:
	strh r0, [r4, #0x2c]
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #2
	ldrsh r1, [r3, r2]
	bl sub_8052214
	b _08053710
_08053708:
	movs r0, #0
	movs r1, #0
	bl sub_8052214
_08053710:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8053718
sub_8053718: @ 0x08053718
	push {lr}
	ldr r0, _08053728  @ gUnknown_085B9884
	movs r1, #3
	bl Proc_Create
	pop {r1}
	bx r1
	.align 2, 0
_08053728: .4byte gUnknown_085B9884

	THUMB_FUNC_START nullsub_56
nullsub_56: @ 0x0805372C
	bx lr

	THUMB_FUNC_START sub_8053730
sub_8053730: @ 0x08053730
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08053740  @ gUnknown_02017748
	ldr r0, [r0]
	cmp r0, #1
	bne _08053744
	movs r0, #0
	b _08053820
	.align 2, 0
_08053740: .4byte gUnknown_02017748
_08053744:
	ldr r1, _08053770  @ gUnknown_0201773C
	movs r0, #1
	str r0, [r1]
	ldr r0, _08053774  @ gUnknown_085B989C
	movs r1, #3
	bl Proc_Create
	adds r2, r0, #0
	movs r0, #0
	strh r0, [r2, #0x2c]
	ldr r1, _08053778  @ gUnknown_02000000
	ldr r0, [r1]
	str r0, [r2, #0x5c]
	ldr r0, [r1, #8]
	str r0, [r2, #0x60]
	cmp r4, #6
	bhi _0805380C
	lsls r0, r4, #2
	ldr r1, _0805377C  @ _08053780
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08053770: .4byte gUnknown_0201773C
_08053774: .4byte gUnknown_085B989C
_08053778: .4byte gUnknown_02000000
_0805377C: .4byte _08053780
_08053780: @ jump table
	.4byte _0805379C @ case 0
	.4byte _080537AC @ case 1
	.4byte _080537BC @ case 2
	.4byte _080537CC @ case 3
	.4byte _080537DC @ case 4
	.4byte _080537EC @ case 5
	.4byte _080537FC @ case 6
_0805379C:
	ldr r0, _080537A8  @ gUnknown_080DA4BA
	str r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #0
	b _08053816
	.align 2, 0
_080537A8: .4byte gUnknown_080DA4BA
_080537AC:
	ldr r0, _080537B8  @ gUnknown_080DA4DC
	str r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #0
	b _08053816
	.align 2, 0
_080537B8: .4byte gUnknown_080DA4DC
_080537BC:
	ldr r0, _080537C8  @ gUnknown_080DA526
	str r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #0
	b _08053816
	.align 2, 0
_080537C8: .4byte gUnknown_080DA526
_080537CC:
	ldr r0, _080537D8  @ gUnknown_080DA570
	str r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #0
	b _08053816
	.align 2, 0
_080537D8: .4byte gUnknown_080DA570
_080537DC:
	ldr r0, _080537E8  @ gUnknown_080DA5BA
	str r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #0
	b _08053816
	.align 2, 0
_080537E8: .4byte gUnknown_080DA5BA
_080537EC:
	ldr r0, _080537F8  @ gUnknown_080DA604
	str r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #1
	b _08053816
	.align 2, 0
_080537F8: .4byte gUnknown_080DA604
_080537FC:
	ldr r0, _08053808  @ gUnknown_080DA66E
	str r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #1
	b _08053816
	.align 2, 0
_08053808: .4byte gUnknown_080DA66E
_0805380C:
	ldr r0, _08053828  @ gUnknown_080DA4BA
	str r0, [r2, #0x44]
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #0
_08053816:
	strb r0, [r1]
	movs r0, #0
	strh r0, [r2, #0x34]
	strh r0, [r2, #0x3c]
	adds r0, r2, #0
_08053820:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08053828: .4byte gUnknown_080DA4BA

	THUMB_FUNC_START sub_805382C
sub_805382C: @ 0x0805382C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r1, [r7, #0x44]
	movs r2, #0x2c
	ldrsh r0, [r7, r2]
	lsls r0, r0, #2
	adds r2, r0, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r0, _080538AC  @ 0x00007FFF
	cmp r1, r0
	bne _080538C0
	ldr r3, _080538B0  @ gUnknown_02000028
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r0, _080538B4  @ gUnknown_0201FB0C
	ldr r1, [r0]
	subs r6, r2, r1
	ldr r2, _080538B8  @ gUnknown_0200002C
	movs r4, #2
	ldrsh r0, [r3, r4]
	subs r4, r0, r1
	movs r0, #2
	ldrsh r5, [r2, r0]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r0, #0
	bl sub_80559F0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #0
	movs r0, #1
	bl sub_80559F0
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_806FAB0
	cmp r0, #0
	beq _0805389E
	ldrh r1, [r7, #0x34]
	ldrh r2, [r7, #0x3c]
	movs r0, #3
	bl BG_SetPosition
	movs r0, #0
	movs r1, #0
	bl sub_8052214
_0805389E:
	ldr r1, _080538BC  @ gUnknown_0201773C
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	bl Proc_Delete
	b _080539D2
	.align 2, 0
_080538AC: .4byte 0x00007FFF
_080538B0: .4byte gUnknown_02000028
_080538B4: .4byte gUnknown_0201FB0C
_080538B8: .4byte gUnknown_0200002C
_080538BC: .4byte gUnknown_0201773C
_080538C0:
	movs r4, #0
	ldrsh r0, [r2, r4]
	movs r3, #2
	ldrsh r1, [r2, r3]
	bl sub_8052214
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	ldr r5, _08053918  @ gUnknown_02017760
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	movs r0, #2
	bl BG_SetPosition
	bl sub_806FAB0
	cmp r0, #0
	beq _08053900
	ldrh r1, [r5]
	ldrh r4, [r7, #0x34]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #2]
	ldrh r0, [r7, #0x3c]
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #3
	bl BG_SetPosition
_08053900:
	bl sub_806FAB0
	cmp r0, #0
	beq _08053920
	ldr r4, _0805391C  @ gUnknown_02000028
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r1, r1, r0
	b _0805392C
	.align 2, 0
_08053918: .4byte gUnknown_02017760
_0805391C: .4byte gUnknown_02000028
_08053920:
	ldr r4, _0805398C  @ gUnknown_02000028
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r1, r1, r0
_0805392C:
	ldr r3, _08053990  @ gUnknown_0201FB0C
	ldr r0, [r3]
	subs r6, r1, r0
	ldr r2, _08053994  @ gUnknown_0200002C
	movs r1, #0
	ldrsh r0, [r2, r1]
	mov r8, r0
	movs r1, #2
	ldrsh r0, [r5, r1]
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	adds r5, r2, #0
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldr r2, _08053998  @ gUnknown_02017760
	movs r4, #0
	ldrsh r0, [r2, r4]
	adds r1, r1, r0
	ldr r0, [r3]
	subs r4, r1, r0
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
	ldr r0, _0805399C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080539A0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_80559F0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_80559F0
	b _080539D2
	.align 2, 0
_0805398C: .4byte gUnknown_02000028
_08053990: .4byte gUnknown_0201FB0C
_08053994: .4byte gUnknown_0200002C
_08053998: .4byte gUnknown_02017760
_0805399C: .4byte gUnknown_0203E120
_080539A0:
	cmp r0, #0
	blt _080539D2
	cmp r0, #2
	bgt _080539D2
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080539C4
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r4, r8
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_80559F0
	b _080539D2
_080539C4:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_80559F0
_080539D2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80539DC
sub_80539DC: @ 0x080539DC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	adds r6, r2, #0
	ldr r0, _08053A20  @ gUnknown_02017740
	ldr r7, [r0]
	cmp r7, #0
	beq _080539F4
	b _08053B90
_080539F4:
	movs r4, #1
	str r4, [r0]
	ldr r0, _08053A24  @ gUnknown_085B98B4
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	mov r0, r8
	str r0, [r5, #0x5c]
	mov r1, r9
	str r1, [r5, #0x60]
	strh r7, [r5, #0x2c]
	adds r0, r5, #0
	adds r0, #0x29
	strb r4, [r0]
	cmp r6, #0
	beq _08053A5C
	cmp r6, #1
	bne _08053A2C
	ldr r0, _08053A28  @ gUnknown_080DA4DC
	b _08053A5E
	.align 2, 0
_08053A20: .4byte gUnknown_02017740
_08053A24: .4byte gUnknown_085B98B4
_08053A28: .4byte gUnknown_080DA4DC
_08053A2C:
	cmp r6, #2
	bne _08053A38
	ldr r0, _08053A34  @ gUnknown_080DA526
	b _08053A5E
	.align 2, 0
_08053A34: .4byte gUnknown_080DA526
_08053A38:
	cmp r6, #3
	bne _08053A44
	ldr r0, _08053A40  @ gUnknown_080DA570
	b _08053A5E
	.align 2, 0
_08053A40: .4byte gUnknown_080DA570
_08053A44:
	cmp r6, #4
	bne _08053A50
	ldr r0, _08053A4C  @ gUnknown_080DA9F8
	b _08053A5E
	.align 2, 0
_08053A4C: .4byte gUnknown_080DA9F8
_08053A50:
	cmp r6, #5
	bne _08053A5C
	ldr r0, _08053A58  @ gUnknown_080DAA8E
	b _08053A5E
	.align 2, 0
_08053A58: .4byte gUnknown_080DAA8E
_08053A5C:
	ldr r0, _08053A74  @ gUnknown_080DA4BA
_08053A5E:
	str r0, [r5, #0x44]
	movs r0, #1
	str r0, [r5, #0x48]
	bl sub_806FAB0
	adds r4, r0, #0
	cmp r4, #0
	beq _08053A78
	movs r0, #0
	str r0, [r5, #0x64]
	b _08053B90
	.align 2, 0
_08053A74: .4byte gUnknown_080DA4BA
_08053A78:
	bl sub_805B028
	cmp r0, #0
	beq _08053A84
	str r4, [r5, #0x64]
	b _08053B90
_08053A84:
	ldr r0, _08053A94  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08053A98
	str r0, [r5, #0x64]
	b _08053B90
	.align 2, 0
_08053A94: .4byte gUnknown_0203E120
_08053A98:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	ldr r1, _08053AC8  @ gUnknown_0201FB0C
	ldr r1, [r1]
	ldr r2, _08053ACC  @ gUnknown_02000030
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	mov r0, r8
	bl GetAISSubjectId
	cmp r0, #0
	bne _08053AD4
	movs r0, #0x40
	strh r0, [r5, #0x36]
	movs r0, #0x68
	strh r0, [r5, #0x3e]
	ldr r0, _08053AD0  @ gUnknown_085C7338
	b _08053ADE
	.align 2, 0
_08053AC8: .4byte gUnknown_0201FB0C
_08053ACC: .4byte gUnknown_02000030
_08053AD0: .4byte gUnknown_085C7338
_08053AD4:
	movs r0, #0xb0
	strh r0, [r5, #0x36]
	movs r0, #0x68
	strh r0, [r5, #0x3e]
	ldr r0, _08053B04  @ gUnknown_085C72AC
_08053ADE:
	movs r1, #5
	bl AIS_New
	adds r2, r0, #0
	ldrh r1, [r5, #0x36]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r2, #2]
	ldrh r0, [r5, #0x3e]
	strh r0, [r2, #4]
	ldr r0, _08053B08  @ gUnknown_0201775C
	ldr r0, [r0]
	cmp r0, #1
	bne _08053B0C
	movs r0, #0xd3
	lsls r0, r0, #6
	b _08053B10
	.align 2, 0
_08053B04: .4byte gUnknown_085C72AC
_08053B08: .4byte gUnknown_0201775C
_08053B0C:
	movs r0, #0xf3
	lsls r0, r0, #6
_08053B10:
	strh r0, [r2, #8]
	str r2, [r5, #0x64]
	ldr r4, _08053B9C  @ gUnknown_0200003C
	mov r0, r8
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _08053BA0  @ 0x06011800
	movs r2, #0x80
	lsls r2, r2, #4
	bl RegisterTileGraphics
	ldr r4, _08053BA4  @ gUnknown_0203E118
	mov r0, r9
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x39
	bne _08053B56
	ldr r4, _08053BA8  @ gUnknown_0200004C
	mov r0, r9
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _08053BAC  @ gUnknown_02016828
	movs r2, #8
	bl CpuFastSet
_08053B56:
	ldr r4, _08053BA8  @ gUnknown_0200004C
	mov r0, r8
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r1, _08053BB0  @ gUnknown_02022B08
	movs r2, #8
	bl CpuFastSet
	bl EnablePaletteSync
	ldr r0, _08053BB4  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r4, [r0, r1]
	mov r0, r8
	bl GetAISSubjectId
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_805AFA0
	ldr r0, _08053BB8  @ gUnknown_0201FB0C
	ldr r0, [r0]
	bl sub_8053618
_08053B90:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053B9C: .4byte gUnknown_0200003C
_08053BA0: .4byte 0x06011800
_08053BA4: .4byte gUnknown_0203E118
_08053BA8: .4byte gUnknown_0200004C
_08053BAC: .4byte gUnknown_02016828
_08053BB0: .4byte gUnknown_02022B08
_08053BB4: .4byte gUnknown_0203E120
_08053BB8: .4byte gUnknown_0201FB0C

	THUMB_FUNC_START sub_8053BBC
sub_8053BBC: @ 0x08053BBC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r5, [r7, #0x44]
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08053C0C  @ 0x00007FFF
	cmp r1, r0
	beq _08053BDC
	b _08053CF0
_08053BDC:
	movs r0, #0
	movs r1, #0
	bl sub_8052214
	ldr r0, _08053C10  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _08053C14
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_806FAB0
	cmp r0, #0
	beq _08053C36
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	b _08053C36
	.align 2, 0
_08053C0C: .4byte 0x00007FFF
_08053C10: .4byte gUnknown_0203E120
_08053C14:
	cmp r0, #0
	blt _08053C36
	cmp r0, #2
	bgt _08053C36
	bl sub_806FAB0
	cmp r0, #0
	beq _08053C2E
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_08053C2E:
	ldr r0, _08053CD8  @ gUnknown_0201FB0C
	ldr r0, [r0]
	bl sub_8053618
_08053C36:
	ldr r0, [r7, #0x64]
	cmp r0, #0
	beq _08053C46
	bl AIS_Free
	ldr r0, _08053CDC  @ gUnknown_0201FADC
	bl sub_805AE58
_08053C46:
	ldr r3, _08053CE0  @ gUnknown_02000028
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r0, _08053CD8  @ gUnknown_0201FB0C
	ldr r1, [r0]
	subs r6, r2, r1
	ldr r2, _08053CE4  @ gUnknown_0200002C
	movs r5, #2
	ldrsh r0, [r3, r5]
	subs r4, r0, r1
	movs r0, #2
	ldrsh r5, [r2, r0]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	movs r3, #0
	ldrsh r2, [r2, r3]
	movs r0, #0
	bl sub_80559F0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r2, r5, #0
	movs r0, #1
	bl sub_80559F0
	ldr r1, _08053CE8  @ gUnknown_02017740
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _08053CCE
	bl sub_806FAB0
	cmp r0, #0
	beq _08053C9A
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_08053C9A:
	ldr r4, _08053CEC  @ gUnknown_02000038
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	movs r0, #0
	bl BG_SetPosition
	ldrh r0, [r4]
	negs r0, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	negs r1, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl EkrGauge_80511E4
	ldrh r0, [r4]
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	negs r1, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_8051B5C
_08053CCE:
	adds r0, r7, #0
	bl Proc_Delete
	b _08053F02
	.align 2, 0
_08053CD8: .4byte gUnknown_0201FB0C
_08053CDC: .4byte gUnknown_0201FADC
_08053CE0: .4byte gUnknown_02000028
_08053CE4: .4byte gUnknown_0200002C
_08053CE8: .4byte gUnknown_02017740
_08053CEC: .4byte gUnknown_02000038
_08053CF0:
	movs r6, #0x2c
	ldrsh r4, [r7, r6]
	cmp r4, #0
	bne _08053D1C
	ldr r0, [r7, #0x64]
	cmp r0, #0
	beq _08053D1C
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	adds r1, r0, #0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08053D70  @ gUnknown_02023F68
	adds r0, r0, r1
	str r4, [sp]
	movs r1, #0xf
	movs r2, #5
	movs r3, #0
	bl FillBGRect
_08053D1C:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r2, #0
	ldrsh r4, [r0, r2]
	movs r3, #2
	ldrsh r5, [r0, r3]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_8052214
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	ldr r0, [r7, #0x64]
	cmp r0, #0
	beq _08053D80
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	ldr r1, _08053D74  @ gUnknown_0201FB0C
	ldr r1, [r1]
	ldr r2, _08053D78  @ gUnknown_02000030
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	subs r1, r1, r0
	ldr r3, [r7, #0x64]
	ldr r2, _08053D7C  @ gUnknown_02017760
	ldrh r0, [r2]
	ldrh r6, [r7, #0x36]
	adds r0, r0, r6
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	strh r0, [r3, #2]
	ldrh r0, [r7, #0x3e]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	strh r0, [r3, #4]
	b _08053D8C
	.align 2, 0
_08053D70: .4byte gUnknown_02023F68
_08053D74: .4byte gUnknown_0201FB0C
_08053D78: .4byte gUnknown_02000030
_08053D7C: .4byte gUnknown_02017760
_08053D80:
	ldr r0, _08053E40  @ gUnknown_02017760
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	movs r0, #2
	bl BG_SetPosition
_08053D8C:
	adds r0, r7, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _08053E04
	bl sub_806FAB0
	cmp r0, #0
	beq _08053DAE
	negs r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	movs r0, #3
	bl BG_SetPosition
_08053DAE:
	ldr r5, _08053E40  @ gUnknown_02017760
	ldr r4, _08053E44  @ gUnknown_02000038
	ldrh r1, [r4]
	ldrh r0, [r5]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	ldrh r3, [r5, #2]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	bl BG_SetPosition
	ldrh r0, [r4]
	ldrh r6, [r5]
	adds r0, r0, r6
	negs r0, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	ldrh r2, [r5, #2]
	adds r1, r1, r2
	negs r1, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl EkrGauge_80511E4
	ldrh r0, [r4]
	ldrh r3, [r5]
	adds r0, r0, r3
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	ldrh r5, [r5, #2]
	adds r1, r1, r5
	negs r1, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_8051B5C
_08053E04:
	bl sub_806FAB0
	cmp r0, #0
	beq _08053E18
	ldr r0, _08053E40  @ gUnknown_02017760
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	movs r0, #3
	bl BG_SetPosition
_08053E18:
	bl sub_806FAB0
	cmp r0, #0
	beq _08053E54
	ldr r4, _08053E48  @ gUnknown_02000028
	mov ip, r4
	movs r5, #0
	ldrsh r1, [r4, r5]
	ldr r2, _08053E40  @ gUnknown_02017760
	movs r6, #0
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	ldr r4, _08053E4C  @ gUnknown_0201FB0C
	ldr r0, [r4]
	subs r6, r1, r0
	ldr r3, _08053E50  @ gUnknown_0200002C
	movs r0, #0
	ldrsh r1, [r3, r0]
	b _08053E70
	.align 2, 0
_08053E40: .4byte gUnknown_02017760
_08053E44: .4byte gUnknown_02000038
_08053E48: .4byte gUnknown_02000028
_08053E4C: .4byte gUnknown_0201FB0C
_08053E50: .4byte gUnknown_0200002C
_08053E54:
	ldr r6, _08053EBC  @ gUnknown_02000028
	mov ip, r6
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r2, _08053EC0  @ gUnknown_02017760
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r1, r1, r0
	ldr r4, _08053EC4  @ gUnknown_0201FB0C
	ldr r0, [r4]
	subs r6, r1, r0
	ldr r3, _08053EC8  @ gUnknown_0200002C
	movs r5, #0
	ldrsh r1, [r3, r5]
_08053E70:
	movs r5, #2
	ldrsh r0, [r2, r5]
	subs r1, r1, r0
	mov r8, r1
	mov r5, ip
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r5, #0
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	ldr r1, [r4]
	subs r4, r0, r1
	movs r0, #2
	ldrsh r1, [r3, r0]
	movs r3, #2
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
	ldr r0, _08053ECC  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08053ED0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_80559F0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_80559F0
	b _08053F02
	.align 2, 0
_08053EBC: .4byte gUnknown_02000028
_08053EC0: .4byte gUnknown_02017760
_08053EC4: .4byte gUnknown_0201FB0C
_08053EC8: .4byte gUnknown_0200002C
_08053ECC: .4byte gUnknown_0203E120
_08053ED0:
	cmp r0, #0
	blt _08053F02
	cmp r0, #2
	bgt _08053F02
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08053EF4
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r4, r8
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_80559F0
	b _08053F02
_08053EF4:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_80559F0
_08053F02:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START StartSpellBG_FLASH
StartSpellBG_FLASH: @ 0x08053F10
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08053F40  @ gUnknown_085B98CC
	movs r1, #0
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	movs r0, #1
	negs r0, r0
	str r0, [sp]
	ldr r1, _08053F44  @ gUnknown_020165C8
	ldr r2, _08053F48  @ 0x01000100
	mov r0, sp
	bl CpuFastSet
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053F40: .4byte gUnknown_085B98CC
_08053F44: .4byte gUnknown_020165C8
_08053F48: .4byte 0x01000100

	THUMB_FUNC_START sub_8053F4C
sub_8053F4C: @ 0x08053F4C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08053F7C  @ gUnknown_085B98CC
	movs r1, #0
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	ldr r0, _08053F80  @ 0x001F001F
	str r0, [sp]
	ldr r1, _08053F84  @ gUnknown_020165C8
	ldr r2, _08053F88  @ 0x01000100
	mov r0, sp
	bl CpuFastSet
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053F7C: .4byte gUnknown_085B98CC
_08053F80: .4byte 0x001F001F
_08053F84: .4byte gUnknown_020165C8
_08053F88: .4byte 0x01000100

	THUMB_FUNC_START sub_8053F8C
sub_8053F8C: @ 0x08053F8C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08053FB8  @ gUnknown_085B98CC
	movs r1, #0
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	str r1, [sp]
	ldr r1, _08053FBC  @ gUnknown_020165C8
	ldr r2, _08053FC0  @ 0x01000100
	mov r0, sp
	bl CpuFastSet
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053FB8: .4byte gUnknown_085B98CC
_08053FBC: .4byte gUnknown_020165C8
_08053FC0: .4byte 0x01000100

	THUMB_FUNC_START sub_8053FC4
sub_8053FC4: @ 0x08053FC4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08053FE0  @ gUnknown_085B98CC
	movs r1, #0
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08053FE0: .4byte gUnknown_085B98CC

	THUMB_FUNC_START sub_8053FE4
sub_8053FE4: @ 0x08053FE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08054018  @ gUnknown_020165C8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _08054012
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08054012:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054018: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_805401C
sub_805401C: @ 0x0805401C
	push {r4, lr}
	adds r4, r0, #0
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8054030
sub_8054030: @ 0x08054030
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _08054050  @ gUnknown_085B98F4
	movs r1, #0
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	strh r6, [r0, #0x30]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054050: .4byte gUnknown_085B98F4

	THUMB_FUNC_START sub_8054054
sub_8054054: @ 0x08054054
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080540A8  @ gPaletteBuffer
	ldr r4, _080540AC  @ gUnknown_020165C8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_807132C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	cmp r0, r1
	ble _080540A0
	movs r0, #0
	strh r0, [r6, #0x2c]
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_080540A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080540A8: .4byte gPaletteBuffer
_080540AC: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_80540B0
sub_80540B0: @ 0x080540B0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_8012DCC
	adds r6, r0, #0
	ldr r0, _08054118  @ gPaletteBuffer
	ldr r4, _0805411C  @ gUnknown_020165C8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_807132C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r7, r2]
	cmp r0, r1
	ble _08054110
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08054110:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054118: .4byte gPaletteBuffer
_0805411C: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_8054120
sub_8054120: @ 0x08054120
	push {r4, lr}
	adds r4, r0, #0
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8054134
sub_8054134: @ 0x08054134
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _08054154  @ gUnknown_085B991C
	movs r1, #0
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	strh r6, [r0, #0x30]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054154: .4byte gUnknown_085B991C

	THUMB_FUNC_START sub_8054158
sub_8054158: @ 0x08054158
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080541AC  @ gPaletteBuffer
	ldr r4, _080541B0  @ gUnknown_020165C8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0x10
	bl sub_807132C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	cmp r0, r1
	ble _080541A4
	movs r0, #0
	strh r0, [r6, #0x2c]
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_080541A4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080541AC: .4byte gPaletteBuffer
_080541B0: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_80541B4
sub_80541B4: @ 0x080541B4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_8012DCC
	adds r6, r0, #0
	ldr r0, _0805421C  @ gPaletteBuffer
	ldr r4, _08054220  @ gUnknown_020165C8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_807132C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r7, r2]
	cmp r0, r1
	ble _08054214
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08054214:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805421C: .4byte gPaletteBuffer
_08054220: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_8054224
sub_8054224: @ 0x08054224
	push {r4, lr}
	adds r4, r0, #0
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8054238
sub_8054238: @ 0x08054238
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _08054258  @ gUnknown_085B9944
	movs r1, #0
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	strh r6, [r0, #0x30]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054258: .4byte gUnknown_085B9944

	THUMB_FUNC_START sub_805425C
sub_805425C: @ 0x0805425C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080542B0  @ gPaletteBuffer
	ldr r4, _080542B4  @ gUnknown_020165C8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_80712B0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	cmp r0, r1
	ble _080542A8
	movs r0, #0
	strh r0, [r6, #0x2c]
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_080542A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080542B0: .4byte gPaletteBuffer
_080542B4: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_80542B8
sub_80542B8: @ 0x080542B8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_8012DCC
	adds r6, r0, #0
	ldr r0, _08054320  @ gPaletteBuffer
	ldr r4, _08054324  @ gUnknown_020165C8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_80712B0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r7, r2]
	cmp r0, r1
	ble _08054318
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08054318:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054320: .4byte gPaletteBuffer
_08054324: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_8054328
sub_8054328: @ 0x08054328
	push {r4, lr}
	adds r4, r0, #0
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805433C
sub_805433C: @ 0x0805433C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _0805435C  @ gUnknown_085B996C
	movs r1, #0
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	strh r6, [r0, #0x30]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805435C: .4byte gUnknown_085B996C

	THUMB_FUNC_START sub_8054360
sub_8054360: @ 0x08054360
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _080543B4  @ gPaletteBuffer
	ldr r4, _080543B8  @ gUnknown_020165C8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0x10
	bl sub_80712B0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	cmp r0, r1
	ble _080543AC
	movs r0, #0
	strh r0, [r6, #0x2c]
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_080543AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080543B4: .4byte gPaletteBuffer
_080543B8: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_80543BC
sub_80543BC: @ 0x080543BC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_8012DCC
	adds r6, r0, #0
	ldr r0, _08054424  @ gPaletteBuffer
	ldr r4, _08054428  @ gUnknown_020165C8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_80712B0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r7, r2]
	cmp r0, r1
	ble _0805441C
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_0805441C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054424: .4byte gPaletteBuffer
_08054428: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_805442C
sub_805442C: @ 0x0805442C
	push {r4, lr}
	adds r4, r0, #0
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8054440
sub_8054440: @ 0x08054440
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08054474  @ gUnknown_085B9994
	movs r1, #4
	bl Proc_Create
	adds r1, r0, #0
	str r6, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	strh r4, [r1, #0x2e]
	strh r5, [r1, #0x30]
	cmp r4, #0
	bne _0805446E
	adds r0, r1, #0
	bl Proc_ClearNativeCallback
_0805446E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054474: .4byte gUnknown_085B9994

	THUMB_FUNC_START sub_8054478
sub_8054478: @ 0x08054478
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	blt _08054494
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_08054494:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8054498
sub_8054498: @ 0x08054498
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080544D4
	ldr r0, _080544B8  @ gUnknown_0203E1AC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x50
	bgt _080544C4
	ldr r0, _080544BC  @ gUnknown_08802B84
	ldr r1, _080544C0  @ gUnknown_02022C08
	b _080544E2
	.align 2, 0
_080544B8: .4byte gUnknown_0203E1AC
_080544BC: .4byte gUnknown_08802B84
_080544C0: .4byte gUnknown_02022C08
_080544C4:
	ldr r0, _080544CC  @ gUnknown_08802C84
	ldr r1, _080544D0  @ gUnknown_02022C08
	b _080544E2
	.align 2, 0
_080544CC: .4byte gUnknown_08802C84
_080544D0: .4byte gUnknown_02022C08
_080544D4:
	ldr r0, _080544EC  @ gUnknown_0203E1AC
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0x50
	bgt _080544F8
	ldr r0, _080544F0  @ gUnknown_08802B84
	ldr r1, _080544F4  @ gUnknown_02022C28
_080544E2:
	movs r2, #0x10
	bl CpuSet
	b _08054502
	.align 2, 0
_080544EC: .4byte gUnknown_0203E1AC
_080544F0: .4byte gUnknown_08802B84
_080544F4: .4byte gUnknown_02022C28
_080544F8:
	ldr r0, _08054524  @ gUnknown_08802C84
	ldr r1, _08054528  @ gUnknown_02022C28
	movs r2, #0x10
	bl CpuSet
_08054502:
	bl EnablePaletteSync
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _0805451E
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805451E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054524: .4byte gUnknown_08802C84
_08054528: .4byte gUnknown_02022C28

	THUMB_FUNC_START sub_805452C
sub_805452C: @ 0x0805452C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805456C
	ldr r0, _08054554  @ gUnknown_0203E1AC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x50
	bgt _08054564
	ldr r0, _08054558  @ gUnknown_0203E114
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #5
	ldr r1, _0805455C  @ gUnknown_08802B04
	adds r0, r0, r1
	ldr r1, _08054560  @ gUnknown_02022C08
	b _08054584
	.align 2, 0
_08054554: .4byte gUnknown_0203E1AC
_08054558: .4byte gUnknown_0203E114
_0805455C: .4byte gUnknown_08802B04
_08054560: .4byte gUnknown_02022C08
_08054564:
	ldr r0, _08054568  @ gUnknown_08802C84
	b _08054582
	.align 2, 0
_08054568: .4byte gUnknown_08802C84
_0805456C:
	ldr r0, _0805458C  @ gUnknown_0203E1AC
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0x50
	bgt _0805459C
	ldr r0, _08054590  @ gUnknown_0203E114
	movs r1, #2
	ldrsh r0, [r0, r1]
	lsls r0, r0, #5
	ldr r1, _08054594  @ gUnknown_08802B04
	adds r0, r0, r1
_08054582:
	ldr r1, _08054598  @ gUnknown_02022C28
_08054584:
	movs r2, #0x10
	bl CpuSet
	b _080545A6
	.align 2, 0
_0805458C: .4byte gUnknown_0203E1AC
_08054590: .4byte gUnknown_0203E114
_08054594: .4byte gUnknown_08802B04
_08054598: .4byte gUnknown_02022C28
_0805459C:
	ldr r0, _080545B8  @ gUnknown_08802C84
	ldr r1, _080545BC  @ gUnknown_02022C28
	movs r2, #0x10
	bl CpuSet
_080545A6:
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080545B8: .4byte gUnknown_08802C84
_080545BC: .4byte gUnknown_02022C28

	THUMB_FUNC_START sub_80545C0
sub_80545C0: @ 0x080545C0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, _0805467C  @ gUnknown_0201777C
	ldr r0, _08054680  @ gUnknown_085B99C4
	movs r1, #3
	bl Proc_Create
	str r0, [r4]
	str r5, [r0, #0x5c]
	movs r3, #0
	movs r2, #0
	strh r2, [r0, #0x2c]
	str r2, [r0, #0x44]
	ldr r1, _08054684  @ gUnknown_080DAC58
	str r1, [r0, #0x48]
	str r2, [r0, #0x54]
	strh r2, [r0, #0x2e]
	str r2, [r0, #0x4c]
	ldr r1, _08054688  @ gUnknown_080DAC82
	str r1, [r0, #0x50]
	str r2, [r0, #0x58]
	adds r0, #0x29
	strb r3, [r0]
	ldr r5, _0805468C  @ gUnknown_0203E114
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #5
	ldr r1, _08054690  @ gUnknown_08802B04
	mov sl, r1
	add r0, sl
	ldr r6, _08054694  @ gUnknown_0201F948
	adds r1, r6, #0
	movs r2, #0x10
	bl sub_80714DC
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #5
	ldr r1, _08054698  @ gUnknown_08802BC4
	mov r9, r1
	add r0, r9
	ldr r4, _0805469C  @ gUnknown_0201F978
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_80714DC
	ldr r2, _080546A0  @ gUnknown_0201F9A8
	movs r0, #5
	mov r8, r0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #0x10
	bl sub_8071574
	movs r1, #2
	ldrsh r0, [r5, r1]
	lsls r0, r0, #5
	add r0, sl
	ldr r6, _080546A4  @ gUnknown_0201FA08
	adds r1, r6, #0
	movs r2, #0x10
	bl sub_80714DC
	movs r1, #2
	ldrsh r0, [r5, r1]
	lsls r0, r0, #5
	add r0, r9
	ldr r4, _080546A8  @ gUnknown_0201FA38
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_80714DC
	ldr r2, _080546AC  @ gUnknown_0201FA68
	mov r0, r8
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #0x10
	bl sub_8071574
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805467C: .4byte gUnknown_0201777C
_08054680: .4byte gUnknown_085B99C4
_08054684: .4byte gUnknown_080DAC58
_08054688: .4byte gUnknown_080DAC82
_0805468C: .4byte gUnknown_0203E114
_08054690: .4byte gUnknown_08802B04
_08054694: .4byte gUnknown_0201F948
_08054698: .4byte gUnknown_08802BC4
_0805469C: .4byte gUnknown_0201F978
_080546A0: .4byte gUnknown_0201F9A8
_080546A4: .4byte gUnknown_0201FA08
_080546A8: .4byte gUnknown_0201FA38
_080546AC: .4byte gUnknown_0201FA68

	THUMB_FUNC_START sub_80546B0
sub_80546B0: @ 0x080546B0
	push {lr}
	ldr r0, _080546C0  @ gUnknown_0201777C
	ldr r0, [r0]
	bl Proc_Delete
	pop {r0}
	bx r0
	.align 2, 0
_080546C0: .4byte gUnknown_0201777C

	THUMB_FUNC_START sub_80546C4
sub_80546C4: @ 0x080546C4
	ldr r0, _080546D0  @ gUnknown_0201777C
	ldr r0, [r0]
	adds r0, #0x29
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_080546D0: .4byte gUnknown_0201777C

	THUMB_FUNC_START sub_80546D4
sub_80546D4: @ 0x080546D4
	ldr r0, _080546E0  @ gUnknown_0201777C
	ldr r0, [r0]
	adds r0, #0x29
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_080546E0: .4byte gUnknown_0201777C

	THUMB_FUNC_START sub_80546E4
sub_80546E4: @ 0x080546E4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	beq _080547CC
	adds r0, r4, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0805470A
	str r0, [r4, #0x54]
_0805470A:
	adds r0, r4, #0
	adds r0, #0x2e
	adds r1, r4, #0
	adds r1, #0x4c
	ldr r2, [r4, #0x50]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08054722
	str r0, [r4, #0x58]
_08054722:
	ldr r0, _0805474C  @ gUnknown_0203E1AC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x50
	bgt _08054760
	ldr r2, _08054750  @ gUnknown_0201F948
	ldr r3, _08054754  @ gUnknown_0201F978
	ldr r5, _08054758  @ gUnknown_0201F9A8
	ldr r0, _0805475C  @ gUnknown_02022C08
	movs r1, #0x10
	str r1, [sp]
	ldr r1, [r4, #0x54]
	str r1, [sp, #4]
	movs r1, #5
	str r1, [sp, #8]
	adds r1, r2, #0
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_80715F4
	b _08054770
	.align 2, 0
_0805474C: .4byte gUnknown_0203E1AC
_08054750: .4byte gUnknown_0201F948
_08054754: .4byte gUnknown_0201F978
_08054758: .4byte gUnknown_0201F9A8
_0805475C: .4byte gUnknown_02022C08
_08054760:
	ldr r0, [r4, #0x58]
	lsls r0, r0, #5
	ldr r1, _0805479C  @ gUnknown_08802C84
	adds r0, r0, r1
	ldr r1, _080547A0  @ gUnknown_02022C08
	movs r2, #8
	bl CpuFastSet
_08054770:
	ldr r0, _080547A4  @ gUnknown_0203E1AC
	movs r1, #2
	ldrsh r0, [r0, r1]
	cmp r0, #0x50
	bgt _080547B8
	ldr r2, _080547A8  @ gUnknown_0201FA08
	ldr r3, _080547AC  @ gUnknown_0201FA38
	ldr r5, _080547B0  @ gUnknown_0201FA68
	ldr r0, _080547B4  @ gUnknown_02022C28
	movs r1, #0x10
	str r1, [sp]
	ldr r1, [r4, #0x54]
	str r1, [sp, #4]
	movs r1, #5
	str r1, [sp, #8]
	adds r1, r2, #0
	adds r2, r3, #0
	adds r3, r5, #0
	bl sub_80715F4
	b _080547C8
	.align 2, 0
_0805479C: .4byte gUnknown_08802C84
_080547A0: .4byte gUnknown_02022C08
_080547A4: .4byte gUnknown_0203E1AC
_080547A8: .4byte gUnknown_0201FA08
_080547AC: .4byte gUnknown_0201FA38
_080547B0: .4byte gUnknown_0201FA68
_080547B4: .4byte gUnknown_02022C28
_080547B8:
	ldr r0, [r4, #0x58]
	lsls r0, r0, #5
	ldr r1, _080547D4  @ gUnknown_08802C84
	adds r0, r0, r1
	ldr r1, _080547D8  @ gUnknown_02022C28
	movs r2, #8
	bl CpuFastSet
_080547C8:
	bl EnablePaletteSync
_080547CC:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080547D4: .4byte gUnknown_08802C84
_080547D8: .4byte gUnknown_02022C28

	THUMB_FUNC_START sub_80547DC
sub_80547DC: @ 0x080547DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08054814  @ gUnknown_085B99E4
	movs r1, #4
	bl Proc_Create
	str r6, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r4, [r0, #0x2e]
	strh r5, [r0, #0x30]
	adds r0, #0x29
	mov r1, r8
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054814: .4byte gUnknown_085B99E4

	THUMB_FUNC_START sub_8054818
sub_8054818: @ 0x08054818
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _0805487A
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08054854
	ldr r0, _0805484C  @ gUnknown_08802D24
	ldr r1, _08054850  @ gUnknown_02022B88
	movs r2, #8
	bl CpuFastSet
	ldr r0, [r4, #0x5c]
	bl sub_807027C
	b _08054864
	.align 2, 0
_0805484C: .4byte gUnknown_08802D24
_08054850: .4byte gUnknown_02022B88
_08054854:
	ldr r0, _08054880  @ gUnknown_08802D24
	ldr r1, _08054884  @ gUnknown_02022BC8
	movs r2, #8
	bl CpuFastSet
	ldr r0, [r4, #0x5c]
	bl sub_807027C
_08054864:
	bl EnablePaletteSync
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0805487A
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805487A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054880: .4byte gUnknown_08802D24
_08054884: .4byte gUnknown_02022BC8

	THUMB_FUNC_START sub_8054888
sub_8054888: @ 0x08054888
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080548B4
	ldr r0, _080548AC  @ gUnknown_02000054
	ldr r0, [r0]
	ldr r1, _080548B0  @ gUnknown_02022B88
	movs r2, #8
	bl CpuFastSet
	ldr r0, [r4, #0x5c]
	bl sub_807035C
	b _080548C6
	.align 2, 0
_080548AC: .4byte gUnknown_02000054
_080548B0: .4byte gUnknown_02022B88
_080548B4:
	ldr r0, _080548D8  @ gUnknown_02000054
	ldr r0, [r0, #4]
	ldr r1, _080548DC  @ gUnknown_02022BC8
	movs r2, #8
	bl CpuFastSet
	ldr r0, [r4, #0x5c]
	bl sub_807035C
_080548C6:
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080548D8: .4byte gUnknown_02000054
_080548DC: .4byte gUnknown_02022BC8

	THUMB_FUNC_START sub_80548E0
sub_80548E0: @ 0x080548E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _0805492C  @ gUnknown_085B9A0C
	movs r1, #4
	bl Proc_Create
	str r6, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r4, [r0, #0x2e]
	strh r5, [r0, #0x30]
	adds r0, #0x29
	mov r1, r8
	strb r1, [r0]
	ldrh r0, [r6, #0x10]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r6, #0x10]
	ldrh r1, [r6]
	movs r0, #8
	orrs r0, r1
	strh r0, [r6]
	movs r0, #2
	strh r0, [r6, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805492C: .4byte gUnknown_085B9A0C

	THUMB_FUNC_START sub_8054930
sub_8054930: @ 0x08054930
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	blt _080549A8
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805496C
	ldr r0, _08054964  @ gUnknown_08802D24
	ldr r1, _08054968  @ gUnknown_02022B88
	movs r2, #8
	bl CpuFastSet
	ldr r0, [r4, #0x5c]
	bl sub_807027C
	b _0805497C
	.align 2, 0
_08054964: .4byte gUnknown_08802D24
_08054968: .4byte gUnknown_02022B88
_0805496C:
	ldr r0, _080549B0  @ gUnknown_08802D24
	ldr r1, _080549B4  @ gUnknown_02022BC8
	movs r2, #8
	bl CpuFastSet
	ldr r0, [r4, #0x5c]
	bl sub_807027C
_0805497C:
	bl EnablePaletteSync
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r2, #0x30
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _080549A8
	ldr r1, [r4, #0x5c]
	ldrh r2, [r1, #0x10]
	movs r0, #0x40
	movs r3, #0
	orrs r0, r2
	strh r0, [r1, #0x10]
	ldrh r2, [r1]
	ldr r0, _080549B8  @ 0x0000FFF7
	ands r0, r2
	strh r0, [r1]
	strh r3, [r1, #6]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080549A8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080549B0: .4byte gUnknown_08802D24
_080549B4: .4byte gUnknown_02022BC8
_080549B8: .4byte 0x0000FFF7

	THUMB_FUNC_START sub_80549BC
sub_80549BC: @ 0x080549BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080549E8
	ldr r0, _080549E0  @ gUnknown_02000054
	ldr r0, [r0]
	ldr r1, _080549E4  @ gUnknown_02022B88
	movs r2, #8
	bl CpuFastSet
	ldr r0, [r4, #0x5c]
	bl sub_807035C
	b _080549FA
	.align 2, 0
_080549E0: .4byte gUnknown_02000054
_080549E4: .4byte gUnknown_02022B88
_080549E8:
	ldr r0, _08054A14  @ gUnknown_02000054
	ldr r0, [r0, #4]
	ldr r1, _08054A18  @ gUnknown_02022BC8
	movs r2, #8
	bl CpuFastSet
	ldr r0, [r4, #0x5c]
	bl sub_807035C
_080549FA:
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	ldr r2, [r4, #0x5c]
	ldrh r1, [r2, #0x10]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054A14: .4byte gUnknown_02000054
_08054A18: .4byte gUnknown_02022BC8

	THUMB_FUNC_START NewEfxStatusUnit
NewEfxStatusUnit: @ 0x08054A1C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08054A34
	ldr r0, _08054A30  @ gUnknown_0203E188
	b _08054A36
	.align 2, 0
_08054A30: .4byte gUnknown_0203E188
_08054A34:
	ldr r0, _08054ABC  @ gUnknown_0203E18C
_08054A36:
	ldr r6, [r0]
	ldr r0, _08054AC0  @ gUnknown_085B9A34
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	adds r0, #0x29
	movs r1, #0
	strb r1, [r0]
	str r5, [r4, #0x5c]
	strh r1, [r4, #0x2c]
	str r1, [r4, #0x44]
	ldr r0, _08054AC4  @ gUnknown_080DACDA
	str r0, [r4, #0x48]
	adds r0, r6, #0
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [r4, #0x4c]
	ldr r0, _08054AC8  @ gUnknown_0203E0FC
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #1
	bne _08054A6A
	str r1, [r4, #0x4c]
_08054A6A:
	str r1, [r4, #0x50]
	strh r1, [r4, #0x36]
	strh r1, [r4, #0x34]
	strh r1, [r4, #0x32]
	adds r0, r5, #0
	bl GetAISSubjectId
	ldr r1, _08054ACC  @ gUnknown_0201776C
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	adds r0, r5, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08054AD8
	ldr r5, _08054AD0  @ gUnknown_02000054
	ldr r0, [r5]
	ldr r4, _08054AD4  @ gUnknown_020222A8
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_80714DC
	ldr r0, [r5]
	adds r5, r4, #0
	adds r5, #0x30
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_807151C
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r2, r4, r0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0x10
	bl sub_8071574
	b _08054B08
	.align 2, 0
_08054ABC: .4byte gUnknown_0203E18C
_08054AC0: .4byte gUnknown_085B9A34
_08054AC4: .4byte gUnknown_080DACDA
_08054AC8: .4byte gUnknown_0203E0FC
_08054ACC: .4byte gUnknown_0201776C
_08054AD0: .4byte gUnknown_02000054
_08054AD4: .4byte gUnknown_020222A8
_08054AD8:
	ldr r5, _08054B10  @ gUnknown_02000054
	ldr r0, [r5, #4]
	ldr r4, _08054B14  @ gUnknown_02022308
	adds r1, r4, #0
	movs r2, #0x10
	bl sub_80714DC
	ldr r0, [r5, #4]
	adds r5, r4, #0
	adds r5, #0x30
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_807151C
	movs r0, #0xa8
	lsls r0, r0, #2
	adds r2, r4, r0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0x10
	bl sub_8071574
_08054B08:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054B10: .4byte gUnknown_02000054
_08054B14: .4byte gUnknown_02022308

	THUMB_FUNC_START sub_8054B18
sub_8054B18: @ 0x08054B18
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08054B50  @ gUnknown_0201776C
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _08054B4A
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl Proc_Delete
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0
	str r1, [r0]
_08054B4A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08054B50: .4byte gUnknown_0201776C

	THUMB_FUNC_START DeleteEach6C_efxStatusUnit
DeleteEach6C_efxStatusUnit: @ 0x08054B54
	push {lr}
	ldr r0, _08054B60  @ gUnknown_085B9A34
	bl Proc_DeleteAllWithScript
	pop {r0}
	bx r0
	.align 2, 0
_08054B60: .4byte gUnknown_085B9A34

	THUMB_FUNC_START sub_8054B64
sub_8054B64: @ 0x08054B64
	push {r4, lr}
	ldr r4, _08054B80  @ gUnknown_0201776C
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x29
	movs r1, #1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054B80: .4byte gUnknown_0201776C

	THUMB_FUNC_START sub_8054B84
sub_8054B84: @ 0x08054B84
	push {r4, lr}
	ldr r4, _08054BA0  @ gUnknown_0201776C
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r0, #0x29
	movs r1, #0
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054BA0: .4byte gUnknown_0201776C

	THUMB_FUNC_START sub_8054BA4
sub_8054BA4: @ 0x08054BA4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r4, _08054BD0  @ gUnknown_0201776C
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r5, [r0, #0x4c]
	cmp r5, #0
	bne _08054BC8
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8054BF0
_08054BC8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054BD0: .4byte gUnknown_0201776C

	THUMB_FUNC_START sub_8054BD4
sub_8054BD4: @ 0x08054BD4
	push {r4, lr}
	ldr r4, _08054BEC  @ gUnknown_0201776C
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x4c]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08054BEC: .4byte gUnknown_0201776C

	THUMB_FUNC_START sub_8054BF0
sub_8054BF0: @ 0x08054BF0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r7, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08054C58
	ldr r0, _08054C4C  @ gUnknown_02000054
	ldr r0, [r0]
	ldr r4, _08054C50  @ gUnknown_02022B88
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r0, _08054C54  @ 0xFFFFFD20
	adds r4, r4, r0
	str r5, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #1
	adds r3, r7, #0
	bl sub_80713B0
	bl sub_806FA98
	cmp r0, #0
	beq _08054C7A
	mov r0, r8
	bl sub_807035C
	str r5, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	adds r3, r7, #0
	bl sub_80713B0
	b _08054C7A
	.align 2, 0
_08054C4C: .4byte gUnknown_02000054
_08054C50: .4byte gUnknown_02022B88
_08054C54: .4byte 0xFFFFFD20
_08054C58:
	ldr r0, _08054C88  @ gUnknown_02000054
	ldr r0, [r0, #4]
	ldr r4, _08054C8C  @ gUnknown_02022BC8
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r0, _08054C90  @ 0xFFFFFCE0
	adds r4, r4, r0
	str r5, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #1
	adds r3, r7, #0
	bl sub_80713B0
_08054C7A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08054C88: .4byte gUnknown_02000054
_08054C8C: .4byte gUnknown_02022BC8
_08054C90: .4byte 0xFFFFFCE0

	THUMB_FUNC_START sub_8054C94
sub_8054C94: @ 0x08054C94
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl sub_8054BD4
	cmp r0, #0
	bne _08054CA6
	b _08054E42
_08054CA6:
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _08054CB2
	b _08054E42
_08054CB2:
	ldr r1, [r4, #0x4c]
	ldr r0, [r4, #0x50]
	cmp r1, r0
	beq _08054CC2
	movs r0, #0
	strh r0, [r4, #0x2c]
	str r0, [r4, #0x44]
	str r1, [r4, #0x50]
_08054CC2:
	adds r0, r4, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _08054D5C
	ldr r0, [r4, #0x4c]
	subs r0, #1
	cmp r0, #0xc
	bhi _08054D56
	lsls r0, r0, #2
	ldr r1, _08054CEC  @ _08054CF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054CEC: .4byte _08054CF0
_08054CF0: @ jump table
	.4byte _08054D24 @ case 0
	.4byte _08054D2C @ case 1
	.4byte _08054D56 @ case 2
	.4byte _08054D34 @ case 3
	.4byte _08054D56 @ case 4
	.4byte _08054D56 @ case 5
	.4byte _08054D56 @ case 6
	.4byte _08054D56 @ case 7
	.4byte _08054D56 @ case 8
	.4byte _08054D56 @ case 9
	.4byte _08054D3A @ case 10
	.4byte _08054D44 @ case 11
	.4byte _08054D3A @ case 12
_08054D24:
	movs r0, #0
	strh r2, [r4, #0x32]
	strh r0, [r4, #0x34]
	b _08054D5A
_08054D2C:
	movs r0, #0
	strh r0, [r4, #0x32]
	strh r0, [r4, #0x34]
	b _08054D5A
_08054D34:
	movs r0, #0
	strh r2, [r4, #0x32]
	b _08054D3E
_08054D3A:
	movs r0, #0x10
	strh r0, [r4, #0x32]
_08054D3E:
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	b _08054D5C
_08054D44:
	strh r2, [r4, #0x32]
	strh r2, [r4, #0x34]
	adds r0, r2, #1
	cmp r0, #0
	bge _08054D50
	adds r0, r2, #4
_08054D50:
	asrs r0, r0, #2
	strh r0, [r4, #0x36]
	b _08054D5C
_08054D56:
	strh r2, [r4, #0x32]
	strh r2, [r4, #0x34]
_08054D5A:
	strh r2, [r4, #0x36]
_08054D5C:
	ldr r0, [r4, #0x4c]
	subs r0, #1
	cmp r0, #0xc
	bhi _08054E3E
	lsls r0, r0, #2
	ldr r1, _08054D70  @ _08054D74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054D70: .4byte _08054D74
_08054D74: @ jump table
	.4byte _08054DA8 @ case 0
	.4byte _08054DA8 @ case 1
	.4byte _08054E2C @ case 2
	.4byte _08054DA8 @ case 3
	.4byte _08054E3E @ case 4
	.4byte _08054E3E @ case 5
	.4byte _08054E3E @ case 6
	.4byte _08054E3E @ case 7
	.4byte _08054E3E @ case 8
	.4byte _08054E3E @ case 9
	.4byte _08054DC4 @ case 10
	.4byte _08054DB0 @ case 11
	.4byte _08054DC4 @ case 12
_08054DA8:
	ldr r0, [r4, #0x5c]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	b _08054DB6
_08054DB0:
	ldr r0, [r4, #0x5c]
	movs r6, #0x32
	ldrsh r1, [r4, r6]
_08054DB6:
	movs r3, #0x34
	ldrsh r2, [r4, r3]
	movs r5, #0x36
	ldrsh r3, [r4, r5]
	bl sub_8054BF0
	b _08054E3E
_08054DC4:
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08054DF8
	ldr r0, _08054DF0  @ gUnknown_02022B88
	ldr r1, _08054DF4  @ gUnknown_020222A8
	adds r2, r1, #0
	adds r2, #0x30
	movs r6, #0xc0
	lsls r6, r6, #1
	adds r3, r1, r6
	movs r5, #0x10
	str r5, [sp]
	movs r6, #0x32
	ldrsh r4, [r4, r6]
	str r4, [sp, #4]
	str r5, [sp, #8]
	bl sub_80715F4
	b _08054E16
	.align 2, 0
_08054DF0: .4byte gUnknown_02022B88
_08054DF4: .4byte gUnknown_020222A8
_08054DF8:
	ldr r0, _08054E24  @ gUnknown_02022BC8
	ldr r1, _08054E28  @ gUnknown_02022308
	adds r2, r1, #0
	adds r2, #0x30
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r3, r1, r5
	movs r5, #0x10
	str r5, [sp]
	movs r6, #0x32
	ldrsh r4, [r4, r6]
	str r4, [sp, #4]
	str r5, [sp, #8]
	bl sub_80715F4
_08054E16:
	bl RefreshFogAndUnitMaps
	bl SMS_UpdateFromGameData
	bl MU_EndAll
	b _08054E3E
	.align 2, 0
_08054E24: .4byte gUnknown_02022BC8
_08054E28: .4byte gUnknown_02022308
_08054E2C:
	ldr r0, [r4, #0x5c]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r3, #0x34
	ldrsh r2, [r4, r3]
	movs r5, #0x36
	ldrsh r3, [r4, r5]
	bl sub_8054BF0
_08054E3E:
	bl EnablePaletteSync
_08054E42:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8054E4C
sub_8054E4C: @ 0x08054E4C
	push {lr}
	ldr r0, [r0, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08054E70
	ldr r0, _08054E68  @ gUnknown_02000054
	ldr r0, [r0]
	ldr r1, _08054E6C  @ gUnknown_02022B88
	movs r2, #8
	bl CpuFastSet
	b _08054E7C
	.align 2, 0
_08054E68: .4byte gUnknown_02000054
_08054E6C: .4byte gUnknown_02022B88
_08054E70:
	ldr r0, _08054E84  @ gUnknown_02000054
	ldr r0, [r0, #4]
	ldr r1, _08054E88  @ gUnknown_02022BC8
	movs r2, #8
	bl CpuFastSet
_08054E7C:
	bl EnablePaletteSync
	pop {r0}
	bx r0
	.align 2, 0
_08054E84: .4byte gUnknown_02000054
_08054E88: .4byte gUnknown_02022BC8

	THUMB_FUNC_START sub_8054E8C
sub_8054E8C: @ 0x08054E8C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08054EC8  @ gUnknown_085B9A5C
	movs r1, #3
	bl Proc_Create
	movs r2, #0
	strh r2, [r0, #0x2c]
	str r2, [r0, #0x44]
	ldr r1, _08054ECC  @ gUnknown_080DAD0A
	str r1, [r0, #0x48]
	str r2, [r0, #0x4c]
	str r2, [r0, #0x50]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	str r4, [r0, #0x54]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	str r5, [r0, #0x58]
	ldr r1, _08054ED0  @ gUnknown_02017774
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08054EC8: .4byte gUnknown_085B9A5C
_08054ECC: .4byte gUnknown_080DAD0A
_08054ED0: .4byte gUnknown_02017774

	THUMB_FUNC_START sub_8054ED4
sub_8054ED4: @ 0x08054ED4
	push {r4, lr}
	ldr r4, _08054EEC  @ gUnknown_02017774
	ldr r0, [r4]
	cmp r0, #0
	beq _08054EE6
	bl Proc_Delete
	movs r0, #0
	str r0, [r4]
_08054EE6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054EEC: .4byte gUnknown_02017774

	THUMB_FUNC_START sub_8054EF0
sub_8054EF0: @ 0x08054EF0
	ldr r0, _08054EFC  @ gUnknown_02017774
	ldr r1, [r0]
	movs r0, #1
	str r0, [r1, #0x50]
	bx lr
	.align 2, 0
_08054EFC: .4byte gUnknown_02017774

	THUMB_FUNC_START sub_8054F00
sub_8054F00: @ 0x08054F00
	ldr r0, _08054F0C  @ gUnknown_02017774
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #0x50]
	bx lr
	.align 2, 0
_08054F0C: .4byte gUnknown_02017774

	THUMB_FUNC_START sub_8054F10
sub_8054F10: @ 0x08054F10
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #1
	beq _08054F6E
	bl ResetIconGraphics_
	adds r0, r4, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08054F36
	str r0, [r4, #0x4c]
_08054F36:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08054F50
	movs r0, #0
	movs r1, #0x1d
	bl LoadIconPalette
	ldr r0, _08054F74  @ gPaletteBuffer
	ldr r3, [r4, #0x4c]
	movs r1, #0x1d
	movs r2, #1
	bl sub_807132C
_08054F50:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _08054F6A
	movs r0, #0
	movs r1, #0x1e
	bl LoadIconPalette
	ldr r0, _08054F74  @ gPaletteBuffer
	ldr r3, [r4, #0x4c]
	movs r1, #0x1e
	movs r2, #1
	bl sub_807132C
_08054F6A:
	bl EnablePaletteSync
_08054F6E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054F74: .4byte gPaletteBuffer

	THUMB_FUNC_START sub_8054F78
sub_8054F78: @ 0x08054F78
	push {r4, lr}
	adds r4, r0, #0
	bl ResetIconGraphics_
	ldr r0, [r4, #0x54]
	cmp r0, #0
	beq _08054F8E
	movs r0, #0
	movs r1, #0x1d
	bl LoadIconPalette
_08054F8E:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _08054F9C
	movs r0, #0
	movs r1, #0x1e
	bl LoadIconPalette
_08054F9C:
	bl EnablePaletteSync
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START NewEfxSpellCast
NewEfxSpellCast: @ 0x08054FA8
	push {r4, r5, lr}
	bl sub_806FAB0
	adds r4, r0, #0
	cmp r4, #0
	bne _08054FF4
	ldr r0, _08054FDC  @ gUnknown_085B9A84
	movs r1, #4
	bl Proc_Create
	adds r5, r0, #0
	adds r0, #0x29
	strb r4, [r0]
	strh r4, [r5, #0x2c]
	movs r0, #4
	strh r0, [r5, #0x2e]
	ldr r0, _08054FE0  @ gUnknown_02017778
	ldr r0, [r0]
	cmp r0, #0
	bne _08054FEC
	ldr r0, _08054FE4  @ gUnknown_02022968
	ldr r1, _08054FE8  @ gUnknown_0201C790
	movs r2, #0x50
	bl CpuFastSet
	b _08054FF0
	.align 2, 0
_08054FDC: .4byte gUnknown_085B9A84
_08054FE0: .4byte gUnknown_02017778
_08054FE4: .4byte gUnknown_02022968
_08054FE8: .4byte gUnknown_0201C790
_08054FEC:
	bl Proc_Delete
_08054FF0:
	ldr r0, _08054FFC  @ gUnknown_02017778
	str r5, [r0]
_08054FF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08054FFC: .4byte gUnknown_02017778

	THUMB_FUNC_START sub_8055000
sub_8055000: @ 0x08055000
	push {lr}
	ldr r0, _08055018  @ gUnknown_02017778
	ldr r0, [r0]
	cmp r0, #0
	beq _08055012
	adds r1, r0, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
_08055012:
	pop {r0}
	bx r0
	.align 2, 0
_08055018: .4byte gUnknown_02017778

	THUMB_FUNC_START sub_805501C
sub_805501C: @ 0x0805501C
	push {lr}
	ldr r1, _08055034  @ gUnknown_02017778
	ldr r0, [r1]
	cmp r0, #0
	beq _0805502E
	movs r0, #0
	str r0, [r1]
	bl Proc_Delete
_0805502E:
	pop {r0}
	bx r0
	.align 2, 0
_08055034: .4byte gUnknown_02017778

	THUMB_FUNC_START sub_8055038
sub_8055038: @ 0x08055038
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r6, r0]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #8
	bl sub_8012DCC
	adds r5, r0, #0
	ldr r0, _08055094  @ gUnknown_0201C790
	ldr r4, _08055098  @ gUnknown_02022968
	adds r1, r4, #0
	movs r2, #0x50
	bl CpuFastSet
	subs r4, #0xc0
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xa
	adds r3, r5, #0
	bl sub_80712B0
	bl EnablePaletteSync
	ldrh r1, [r6, #0x2c]
	adds r1, #1
	strh r1, [r6, #0x2c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x2e
	ldrsh r0, [r6, r2]
	adds r0, #1
	cmp r1, r0
	bne _0805508C
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_0805508C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08055094: .4byte gUnknown_0201C790
_08055098: .4byte gUnknown_02022968

	THUMB_FUNC_START sub_805509C
sub_805509C: @ 0x0805509C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080550D4  @ gUnknown_0201C790
	ldr r4, _080550D8  @ gUnknown_02022968
	adds r1, r4, #0
	movs r2, #0x50
	bl CpuFastSet
	subs r4, #0xc0
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xa
	movs r3, #8
	bl sub_80712B0
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _080550CE
	movs r0, #0
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_080550CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080550D4: .4byte gUnknown_0201C790
_080550D8: .4byte gUnknown_02022968

	THUMB_FUNC_START sub_80550DC
sub_80550DC: @ 0x080550DC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #8
	movs r2, #0
	bl sub_8012DCC
	adds r4, r0, #0
	ldr r7, _08055150  @ gUnknown_0201C790
	ldr r6, _08055154  @ gUnknown_02022968
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x50
	bl CpuFastSet
	adds r0, r6, #0
	subs r0, #0xc0
	movs r1, #6
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_80712B0
	bl EnablePaletteSync
	ldrh r1, [r5, #0x2c]
	adds r1, #1
	strh r1, [r5, #0x2c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	adds r0, #1
	cmp r1, r0
	bne _08055146
	ldr r1, _08055158  @ gUnknown_02017778
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x50
	bl CpuFastSet
	bl EnablePaletteSync
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_08055146:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055150: .4byte gUnknown_0201C790
_08055154: .4byte gUnknown_02022968
_08055158: .4byte gUnknown_02017778

	THUMB_FUNC_START sub_805515C
sub_805515C: @ 0x0805515C
	bx lr

	THUMB_FUNC_START SetSomethingSpellFxToTrue
SetSomethingSpellFxToTrue: @ 0x08055160
	ldr r1, _08055168  @ gUnknown_0201772C
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08055168: .4byte gUnknown_0201772C

	THUMB_FUNC_START SetSomethingSpellFxToFalse
SetSomethingSpellFxToFalse: @ 0x0805516C
	ldr r1, _08055174  @ gUnknown_0201772C
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08055174: .4byte gUnknown_0201772C

	THUMB_FUNC_START ClearBG1Setup
ClearBG1Setup: @ 0x08055178
	push {lr}
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	pop {r0}
	bx r0

	THUMB_FUNC_START ClearBG1
ClearBG1: @ 0x08055188
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _080551A8  @ gBG1TilemapBuffer
	ldr r2, _080551AC  @ 0x01000200
	mov r0, sp
	bl CpuFastSet
	movs r0, #2
	bl BG_EnableSyncByMask
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080551A8: .4byte gBG1TilemapBuffer
_080551AC: .4byte 0x01000200

	THUMB_FUNC_START sub_80551B0
sub_80551B0: @ 0x080551B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r0, #1
	movs r1, #0x10
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_8001ED0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_8001F0C
	ldr r0, _08055268  @ gLCDControlBuffer
	mov ip, r0
	ldrb r0, [r0, #1]
	movs r6, #0x20
	orrs r0, r6
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	mov r0, ip
	adds r0, #0x2d
	strb r4, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r1, #0x2c
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	movs r2, #0x34
	add r2, ip
	mov r8, r2
	ldrb r1, [r2]
	movs r2, #1
	orrs r1, r2
	movs r0, #2
	orrs r1, r0
	movs r5, #4
	orrs r1, r5
	movs r4, #8
	orrs r1, r4
	movs r3, #0x10
	orrs r1, r3
	mov r7, ip
	adds r7, #0x36
	ldrb r0, [r7]
	orrs r0, r2
	movs r2, #3
	negs r2, r2
	ands r0, r2
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	orrs r1, r6
	mov r2, r8
	strb r1, [r2]
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	strb r0, [r7]
	mov r1, ip
	adds r1, #0x3d
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055268: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_805526C
sub_805526C: @ 0x0805526C
	push {lr}
	bl SetDefaultColorEffects
	pop {r0}
	bx r0

	THUMB_FUNC_START ThisMakesTheHPInSpellAnimGoAway
ThisMakesTheHPInSpellAnimGoAway: @ 0x08055278
	push {lr}
	movs r2, #3
	movs r3, #4
	bl sub_8055298
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8055288
sub_8055288: @ 0x08055288
	push {lr}
	movs r2, #5
	movs r3, #5
	bl sub_8055298
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8055298
sub_8055298: @ 0x08055298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r1, #0
	str r2, [sp]
	mov sl, r3
	bl GetAISSubjectId
	cmp r0, #0
	bne _080552C4
	ldr r0, _080552C0  @ gUnknown_02000000
	ldr r7, [r0, #8]
	ldr r1, [r0, #0xc]
	mov r9, r1
	ldr r5, [r0]
	ldr r0, [r0, #4]
	b _080552D0
	.align 2, 0
_080552C0: .4byte gUnknown_02000000
_080552C4:
	ldr r0, _080552E0  @ gUnknown_02000000
	ldr r7, [r0]
	ldr r1, [r0, #4]
	mov r9, r1
	ldr r5, [r0, #8]
	ldr r0, [r0, #0xc]
_080552D0:
	mov r8, r0
	cmp r4, #0
	beq _080552E4
	cmp r4, #1
	bne _080552DC
	b _0805540E
_080552DC:
	b _08055414
	.align 2, 0
_080552E0: .4byte gUnknown_02000000
_080552E4:
	adds r0, r7, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r7, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r5, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08055334
	adds r0, r7, #0
	bl sub_8054BD4
	cmp r0, #0
	bne _08055334
	adds r0, r7, #0
	movs r1, #1
	bl sub_8054BA4
_08055334:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #6
	ands r1, r2
	adds r4, r0, #0
	cmp r1, #0
	beq _08055356
	adds r0, r5, #0
	bl sub_8054BD4
	cmp r0, #0
	bne _08055356
	adds r0, r5, #0
	movs r1, #1
	bl sub_8054BA4
_08055356:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0805536C
	asrs r0, r4, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08055374
_0805536C:
	adds r0, r5, #0
	adds r5, r7, #0
	adds r7, r0, #0
	mov r8, r9
_08055374:
	ldr r4, _080553DC  @ gUnknown_0203E152
	adds r0, r5, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r0, r5, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r4, #1
	adds r0, r5, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	lsls r0, r6, #1
	adds r0, r0, r1
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r1
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r6, r4
	beq _08055402
	adds r0, r5, #0
	bl sub_8052304
	adds r0, r7, #0
	bl sub_805A268
	cmp r0, #1
	bne _080553E0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	bl sub_80539DC
	b _080553EA
	.align 2, 0
_080553DC: .4byte gUnknown_0203E152
_080553E0:
	adds r0, r5, #0
	adds r1, r7, #0
	ldr r2, [sp]
	bl sub_80539DC
_080553EA:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #5
	bl sub_8054440
	adds r0, r5, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_80547DC
	b _08055414
_08055402:
	adds r0, r5, #0
	mov r1, r8
	movs r2, #0
	bl sub_8052B98
	b _08055414
_0805540E:
	adds r0, r5, #0
	bl sub_8052978
_08055414:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8055424
sub_8055424: @ 0x08055424
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r1
	bl GetAISSubjectId
	cmp r0, #0
	bne _08055444
	ldr r0, _08055440  @ gUnknown_02000000
	ldr r7, [r0, #8]
	ldr r5, [r0]
	ldr r0, [r0, #4]
	b _0805544C
	.align 2, 0
_08055440: .4byte gUnknown_02000000
_08055444:
	ldr r0, _080554A4  @ gUnknown_02000000
	ldr r7, [r0]
	ldr r5, [r0, #8]
	ldr r0, [r0, #0xc]
_0805544C:
	mov r8, r0
	ldr r4, _080554A8  @ gUnknown_0203E152
	adds r0, r5, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r6, [r0, r1]
	adds r0, r5, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r4, #1
	adds r0, r5, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	lsls r0, r6, #1
	adds r0, r0, r1
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r1
	bl sub_8058A60
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r0, r9
	cmp r0, #0
	beq _080554AC
	cmp r0, #1
	beq _08055504
	b _0805550A
	.align 2, 0
_080554A4: .4byte gUnknown_02000000
_080554A8: .4byte gUnknown_0203E152
_080554AC:
	cmp r6, r4
	beq _080554EE
	adds r0, r5, #0
	bl sub_80525E8
	adds r0, r7, #0
	bl sub_805A268
	cmp r0, #1
	bne _080554CC
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #4
	bl sub_80539DC
	b _080554D6
_080554CC:
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #3
	bl sub_80539DC
_080554D6:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #5
	bl sub_8054440
	adds r0, r5, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_80547DC
	b _0805550A
_080554EE:
	ldr r1, _08055500  @ gUnknown_02017750
	movs r0, #2
	str r0, [r1]
	adds r0, r5, #0
	mov r1, r8
	movs r2, #1
	bl sub_8052B98
	b _0805550A
	.align 2, 0
_08055500: .4byte gUnknown_02017750
_08055504:
	adds r0, r5, #0
	bl sub_8052978
_0805550A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8055518
sub_8055518: @ 0x08055518
	push {r4, lr}
	adds r4, r1, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08055530
	ldr r0, _0805552C  @ gUnknown_02000000
	ldr r0, [r0]
	b _08055534
	.align 2, 0
_0805552C: .4byte gUnknown_02000000
_08055530:
	ldr r0, _08055540  @ gUnknown_02000000
	ldr r0, [r0, #8]
_08055534:
	cmp r4, #0
	beq _08055544
	cmp r4, #1
	beq _0805554A
	b _0805554E
	.align 2, 0
_08055540: .4byte gUnknown_02000000
_08055544:
	bl sub_8052D8C
	b _0805554E
_0805554A:
	bl sub_8052978
_0805554E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8055554
sub_8055554: @ 0x08055554
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r0, _08055578  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055580
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805557C
	adds r0, r7, #0
	b _08055590
	.align 2, 0
_08055578: .4byte gUnknown_0203E120
_0805557C:
	adds r0, r6, #0
	b _08055590
_08055580:
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805558E
	adds r0, r5, #0
	b _08055590
_0805558E:
	ldr r0, [sp, #0x14]
_08055590:
	movs r1, #0x78
	bl AIS_New
	adds r1, r0, #0
	movs r0, #0xa1
	lsls r0, r0, #6
	strh r0, [r1, #8]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80555B0
sub_80555B0: @ 0x080555B0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r0, _080555D4  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080555DC
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _080555D8
	adds r0, r7, #0
	b _080555EC
	.align 2, 0
_080555D4: .4byte gUnknown_0203E120
_080555D8:
	adds r0, r6, #0
	b _080555EC
_080555DC:
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _080555EA
	adds r0, r5, #0
	b _080555EC
_080555EA:
	ldr r0, [sp, #0x14]
_080555EC:
	movs r1, #0x14
	bl AIS_New
	adds r1, r0, #0
	movs r0, #0xa1
	lsls r0, r0, #6
	strh r0, [r1, #8]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805560C
sub_805560C: @ 0x0805560C
	push {r4, lr}
	sub sp, #8
	adds r3, r0, #0
	ldr r0, _08055640  @ gUnknown_0203E120
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r4, r2, #0
	cmp r0, #0
	bne _08055620
	adds r4, r1, #0
_08055620:
	adds r0, r3, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08055648
	ldr r1, _08055644  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070EC4
	b _0805565C
	.align 2, 0
_08055640: .4byte gUnknown_0203E120
_08055644: .4byte gBG1TilemapBuffer
_08055648:
	ldr r1, _0805566C  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070E94
_0805565C:
	movs r0, #2
	bl BG_EnableSyncByMask
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805566C: .4byte gBG1TilemapBuffer

	THUMB_FUNC_START sub_8055670
sub_8055670: @ 0x08055670
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r0, _0805568C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055694
	ldr r1, _08055690  @ gUnknown_02019790
	adds r0, r3, #0
	bl LZ77UnCompWram
	b _0805569C
	.align 2, 0
_0805568C: .4byte gUnknown_0203E120
_08055690: .4byte gUnknown_02019790
_08055694:
	ldr r1, _080556C0  @ gUnknown_02019790
	adds r0, r2, #0
	bl LZ77UnCompWram
_0805569C:
	ldr r5, _080556C0  @ gUnknown_02019790
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _080556C8
	ldr r1, _080556C4  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070EC4
	b _080556DC
	.align 2, 0
_080556C0: .4byte gUnknown_02019790
_080556C4: .4byte gBG1TilemapBuffer
_080556C8:
	ldr r1, _080556EC  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070E94
_080556DC:
	movs r0, #2
	bl BG_EnableSyncByMask
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080556EC: .4byte gBG1TilemapBuffer

	THUMB_FUNC_START sub_80556F0
sub_80556F0: @ 0x080556F0
	push {r4, lr}
	sub sp, #8
	adds r3, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08055710  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055718
	ldr r1, _08055714  @ gUnknown_02019790
	adds r0, r3, #0
	bl LZ77UnCompWram
	b _08055720
	.align 2, 0
_08055710: .4byte gUnknown_0203E120
_08055714: .4byte gUnknown_02019790
_08055718:
	ldr r1, _0805573C  @ gUnknown_02019790
	adds r0, r2, #0
	bl LZ77UnCompWram
_08055720:
	ldr r2, _0805573C  @ gUnknown_02019790
	cmp r4, #0
	bne _08055744
	ldr r1, _08055740  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r2, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070EC4
	b _08055758
	.align 2, 0
_0805573C: .4byte gUnknown_02019790
_08055740: .4byte gBG1TilemapBuffer
_08055744:
	ldr r1, _08055768  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r2, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070E94
_08055758:
	movs r0, #2
	bl BG_EnableSyncByMask
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055768: .4byte gBG1TilemapBuffer

	THUMB_FUNC_START sub_805576C
sub_805576C: @ 0x0805576C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, _080557A4  @ gUnknown_02019790
	adds r1, r7, #0
	bl LZ77UnCompWram
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _080557AC
	ldr r1, _080557A8  @ gBG1TilemapBuffer
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r6, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_8070EC4
	b _080557C4
	.align 2, 0
_080557A4: .4byte gUnknown_02019790
_080557A8: .4byte gBG1TilemapBuffer
_080557AC:
	ldr r1, _080557D4  @ gBG1TilemapBuffer
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r6, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_8070E94
_080557C4:
	movs r0, #2
	bl BG_EnableSyncByMask
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080557D4: .4byte gBG1TilemapBuffer

	THUMB_FUNC_START SomeImageStoringRoutine_SpellAnim
SomeImageStoringRoutine_SpellAnim: @ 0x080557D8
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r5, _080557F8  @ 0x06010800
	ldr r4, _080557FC  @ gUnknown_0201A790
	adds r1, r4, #0
	bl LZ77UnCompWram
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl RegisterTileGraphics
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080557F8: .4byte 0x06010800
_080557FC: .4byte gUnknown_0201A790

	THUMB_FUNC_START SomePaletteStoringRoutine_SpellAnim
SomePaletteStoringRoutine_SpellAnim: @ 0x08055800
	push {lr}
	adds r2, r1, #0
	ldr r1, _08055818  @ gUnknown_02022AE8
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	bl CpuFastSet
	bl EnablePaletteSync
	pop {r0}
	bx r0
	.align 2, 0
_08055818: .4byte gUnknown_02022AE8

	THUMB_FUNC_START SomeImageStoringRoutine_SpellAnim2
SomeImageStoringRoutine_SpellAnim2: @ 0x0805581C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r5, _0805583C  @ 0x06002000
	ldr r4, _08055840  @ gUnknown_02017790
	adds r1, r4, #0
	bl LZ77UnCompWram
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl RegisterTileGraphics
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805583C: .4byte 0x06002000
_08055840: .4byte gUnknown_02017790

	THUMB_FUNC_START SomePaletteStoringRoutine_SpellAnim2
SomePaletteStoringRoutine_SpellAnim2: @ 0x08055844
	push {lr}
	adds r2, r1, #0
	ldr r1, _0805585C  @ gUnknown_020228C8
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	bl CpuFastSet
	bl EnablePaletteSync
	pop {r0}
	bx r0
	.align 2, 0
_0805585C: .4byte gUnknown_020228C8

	THUMB_FUNC_START sub_8055860
sub_8055860: @ 0x08055860
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r3, #0
	ldr r4, [sp, #0x10]
	movs r3, #0
	cmp r3, r4
	bcs _08055886
_0805586E:
	cmp r2, r5
	bcc _08055874
	movs r2, #0
_08055874:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r3, #1
	adds r2, #1
	cmp r3, r4
	bcc _0805586E
_08055886:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805588C
sub_805588C: @ 0x0805588C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r3, #0
	ldr r4, [sp, #0x10]
	movs r3, #0
	cmp r3, r4
	bcs _080558B2
_0805589A:
	cmp r2, r5
	bcc _080558A0
	movs r2, #0
_080558A0:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1, #0x20]
	adds r1, #2
	adds r3, #1
	adds r2, #1
	cmp r3, r4
	bcc _0805589A
_080558B2:
	bl EnablePaletteSync
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80558BC
sub_80558BC: @ 0x080558BC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r3, #0
	ldr r4, [sp, #0x10]
	movs r3, #0
	cmp r3, r4
	bcs _080558E8
	movs r0, #0x90
	lsls r0, r0, #2
	adds r1, r1, r0
_080558D0:
	cmp r2, r5
	bcc _080558D6
	movs r2, #0
_080558D6:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r3, #1
	adds r2, #1
	cmp r3, r4
	bcc _080558D0
_080558E8:
	bl EnablePaletteSync
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80558F4
sub_80558F4: @ 0x080558F4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	ldrh r0, [r5]
	adds r6, r0, #0
	cmp r6, #0
	bne _08055970
	ldrh r0, [r3]
	mov ip, r0
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r4, [r0]
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _08055930
	movs r0, #6
	negs r0, r0
	cmp r1, r0
	beq _08055930
	movs r0, #5
	negs r0, r0
	cmp r1, r0
	beq _08055930
	movs r0, #4
	negs r0, r0
	cmp r1, r0
	bne _08055934
_08055930:
	adds r0, r1, #0
	b _08055978
_08055934:
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _08055942
	strh r6, [r3]
	ldrh r4, [r2]
	b _08055958
_08055942:
	movs r0, #3
	negs r0, r0
	cmp r1, r0
	bne _08055958
	mov r0, ip
	subs r0, #1
	strh r0, [r3]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r4, [r0]
_08055958:
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #2]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	subs r1, #1
	strh r1, [r5]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	b _08055978
_08055970:
	subs r0, #1
	strh r0, [r5]
	movs r0, #7
	negs r0, r0
_08055978:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8055980
sub_8055980: @ 0x08055980
	ldr r1, _08055988  @ gUnknown_0201775C
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08055988: .4byte gUnknown_0201775C

	THUMB_FUNC_START GetAnimationStartFrameMaybe
GetAnimationStartFrameMaybe: @ 0x0805598C
	push {lr}
	ldr r0, _0805599C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne _080559A0
	movs r0, #0x18
	b _080559AA
	.align 2, 0
_0805599C: .4byte gUnknown_0203E120
_080559A0:
	cmp r0, #1
	beq _080559A8
	movs r0, #0
	b _080559AA
_080559A8:
	movs r0, #0x10
_080559AA:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80559B0
sub_80559B0: @ 0x080559B0
	push {lr}
	sub sp, #4
	ldr r1, _080559C8  @ gUnknown_0201C8D0
	str r0, [sp]
	ldr r2, _080559CC  @ 0x050002D6
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080559C8: .4byte gUnknown_0201C8D0
_080559CC: .4byte 0x050002D6

	THUMB_FUNC_START sub_80559D0
sub_80559D0: @ 0x080559D0
	push {lr}
	sub sp, #4
	ldr r1, _080559E8  @ gUnknown_0201D428
	str r0, [sp]
	ldr r2, _080559EC  @ 0x05000948
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080559E8: .4byte gUnknown_0201D428
_080559EC: .4byte 0x05000948

	THUMB_FUNC_START sub_80559F0
sub_80559F0: @ 0x080559F0
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, #0
	bne _08055A10
	ldr r0, _08055A0C  @ gUnknown_02000000
	ldr r3, [r0]
	strh r1, [r3, #2]
	strh r2, [r3, #4]
	ldr r3, [r0, #4]
	b _08055A1A
	.align 2, 0
_08055A0C: .4byte gUnknown_02000000
_08055A10:
	ldr r0, _08055A24  @ gUnknown_02000000
	ldr r3, [r0, #8]
	strh r1, [r3, #2]
	strh r2, [r3, #4]
	ldr r3, [r0, #0xc]
_08055A1A:
	strh r1, [r3, #2]
	strh r2, [r3, #4]
	pop {r0}
	bx r0
	.align 2, 0
_08055A24: .4byte gUnknown_02000000

	THUMB_FUNC_START sub_8055A28
sub_8055A28: @ 0x08055A28
	ldr r0, _08055A30  @ gUnknown_0201FAC8
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08055A30: .4byte gUnknown_0201FAC8

	THUMB_FUNC_START sub_8055A34
sub_8055A34: @ 0x08055A34
	ldr r1, _08055A3C  @ gUnknown_0201FAC8
	str r0, [r1]
	bx lr
	.align 2, 0
_08055A3C: .4byte gUnknown_0201FAC8

	THUMB_FUNC_START sub_8055A40
sub_8055A40: @ 0x08055A40
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08055A5C  @ gUnknown_085B9AB4
	movs r1, #1
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	ldr r1, _08055A60  @ gUnknown_080DA4DC
	str r1, [r0, #0x44]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055A5C: .4byte gUnknown_085B9AB4
_08055A60: .4byte gUnknown_080DA4DC

	THUMB_FUNC_START sub_8055A64
sub_8055A64: @ 0x08055A64
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov r8, r0
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	add r0, r8
	ldrh r4, [r0, #2]
	ldr r3, _08055AE8  @ gUnknown_02000000
	ldr r6, [r3]
	ldrh r1, [r6, #2]
	ldrh r2, [r0]
	mov ip, r2
	movs r5, #0
	ldrsh r2, [r0, r5]
	adds r1, r2, r1
	movs r0, #0
	mov r9, r0
	strh r1, [r6, #2]
	ldrh r0, [r6, #4]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
	strh r0, [r6, #4]
	ldr r6, [r3, #4]
	ldrh r0, [r6, #2]
	adds r0, r2, r0
	strh r0, [r6, #2]
	ldrh r0, [r6, #4]
	adds r0, r1, r0
	strh r0, [r6, #4]
	ldr r6, [r3, #8]
	ldrh r0, [r6, #2]
	adds r0, r2, r0
	strh r0, [r6, #2]
	ldrh r0, [r6, #4]
	adds r0, r1, r0
	strh r0, [r6, #4]
	ldr r6, [r3, #0xc]
	ldrh r0, [r6, #2]
	adds r2, r2, r0
	strh r2, [r6, #2]
	ldrh r0, [r6, #4]
	adds r1, r1, r0
	strh r1, [r6, #4]
	ldr r1, _08055AEC  @ gLCDControlBuffer
	ldrh r0, [r1, #0x26]
	mov r2, ip
	subs r0, r0, r2
	strh r0, [r1, #0x26]
	ldrh r0, [r1, #0x24]
	subs r0, r0, r4
	strh r0, [r1, #0x24]
	bl sub_8055A28
	cmp r0, #0
	bne _08055AF0
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
	b _08055B28
	.align 2, 0
_08055AE8: .4byte gUnknown_02000000
_08055AEC: .4byte gLCDControlBuffer
_08055AF0:
	bl sub_8055A28
	cmp r0, #2
	bne _08055B0C
	ldr r0, _08055B08  @ gUnknown_080DA570
	str r0, [r7, #0x44]
	mov r5, r9
	strh r5, [r7, #0x2c]
	movs r0, #3
	bl sub_8055A34
	b _08055B28
	.align 2, 0
_08055B08: .4byte gUnknown_080DA570
_08055B0C:
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #2
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08055B34  @ 0x00007FFF
	cmp r1, r0
	bne _08055B28
	mov r5, r9
	strh r5, [r7, #0x2c]
_08055B28:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055B34: .4byte 0x00007FFF

	THUMB_FUNC_START sub_8055B38
sub_8055B38: @ 0x08055B38
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, _08055B88  @ gUnknown_02000028
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r6, _08055B8C  @ gUnknown_0201FB0C
	ldr r0, [r6]
	subs r1, r1, r0
	ldr r3, _08055B90  @ gUnknown_0200002C
	movs r5, #2
	ldrsh r4, [r2, r5]
	subs r4, r4, r0
	movs r0, #2
	ldrsh r5, [r3, r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r0, #0
	bl sub_80559F0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_80559F0
	ldr r0, _08055B94  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055B98
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	b _08055BA6
	.align 2, 0
_08055B88: .4byte gUnknown_02000028
_08055B8C: .4byte gUnknown_0201FB0C
_08055B90: .4byte gUnknown_0200002C
_08055B94: .4byte gUnknown_0203E120
_08055B98:
	cmp r0, #0
	blt _08055BA6
	cmp r0, #2
	bgt _08055BA6
	ldr r0, [r6]
	bl sub_8053618
_08055BA6:
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8055BB4
sub_8055BB4: @ 0x08055BB4
	push {lr}
	bl PrepareBattleGraphicsMaybe
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8055BC4
sub_8055BC4: @ 0x08055BC4
	push {lr}
	bl PrepareBattleGraphicsMaybe
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	pop {r1}
	bx r1

	THUMB_FUNC_START BeginAnimsOnBattleAnimations
BeginAnimsOnBattleAnimations: @ 0x08055BD4
	push {lr}
	bl sub_805B028
	cmp r0, #1
	bne _08055BE4
	bl BeginAnimsOnBattle_Arena
	b _08055C24
_08055BE4:
	bl sub_8076310
	cmp r0, #1
	bne _08055BF2
	bl BeginAnimsOnBattle_Hensei
	b _08055C24
_08055BF2:
	bl NewEkrBattleDeamon
	bl ClearAISArray
	bl sub_8052184
	ldr r1, _08055C28  @ gUnknown_02017744
	str r0, [r1]
	bl NewEkrBattleStarting
	ldr r0, _08055C2C  @ gUnknown_02000000
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	ldr r0, _08055C30  @ gUnknown_02000010
	str r1, [r0]
	str r1, [r0, #4]
	ldr r0, _08055C34  @ MainUpdate_8055C68
	bl SetMainUpdateRoutine
	movs r0, #0
	bl SetPrimaryHBlankHandler
_08055C24:
	pop {r0}
	bx r0
	.align 2, 0
_08055C28: .4byte gUnknown_02017744
_08055C2C: .4byte gUnknown_02000000
_08055C30: .4byte gUnknown_02000010
_08055C34: .4byte MainUpdate_8055C68

	THUMB_FUNC_START sub_8055C38
sub_8055C38: @ 0x08055C38
	push {lr}
	bl sub_805B028
	cmp r0, #1
	bne _08055C48
	bl sub_805B0CC
	b _08055C60
_08055C48:
	bl sub_8076310
	cmp r0, #1
	bne _08055C56
	bl sub_8076354
	b _08055C60
_08055C56:
	bl sub_80560D8
	ldr r0, _08055C64  @ MainUpdate_8055C68
	bl SetMainUpdateRoutine
_08055C60:
	pop {r0}
	bx r0
	.align 2, 0
_08055C64: .4byte MainUpdate_8055C68

	THUMB_FUNC_START MainUpdate_8055C68
MainUpdate_8055C68: @ 0x08055C68
	push {r4, lr}
	ldr r0, _08055CCC  @ gKeyStatusPtr
	ldr r0, [r0]
	bl UpdateKeyStatus
	bl ClearIntermediateOAMBuffers
	ldr r4, _08055CD0  @ gRootProcesses
	ldr r0, [r4, #4]
	bl Proc_Run
	bl GetThread2SkipStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08055C8E
	ldr r0, [r4, #8]
	bl Proc_Run
_08055C8E:
	ldr r0, [r4, #0xc]
	bl Proc_Run
	ldr r0, [r4, #0x14]
	bl Proc_Run
	movs r0, #0
	bl FlushIntermediateOAMBuffer
	ldr r0, [r4, #0x10]
	bl Proc_Run
	bl AIS_ExecAll
	bl BattleAIS_ExecCommands
	movs r0, #0xd
	bl FlushIntermediateOAMBuffer
	ldr r1, _08055CD4  @ gUnknown_0202BCB0
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08055CD8  @ 0x04000006
	ldrh r0, [r0]
	strh r0, [r1, #6]
	bl VBlankIntrWait
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055CCC: .4byte gKeyStatusPtr
_08055CD0: .4byte gRootProcesses
_08055CD4: .4byte gUnknown_0202BCB0
_08055CD8: .4byte 0x04000006

	THUMB_FUNC_START NewEkrBattleStarting
NewEkrBattleStarting: @ 0x08055CDC
	push {lr}
	ldr r0, _08055CEC  @ gUnknown_085B9AD4
	movs r1, #3
	bl Proc_Create
	pop {r0}
	bx r0
	.align 2, 0
_08055CEC: .4byte gUnknown_085B9AD4

	THUMB_FUNC_START ekrBattleStarting_8055CF0
ekrBattleStarting_8055CF0: @ 0x08055CF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r6, #0
	movs r5, #0
	strh r5, [r4, #0x2c]
	movs r0, #0xf
	strh r0, [r4, #0x2e]
	ldr r2, _08055DE4  @ gUnknown_0203E122
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r3, #4
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x32]
	movs r7, #2
	ldrsh r0, [r2, r7]
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3a]
	str r5, [sp, #4]
	ldr r1, _08055DE8  @ gBG2TilemapBuffer
	ldr r2, _08055DEC  @ 0x01000200
	add r0, sp, #4
	bl CpuFastSet
	movs r0, #4
	bl BG_EnableSyncByMask
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #4
	bl SetSpecialColorEffectsParameters
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_8001ED0
	ldr r7, _08055DF0  @ gLCDControlBuffer
	mov r8, r7
	mov r1, r8
	ldrb r0, [r1, #1]
	movs r2, #0x20
	mov sl, r2
	mov r3, sl
	orrs r0, r3
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r7, #1]
	mov r0, r8
	adds r0, #0x2d
	strb r6, [r0]
	adds r0, #4
	strb r6, [r0]
	mov r1, r8
	adds r1, #0x2c
	movs r0, #0xf0
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strb r0, [r1]
	movs r0, #0x34
	add r0, r8
	mov r9, r0
	ldrb r1, [r0]
	movs r6, #1
	orrs r1, r6
	movs r5, #2
	orrs r1, r5
	movs r3, #4
	orrs r1, r3
	movs r2, #8
	orrs r1, r2
	movs r0, #0x10
	orrs r1, r0
	movs r7, #0x36
	add r8, r7
	mov r7, r8
	ldrb r0, [r7]
	orrs r0, r6
	orrs r0, r5
	orrs r0, r3
	orrs r0, r2
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	subs r2, #0x10
	ands r1, r2
	mov r2, r9
	strb r1, [r2]
	mov r3, sl
	orrs r0, r3
	strb r0, [r7]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055DE4: .4byte gUnknown_0203E122
_08055DE8: .4byte gBG2TilemapBuffer
_08055DEC: .4byte 0x01000200
_08055DF0: .4byte gLCDControlBuffer

	THUMB_FUNC_START ekrBattleStarting_8055DF4
ekrBattleStarting_8055DF4: @ 0x08055DF4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldrh r2, [r7, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r7, r0]
	movs r3, #0x2e
	ldrsh r0, [r7, r3]
	cmp r1, r0
	beq _08055E12
	adds r0, r2, #1
	strh r0, [r7, #0x2c]
_08055E12:
	movs r0, #0x32
	ldrsh r2, [r7, r0]
	movs r1, #0x2c
	ldrsh r3, [r7, r1]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl sub_8012DCC
	adds r6, r0, #0
	movs r3, #0x3a
	ldrsh r2, [r7, r3]
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl sub_8012DCC
	adds r5, r0, #0
	movs r3, #0x34
	ldrsh r2, [r7, r3]
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0xf0
	bl sub_8012DCC
	adds r4, r0, #0
	movs r3, #0x3c
	ldrsh r2, [r7, r3]
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0xa0
	bl sub_8012DCC
	ldr r2, _08055EF8  @ gLCDControlBuffer
	movs r3, #0x2d
	adds r3, r3, r2
	mov r8, r3
	movs r1, #0
	mov r9, r1
	strb r6, [r3]
	adds r6, r2, #0
	adds r6, #0x31
	strb r5, [r6]
	adds r5, r2, #0
	adds r5, #0x2c
	strb r4, [r5]
	adds r4, r2, #0
	adds r4, #0x30
	strb r0, [r4]
	movs r3, #0x2c
	ldrsh r1, [r7, r3]
	movs r3, #0x2e
	ldrsh r0, [r7, r3]
	cmp r1, r0
	bne _08055EEA
	adds r2, #0x36
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	bl SetupOAMBufferSplice
	bl BlockGameGraphicsLogic
	mov r1, r9
	mov r0, r8
	strb r1, [r0]
	strb r1, [r6]
	movs r0, #0xf0
	strb r0, [r5]
	movs r0, #0xa0
	strb r0, [r4]
	ldr r0, _08055EFC  @ gPaletteBuffer
	movs r1, #6
	movs r2, #0xa
	movs r3, #4
	bl sub_80712B0
	bl EnablePaletteSync
	bl MU_EndAll
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08055EEA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055EF8: .4byte gLCDControlBuffer
_08055EFC: .4byte gPaletteBuffer

	THUMB_FUNC_START ekrBattleStarting_8055F00
ekrBattleStarting_8055F00: @ 0x08055F00
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08055F2C  @ gUnknown_0203E0FC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055F64
	bl NewEkrGauge
	bl NewEkrDispUP
	ldr r0, _08055F30  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #3
	beq _08055F34
	cmp r0, #3
	ble _08055F64
	cmp r0, #4
	beq _08055F5C
	b _08055F64
	.align 2, 0
_08055F2C: .4byte gUnknown_0203E0FC
_08055F30: .4byte gUnknown_0203E120
_08055F34:
	ldr r4, _08055F58  @ gUnknown_0203E104
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08055F46
	bl EkrGauge_80511A0
	bl sub_8051B28
_08055F46:
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08055F64
	bl EkrGauge_80511B0
	bl sub_8051B38
	b _08055F64
	.align 2, 0
_08055F58: .4byte gUnknown_0203E104
_08055F5C:
	bl EkrGauge_80511A0
	bl sub_8051B28
_08055F64:
	bl sub_8051CC4
	movs r0, #0
	bl sub_8056900
	movs r0, #0
	bl sub_805649C
	movs r0, #0
	movs r1, #0xb
	bl NewEkrWindowAppear
	movs r0, #0
	movs r1, #0xb
	movs r2, #0
	bl NewEkrNamewinAppear
	movs r0, #0
	movs r1, #0xb
	bl sub_8056F20
	movs r0, #0
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START ekrBattleStarting_8055FA0
ekrBattleStarting_8055FA0: @ 0x08055FA0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	ble _08055FE0
	ldr r0, _08055FD0  @ gUnknown_0203E0FE
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08055FC4
	bl sub_806FAB0
	cmp r0, #0
	beq _08055FD4
_08055FC4:
	bl NewEkrBattle
	adds r0, r4, #0
	bl Proc_Delete
	b _08055FE0
	.align 2, 0
_08055FD0: .4byte gUnknown_0203E0FE
_08055FD4:
	strh r0, [r4, #0x2c]
	bl NewEkrBattle
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08055FE0:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START ekrBattleStarting_8055FE8
ekrBattleStarting_8055FE8: @ 0x08055FE8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #4
	movs r2, #0x10
	bl sub_8012DCC
	bl sub_807168C
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bne _0805601C
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805601C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START ekrBattleStarting_8056024
ekrBattleStarting_8056024: @ 0x08056024
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08056038  @ gUnknown_0203E102
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08056040
	ldr r1, _0805603C  @ gUnknown_0201FAD8
	movs r0, #6
	b _08056044
	.align 2, 0
_08056038: .4byte gUnknown_0203E102
_0805603C: .4byte gUnknown_0201FAD8
_08056040:
	ldr r1, _0805606C  @ gUnknown_0201FAD8
	movs r0, #0xa
_08056044:
	str r0, [r1]
	ldr r0, _08056070  @ gUnknown_0203E0FE
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #1
	bl sub_8075AD8
	ldr r0, _08056074  @ gPaletteBuffer
	movs r1, #6
	movs r2, #0xa
	movs r3, #0x10
	bl sub_80712B0
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805606C: .4byte gUnknown_0201FAD8
_08056070: .4byte gUnknown_0203E0FE
_08056074: .4byte gPaletteBuffer

	THUMB_FUNC_START ekrBattleStarting_8056078
ekrBattleStarting_8056078: @ 0x08056078
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_8012DCC
	adds r4, r0, #0
	ldr r0, _080560D0  @ gUnknown_0203E0FE
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #1
	bl sub_8075AB4
	ldr r0, _080560D4  @ gPaletteBuffer
	movs r1, #6
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_80712B0
	bl EnablePaletteSync
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bne _080560C6
	movs r0, #0
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_080560C6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080560D0: .4byte gUnknown_0203E0FE
_080560D4: .4byte gPaletteBuffer

	THUMB_FUNC_START sub_80560D8
sub_80560D8: @ 0x080560D8
	push {lr}
	ldr r0, _080560EC  @ gUnknown_085B9B1C
	movs r1, #3
	bl Proc_Create
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r0}
	bx r0
	.align 2, 0
_080560EC: .4byte gUnknown_085B9B1C

	THUMB_FUNC_START ekrBattleEnding_80560F0
ekrBattleEnding_80560F0: @ 0x080560F0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08056114  @ gUnknown_0203E0FE
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805610C
	bl sub_806FAB0
	cmp r0, #1
	bcc _08056118
	cmp r0, #2
	bhi _08056118
_0805610C:
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
	b _08056160
	.align 2, 0
_08056114: .4byte gUnknown_0203E0FE
_08056118:
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_8012DCC
	adds r4, r0, #0
	ldr r0, _08056168  @ gUnknown_0203E0FE
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #1
	bl sub_8075AB4
	ldr r0, _0805616C  @ gPaletteBuffer
	movs r1, #6
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_80712B0
	bl EnablePaletteSync
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bne _08056160
	movs r0, #0
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_08056160:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056168: .4byte gUnknown_0203E0FE
_0805616C: .4byte gPaletteBuffer

	THUMB_FUNC_START ekrBattleEnding_8056170
ekrBattleEnding_8056170: @ 0x08056170
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08056194  @ gUnknown_0203E0FE
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805618A
	bl sub_806FAB0
	cmp r0, #1
	bcc _08056198
	cmp r0, #2
	bhi _08056198
_0805618A:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _080561BE
	.align 2, 0
_08056194: .4byte gUnknown_0203E0FE
_08056198:
	ldr r0, _080561C4  @ gUnknown_0202BCF0
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl LoadChapterMapGfx
	movs r0, #0x10
	bl sub_807168C
	bl UpdateGameTilesGraphics
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080561BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080561C4: .4byte gUnknown_0202BCF0

	THUMB_FUNC_START ekrBattleEnding_80561C8
ekrBattleEnding_80561C8: @ 0x080561C8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080561EC  @ gUnknown_0203E0FE
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080561E4
	bl sub_806FAB0
	cmp r0, #1
	bcc _080561F0
	cmp r0, #2
	bhi _080561F0
_080561E4:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _0805621E
	.align 2, 0
_080561EC: .4byte gUnknown_0203E0FE
_080561F0:
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #4
	bl sub_8012DCC
	bl sub_807168C
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bne _0805621E
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805621E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START ekrBattleEnding_8056228
ekrBattleEnding_8056228: @ 0x08056228
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r2, _08056284  @ gUnknown_0203E122
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r3, #4
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x32]
	movs r1, #2
	ldrsh r0, [r2, r1]
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3a]
	bl ClearAISArray
	movs r0, #1
	bl sub_8056900
	movs r0, #1
	bl sub_805649C
	movs r0, #1
	movs r1, #0xb
	bl NewEkrWindowAppear
	movs r0, #1
	movs r1, #0xb
	bl sub_8056F20
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056284: .4byte gUnknown_0203E122

	THUMB_FUNC_START ekrBattleEnding_8056288
ekrBattleEnding_8056288: @ 0x08056288
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	ble _08056304
	bl EndEkrGauge
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	bl SetupBackgroundForWeatherMaybe
	ldr r0, _0805630C  @ gLCDControlBuffer
	mov ip, r0
	ldrb r0, [r0, #1]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	mov r0, ip
	adds r0, #0x2d
	strb r5, [r0]
	adds r0, #4
	strb r5, [r0]
	subs r0, #5
	strb r5, [r0]
	adds r0, #4
	strb r5, [r0]
	mov r2, ip
	adds r2, #0x34
	ldrb r0, [r2]
	movs r6, #1
	orrs r0, r6
	movs r5, #2
	orrs r0, r5
	movs r4, #4
	orrs r0, r4
	movs r3, #8
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r2, #2
	ldrb r0, [r2]
	orrs r0, r6
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	movs r1, #0x11
	negs r1, r1
	ands r0, r1
	strb r0, [r2]
_08056304:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805630C: .4byte gLCDControlBuffer

	THUMB_FUNC_START ekrBattleEnding_8056310
ekrBattleEnding_8056310: @ 0x08056310
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r5, #0x2c]
	movs r0, #0xf
	strh r0, [r5, #0x2e]
	bl SMS_ClearUsageTable
	bl sub_8031154
	bl SMS_UpdateFromGameData
	bl SMS_FlushIndirect
	bl SetupMapSpritesPalettes
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #4
	bl SetSpecialColorEffectsParameters
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_8001ED0
	ldr r2, _0805638C  @ gLCDControlBuffer
	adds r3, r2, #0
	adds r3, #0x34
	ldrb r1, [r3]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
	adds r2, #0x36
	ldrb r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	bl sub_805B028
	cmp r0, #1
	beq _08056372
	bl sub_8019974
_08056372:
	bl sub_804FD54
	cmp r0, #1
	bne _0805637E
	bl sub_8049788
_0805637E:
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805638C: .4byte gLCDControlBuffer

	THUMB_FUNC_START ekrBattleEnding_8056390
ekrBattleEnding_8056390: @ 0x08056390
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	ldrh r2, [r7, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r7, r0]
	movs r3, #0x2e
	ldrsh r0, [r7, r3]
	cmp r1, r0
	beq _080563AE
	adds r0, r2, #1
	strh r0, [r7, #0x2c]
_080563AE:
	movs r0, #0x32
	ldrsh r1, [r7, r0]
	movs r2, #0x2c
	ldrsh r3, [r7, r2]
	movs r2, #0x2e
	ldrsh r0, [r7, r2]
	str r0, [sp]
	movs r0, #0
	movs r2, #0
	bl sub_8012DCC
	adds r6, r0, #0
	movs r3, #0x3a
	ldrsh r1, [r7, r3]
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r2, #0x2e
	ldrsh r0, [r7, r2]
	str r0, [sp]
	movs r0, #0
	movs r2, #0
	bl sub_8012DCC
	adds r5, r0, #0
	movs r3, #0x34
	ldrsh r1, [r7, r3]
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r2, #0x2e
	ldrsh r0, [r7, r2]
	str r0, [sp]
	movs r0, #0
	movs r2, #0xf0
	bl sub_8012DCC
	adds r4, r0, #0
	movs r3, #0x3c
	ldrsh r1, [r7, r3]
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r2, #0x2e
	ldrsh r0, [r7, r2]
	str r0, [sp]
	movs r0, #0
	movs r2, #0xa0
	bl sub_8012DCC
	ldr r1, _08056478  @ gLCDControlBuffer
	movs r3, #0x2d
	adds r3, r3, r1
	mov r9, r3
	movs r2, #0
	mov r8, r2
	strb r6, [r3]
	adds r6, r1, #0
	adds r6, #0x31
	strb r5, [r6]
	adds r5, r1, #0
	adds r5, #0x2c
	strb r4, [r5]
	adds r4, r1, #0
	adds r4, #0x30
	strb r0, [r4]
	str r2, [sp, #4]
	ldr r1, _0805647C  @ gBG2TilemapBuffer
	ldr r2, _08056480  @ 0x01000200
	add r0, sp, #4
	bl CpuFastSet
	movs r0, #4
	bl BG_EnableSyncByMask
	movs r3, #0x2c
	ldrsh r1, [r7, r3]
	movs r2, #0x2e
	ldrsh r0, [r7, r2]
	cmp r1, r0
	bne _08056468
	movs r0, #0
	mov r3, r8
	strh r3, [r7, #0x2c]
	mov r1, r9
	strb r0, [r1]
	strb r0, [r6]
	movs r0, #0xf0
	strb r0, [r5]
	movs r0, #0xa0
	strb r0, [r4]
	bl EnablePaletteSync
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08056468:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056478: .4byte gLCDControlBuffer
_0805647C: .4byte gBG2TilemapBuffer
_08056480: .4byte 0x01000200

	THUMB_FUNC_START ekrBattleEnding_8056484
ekrBattleEnding_8056484: @ 0x08056484
	push {r4, lr}
	adds r4, r0, #0
	bl EndEkrBattleDeamon
	bl sub_80310F8
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805649C
sub_805649C: @ 0x0805649C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0xa
	movs r2, #6
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_8001ED0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_8001F0C
	ldr r1, _080564F8  @ gLCDControlBuffer
	adds r1, #0x3d
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	ldr r0, _080564FC  @ gUnknown_0203E122
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r4, #4
	ldrsh r2, [r0, r4]
	cmp r3, r2
	bne _08056500
	movs r2, #2
	ldrsh r1, [r0, r2]
	movs r3, #6
	ldrsh r0, [r0, r3]
	movs r4, #2
	cmp r1, r0
	blt _0805652C
	movs r4, #6
	b _0805652C
	.align 2, 0
_080564F8: .4byte gLCDControlBuffer
_080564FC: .4byte gUnknown_0203E122
_08056500:
	movs r4, #2
	ldrsh r1, [r0, r4]
	movs r4, #6
	ldrsh r0, [r0, r4]
	cmp r1, r0
	bne _08056516
	movs r4, #4
	cmp r3, r2
	bge _0805652C
	movs r4, #0
	b _0805652C
_08056516:
	cmp r3, r2
	bge _08056524
	movs r4, #1
	cmp r1, r0
	blt _0805652C
	movs r4, #7
	b _0805652C
_08056524:
	movs r4, #3
	cmp r1, r0
	blt _0805652C
	movs r4, #5
_0805652C:
	ldr r0, _08056540  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #3
	bgt _08056544
	cmp r0, #1
	bge _08056550
	cmp r0, #0
	beq _08056548
	b _08056550
	.align 2, 0
_08056540: .4byte gUnknown_0203E120
_08056544:
	cmp r0, #4
	bne _08056550
_08056548:
	ldr r0, _0805654C  @ gUnknown_085B9B84
	b _08056552
	.align 2, 0
_0805654C: .4byte gUnknown_085B9B84
_08056550:
	ldr r0, _08056584  @ gUnknown_085B9BA4
_08056552:
	lsls r1, r4, #2
	adds r0, r1, r0
	ldr r0, [r0]
	adds r6, r1, #0
	ldr r1, _08056588  @ 0x06010000
	bl LZ77UnCompVram
	ldr r0, _0805658C  @ gUnknown_080DC85C
	ldr r1, _08056590  @ gUnknown_02022B28
	movs r2, #1
	bl CpuFastSet
	bl EnablePaletteSync
	ldr r0, _08056594  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #4
	bls _0805657A
	b _08056856
_0805657A:
	lsls r0, r0, #2
	ldr r1, _08056598  @ _0805659C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08056584: .4byte gUnknown_085B9BA4
_08056588: .4byte 0x06010000
_0805658C: .4byte gUnknown_080DC85C
_08056590: .4byte gUnknown_02022B28
_08056594: .4byte gUnknown_0203E120
_08056598: .4byte _0805659C
_0805659C: @ jump table
	.4byte _080565B0 @ case 0
	.4byte _08056650 @ case 1
	.4byte _08056650 @ case 2
	.4byte _080567BC @ case 3
	.4byte _080565B0 @ case 4
_080565B0:
	ldr r0, _08056600  @ gUnknown_085B9B6C
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r7, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	strh r0, [r5, #0x2c]
	movs r0, #0xb
	strh r0, [r5, #0x2e]
	ldr r2, _08056604  @ gUnknown_0203E122
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r4, #4
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	strh r0, [r5, #0x32]
	movs r1, #2
	ldrsh r0, [r2, r1]
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #8
	strh r0, [r5, #0x3a]
	movs r0, #0x78
	strh r0, [r5, #0x34]
	movs r0, #0x68
	strh r0, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _0805660C
	ldr r0, _08056608  @ gUnknown_085B9BC4
	b _0805660E
	.align 2, 0
_08056600: .4byte gUnknown_085B9B6C
_08056604: .4byte gUnknown_0203E122
_08056608: .4byte gUnknown_085B9BC4
_0805660C:
	ldr r0, _0805663C  @ gUnknown_085B9C24
_0805660E:
	adds r0, r6, r0
	ldr r0, [r0]
	movs r1, #0x64
	bl AIS_New
	adds r2, r0, #0
	str r2, [r5, #0x5c]
	movs r0, #0x90
	lsls r0, r0, #7
	strh r0, [r2, #8]
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0x1c]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _08056640
	ldrh r0, [r5, #0x32]
	strh r0, [r2, #2]
	ldrh r0, [r5, #0x3a]
	b _08056646
	.align 2, 0
_0805663C: .4byte gUnknown_085B9C24
_08056640:
	ldrh r0, [r5, #0x34]
	strh r0, [r2, #2]
	ldrh r0, [r5, #0x3c]
_08056646:
	strh r0, [r2, #4]
	ldr r0, _0805664C  @ gUnknown_085B9C84
	b _0805684A
	.align 2, 0
_0805664C: .4byte gUnknown_085B9C84
_08056650:
	ldr r0, _080566AC  @ gUnknown_085B9B6C
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r7, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	strh r0, [r5, #0x2c]
	movs r0, #0xb
	strh r0, [r5, #0x2e]
	ldr r1, _080566B0  @ gUnknown_0203E122
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r5, #0x32]
	movs r2, #2
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r5, #0x3a]
	movs r2, #0x48
	strh r2, [r5, #0x34]
	movs r0, #0x68
	strh r0, [r5, #0x3c]
	ldr r0, _080566B4  @ gUnknown_02017744
	ldr r0, [r0]
	cmp r0, #1
	bne _080566A2
	ldr r1, _080566B8  @ gUnknown_080DAF28
	ldr r0, _080566BC  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, r2, r0
	strh r0, [r5, #0x34]
_080566A2:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _080566C4
	ldr r0, _080566C0  @ gUnknown_085B9BE4
	b _080566C6
	.align 2, 0
_080566AC: .4byte gUnknown_085B9B6C
_080566B0: .4byte gUnknown_0203E122
_080566B4: .4byte gUnknown_02017744
_080566B8: .4byte gUnknown_080DAF28
_080566BC: .4byte gUnknown_0203E120
_080566C0: .4byte gUnknown_085B9BE4
_080566C4:
	ldr r0, _080566F4  @ gUnknown_085B9C44
_080566C6:
	adds r0, r6, r0
	ldr r0, [r0]
	movs r1, #0x64
	bl AIS_New
	adds r2, r0, #0
	str r2, [r5, #0x5c]
	movs r0, #0x90
	lsls r0, r0, #7
	strh r0, [r2, #8]
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0x1c]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _080566F8
	ldrh r0, [r5, #0x32]
	strh r0, [r2, #2]
	ldrh r0, [r5, #0x3a]
	b _080566FE
	.align 2, 0
_080566F4: .4byte gUnknown_085B9C44
_080566F8:
	ldrh r0, [r5, #0x34]
	strh r0, [r2, #2]
	ldrh r0, [r5, #0x3c]
_080566FE:
	strh r0, [r2, #4]
	ldr r0, _0805676C  @ gUnknown_085B9CA4
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r5, #0x60]
	movs r4, #0
	strh r4, [r5, #0x3e]
	strh r4, [r5, #0x36]
	ldr r0, _08056770  @ gUnknown_085B9B6C
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r7, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	strh r4, [r5, #0x2c]
	movs r0, #0xb
	strh r0, [r5, #0x2e]
	ldr r1, _08056774  @ gUnknown_0203E122
	movs r4, #4
	ldrsh r0, [r1, r4]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r5, #0x32]
	movs r2, #6
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r5, #0x3a]
	movs r0, #0xa8
	strh r0, [r5, #0x34]
	movs r0, #0x68
	strh r0, [r5, #0x3c]
	ldr r0, _08056778  @ gUnknown_02017744
	ldr r0, [r0]
	cmp r0, #0
	bne _08056760
	ldr r1, _0805677C  @ gUnknown_080DAF28
	ldr r0, _08056780  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0xa8
	strh r0, [r5, #0x34]
_08056760:
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _08056788
	ldr r0, _08056784  @ gUnknown_085B9C04
	b _0805678A
	.align 2, 0
_0805676C: .4byte gUnknown_085B9CA4
_08056770: .4byte gUnknown_085B9B6C
_08056774: .4byte gUnknown_0203E122
_08056778: .4byte gUnknown_02017744
_0805677C: .4byte gUnknown_080DAF28
_08056780: .4byte gUnknown_0203E120
_08056784: .4byte gUnknown_085B9C04
_08056788:
	ldr r0, _080567B8  @ gUnknown_085B9C64
_0805678A:
	adds r0, r6, r0
	ldr r0, [r0]
	movs r1, #0x64
	bl AIS_New
	adds r2, r0, #0
	str r2, [r5, #0x5c]
	movs r0, #0x90
	lsls r0, r0, #7
	strh r0, [r2, #8]
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0x1c]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _08056840
	ldrh r0, [r5, #0x32]
	strh r0, [r2, #2]
	ldrh r0, [r5, #0x3a]
	b _08056846
	.align 2, 0
_080567B8: .4byte gUnknown_085B9C64
_080567BC:
	ldr r0, _08056800  @ gUnknown_085B9B6C
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r7, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #0
	strb r0, [r1]
	strh r0, [r5, #0x2c]
	movs r0, #0xb
	strh r0, [r5, #0x2e]
	ldr r1, _08056804  @ gUnknown_0203E122
	movs r4, #4
	ldrsh r0, [r1, r4]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r5, #0x32]
	movs r2, #6
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r5, #0x3a]
	movs r0, #0x78
	strh r0, [r5, #0x34]
	movs r0, #0x68
	strh r0, [r5, #0x3c]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _0805680C
	ldr r0, _08056808  @ gUnknown_085B9C04
	b _0805680E
	.align 2, 0
_08056800: .4byte gUnknown_085B9B6C
_08056804: .4byte gUnknown_0203E122
_08056808: .4byte gUnknown_085B9C04
_0805680C:
	ldr r0, _0805683C  @ gUnknown_085B9C64
_0805680E:
	adds r0, r6, r0
	ldr r0, [r0]
	movs r1, #0x64
	bl AIS_New
	adds r2, r0, #0
	str r2, [r5, #0x5c]
	movs r0, #0x90
	lsls r0, r0, #7
	strh r0, [r2, #8]
	ldr r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r2, #0x1c]
	ldr r0, [r5, #0x44]
	cmp r0, #0
	bne _08056840
	ldrh r0, [r5, #0x32]
	strh r0, [r2, #2]
	ldrh r0, [r5, #0x3a]
	b _08056846
	.align 2, 0
_0805683C: .4byte gUnknown_085B9C64
_08056840:
	ldrh r0, [r5, #0x34]
	strh r0, [r2, #2]
	ldrh r0, [r5, #0x3c]
_08056846:
	strh r0, [r2, #4]
	ldr r0, _08056860  @ gUnknown_085B9CC4
_0805684A:
	adds r0, r6, r0
	ldr r0, [r0]
	str r0, [r5, #0x60]
	movs r0, #0
	strh r0, [r5, #0x3e]
	strh r0, [r5, #0x36]
_08056856:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056860: .4byte gUnknown_085B9CC4

	THUMB_FUNC_START sub_8056864
sub_8056864: @ 0x08056864
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x5c]
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _08056886
	adds r0, r5, #0
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _080568F6
_08056886:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _080568B0
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	movs r6, #0x34
	ldrsh r2, [r4, r6]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	str r0, [sp]
	movs r0, #0
	bl sub_8012DCC
	strh r0, [r5, #2]
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	movs r3, #0x3c
	ldrsh r2, [r4, r3]
	b _080568D2
_080568B0:
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	movs r6, #0x2c
	ldrsh r3, [r4, r6]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	str r0, [sp]
	movs r0, #0
	bl sub_8012DCC
	strh r0, [r5, #2]
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	movs r3, #0x3a
	ldrsh r2, [r4, r3]
_080568D2:
	movs r6, #0x2c
	ldrsh r3, [r4, r6]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	str r0, [sp]
	movs r0, #0
	bl sub_8012DCC
	strh r0, [r5, #4]
	ldrh r2, [r4, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bgt _080568F6
	adds r0, r2, #1
	strh r0, [r4, #0x2c]
_080568F6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8056900
sub_8056900: @ 0x08056900
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0805692C  @ gUnknown_085B9CE4
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x44]
	movs r1, #0
	str r1, [r4, #0x50]
	str r1, [r4, #0x4c]
	ldr r0, _08056930  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	blt _0805696E
	cmp r0, #3
	ble _08056934
	cmp r0, #4
	beq _0805695C
	b _0805696E
	.align 2, 0
_0805692C: .4byte gUnknown_085B9CE4
_08056930: .4byte gUnknown_0203E120
_08056934:
	ldr r0, _08056958  @ gUnknown_0203E104
	movs r1, #0
	ldrsh r5, [r0, r1]
	cmp r5, #1
	bne _08056948
	bl sub_806FAB0
	cmp r0, #0
	bne _08056948
	str r5, [r4, #0x4c]
_08056948:
	ldr r0, _08056958  @ gUnknown_0203E104
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #1
	bne _0805696E
	str r0, [r4, #0x50]
	b _0805696E
	.align 2, 0
_08056958: .4byte gUnknown_0203E104
_0805695C:
	cmp r5, #0
	bne _08056968
	str r1, [r4, #0x4c]
	movs r0, #1
	str r0, [r4, #0x50]
	b _0805696E
_08056968:
	movs r0, #1
	str r0, [r4, #0x4c]
	str r1, [r4, #0x50]
_0805696E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8056974
sub_8056974: @ 0x08056974
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, _08056AE4  @ gUnknown_080DAF18
	ldr r0, _08056AE8  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r1, _08056AEC  @ gUnknown_080DAEF0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrb r6, [r0]
	bl sub_80599E8
	ldr r0, _08056AF0  @ gUnknown_02017724
	ldr r0, [r0]
	cmp r0, #0
	beq _080569B2
	ldr r5, _08056AF4  @ gUnknown_02000000
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _080569A4
	bl sub_8054B18
_080569A4:
	ldr r0, [r5]
	cmp r0, #0
	beq _080569AE
	bl sub_8054B18
_080569AE:
	bl DeleteEach6C_efxStatusUnit
_080569B2:
	ldr r0, _08056AF8  @ gUnknown_0203E18C
	ldr r0, [r0]
	adds r0, #0x30
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0xb
	beq _080569C6
	cmp r1, #0xd
	bne _080569D0
_080569C6:
	ldr r0, _08056AFC  @ gPaletteBuffer
	movs r1, #0x19
	movs r2, #1
	bl sub_8071468
_080569D0:
	ldr r0, _08056B00  @ gUnknown_0203E188
	ldr r0, [r0]
	adds r0, #0x30
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0xb
	beq _080569E4
	cmp r1, #0xd
	bne _080569EE
_080569E4:
	ldr r0, _08056AFC  @ gPaletteBuffer
	movs r1, #0x17
	movs r2, #1
	bl sub_8071468
_080569EE:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _08056A0A
	ldr r0, _08056B04  @ gUnknown_0203A4D4
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08056A0A
	ldr r0, _08056AFC  @ gPaletteBuffer
	movs r1, #0x17
	movs r2, #1
	bl sub_8071468
_08056A0A:
	ldr r5, _08056B08  @ gUnknown_0203E104
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #1
	bne _08056A32
	ldr r0, _08056B0C  @ gUnknown_0200005C
	ldr r1, [r0]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, _08056B10  @ gUnknown_0200F1C8
	adds r2, r2, r0
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, _08056B14  @ gUnknown_020041C8
	adds r1, r1, r2
	str r1, [r4, #0x54]
	ldr r1, _08056B18  @ gUnknown_02000088
	bl LZ77UnCompWram
_08056A32:
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _08056A58
	ldr r0, _08056B1C  @ gUnknown_02000060
	ldr r1, [r0]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, _08056B20  @ gUnknown_02011BC8
	adds r2, r2, r0
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	ldr r2, _08056B24  @ gUnknown_020099C8
	adds r1, r1, r2
	str r1, [r4, #0x58]
	ldr r1, _08056B28  @ gUnknown_02002088
	bl LZ77UnCompWram
_08056A58:
	ldr r5, _08056B2C  @ gUnknown_0203E1A4
	ldr r0, [r5]
	cmp r0, #0
	beq _08056A66
	ldr r1, _08056B30  @ gUnknown_02001088
	bl LZ77UnCompWram
_08056A66:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _08056A72
	ldr r1, _08056B34  @ gUnknown_02003088
	bl LZ77UnCompWram
_08056A72:
	ldr r1, _08056B38  @ 0x06014000
	ldr r0, _08056B18  @ gUnknown_02000088
	movs r2, #0x80
	lsls r2, r2, #7
	bl RegisterTileGraphics
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0xb
	strh r0, [r4, #0x2e]
	ldr r1, _08056B3C  @ gUnknown_0203E122
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r4, #0x32]
	movs r3, #2
	ldrsh r0, [r1, r3]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r4, #0x3a]
	movs r5, #4
	ldrsh r0, [r1, r5]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r4, #0x34]
	movs r2, #6
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	adds r0, #8
	strh r0, [r4, #0x3c]
	ldr r1, _08056B40  @ gUnknown_080DAF1D
	ldr r2, _08056AE8  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r0, r1
	ldrb r5, [r0]
	strh r5, [r4, #0x36]
	ldr r1, _08056B44  @ gUnknown_080DAF22
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r0, r0, r1
	ldrb r3, [r0]
	strh r3, [r4, #0x38]
	ldr r0, _08056B48  @ gUnknown_02017744
	ldr r0, [r0]
	cmp r0, #0
	bne _08056B50
	ldr r0, _08056B4C  @ gUnknown_080DAF28
	movs r5, #0
	ldrsh r1, [r2, r5]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r4, #0x38]
	b _08056B60
	.align 2, 0
_08056AE4: .4byte gUnknown_080DAF18
_08056AE8: .4byte gUnknown_0203E120
_08056AEC: .4byte gUnknown_080DAEF0
_08056AF0: .4byte gUnknown_02017724
_08056AF4: .4byte gUnknown_02000000
_08056AF8: .4byte gUnknown_0203E18C
_08056AFC: .4byte gPaletteBuffer
_08056B00: .4byte gUnknown_0203E188
_08056B04: .4byte gUnknown_0203A4D4
_08056B08: .4byte gUnknown_0203E104
_08056B0C: .4byte gUnknown_0200005C
_08056B10: .4byte gUnknown_0200F1C8
_08056B14: .4byte gUnknown_020041C8
_08056B18: .4byte gUnknown_02000088
_08056B1C: .4byte gUnknown_02000060
_08056B20: .4byte gUnknown_02011BC8
_08056B24: .4byte gUnknown_020099C8
_08056B28: .4byte gUnknown_02002088
_08056B2C: .4byte gUnknown_0203E1A4
_08056B30: .4byte gUnknown_02001088
_08056B34: .4byte gUnknown_02003088
_08056B38: .4byte 0x06014000
_08056B3C: .4byte gUnknown_0203E122
_08056B40: .4byte gUnknown_080DAF1D
_08056B44: .4byte gUnknown_080DAF22
_08056B48: .4byte gUnknown_02017744
_08056B4C: .4byte gUnknown_080DAF28
_08056B50:
	ldr r0, _08056B6C  @ gUnknown_080DAF28
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, r5, r0
	strh r0, [r4, #0x36]
_08056B60:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056B6C: .4byte gUnknown_080DAF28

	THUMB_FUNC_START sub_8056B70
sub_8056B70: @ 0x08056B70
	push {r4, r5, r6, r7, lr}
	ldr r4, _08056B90  @ 0xFFFFFCB4
	add sp, r4
	adds r4, r0, #0
	add r5, sp, #0x304
	ldrh r2, [r4, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _08056B94
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _08056D0A
	.align 2, 0
_08056B90: .4byte 0xFFFFFCB4
_08056B94:
	adds r0, r2, #1
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _08056BAC
	movs r1, #0x94
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	movs r6, #0x2c
	ldrsh r3, [r4, r6]
	b _08056BB8
_08056BAC:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x94
	lsls r2, r2, #2
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
_08056BB8:
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	str r0, [sp]
	movs r0, #0
	bl sub_8012DCC
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _08056C6A
	ldr r0, [r4, #0x54]
	lsls r3, r7, #0x10
	asrs r3, r3, #0x10
	movs r1, #0
	str r1, [sp]
	add r1, sp, #4
	adds r2, r3, #0
	bl sub_807180C
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _08056C16
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r3, #0x36
	ldrsh r2, [r4, r3]
	movs r6, #0x2c
	ldrsh r3, [r4, r6]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	str r0, [sp]
	movs r0, #0
	bl sub_8012DCC
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x3a
	ldrsh r1, [r4, r0]
	movs r2, #0x2c
	ldrsh r3, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	str r0, [sp]
	movs r0, #0
	movs r2, #0x58
	b _08056C44
_08056C16:
	movs r3, #0x36
	ldrsh r1, [r4, r3]
	movs r6, #0x32
	ldrsh r2, [r4, r6]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	str r0, [sp]
	movs r0, #0
	bl sub_8012DCC
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x3a
	ldrsh r2, [r4, r0]
	movs r1, #0x2c
	ldrsh r3, [r4, r1]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x58
_08056C44:
	bl sub_8012DCC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	add r2, sp, #4
	str r2, [r5, #0x3c]
	movs r0, #0
	strh r6, [r5, #2]
	strh r1, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r5, #0xc]
	movs r1, #0xe4
	lsls r1, r1, #7
	strh r1, [r5, #8]
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl AIS_Display
_08056C6A:
	ldr r1, [r4, #0x50]
	cmp r1, #1
	bne _08056D0A
	ldr r0, [r4, #0x58]
	lsls r3, r7, #0x10
	asrs r3, r3, #0x10
	str r1, [sp]
	add r1, sp, #4
	adds r2, r3, #0
	bl sub_807180C
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _08056CB6
	movs r3, #0x34
	ldrsh r1, [r4, r3]
	movs r6, #0x38
	ldrsh r2, [r4, r6]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	str r0, [sp]
	movs r0, #0
	bl sub_8012DCC
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	movs r2, #0x2c
	ldrsh r3, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	str r0, [sp]
	movs r0, #0
	movs r2, #0x58
	b _08056CE4
_08056CB6:
	movs r3, #0x38
	ldrsh r1, [r4, r3]
	movs r6, #0x34
	ldrsh r2, [r4, r6]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	str r0, [sp]
	movs r0, #0
	bl sub_8012DCC
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r0, #0x3c
	ldrsh r2, [r4, r0]
	movs r1, #0x2c
	ldrsh r3, [r4, r1]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x58
_08056CE4:
	bl sub_8012DCC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	add r2, sp, #4
	str r2, [r5, #0x3c]
	movs r0, #0
	strh r6, [r5, #2]
	strh r1, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r5, #0xc]
	movs r1, #0x93
	lsls r1, r1, #8
	strh r1, [r5, #8]
	str r0, [r5, #0x1c]
	adds r0, r5, #0
	bl AIS_Display
_08056D0A:
	movs r3, #0xd3
	lsls r3, r3, #2
	add sp, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8056D18
sub_8056D18: @ 0x08056D18
	push {lr}
	bl Proc_ClearNativeCallback
	pop {r0}
	bx r0

	THUMB_FUNC_START NewEkrWindowAppear
NewEkrWindowAppear: @ 0x08056D24
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08056D68  @ gUnknown_085B9D0C
	movs r1, #3
	bl Proc_Create
	str r5, [r0, #0x44]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r4, [r0, #0x2e]
	movs r1, #0x39
	strh r1, [r0, #0x30]
	movs r2, #0
	cmp r5, #0
	bne _08056D46
	movs r2, #0x39
_08056D46:
	ldr r1, _08056D6C  @ gUnknown_02000038
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldrh r1, [r1, #2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl EkrGauge_80511D0
	ldr r1, _08056D70  @ gUnknown_0201FACC
	movs r0, #1
	str r0, [r1]
	bl EkrGauge_8051208
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056D68: .4byte gUnknown_085B9D0C
_08056D6C: .4byte gUnknown_02000038
_08056D70: .4byte gUnknown_0201FACC

	THUMB_FUNC_START sub_8056D74
sub_8056D74: @ 0x08056D74
	push {lr}
	ldr r0, _08056D84  @ gUnknown_0201FACC
	ldr r0, [r0]
	cmp r0, #0
	beq _08056D88
	movs r0, #0
	b _08056D8A
	.align 2, 0
_08056D84: .4byte gUnknown_0201FACC
_08056D88:
	movs r0, #1
_08056D8A:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8056D90
sub_8056D90: @ 0x08056D90
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r2, [r4, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _08056DBC
	ldr r1, _08056DB8  @ gUnknown_0201FACC
	movs r0, #0
	str r0, [r1]
	bl EkrGauge_80511F8
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _08056E04
	.align 2, 0
_08056DB8: .4byte gUnknown_0201FACC
_08056DBC:
	adds r0, r2, #1
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _08056DDA
	movs r0, #0x30
	ldrsh r1, [r4, r0]
	movs r2, #0x2c
	ldrsh r3, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	str r0, [sp]
	movs r0, #1
	movs r2, #0
	b _08056DEC
_08056DDA:
	movs r3, #0x30
	ldrsh r2, [r4, r3]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #4
	movs r1, #0
_08056DEC:
	bl sub_8012DCC
	adds r2, r0, #0
	ldr r1, _08056E0C  @ gUnknown_02000038
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldrh r1, [r1, #2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl EkrGauge_80511D0
_08056E04:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056E0C: .4byte gUnknown_02000038

	THUMB_FUNC_START NewEkrNamewinAppear
NewEkrNamewinAppear: @ 0x08056E10
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _08056E40  @ gUnknown_085B9D24
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x44]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	strh r6, [r0, #0x30]
	subs r1, #0x31
	str r1, [r0, #0x48]
	cmp r4, #0
	bne _08056E44
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	bl EkrDispUP_8051B48
	b _08056E4C
	.align 2, 0
_08056E40: .4byte gUnknown_085B9D24
_08056E44:
	movs r0, #0
	movs r1, #0
	bl EkrDispUP_8051B48
_08056E4C:
	ldr r1, _08056E5C  @ gUnknown_0201FAD0
	movs r0, #1
	str r0, [r1]
	bl sub_8051B80
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08056E5C: .4byte gUnknown_0201FAD0

	THUMB_FUNC_START sub_8056E60
sub_8056E60: @ 0x08056E60
	push {lr}
	ldr r0, _08056E70  @ gUnknown_0201FAD0
	ldr r0, [r0]
	cmp r0, #0
	beq _08056E74
	movs r0, #0
	b _08056E76
	.align 2, 0
_08056E70: .4byte gUnknown_0201FAD0
_08056E74:
	movs r0, #1
_08056E76:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8056E7C
sub_8056E7C: @ 0x08056E7C
	push {r4, lr}
	adds r2, r0, #0
	ldrh r3, [r2, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r2, r0]
	movs r4, #0x30
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bne _08056E9A
	movs r0, #0
	strh r0, [r2, #0x2c]
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
	b _08056E9E
_08056E9A:
	adds r0, r3, #1
	strh r0, [r2, #0x2c]
_08056E9E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8056EA4
sub_8056EA4: @ 0x08056EA4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r2, [r4, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _08056ED8
	ldr r0, _08056ED4  @ gUnknown_0201FAD0
	movs r1, #0
	str r1, [r0]
	bl sub_8051B70
	ldr r0, [r4, #0x44]
	cmp r0, #2
	bne _08056ECC
	bl sub_8051AF4
_08056ECC:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _08056F16
	.align 2, 0
_08056ED4: .4byte gUnknown_0201FAD0
_08056ED8:
	adds r0, r2, #1
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _08056EF8
	ldr r1, [r4, #0x48]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	str r0, [sp]
	movs r0, #1
	movs r2, #0
	bl sub_8012DCC
	b _08056F0C
_08056EF8:
	ldr r2, [r4, #0x48]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	bl sub_8012DCC
_08056F0C:
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	bl EkrDispUP_8051B48
_08056F16:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8056F20
sub_8056F20: @ 0x08056F20
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08056F44  @ gUnknown_085B9D44
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x44]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	cmp r4, #0
	bne _08056F4C
	ldr r2, _08056F48  @ 0x0000FFA8
	movs r0, #2
	bl BG_SetPosition
	b _08056F56
	.align 2, 0
_08056F44: .4byte gUnknown_085B9D44
_08056F48: .4byte 0x0000FFA8
_08056F4C:
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_08056F56:
	ldr r1, _08056F64  @ gUnknown_0201FAD4
	movs r0, #1
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056F64: .4byte gUnknown_0201FAD4

	THUMB_FUNC_START sub_8056F68
sub_8056F68: @ 0x08056F68
	push {lr}
	ldr r0, _08056F78  @ gUnknown_0201FAD4
	ldr r0, [r0]
	cmp r0, #0
	beq _08056F7C
	movs r0, #0
	b _08056F7E
	.align 2, 0
_08056F78: .4byte gUnknown_0201FAD4
_08056F7C:
	movs r0, #1
_08056F7E:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8056F84
sub_8056F84: @ 0x08056F84
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r2, [r4, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	cmp r1, r0
	blt _08056FAC
	ldr r1, _08056FA8  @ gUnknown_0201FAD4
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _08056FF0
	.align 2, 0
_08056FA8: .4byte gUnknown_0201FAD4
_08056FAC:
	adds r0, r2, #1
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _08056FCE
	movs r1, #0x50
	negs r1, r1
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	str r0, [sp]
	movs r0, #1
	movs r2, #0
	bl sub_8012DCC
	b _08056FE4
_08056FCE:
	movs r2, #0x50
	negs r2, r2
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	bl sub_8012DCC
_08056FE4:
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	movs r1, #0
	bl BG_SetPosition
_08056FF0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START PrepareBattleGraphicsMaybe
PrepareBattleGraphicsMaybe: @ 0x08056FF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	movs r0, #1
	str r0, [sp, #0x20]
	bl sub_806F9FC
	ldr r0, _08057020  @ gUnknown_0203A4D4
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08057024
	movs r0, #0
	bl SetBattleAnimArenaFlag
	b _0805702A
	.align 2, 0
_08057020: .4byte gUnknown_0203A4D4
_08057024:
	movs r0, #1
	bl SetBattleAnimArenaFlag
_0805702A:
	ldr r0, _08057040  @ gUnknown_0202BCB0
	ldrb r1, [r0, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08057044
	movs r0, #0
	bl sub_804FD48
	b _0805704A
	.align 2, 0
_08057040: .4byte gUnknown_0202BCB0
_08057044:
	movs r0, #1
	bl sub_804FD48
_0805704A:
	ldr r0, _08057064  @ gUnknown_0203A4D4
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0805706C
	ldr r1, _08057068  @ gUnknown_0203E120
	movs r0, #4
	strh r0, [r1]
	mov r8, r1
	b _08057072
	.align 2, 0
_08057064: .4byte gUnknown_0203A4D4
_08057068: .4byte gUnknown_0203E120
_0805706C:
	ldr r0, _080570A4  @ gUnknown_0203E120
	strh r2, [r0]
	mov r8, r0
_08057072:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #4
	bne _080570C0
	ldr r1, _080570A8  @ gUnknown_0203E188
	ldr r0, _080570AC  @ gUnknown_0203A4EC
	str r0, [r1]
	str r0, [sp, #8]
	ldr r1, _080570B0  @ gUnknown_0203E18C
	ldr r0, _080570B4  @ gUnknown_0203A56C
	str r0, [r1]
	str r0, [sp, #0xc]
	ldr r1, _080570B8  @ gUnknown_0203E108
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	ldr r0, _080570BC  @ gUnknown_0203E104
	movs r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r6, [sp, #8]
	adds r3, r0, #0
	b _080571C6
	.align 2, 0
_080570A4: .4byte gUnknown_0203E120
_080570A8: .4byte gUnknown_0203E188
_080570AC: .4byte gUnknown_0203A4EC
_080570B0: .4byte gUnknown_0203E18C
_080570B4: .4byte gUnknown_0203A56C
_080570B8: .4byte gUnknown_0203E108
_080570BC: .4byte gUnknown_0203E104
_080570C0:
	ldr r5, _080570F8  @ gUnknown_0203A4EC
	ldrb r1, [r5, #0xb]
	movs r4, #0x40
	negs r4, r4
	adds r0, r4, #0
	ands r0, r1
	bl GetAllegienceId
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r0, _080570FC  @ gUnknown_0203A56C
	ldrb r0, [r0, #0xb]
	ands r4, r0
	adds r0, r4, #0
	bl GetAllegienceId
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _08057100  @ gUnknown_0203A4D4
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08057104
	movs r3, #2
	str r3, [sp, #0x20]
	b _08057128
	.align 2, 0
_080570F8: .4byte gUnknown_0203A4EC
_080570FC: .4byte gUnknown_0203A56C
_08057100: .4byte gUnknown_0203A4D4
_08057104:
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r0, [r1]
	cmp r0, #0
	bne _08057114
	movs r4, #2
	str r4, [sp, #0x20]
	b _08057128
_08057114:
	ldrh r0, [r1]
	bl GetItemIndex
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl GetSpellAssocCharCount
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
_08057128:
	ldr r1, _08057180  @ gUnknown_0203E104
	movs r0, #1
	strh r0, [r1, #2]
	strh r0, [r1]
	movs r4, #0
	bl sub_804FD54
	cmp r0, #1
	beq _08057150
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0805714E
	cmp r0, #2
	beq _0805714E
	cmp r0, #1
	bne _08057150
	cmp r6, #1
	bne _08057150
_0805714E:
	movs r4, #1
_08057150:
	adds r2, r4, #0
	cmp r2, #1
	bne _0805719C
	ldr r1, _08057184  @ gUnknown_0203E188
	ldr r0, _08057188  @ gUnknown_0203A56C
	str r0, [r1]
	str r0, [sp, #8]
	ldr r1, _0805718C  @ gUnknown_0203E18C
	ldr r0, _08057190  @ gUnknown_0203A4EC
	str r0, [r1]
	str r0, [sp, #0xc]
	ldr r0, _08057194  @ gUnknown_0203E108
	movs r1, #0
	strh r2, [r0]
	strh r1, [r0, #2]
	ldr r5, _08057198  @ gUnknown_0203E120
	mov r8, r5
	ldr r6, [sp, #0xc]
	ldr r3, _08057180  @ gUnknown_0203E104
	ldr r7, [sp, #0x20]
	cmp r7, #1
	bne _080571C6
	strh r1, [r3]
	b _080571C6
	.align 2, 0
_08057180: .4byte gUnknown_0203E104
_08057184: .4byte gUnknown_0203E188
_08057188: .4byte gUnknown_0203A56C
_0805718C: .4byte gUnknown_0203E18C
_08057190: .4byte gUnknown_0203A4EC
_08057194: .4byte gUnknown_0203E108
_08057198: .4byte gUnknown_0203E120
_0805719C:
	ldr r1, _08057284  @ gUnknown_0203E188
	ldr r0, _08057288  @ gUnknown_0203A4EC
	str r0, [r1]
	str r0, [sp, #8]
	ldr r1, _0805728C  @ gUnknown_0203E18C
	ldr r0, _08057290  @ gUnknown_0203A56C
	str r0, [r1]
	str r0, [sp, #0xc]
	ldr r1, _08057294  @ gUnknown_0203E108
	movs r2, #0
	strh r2, [r1]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r0, _08057298  @ gUnknown_0203E120
	mov r8, r0
	ldr r6, [sp, #8]
	ldr r3, _0805729C  @ gUnknown_0203E104
	ldr r1, [sp, #0x20]
	cmp r1, #1
	bne _080571C6
	strh r2, [r3, #2]
_080571C6:
	ldr r2, [sp, #8]
	mov r9, r2
	ldr r4, [sp, #0xc]
	mov sl, r4
	ldr r5, [r2]
	str r5, [sp, #0x10]
	ldr r7, [r4]
	str r7, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #0x3c]
	ldrh r1, [r3, #2]
	ldrh r2, [r3]
	str r2, [sp, #0x1c]
	movs r4, #0
	ldrsh r5, [r3, r4]
	cmp r5, #0
	beq _080571F4
	mov r7, r9
	ldr r0, [r7, #4]
	ldr r0, [r0, #0x34]
	str r0, [sp, #0x3c]
_080571F4:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	str r0, [sp, #0x28]
	cmp r4, #0
	beq _08057206
	mov r1, sl
	ldr r0, [r1, #4]
	ldr r0, [r0, #0x34]
	str r0, [sp, #0x18]
_08057206:
	cmp r5, #0
	beq _08057232
	ldr r3, _080572A0  @ gUnknown_0203E122
	mov r2, r9
	movs r0, #0x10
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	ldr r2, _080572A4  @ gUnknown_0202BCB0
	movs r7, #0xc
	ldrsh r1, [r2, r7]
	subs r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r3]
	mov r1, r9
	movs r0, #0x11
	ldrsb r0, [r1, r0]
	lsls r0, r0, #4
	movs r7, #0xe
	ldrsh r1, [r2, r7]
	subs r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r3, #2]
_08057232:
	cmp r4, #0
	beq _0805725E
	ldr r3, _080572A0  @ gUnknown_0203E122
	mov r1, sl
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	lsls r0, r0, #4
	ldr r2, _080572A4  @ gUnknown_0202BCB0
	movs r7, #0xc
	ldrsh r1, [r2, r7]
	subs r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r3, #4]
	mov r1, sl
	movs r0, #0x11
	ldrsb r0, [r1, r0]
	lsls r0, r0, #4
	movs r7, #0xe
	ldrsh r1, [r2, r7]
	subs r0, r0, r1
	asrs r0, r0, #4
	strh r0, [r3, #6]
_0805725E:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #4
	beq _08057336
	adds r0, r6, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemAttributes
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	beq _080572A8
	movs r0, #2
	mov r3, r8
	strh r0, [r3]
	b _0805732C
	.align 2, 0
_08057284: .4byte gUnknown_0203E188
_08057288: .4byte gUnknown_0203A4EC
_0805728C: .4byte gUnknown_0203E18C
_08057290: .4byte gUnknown_0203A56C
_08057294: .4byte gUnknown_0203E108
_08057298: .4byte gUnknown_0203E120
_0805729C: .4byte gUnknown_0203E104
_080572A0: .4byte gUnknown_0203E122
_080572A4: .4byte gUnknown_0202BCB0
_080572A8:
	movs r0, #3
	mov r7, r8
	strh r0, [r7]
	adds r0, r5, r4
	cmp r0, #2
	bne _0805732C
	ldr r0, _080572CC  @ gUnknown_0203E122
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #4
	ldrsh r2, [r0, r3]
	subs r1, r1, r2
	adds r2, r0, #0
	cmp r1, #0
	blt _080572D0
	ldrh r0, [r2]
	ldrh r1, [r2, #4]
	b _080572D4
	.align 2, 0
_080572CC: .4byte gUnknown_0203E122
_080572D0:
	ldrh r0, [r2, #4]
	ldrh r1, [r2]
_080572D4:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	movs r4, #2
	ldrsh r0, [r2, r4]
	movs r5, #6
	ldrsh r1, [r2, r5]
	subs r0, r0, r1
	cmp r0, #0
	blt _080572F0
	ldrh r0, [r2, #2]
	ldrh r1, [r2, #6]
	b _080572F4
_080572F0:
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #2]
_080572F4:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	cmp r0, #1
	bgt _08057314
	ldr r1, _08057310  @ gUnknown_0203E120
	movs r0, #0
	b _08057328
	.align 2, 0
_08057310: .4byte gUnknown_0203E120
_08057314:
	cmp r0, #3
	bgt _08057324
	ldr r1, _08057320  @ gUnknown_0203E120
	movs r0, #1
	b _08057328
	.align 2, 0
_08057320: .4byte gUnknown_0203E120
_08057324:
	ldr r1, _08057374  @ gUnknown_0203E120
	movs r0, #2
_08057328:
	strh r0, [r1]
	mov r8, r1
_0805732C:
	mov r7, r8
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #4
	bne _080573B0
_08057336:
	ldr r2, [sp, #8]
	adds r2, #0x48
	mov r8, r2
	ldrh r2, [r2]
	mov r0, r9
	ldr r1, [sp, #0x3c]
	mov r3, sp
	bl GetBattleAnimationId
	ldr r6, _08057378  @ gUnknown_0203E182
	ldr r4, _0805737C  @ gUnknown_0203E10C
	strh r0, [r4]
	strh r0, [r6]
	ldr r5, [sp, #0xc]
	adds r5, #0x48
	ldrh r2, [r5]
	add r3, sp, #4
	mov r0, sl
	ldr r1, [sp, #0x18]
	bl GetBattleAnimationId
	strh r0, [r4, #2]
	strh r0, [r6, #2]
	ldr r3, [sp, #0x1c]
	lsls r3, r3, #0x10
	str r3, [sp, #0x24]
	mov r4, r8
	str r4, [sp, #0x2c]
	str r5, [sp, #0x30]
	b _080573FC
	.align 2, 0
_08057374: .4byte gUnknown_0203E120
_08057378: .4byte gUnknown_0203E182
_0805737C: .4byte gUnknown_0203E10C
_08057380:
	ldr r0, _08057390  @ gUnknown_0203E110
	ldr r1, _08057394  @ gUnknown_0895EEA4
	adds r1, r2, r1
	ldrb r1, [r1]
	subs r1, #1
	strh r1, [r0]
	b _08057448
	.align 2, 0
_08057390: .4byte gUnknown_0203E110
_08057394: .4byte gUnknown_0895EEA4
_08057398:
	ldr r0, _080573A8  @ gUnknown_0203E110
	ldr r1, _080573AC  @ gUnknown_0895EEA4
	adds r1, r2, r1
	ldrb r1, [r1]
	subs r1, #1
	strh r1, [r0, #2]
	b _08057486
	.align 2, 0
_080573A8: .4byte gUnknown_0203E110
_080573AC: .4byte gUnknown_0895EEA4
_080573B0:
	ldr r5, [sp, #0x1c]
	lsls r0, r5, #0x10
	str r0, [sp, #0x24]
	cmp r0, #0
	beq _080573D2
	ldr r0, [sp, #8]
	adds r0, #0x4a
	ldrh r2, [r0]
	mov r0, r9
	ldr r1, [sp, #0x3c]
	mov r3, sp
	bl GetBattleAnimationId
	ldr r2, _080575A4  @ gUnknown_0203E182
	ldr r1, _080575A8  @ gUnknown_0203E10C
	strh r0, [r1]
	strh r0, [r2]
_080573D2:
	ldr r7, [sp, #8]
	adds r7, #0x48
	str r7, [sp, #0x2c]
	ldr r0, [sp, #0xc]
	adds r0, #0x48
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _080573FC
	ldr r0, [sp, #0xc]
	adds r0, #0x4a
	ldrh r2, [r0]
	add r3, sp, #4
	mov r0, sl
	ldr r1, [sp, #0x18]
	bl GetBattleAnimationId
	ldr r2, _080575A4  @ gUnknown_0203E182
	ldr r1, _080575A8  @ gUnknown_0203E10C
	strh r0, [r1, #2]
	strh r0, [r2, #2]
_080573FC:
	mov r2, r9
	ldr r0, [r2]
	ldrb r0, [r0, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r3, r9
	ldr r0, [r3, #4]
	ldrb r4, [r0, #4]
	ldr r5, [sp, #0x24]
	asrs r3, r5, #0x10
	cmp r3, #0
	beq _0805741C
	ldr r1, _080575AC  @ gUnknown_0203E110
	ldr r0, _080575B0  @ 0x0000FFFF
	strh r0, [r1]
_0805741C:
	movs r1, #0
	lsls r0, r2, #3
	ldr r7, [sp, #8]
	adds r7, #0x55
	str r7, [sp, #0x34]
	ldr r5, [sp, #0xc]
	adds r5, #0x55
	str r5, [sp, #0x38]
	ldr r7, _080575B4  @ gUnknown_0895E0A4
	subs r6, r0, r2
_08057430:
	adds r2, r1, r6
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, r4
	bne _0805743E
	cmp r3, #0
	bne _08057380
_0805743E:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #6
	bls _08057430
_08057448:
	mov r7, sl
	ldr r0, [r7]
	ldrb r0, [r0, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r7, #4]
	ldrb r4, [r0, #4]
	ldr r0, [sp, #0x28]
	asrs r3, r0, #0x10
	cmp r3, #0
	beq _08057466
	ldr r1, _080575AC  @ gUnknown_0203E110
	ldr r0, _080575B0  @ 0x0000FFFF
	strh r0, [r1, #2]
_08057466:
	movs r1, #0
	lsls r0, r2, #3
	ldr r7, _080575B4  @ gUnknown_0895E0A4
	subs r6, r0, r2
_0805746E:
	adds r2, r1, r6
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, r4
	bne _0805747C
	cmp r3, #0
	bne _08057398
_0805747C:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #6
	bls _0805746E
_08057486:
	ldr r1, [sp, #0x24]
	asrs r6, r1, #0x10
	cmp r6, #0
	beq _080574A2
	ldr r0, _080575A4  @ gUnknown_0203E182
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r1, [sp, #8]
	adds r1, #0x4a
	ldrh r1, [r1]
	bl SomethingFilterBattleAnimId
	ldr r1, _080575B8  @ gUnknown_0203E19C
	str r0, [r1]
_080574A2:
	ldr r3, [sp, #0x28]
	asrs r5, r3, #0x10
	cmp r5, #0
	beq _080574BE
	ldr r0, _080575A4  @ gUnknown_0203E182
	movs r4, #2
	ldrsh r0, [r0, r4]
	ldr r1, [sp, #0xc]
	adds r1, #0x4a
	ldrh r1, [r1]
	bl SomethingFilterBattleAnimId
	ldr r1, _080575B8  @ gUnknown_0203E19C
	str r0, [r1, #4]
_080574BE:
	ldr r7, _080575BC  @ gUnknown_0203E1CC
	mov r8, r7
	ldr r1, [sp, #0x34]
	ldrb r0, [r1]
	mov r2, r8
	strh r0, [r2]
	ldr r3, [sp, #0x38]
	ldrb r0, [r3]
	strh r0, [r2, #2]
	ldr r7, _080575C0  @ gUnknown_0203E11C
	ldr r0, _080575B0  @ 0x0000FFFF
	strh r0, [r7, #2]
	movs r0, #1
	negs r0, r0
	strh r0, [r7]
	cmp r6, #0
	beq _080574F8
	ldrb r4, [r1]
	ldr r0, _080575C4  @ gUnknown_0202BCF0
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl GetROMChapterStruct
	ldrb r1, [r0, #0x13]
	adds r0, r4, #0
	bl sub_8057DA8
	strh r0, [r7]
_080574F8:
	cmp r5, #0
	beq _08057516
	ldr r0, [sp, #0x38]
	ldrb r4, [r0]
	ldr r0, _080575C4  @ gUnknown_0202BCF0
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl GetROMChapterStruct
	ldrb r1, [r0, #0x13]
	adds r0, r4, #0
	bl sub_8057DA8
	strh r0, [r7, #2]
_08057516:
	ldr r0, _080575C8  @ gUnknown_0202BCB0
	ldrb r1, [r0, #4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08057562
	movs r0, #0x30
	mov r1, r8
	strh r0, [r1]
	strh r0, [r1, #2]
	cmp r6, #0
	beq _08057544
	ldr r0, _080575C4  @ gUnknown_0202BCF0
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl GetROMChapterStruct
	ldrb r1, [r0, #0x13]
	movs r0, #0x30
	bl sub_8057DA8
	strh r0, [r7]
_08057544:
	cmp r5, #0
	beq _08057562
	mov r2, r8
	ldrh r4, [r2, #2]
	ldr r0, _080575C4  @ gUnknown_0202BCF0
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl GetROMChapterStruct
	ldrb r1, [r0, #0x13]
	adds r0, r4, #0
	bl sub_8057DA8
	strh r0, [r7, #2]
_08057562:
	bl sub_8076310
	cmp r0, #1
	bne _0805757A
	ldr r1, _080575C0  @ gUnknown_0203E11C
	movs r0, #0x14
	strh r0, [r1, #2]
	strh r0, [r1]
	ldr r1, _080575BC  @ gUnknown_0203E1CC
	movs r0, #0x30
	strh r0, [r1, #2]
	strh r0, [r1]
_0805757A:
	ldr r0, _080575CC  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	blt _08057592
	cmp r0, #3
	ble _08057592
	cmp r0, #4
	bne _08057592
	ldr r1, _080575C0  @ gUnknown_0203E11C
	ldrh r0, [r1, #2]
	strh r0, [r1]
_08057592:
	ldr r0, _080575C4  @ gUnknown_0202BCF0
	ldrb r0, [r0, #0x15]
	cmp r0, #2
	bgt _080575D4
	cmp r0, #1
	blt _080575D4
	ldr r1, _080575D0  @ gUnknown_0203E102
	movs r0, #1
	b _080575D8
	.align 2, 0
_080575A4: .4byte gUnknown_0203E182
_080575A8: .4byte gUnknown_0203E10C
_080575AC: .4byte gUnknown_0203E110
_080575B0: .4byte 0x0000FFFF
_080575B4: .4byte gUnknown_0895E0A4
_080575B8: .4byte gUnknown_0203E19C
_080575BC: .4byte gUnknown_0203E1CC
_080575C0: .4byte gUnknown_0203E11C
_080575C4: .4byte gUnknown_0202BCF0
_080575C8: .4byte gUnknown_0202BCB0
_080575CC: .4byte gUnknown_0203E120
_080575D0: .4byte gUnknown_0203E102
_080575D4:
	ldr r1, _08057658  @ gUnknown_0203E102
	movs r0, #0
_080575D8:
	strh r0, [r1]
	ldr r5, [sp, #0x24]
	asrs r4, r5, #0x10
	cmp r4, #0
	beq _080575F0
	ldr r0, _0805765C  @ gUnknown_0203E1D0
	mov r7, r9
	ldr r1, [r7, #4]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0]
_080575F0:
	ldr r0, [sp, #0x28]
	asrs r6, r0, #0x10
	cmp r6, #0
	beq _08057606
	ldr r0, _0805765C  @ gUnknown_0203E1D0
	mov r2, sl
	ldr r1, [r2, #4]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r0, #2]
_08057606:
	cmp r4, #0
	beq _08057622
	ldr r1, _08057660  @ gUnknown_0203E1AC
	ldr r0, [sp, #8]
	adds r0, #0x72
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
	ldr r1, _08057664  @ gUnknown_0203E1B0
	mov r3, r9
	movs r0, #0x12
	ldrsb r0, [r3, r0]
	strh r0, [r1]
_08057622:
	cmp r6, #0
	beq _0805763E
	ldr r1, _08057660  @ gUnknown_0203E1AC
	ldr r0, [sp, #0xc]
	adds r0, #0x72
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1, #2]
	ldr r1, _08057664  @ gUnknown_0203E1B0
	mov r5, sl
	movs r0, #0x12
	ldrsb r0, [r5, r0]
	strh r0, [r1, #2]
_0805763E:
	bl sub_80581EC
	ldr r0, _08057668  @ gUnknown_0203E120
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #4
	bne _08057670
	ldr r1, _0805766C  @ gUnknown_0203E118
	movs r0, #1
	strh r0, [r1, #2]
	strh r0, [r1]
	b _080576CC
	.align 2, 0
_08057658: .4byte gUnknown_0203E102
_0805765C: .4byte gUnknown_0203E1D0
_08057660: .4byte gUnknown_0203E1AC
_08057664: .4byte gUnknown_0203E1B0
_08057668: .4byte gUnknown_0203E120
_0805766C: .4byte gUnknown_0203E118
_08057670:
	cmp r4, #0
	beq _08057688
	mov r1, r9
	ldr r0, [r1, #4]
	ldrb r0, [r0, #4]
	ldr r1, [sp, #8]
	adds r1, #0x4a
	ldrh r1, [r1]
	bl GetSpellAnimId
	ldr r1, _08057714  @ gUnknown_0203E118
	strh r0, [r1]
_08057688:
	cmp r6, #0
	beq _080576A0
	mov r2, sl
	ldr r0, [r2, #4]
	ldrb r0, [r0, #4]
	ldr r1, [sp, #0xc]
	adds r1, #0x4a
	ldrh r1, [r1]
	bl GetSpellAnimId
	ldr r1, _08057714  @ gUnknown_0203E118
	strh r0, [r1, #2]
_080576A0:
	ldr r0, _08057718  @ gUnknown_0203A4D4
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080576CC
	ldr r0, [sp, #0xc]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl IsItemDisplayedInBattle
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080576CC
	mov r3, sl
	ldr r0, [r3, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x4d
	bne _080576CC
	ldr r1, _08057714  @ gUnknown_0203E118
	movs r0, #0xf
	strh r0, [r1, #2]
_080576CC:
	ldr r4, [sp, #0x24]
	cmp r4, #0
	beq _080576E0
	ldr r0, _08057714  @ gUnknown_0203E118
	ldr r1, [sp, #8]
	adds r1, #0x4a
	ldrh r2, [r1]
	movs r1, #0
	bl sub_80581A0
_080576E0:
	ldr r5, [sp, #0x28]
	cmp r5, #0
	beq _080576F4
	ldr r0, _0805771C  @ gUnknown_0203E11A
	ldr r1, [sp, #0xc]
	adds r1, #0x4a
	ldrh r2, [r1]
	movs r1, #1
	bl sub_80581A0
_080576F4:
	ldr r0, _08057720  @ gUnknown_0203E120
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	blt _0805773E
	cmp r0, #2
	bgt _0805773E
	mov r1, r9
	ldr r0, [r1, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x65
	beq _08057724
	cmp r0, #0x66
	beq _08057734
	b _0805773E
	.align 2, 0
_08057714: .4byte gUnknown_0203E118
_08057718: .4byte gUnknown_0203A4D4
_0805771C: .4byte gUnknown_0203E11A
_08057720: .4byte gUnknown_0203E120
_08057724:
	ldr r0, _08057730  @ gUnknown_02000000
	ldr r0, [r0]
	movs r1, #1
	bl sub_806FA84
	b _0805773E
	.align 2, 0
_08057730: .4byte gUnknown_02000000
_08057734:
	ldr r0, _080579DC  @ gUnknown_02000000
	ldr r0, [r0]
	movs r1, #2
	bl sub_806FA84
_0805773E:
	ldr r2, [sp, #0x24]
	asrs r6, r2, #0x10
	cmp r6, #0
	beq _08057758
	mov r3, r9
	ldrb r1, [r3, #0xb]
	movs r0, #0x40
	negs r0, r0
	ands r0, r1
	bl GetAllegienceId
	ldr r1, _080579E0  @ gUnknown_0203E114
	strh r0, [r1]
_08057758:
	ldr r5, [sp, #0x28]
	asrs r4, r5, #0x10
	cmp r4, #0
	beq _08057772
	mov r7, sl
	ldrb r1, [r7, #0xb]
	movs r0, #0x40
	negs r0, r0
	ands r0, r1
	bl GetAllegienceId
	ldr r1, _080579E0  @ gUnknown_0203E114
	strh r0, [r1, #2]
_08057772:
	ldr r1, _080579E4  @ gUnknown_0203E190
	movs r7, #0
	strb r7, [r1, #1]
	strb r7, [r1]
	cmp r6, #0
	beq _08057784
	ldr r2, [sp, #0x10]
	ldrb r0, [r2, #4]
	strb r0, [r1]
_08057784:
	cmp r4, #0
	beq _0805778E
	ldr r3, [sp, #0x14]
	ldrb r0, [r3, #4]
	strb r0, [r1, #1]
_0805778E:
	ldr r3, _080579E8  @ gUnknown_0203E1B8
	cmp r6, #0
	beq _0805779C
	ldr r0, [sp, #8]
	adds r0, #0x64
	ldrh r0, [r0]
	strh r0, [r3]
_0805779C:
	cmp r4, #0
	beq _080577A8
	ldr r0, [sp, #0xc]
	adds r0, #0x64
	ldrh r0, [r0]
	strh r0, [r3, #2]
_080577A8:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0xff
	bne _080577B8
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r1]
_080577B8:
	ldrh r1, [r3, #2]
	movs r5, #2
	ldrsh r0, [r3, r5]
	cmp r0, #0xff
	bne _080577C6
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r3, #2]
_080577C6:
	cmp r6, #0
	beq _08057800
	ldr r4, _080579F0  @ gUnknown_0203E1BC
	ldr r2, [sp, #8]
	adds r2, #0x5a
	ldr r0, [sp, #0xc]
	adds r0, #0x5c
	ldrh r1, [r2]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r4]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _080577E4
	strh r7, [r4]
_080577E4:
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0xff
	bne _080577F0
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r4]
_080577F0:
	ldr r1, [sp, #0x2c]
	ldrh r0, [r1]
	bl GetItemIndex
	cmp r0, #0xb5
	bne _08057800
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r4]
_08057800:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _0805783E
	ldr r4, _080579F0  @ gUnknown_0203E1BC
	ldr r2, [sp, #0xc]
	adds r2, #0x5a
	ldr r0, [sp, #8]
	adds r0, #0x5c
	ldrh r1, [r2]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r4, #2]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _08057822
	movs r0, #0
	strh r0, [r4, #2]
_08057822:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0xff
	bne _0805782E
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r4, #2]
_0805782E:
	ldr r5, [sp, #0x30]
	ldrh r0, [r5]
	bl GetItemIndex
	cmp r0, #0xb5
	bne _0805783E
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r4, #2]
_0805783E:
	ldr r7, [sp, #0x24]
	asrs r5, r7, #0x10
	ldr r7, _080579F4  @ gUnknown_0203E1C0
	cmp r5, #0
	beq _08057850
	ldr r0, [sp, #8]
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r7]
_08057850:
	ldr r0, [sp, #0x28]
	asrs r6, r0, #0x10
	cmp r6, #0
	beq _08057860
	ldr r0, [sp, #0xc]
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r7, #2]
_08057860:
	adds r4, r7, #0
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0xff
	bne _08057870
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r4]
_08057870:
	ldrh r1, [r4, #2]
	movs r3, #2
	ldrsh r0, [r4, r3]
	cmp r0, #0xff
	bne _0805787E
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r4, #2]
_0805787E:
	ldr r1, [sp, #0x2c]
	ldrh r0, [r1]
	bl GetItemIndex
	cmp r0, #0xb5
	bne _0805788E
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r4]
_0805788E:
	ldr r2, [sp, #0x30]
	ldrh r0, [r2]
	bl GetItemIndex
	cmp r0, #0xb5
	bne _0805789E
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r4, #2]
_0805789E:
	ldr r2, _080579F8  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #4
	bne _080578B8
	ldr r1, _080579E8  @ gUnknown_0203E1B8
	ldr r0, _080579EC  @ 0x0000FFFF
	strh r0, [r1, #2]
	ldr r1, _080579F0  @ gUnknown_0203E1BC
	movs r0, #1
	negs r0, r0
	strh r0, [r1, #2]
	strh r0, [r7, #2]
_080578B8:
	cmp r5, #0
	beq _080578CA
	ldr r1, _080579FC  @ gUnknown_0203E1C4
	ldr r0, [sp, #8]
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
_080578CA:
	cmp r6, #0
	beq _080578DC
	ldr r1, _080579FC  @ gUnknown_0203E1C4
	ldr r0, [sp, #0xc]
	adds r0, #0x71
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1, #2]
_080578DC:
	cmp r5, #0
	beq _080578EE
	ldr r1, _08057A00  @ gUnknown_0203E1C8
	ldr r0, [sp, #8]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
_080578EE:
	cmp r6, #0
	beq _08057900
	ldr r1, _08057A00  @ gUnknown_0203E1C8
	ldr r0, [sp, #0xc]
	adds r0, #0x6e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1, #2]
_08057900:
	ldr r1, _08057A04  @ gUnknown_0203E1D4
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r0, #4
	beq _08057996
	cmp r5, #0
	beq _08057920
	ldr r0, [sp, #8]
	adds r0, #0x53
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
_08057920:
	cmp r6, #0
	beq _08057930
	ldr r0, [sp, #0xc]
	adds r0, #0x53
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1, #2]
_08057930:
	cmp r5, #0
	beq _08057944
	mov r0, r9
	mov r1, sl
	bl IsSlayerApplied
	ldr r1, _08057A08  @ gUnknown_0203E1D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1]
_08057944:
	cmp r6, #0
	beq _08057958
	mov r0, sl
	mov r1, r9
	bl IsSlayerApplied
	ldr r1, _08057A08  @ gUnknown_0203E1D8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r1, #2]
_08057958:
	ldr r4, _08057A08  @ gUnknown_0203E1D8
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bne _08057976
	cmp r5, #0
	beq _08057976
	ldr r1, [sp, #0x2c]
	ldrh r0, [r1]
	mov r1, sl
	bl IsWeaponEffective
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4]
_08057976:
	ldr r4, _08057A08  @ gUnknown_0203E1D8
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08057996
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _08057996
	ldr r5, [sp, #0x30]
	ldrh r0, [r5]
	mov r1, r9
	bl IsWeaponEffective
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #2]
_08057996:
	ldr r0, _08057A0C  @ gUnknown_0203E1A4
	movs r4, #0
	str r4, [r0, #4]
	str r4, [r0]
	ldr r7, [sp, #0x24]
	cmp r7, #0
	beq _080579AE
	ldr r0, [sp, #8]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
_080579AE:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _080579BE
	ldr r0, [sp, #0xc]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
_080579BE:
	bl sub_804FD54
	cmp r0, #1
	beq _080579D2
	ldr r0, _08057A10  @ gUnknown_0202BCF0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08057A18
_080579D2:
	ldr r1, _08057A14  @ gUnknown_0203E1DC
	movs r0, #1
	strh r0, [r1, #2]
	strh r0, [r1]
	b _08057A1E
	.align 2, 0
_080579DC: .4byte gUnknown_02000000
_080579E0: .4byte gUnknown_0203E114
_080579E4: .4byte gUnknown_0203E190
_080579E8: .4byte gUnknown_0203E1B8
_080579EC: .4byte 0x0000FFFF
_080579F0: .4byte gUnknown_0203E1BC
_080579F4: .4byte gUnknown_0203E1C0
_080579F8: .4byte gUnknown_0203E120
_080579FC: .4byte gUnknown_0203E1C4
_08057A00: .4byte gUnknown_0203E1C8
_08057A04: .4byte gUnknown_0203E1D4
_08057A08: .4byte gUnknown_0203E1D8
_08057A0C: .4byte gUnknown_0203E1A4
_08057A10: .4byte gUnknown_0202BCF0
_08057A14: .4byte gUnknown_0203E1DC
_08057A18:
	ldr r0, _08057A3C  @ gUnknown_0203E1DC
	strh r4, [r0, #2]
	strh r4, [r0]
_08057A1E:
	ldr r5, _08057A40  @ gUnknown_0203E0FE
	movs r0, #0
	strh r0, [r5]
	bl sub_802CA98
	cmp r0, #3
	bne _08057A66
	ldr r0, _08057A44  @ gUnknown_0203E104
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08057A4C
	ldr r0, _08057A48  @ gUnknown_0203E1CC
	ldrh r4, [r0]
	b _08057A50
	.align 2, 0
_08057A3C: .4byte gUnknown_0203E1DC
_08057A40: .4byte gUnknown_0203E0FE
_08057A44: .4byte gUnknown_0203E104
_08057A48: .4byte gUnknown_0203E1CC
_08057A4C:
	ldr r0, _08057C78  @ gUnknown_0203E1CC
	ldrh r4, [r0, #2]
_08057A50:
	ldr r0, _08057C7C  @ gUnknown_0202BCF0
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl GetROMChapterStruct
	ldrb r1, [r0, #0x13]
	adds r0, r4, #0
	bl sub_8057ED0
	strh r0, [r5]
_08057A66:
	bl sub_8076310
	cmp r0, #1
	bne _08057A74
	ldr r1, _08057C80  @ gUnknown_0203E0FE
	movs r0, #0x3c
	strh r0, [r1]
_08057A74:
	movs r4, #0
	bl sub_802CA98
	cmp r0, #0
	bne _08057A80
	movs r4, #1
_08057A80:
	bl sub_802CA98
	cmp r0, #3
	bne _08057A8A
	movs r4, #1
_08057A8A:
	bl sub_802CA98
	cmp r0, #1
	bne _08057AB6
	ldr r0, _08057C84  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #4
	bne _08057A9E
	movs r4, #1
_08057A9E:
	bl sub_805B028
	cmp r0, #1
	bne _08057AA8
	movs r4, #1
_08057AA8:
	bl sub_8058B7C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08057AB6
	movs r4, #1
_08057AB6:
	bl sub_8058B70
	ldr r0, _08057C84  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #4
	beq _08057AE0
	mov r5, r9
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08057AD4
	b _08057C72
_08057AD4:
	mov r7, sl
	ldr r0, [r7, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08057AE0
	b _08057C72
_08057AE0:
	mov r1, r9
	ldr r0, [r1, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x3c
	bne _08057AFA
	ldr r0, [sp, #0xc]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0x52
	bne _08057AFA
	b _08057C72
_08057AFA:
	mov r2, sl
	ldr r0, [r2, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x3c
	bne _08057B14
	ldr r0, [sp, #8]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0x52
	bne _08057B14
	b _08057C72
_08057B14:
	mov r3, r9
	ldr r0, [r3, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x3c
	bne _08057B2E
	ldr r0, [sp, #0xc]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0x53
	bne _08057B2E
	b _08057C72
_08057B2E:
	mov r5, sl
	ldr r0, [r5, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x3c
	bne _08057B48
	ldr r0, [sp, #8]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0x53
	bne _08057B48
	b _08057C72
_08057B48:
	mov r7, r9
	ldr r0, [r7, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x3c
	bne _08057B62
	ldr r0, [sp, #0xc]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0x51
	bne _08057B62
	b _08057C72
_08057B62:
	mov r1, sl
	ldr r0, [r1, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x3c
	bne _08057B7A
	ldr r0, [sp, #8]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0x51
	beq _08057C72
_08057B7A:
	mov r2, r9
	ldr r0, [r2, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x3c
	bne _08057B92
	ldr r0, [sp, #0xc]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0xb5
	beq _08057C72
_08057B92:
	mov r3, sl
	ldr r0, [r3, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x3c
	bne _08057BAA
	ldr r0, [sp, #8]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0xb5
	beq _08057C72
_08057BAA:
	ldr r5, [sp, #0x20]
	cmp r5, #1
	beq _08057BD6
	mov r7, r9
	ldr r0, [r7, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x66
	bne _08057BD6
	ldr r0, [sp, #8]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0xa6
	beq _08057BD6
	mov r1, sl
	ldr r0, [r1, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x51
	beq _08057BD6
	cmp r0, #0x65
	bne _08057C98
_08057BD6:
	cmp r4, #0
	beq _08057C72
	ldr r0, _08057C88  @ gUnknown_0203E104
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r3, r0, #0
	cmp r1, #1
	bne _08057C28
	mov r0, r9
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	beq _08057C72
	ldr r0, _08057C8C  @ gUnknown_0203E182
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r2, #1
	negs r2, r2
	cmp r0, r2
	beq _08057C72
	ldr r0, _08057C90  @ gUnknown_0203E118
	movs r5, #0
	ldrsh r1, [r0, r5]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	beq _08057C72
	ldr r0, _08057C94  @ gUnknown_0203E11C
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, r2
	beq _08057C72
	ldr r0, _08057C78  @ gUnknown_0203E1CC
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x1b
	beq _08057C72
	cmp r0, #0x33
	beq _08057C72
_08057C28:
	movs r2, #2
	ldrsh r0, [r3, r2]
	cmp r0, #1
	bne _08057C98
	mov r0, sl
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #4
	beq _08057C72
	ldr r0, _08057C8C  @ gUnknown_0203E182
	movs r3, #2
	ldrsh r0, [r0, r3]
	movs r2, #1
	negs r2, r2
	cmp r0, r2
	beq _08057C72
	ldr r0, _08057C90  @ gUnknown_0203E118
	movs r4, #2
	ldrsh r1, [r0, r4]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	beq _08057C72
	ldr r0, _08057C94  @ gUnknown_0203E11C
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, r2
	beq _08057C72
	ldr r0, _08057C78  @ gUnknown_0203E1CC
	movs r7, #2
	ldrsh r0, [r0, r7]
	cmp r0, #0x1b
	beq _08057C72
	cmp r0, #0x33
	bne _08057C98
_08057C72:
	movs r0, #0
	b _08057C9A
	.align 2, 0
_08057C78: .4byte gUnknown_0203E1CC
_08057C7C: .4byte gUnknown_0202BCF0
_08057C80: .4byte gUnknown_0203E0FE
_08057C84: .4byte gUnknown_0203E120
_08057C88: .4byte gUnknown_0203E104
_08057C8C: .4byte gUnknown_0203E182
_08057C90: .4byte gUnknown_0203E118
_08057C94: .4byte gUnknown_0203E11C
_08057C98:
	movs r0, #1
_08057C9A:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8057CAC
sub_8057CAC: @ 0x08057CAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	mov r9, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r0, #0
	mov sl, r0
	cmp r4, #0
	beq _08057CE2
	mov r0, r8
	bl GetItemWType
	cmp r0, #9
	bne _08057CEC
	mov r0, r8
	bl IsItemDisplayedInBattle
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08057CEC
_08057CE2:
	ldr r0, _08057CE8  @ 0x0000FFFF
	b _08057D98
	.align 2, 0
_08057CE8: .4byte 0x0000FFFF
_08057CEC:
	mov r1, r8
	cmp r1, #0
	bne _08057CF6
	movs r3, #9
	b _08057D00
_08057CF6:
	mov r0, r8
	bl GetItemWType
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08057D00:
	str r4, [sp]
	ldr r2, [r5]
	ldr r1, [r5, #4]
	ldr r0, [r2, #0x28]
	ldr r1, [r1, #0x28]
	orrs r0, r1
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	adds r2, #0x25
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08057D26
	ldr r1, _08057D38  @ gUnknown_088AF834
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp]
_08057D26:
	movs r0, #0
	mov r2, r9
	str r0, [r2]
	movs r7, #0
	movs r1, #0
_08057D30:
	ldr r5, [sp]
	movs r6, #0
	b _08057D80
	.align 2, 0
_08057D38: .4byte gUnknown_088AF834
_08057D3C:
	cmp r7, #0
	bne _08057D44
	cmp r0, #0xff
	bhi _08057D7C
_08057D44:
	cmp r7, #1
	bne _08057D4E
	ldrh r0, [r5]
	cmp r0, #0xff
	bls _08057D7C
_08057D4E:
	ldrh r4, [r5]
	mov r0, r8
	str r1, [sp, #4]
	str r3, [sp, #8]
	bl GetItemIndex
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	cmp r4, r0
	beq _08057D6C
	ldrh r0, [r5]
	ldr r2, _08057D78  @ 0xFFFFFF00
	adds r0, r0, r2
	cmp r0, r3
	bne _08057D7C
_08057D6C:
	ldrh r5, [r5, #2]
	mov sl, r5
	mov r0, r9
	str r6, [r0]
	movs r1, #1
	b _08057D86
	.align 2, 0
_08057D78: .4byte 0xFFFFFF00
_08057D7C:
	adds r5, #4
	adds r6, #1
_08057D80:
	ldrh r0, [r5]
	cmp r0, #0
	bne _08057D3C
_08057D86:
	cmp r1, #1
	beq _08057D90
	adds r7, #1
	cmp r7, #1
	ble _08057D30
_08057D90:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08057D98:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8057DA8
sub_8057DA8: @ 0x08057DA8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x14
	bls _08057DB8
	b _08057EBC
_08057DB8:
	lsls r0, r0, #2
	ldr r1, _08057DC4  @ _08057DC8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08057DC4: .4byte _08057DC8
_08057DC8: @ jump table
	.4byte _08057EBC @ case 0
	.4byte _08057E1C @ case 1
	.4byte _08057E24 @ case 2
	.4byte _08057E2C @ case 3
	.4byte _08057E34 @ case 4
	.4byte _08057E3C @ case 5
	.4byte _08057E44 @ case 6
	.4byte _08057E4C @ case 7
	.4byte _08057E54 @ case 8
	.4byte _08057E5C @ case 9
	.4byte _08057E64 @ case 10
	.4byte _08057E6C @ case 11
	.4byte _08057E74 @ case 12
	.4byte _08057E7C @ case 13
	.4byte _08057E84 @ case 14
	.4byte _08057E8C @ case 15
	.4byte _08057E94 @ case 16
	.4byte _08057E9C @ case 17
	.4byte _08057EA4 @ case 18
	.4byte _08057EAC @ case 19
	.4byte _08057EB4 @ case 20
_08057E1C:
	ldr r0, _08057E20  @ gUnknown_0880C807
	b _08057EBE
	.align 2, 0
_08057E20: .4byte gUnknown_0880C807
_08057E24:
	ldr r0, _08057E28  @ gUnknown_0880C848
	b _08057EBE
	.align 2, 0
_08057E28: .4byte gUnknown_0880C848
_08057E2C:
	ldr r0, _08057E30  @ gUnknown_0880C889
	b _08057EBE
	.align 2, 0
_08057E30: .4byte gUnknown_0880C889
_08057E34:
	ldr r0, _08057E38  @ gUnknown_0880C8CA
	b _08057EBE
	.align 2, 0
_08057E38: .4byte gUnknown_0880C8CA
_08057E3C:
	ldr r0, _08057E40  @ gUnknown_0880C90B
	b _08057EBE
	.align 2, 0
_08057E40: .4byte gUnknown_0880C90B
_08057E44:
	ldr r0, _08057E48  @ gUnknown_0880C94C
	b _08057EBE
	.align 2, 0
_08057E48: .4byte gUnknown_0880C94C
_08057E4C:
	ldr r0, _08057E50  @ gUnknown_0880C98D
	b _08057EBE
	.align 2, 0
_08057E50: .4byte gUnknown_0880C98D
_08057E54:
	ldr r0, _08057E58  @ gUnknown_0880C9CE
	b _08057EBE
	.align 2, 0
_08057E58: .4byte gUnknown_0880C9CE
_08057E5C:
	ldr r0, _08057E60  @ gUnknown_0880CA0F
	b _08057EBE
	.align 2, 0
_08057E60: .4byte gUnknown_0880CA0F
_08057E64:
	ldr r0, _08057E68  @ gUnknown_0880CA50
	b _08057EBE
	.align 2, 0
_08057E68: .4byte gUnknown_0880CA50
_08057E6C:
	ldr r0, _08057E70  @ gUnknown_0880CA91
	b _08057EBE
	.align 2, 0
_08057E70: .4byte gUnknown_0880CA91
_08057E74:
	ldr r0, _08057E78  @ gUnknown_0880CAD2
	b _08057EBE
	.align 2, 0
_08057E78: .4byte gUnknown_0880CAD2
_08057E7C:
	ldr r0, _08057E80  @ gUnknown_0880CB13
	b _08057EBE
	.align 2, 0
_08057E80: .4byte gUnknown_0880CB13
_08057E84:
	ldr r0, _08057E88  @ gUnknown_0880CB54
	b _08057EBE
	.align 2, 0
_08057E88: .4byte gUnknown_0880CB54
_08057E8C:
	ldr r0, _08057E90  @ gUnknown_0880CB95
	b _08057EBE
	.align 2, 0
_08057E90: .4byte gUnknown_0880CB95
_08057E94:
	ldr r0, _08057E98  @ gUnknown_0880CBD6
	b _08057EBE
	.align 2, 0
_08057E98: .4byte gUnknown_0880CBD6
_08057E9C:
	ldr r0, _08057EA0  @ gUnknown_0880CC17
	b _08057EBE
	.align 2, 0
_08057EA0: .4byte gUnknown_0880CC17
_08057EA4:
	ldr r0, _08057EA8  @ gUnknown_0880CC58
	b _08057EBE
	.align 2, 0
_08057EA8: .4byte gUnknown_0880CC58
_08057EAC:
	ldr r0, _08057EB0  @ gUnknown_0880CC99
	b _08057EBE
	.align 2, 0
_08057EB0: .4byte gUnknown_0880CC99
_08057EB4:
	ldr r0, _08057EB8  @ gUnknown_0880CCDA
	b _08057EBE
	.align 2, 0
_08057EB8: .4byte gUnknown_0880CCDA
_08057EBC:
	ldr r0, _08057ECC  @ gUnknown_0880C7C6
_08057EBE:
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08057ECC: .4byte gUnknown_0880C7C6

	THUMB_FUNC_START sub_8057ED0
sub_8057ED0: @ 0x08057ED0
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x14
	bls _08057EE0
	b _08057FE4
_08057EE0:
	lsls r0, r0, #2
	ldr r1, _08057EEC  @ _08057EF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08057EEC: .4byte _08057EF0
_08057EF0: @ jump table
	.4byte _08057FE4 @ case 0
	.4byte _08057F44 @ case 1
	.4byte _08057F4C @ case 2
	.4byte _08057F54 @ case 3
	.4byte _08057F5C @ case 4
	.4byte _08057F64 @ case 5
	.4byte _08057F6C @ case 6
	.4byte _08057F74 @ case 7
	.4byte _08057F7C @ case 8
	.4byte _08057F84 @ case 9
	.4byte _08057F8C @ case 10
	.4byte _08057F94 @ case 11
	.4byte _08057F9C @ case 12
	.4byte _08057FA4 @ case 13
	.4byte _08057FAC @ case 14
	.4byte _08057FB4 @ case 15
	.4byte _08057FBC @ case 16
	.4byte _08057FC4 @ case 17
	.4byte _08057FCC @ case 18
	.4byte _08057FD4 @ case 19
	.4byte _08057FDC @ case 20
_08057F44:
	ldr r0, _08057F48  @ gUnknown_0880CD5C
	b _08057FE6
	.align 2, 0
_08057F48: .4byte gUnknown_0880CD5C
_08057F4C:
	ldr r0, _08057F50  @ gUnknown_0880CD9D
	b _08057FE6
	.align 2, 0
_08057F50: .4byte gUnknown_0880CD9D
_08057F54:
	ldr r0, _08057F58  @ gUnknown_0880CDDE
	b _08057FE6
	.align 2, 0
_08057F58: .4byte gUnknown_0880CDDE
_08057F5C:
	ldr r0, _08057F60  @ gUnknown_0880CE1F
	b _08057FE6
	.align 2, 0
_08057F60: .4byte gUnknown_0880CE1F
_08057F64:
	ldr r0, _08057F68  @ gUnknown_0880CE60
	b _08057FE6
	.align 2, 0
_08057F68: .4byte gUnknown_0880CE60
_08057F6C:
	ldr r0, _08057F70  @ gUnknown_0880CEA1
	b _08057FE6
	.align 2, 0
_08057F70: .4byte gUnknown_0880CEA1
_08057F74:
	ldr r0, _08057F78  @ gUnknown_0880CEE2
	b _08057FE6
	.align 2, 0
_08057F78: .4byte gUnknown_0880CEE2
_08057F7C:
	ldr r0, _08057F80  @ gUnknown_0880CF23
	b _08057FE6
	.align 2, 0
_08057F80: .4byte gUnknown_0880CF23
_08057F84:
	ldr r0, _08057F88  @ gUnknown_0880CF64
	b _08057FE6
	.align 2, 0
_08057F88: .4byte gUnknown_0880CF64
_08057F8C:
	ldr r0, _08057F90  @ gUnknown_0880CFA5
	b _08057FE6
	.align 2, 0
_08057F90: .4byte gUnknown_0880CFA5
_08057F94:
	ldr r0, _08057F98  @ gUnknown_0880CFE6
	b _08057FE6
	.align 2, 0
_08057F98: .4byte gUnknown_0880CFE6
_08057F9C:
	ldr r0, _08057FA0  @ gUnknown_0880D027
	b _08057FE6
	.align 2, 0
_08057FA0: .4byte gUnknown_0880D027
_08057FA4:
	ldr r0, _08057FA8  @ gUnknown_0880D068
	b _08057FE6
	.align 2, 0
_08057FA8: .4byte gUnknown_0880D068
_08057FAC:
	ldr r0, _08057FB0  @ gUnknown_0880D0A9
	b _08057FE6
	.align 2, 0
_08057FB0: .4byte gUnknown_0880D0A9
_08057FB4:
	ldr r0, _08057FB8  @ gUnknown_0880D0EA
	b _08057FE6
	.align 2, 0
_08057FB8: .4byte gUnknown_0880D0EA
_08057FBC:
	ldr r0, _08057FC0  @ gUnknown_0880D12B
	b _08057FE6
	.align 2, 0
_08057FC0: .4byte gUnknown_0880D12B
_08057FC4:
	ldr r0, _08057FC8  @ gUnknown_0880D16C
	b _08057FE6
	.align 2, 0
_08057FC8: .4byte gUnknown_0880D16C
_08057FCC:
	ldr r0, _08057FD0  @ gUnknown_0880D1AD
	b _08057FE6
	.align 2, 0
_08057FD0: .4byte gUnknown_0880D1AD
_08057FD4:
	ldr r0, _08057FD8  @ gUnknown_0880D1EE
	b _08057FE6
	.align 2, 0
_08057FD8: .4byte gUnknown_0880D1EE
_08057FDC:
	ldr r0, _08057FE0  @ gUnknown_0880D22F
	b _08057FE6
	.align 2, 0
_08057FE0: .4byte gUnknown_0880D22F
_08057FE4:
	ldr r0, _08057FF4  @ gUnknown_0880CD1B
_08057FE6:
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_08057FF4: .4byte gUnknown_0880CD1B

	THUMB_FUNC_START GetSpellAnimId
GetSpellAnimId: @ 0x08057FF8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	bl GetItemIndex
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08058014  @ gUnknown_088AFBD8
	ldrh r1, [r3]
	ldr r2, _08058018  @ 0x0000FFFF
	b _08058020
	.align 2, 0
_08058014: .4byte gUnknown_088AFBD8
_08058018: .4byte 0x0000FFFF
_0805801C:
	adds r3, #0x10
	ldrh r1, [r3]
_08058020:
	cmp r1, r2
	beq _08058028
	cmp r1, r0
	bne _0805801C
_08058028:
	ldrh r2, [r3, #4]
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #3
	beq _08058034
	b _08058196
_08058034:
	subs r0, r4, #5
	cmp r0, #0x49
	bls _0805803C
	b _08058196
_0805803C:
	lsls r0, r0, #2
	ldr r1, _08058048  @ _0805804C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08058048: .4byte _0805804C
_0805804C: @ jump table
	.4byte _08058174 @ case 0
	.4byte _08058174 @ case 1
	.4byte _0805817C @ case 2
	.4byte _08058180 @ case 3
	.4byte _08058196 @ case 4
	.4byte _08058196 @ case 5
	.4byte _08058194 @ case 6
	.4byte _08058194 @ case 7
	.4byte _08058196 @ case 8
	.4byte _08058196 @ case 9
	.4byte _08058196 @ case 10
	.4byte _08058196 @ case 11
	.4byte _08058196 @ case 12
	.4byte _08058196 @ case 13
	.4byte _08058196 @ case 14
	.4byte _08058196 @ case 15
	.4byte _08058196 @ case 16
	.4byte _08058196 @ case 17
	.4byte _08058196 @ case 18
	.4byte _08058196 @ case 19
	.4byte _08058196 @ case 20
	.4byte _08058196 @ case 21
	.4byte _08058196 @ case 22
	.4byte _08058196 @ case 23
	.4byte _08058196 @ case 24
	.4byte _08058196 @ case 25
	.4byte _0805818C @ case 26
	.4byte _0805818C @ case 27
	.4byte _08058190 @ case 28
	.4byte _08058190 @ case 29
	.4byte _08058196 @ case 30
	.4byte _08058196 @ case 31
	.4byte _08058196 @ case 32
	.4byte _08058196 @ case 33
	.4byte _08058196 @ case 34
	.4byte _08058196 @ case 35
	.4byte _08058196 @ case 36
	.4byte _08058196 @ case 37
	.4byte _08058196 @ case 38
	.4byte _08058196 @ case 39
	.4byte _08058196 @ case 40
	.4byte _08058196 @ case 41
	.4byte _08058196 @ case 42
	.4byte _08058196 @ case 43
	.4byte _08058196 @ case 44
	.4byte _08058196 @ case 45
	.4byte _08058196 @ case 46
	.4byte _08058196 @ case 47
	.4byte _08058196 @ case 48
	.4byte _08058196 @ case 49
	.4byte _08058196 @ case 50
	.4byte _08058196 @ case 51
	.4byte _08058196 @ case 52
	.4byte _08058196 @ case 53
	.4byte _08058196 @ case 54
	.4byte _08058196 @ case 55
	.4byte _08058196 @ case 56
	.4byte _08058196 @ case 57
	.4byte _08058196 @ case 58
	.4byte _08058196 @ case 59
	.4byte _08058196 @ case 60
	.4byte _08058196 @ case 61
	.4byte _08058196 @ case 62
	.4byte _08058196 @ case 63
	.4byte _08058196 @ case 64
	.4byte _08058196 @ case 65
	.4byte _08058196 @ case 66
	.4byte _08058184 @ case 67
	.4byte _08058188 @ case 68
	.4byte _08058196 @ case 69
	.4byte _08058196 @ case 70
	.4byte _08058196 @ case 71
	.4byte _08058196 @ case 72
	.4byte _08058178 @ case 73
_08058174:
	movs r2, #4
	b _08058196
_08058178:
	movs r2, #5
	b _08058196
_0805817C:
	movs r2, #6
	b _08058196
_08058180:
	movs r2, #0xd
	b _08058196
_08058184:
	movs r2, #7
	b _08058196
_08058188:
	movs r2, #8
	b _08058196
_0805818C:
	movs r2, #9
	b _08058196
_08058190:
	movs r2, #0xa
	b _08058196
_08058194:
	movs r2, #0xb
_08058196:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80581A0
sub_80581A0: @ 0x080581A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r2, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl GetItemIndex
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080581C6
	movs r0, #0
	strh r0, [r4]
_080581C6:
	ldr r0, _080581E8  @ gUnknown_0203E100
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r5
	beq _080581E0
	cmp r2, #0x54
	blt _080581E0
	cmp r2, #0x56
	ble _080581DC
	cmp r2, #0x58
	bne _080581E0
_080581DC:
	movs r0, #0
	strh r0, [r4]
_080581E0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080581E8: .4byte gUnknown_0203E100

	THUMB_FUNC_START sub_80581EC
sub_80581EC: @ 0x080581EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r7, _08058244  @ gUnknown_0203A5EC
	movs r2, #0
	ldr r4, _08058248  @ gUnknown_0203E12A
	ldr r5, _0805824C  @ gUnknown_0203E194
	ldr r6, _08058250  @ gUnknown_0203E120
	ldr r0, _08058254  @ 0x0000FFFF
	adds r3, r0, #0
	adds r1, r4, #0
_08058208:
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x13
	bls _08058208
	movs r2, #0
	ldr r0, _08058258  @ gUnknown_0203E156
	ldr r1, _08058254  @ 0x0000FFFF
	adds r3, r1, #0
	adds r1, r0, #4
_08058220:
	ldrh r0, [r1]
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x13
	bls _08058220
	movs r2, #0
	str r2, [r5, #4]
	str r2, [r5]
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #4
	bne _0805825C
	strh r0, [r4]
	strh r0, [r4, #2]
	b _08058834
	.align 2, 0
_08058244: .4byte gUnknown_0203A5EC
_08058248: .4byte gUnknown_0203E12A
_0805824C: .4byte gUnknown_0203E194
_08058250: .4byte gUnknown_0203E120
_08058254: .4byte 0x0000FFFF
_08058258: .4byte gUnknown_0203E156
_0805825C:
	ldr r0, _08058270  @ gUnknown_0203A4D4
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08058274
	movs r0, #6
	strh r0, [r4]
	strh r2, [r4, #2]
	b _08058834
	.align 2, 0
_08058270: .4byte gUnknown_0203A4D4
_08058274:
	ldrh r6, [r6]
	str r6, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, _08058348  @ gUnknown_0203E188
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, _0805834C  @ gUnknown_0203E18C
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0x11
	bne _0805829C
	cmp r6, #0
	bne _0805829C
	movs r5, #1
	str r5, [sp, #0x14]
_0805829C:
	ldr r4, [sp, #8]
	adds r4, #0x4a
	ldrh r0, [r4]
	bl GetItemIndex
	adds r5, r4, #0
	cmp r0, #0x11
	bne _080582B6
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _080582B6
	movs r1, #1
	str r1, [sp, #0x18]
_080582B6:
	ldr r4, [sp, #4]
	adds r4, #0x4a
	ldrh r0, [r4]
	bl GetItemIndex
	cmp r0, #0x28
	bne _080582CE
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne _080582CE
	movs r3, #1
	str r3, [sp, #0x14]
_080582CE:
	ldrh r0, [r5]
	bl GetItemIndex
	cmp r0, #0x28
	bne _080582E2
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _080582E2
	movs r1, #1
	str r1, [sp, #0x18]
_080582E2:
	ldrh r0, [r4]
	bl GetItemIndex
	cmp r0, #0x29
	bne _080582F6
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne _080582F6
	movs r3, #1
	str r3, [sp, #0x14]
_080582F6:
	ldrh r0, [r5]
	bl GetItemIndex
	cmp r0, #0x29
	bne _0805830A
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0805830A
	movs r1, #1
	str r1, [sp, #0x18]
_0805830A:
	ldrh r0, [r4]
	bl GetItemIndex
	cmp r0, #0x2c
	bne _0805831E
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne _0805831E
	movs r3, #1
	str r3, [sp, #0x14]
_0805831E:
	ldrh r0, [r5]
	bl GetItemIndex
	cmp r0, #0x2c
	bne _08058332
	ldr r5, [sp, #0x18]
	cmp r5, #0
	bne _08058332
	movs r0, #1
	str r0, [sp, #0x18]
_08058332:
	ldr r3, _08058350  @ gUnknown_0203E156
	ldr r1, _08058354  @ gUnknown_0203E1AC
	ldrh r0, [r1]
	strh r0, [r3]
	ldrh r0, [r1, #2]
	strh r0, [r3, #2]
	movs r1, #0
	str r1, [sp, #0xc]
	mov sl, r1
	mov r9, r1
	b _08058824
	.align 2, 0
_08058348: .4byte gUnknown_0203E188
_0805834C: .4byte gUnknown_0203E18C
_08058350: .4byte gUnknown_0203E156
_08058354: .4byte gUnknown_0203E1AC
_08058358:
	lsls r0, r2, #8
	lsrs r0, r0, #0x1b
	movs r1, #8
	ands r0, r1
	negs r0, r0
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, _08058390  @ gUnknown_0203E108
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r3, [sp, #0x10]
	cmp r0, r3
	bne _08058398
	mov r5, sp
	movs r0, #2
	add r0, sp
	mov r8, r0
	ldr r4, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r6, [sp, #4]
	movs r3, #0
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _080583B4
	ldr r0, _08058394  @ gUnknown_0203E100
	strh r2, [r0]
	b _080583B4
	.align 2, 0
_08058390: .4byte gUnknown_0203E108
_08058394: .4byte gUnknown_0203E100
_08058398:
	mov r5, sp
	adds r5, #2
	mov r8, sp
	ldr r4, [sp, #0x18]
	ldr r3, [sp, #0x14]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #8]
	movs r3, #0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _080583B4
	ldr r1, _080583F0  @ gUnknown_0203E100
	movs r0, #1
	strh r0, [r1]
_080583B4:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080583D0
	ldr r2, _080583F4  @ gUnknown_0203E194
	ldr r1, _080583F8  @ gUnknown_0203A4D4
	ldr r0, [r1, #0x10]
	str r0, [r2]
	ldr r0, [r1, #0x14]
	str r0, [r2, #4]
_080583D0:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0xd
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08058408
	adds r0, r6, #0
	bl UnitHasMagicRank
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058400
	ldr r0, _080583FC  @ gUnknown_080DAEA0
	b _08058482
	.align 2, 0
_080583F0: .4byte gUnknown_0203E100
_080583F4: .4byte gUnknown_0203E194
_080583F8: .4byte gUnknown_0203A4D4
_080583FC: .4byte gUnknown_080DAEA0
_08058400:
	ldr r0, _08058404  @ gUnknown_080DAEC8
	b _08058482
	.align 2, 0
_08058404: .4byte gUnknown_080DAEC8
_08058408:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08058430
	adds r0, r6, #0
	bl UnitHasMagicRank
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08058428
	ldr r0, _08058424  @ gUnknown_080DAEA0
	b _08058482
	.align 2, 0
_08058424: .4byte gUnknown_080DAEA0
_08058428:
	ldr r0, _0805842C  @ gUnknown_080DAEC8
	b _08058482
	.align 2, 0
_0805842C: .4byte gUnknown_080DAEC8
_08058430:
	lsls r0, r3, #0x10
	cmp r0, #0
	blt _08058454
	adds r0, r6, #0
	bl UnitHasMagicRank
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805844C
	ldr r0, _08058448  @ gUnknown_080DAE8C
	b _08058482
	.align 2, 0
_08058448: .4byte gUnknown_080DAE8C
_0805844C:
	ldr r0, _08058450  @ gUnknown_080DAEBE
	b _08058482
	.align 2, 0
_08058450: .4byte gUnknown_080DAEBE
_08058454:
	movs r0, #2
	bl sub_80716B0
	cmp r0, #1
	beq _08058478
	cmp r0, #1
	bgt _08058468
	cmp r0, #0
	beq _0805846E
	b _0805848C
_08058468:
	cmp r0, #2
	beq _08058480
	b _0805848C
_0805846E:
	ldr r0, _08058474  @ gUnknown_080DAED2
	b _08058482
	.align 2, 0
_08058474: .4byte gUnknown_080DAED2
_08058478:
	ldr r0, _0805847C  @ gUnknown_080DAEDC
	b _08058482
	.align 2, 0
_0805847C: .4byte gUnknown_080DAEDC
_08058480:
	ldr r0, _080584AC  @ gUnknown_080DAEE6
_08058482:
	lsls r1, r4, #0x10
	asrs r1, r1, #0xf
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r5]
_0805848C:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080584DC
	adds r0, r6, #0
	bl UnitHasMagicRank
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080584B4
	ldr r0, _080584B0  @ gUnknown_080DAE96
	b _080584B6
	.align 2, 0
_080584AC: .4byte gUnknown_080DAEE6
_080584B0: .4byte gUnknown_080DAE96
_080584B4:
	ldr r0, _080584D4  @ gUnknown_080DAEBE
_080584B6:
	lsls r1, r4, #0x10
	asrs r1, r1, #0xf
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r5]
	ldr r0, _080584D8  @ gUnknown_080DAEAA
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0xf
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r3, r8
	strh r0, [r3]
	b _080584EC
	.align 2, 0
_080584D4: .4byte gUnknown_080DAEBE
_080584D8: .4byte gUnknown_080DAEAA
_080584DC:
	ldr r0, _08058560  @ gUnknown_080DAEB4
	ldr r5, [sp, #0x1c]
	lsls r1, r5, #0x10
	asrs r1, r1, #0xf
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r1, r8
	strh r0, [r1]
_080584EC:
	ldr r1, _08058564  @ gUnknown_0203E12A
	ldr r2, [sp, #0xc]
	lsls r0, r2, #2
	adds r5, r0, r1
	mov r0, sp
	ldrh r0, [r0]
	movs r6, #0
	strh r0, [r5]
	lsls r0, r2, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r4, r0, r1
	mov r3, sp
	ldrh r0, [r3, #2]
	strh r0, [r4]
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r1, r0, #0xd
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805851A
	b _0805881C
_0805851A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080585B4
	ldr r0, _08058568  @ gUnknown_0203E108
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	bne _08058574
	mov r3, r9
	lsls r0, r3, #1
	bl sub_8058A60
	movs r1, #3
	ldrsb r1, [r7, r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08058546
	movs r2, #0
_08058546:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r0, r0, #2
	ldr r1, _0805856C  @ gUnknown_0203E156
	adds r0, r0, r1
	strh r2, [r0]
	ldrh r0, [r5]
	ldr r2, _08058570  @ 0xFFFF8000
	adds r1, r2, #0
	b _0805875E
	.align 2, 0
_08058560: .4byte gUnknown_080DAEB4
_08058564: .4byte gUnknown_0203E12A
_08058568: .4byte gUnknown_0203E108
_0805856C: .4byte gUnknown_0203E156
_08058570: .4byte 0xFFFF8000
_08058574:
	mov r3, sl
	lsls r0, r3, #1
	adds r0, #1
	bl sub_8058A60
	movs r1, #3
	ldrsb r1, [r7, r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0805858E
	movs r2, #0
_0805858E:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	ldr r5, _080585AC  @ gUnknown_0203E156
	adds r0, r0, r5
	strh r2, [r0]
	ldrh r0, [r4]
	ldr r2, _080585B0  @ 0xFFFF8000
	b _08058816
	.align 2, 0
_080585AC: .4byte gUnknown_0203E156
_080585B0: .4byte 0xFFFF8000
_080585B4:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080586A0
	ldr r0, _08058628  @ gUnknown_0203E108
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r5, [sp, #0x10]
	cmp r0, r5
	bne _08058634
	mov r1, sl
	lsls r0, r1, #1
	adds r0, #1
	bl sub_8058A60
	movs r1, #3
	ldrsb r1, [r7, r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080585E4
	movs r2, #0
_080585E4:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r4, _0805862C  @ gUnknown_0203E156
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	strh r2, [r0]
	mov r2, r9
	lsls r0, r2, #1
	bl sub_8058A60
	movs r1, #3
	ldrsb r1, [r7, r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r3, _08058630  @ gUnknown_0203E1B0
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r3, r5]
	cmp r0, r1
	ble _0805861A
	ldrh r2, [r3]
_0805861A:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r0, r0, #2
	b _08058690
	.align 2, 0
_08058628: .4byte gUnknown_0203E108
_0805862C: .4byte gUnknown_0203E156
_08058630: .4byte gUnknown_0203E1B0
_08058634:
	mov r1, r9
	lsls r0, r1, #1
	bl sub_8058A60
	movs r1, #3
	ldrsb r1, [r7, r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0805864C
	movs r2, #0
_0805864C:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r4, _08058698  @ gUnknown_0203E156
	lsls r0, r0, #2
	adds r0, r0, r4
	strh r2, [r0]
	mov r2, sl
	lsls r0, r2, #1
	adds r0, #1
	bl sub_8058A60
	movs r1, #3
	ldrsb r1, [r7, r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	ldr r3, _0805869C  @ gUnknown_0203E1B0
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #2
	ldrsh r1, [r3, r5]
	cmp r0, r1
	ble _08058680
	ldrh r2, [r3, #2]
_08058680:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
_08058690:
	adds r0, r0, r4
	strh r2, [r0]
	b _0805881C
	.align 2, 0
_08058698: .4byte gUnknown_0203E156
_0805869C: .4byte gUnknown_0203E1B0
_080586A0:
	ldr r0, _08058764  @ gUnknown_0203E108
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0x10]
	cmp r0, r2
	bne _0805876C
	mov r3, sl
	lsls r0, r3, #1
	adds r0, #1
	bl sub_8058A60
	movs r1, #3
	ldrsb r1, [r7, r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _080586C6
	movs r2, #0
_080586C6:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	ldr r1, _08058768  @ gUnknown_0203E156
	adds r0, r0, r1
	strh r2, [r0]
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080586F6
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
_080586F6:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r2, #0x80
	lsls r2, r2, #4
	ands r0, r2
	cmp r0, #0
	beq _08058712
	ldrh r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r5]
_08058712:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0805872A
	ldrh r1, [r5]
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5]
_0805872A:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08058746
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
_08058746:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805881C
	ldrh r0, [r5]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
_0805875E:
	orrs r0, r1
	strh r0, [r5]
	b _0805881C
	.align 2, 0
_08058764: .4byte gUnknown_0203E108
_08058768: .4byte gUnknown_0203E156
_0805876C:
	mov r1, r9
	lsls r0, r1, #1
	bl sub_8058A60
	movs r1, #3
	ldrsb r1, [r7, r1]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08058784
	movs r2, #0
_08058784:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r0, r0, #2
	ldr r3, _08058844  @ gUnknown_0203E156
	adds r0, r0, r3
	strh r2, [r0]
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080587B0
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
_080587B0:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r2, #0x80
	lsls r2, r2, #4
	ands r0, r2
	cmp r0, #0
	beq _080587CC
	ldrh r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r4]
_080587CC:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080587E4
	ldrh r1, [r4]
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4]
_080587E4:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _08058800
	ldrh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r4]
_08058800:
	ldr r0, [r7]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xd
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805881C
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #3
_08058816:
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
_0805881C:
	adds r7, #4
	ldr r3, [sp, #0xc]
	adds r3, #1
	str r3, [sp, #0xc]
_08058824:
	ldr r2, [r7]
	lsls r0, r2, #8
	lsrs r0, r0, #0x1b
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08058834
	b _08058358
_08058834:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058844: .4byte gUnknown_0203E156

	THUMB_FUNC_START GetBattleAnimationId
GetBattleAnimationId: @ 0x08058848
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r1, #0
	mov r9, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r0, #0
	mov sl, r0
	cmp r4, #0
	beq _0805887C
	mov r0, r8
	bl GetItemWType
	cmp r0, #9
	bne _08058884
	mov r0, r8
	bl IsItemDisplayedInBattle
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08058884
_0805887C:
	ldr r0, _08058880  @ 0x0000FFFF
	b _08058908
	.align 2, 0
_08058880: .4byte 0x0000FFFF
_08058884:
	mov r1, r8
	cmp r1, #0
	bne _0805888E
	movs r2, #9
	b _08058898
_0805888E:
	mov r0, r8
	bl GetItemWType
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08058898:
	str r4, [sp]
	movs r0, #0
	mov r3, r9
	str r0, [r3]
	movs r7, #0
	movs r1, #0
_080588A4:
	ldr r5, [sp]
	movs r6, #0
	b _080588F0
_080588AA:
	cmp r7, #0
	bne _080588B2
	cmp r0, #0xff
	bhi _080588EC
_080588B2:
	cmp r7, #1
	bne _080588BC
	ldrh r0, [r5]
	cmp r0, #0xff
	bls _080588EC
_080588BC:
	ldrh r4, [r5]
	mov r0, r8
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl GetItemIndex
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	cmp r4, r0
	beq _080588DA
	ldrh r0, [r5]
	ldr r3, _080588E8  @ 0xFFFFFF00
	adds r0, r0, r3
	cmp r0, r2
	bne _080588EC
_080588DA:
	ldrh r5, [r5, #2]
	mov sl, r5
	mov r0, r9
	str r6, [r0]
	movs r1, #1
	b _080588F6
	.align 2, 0
_080588E8: .4byte 0xFFFFFF00
_080588EC:
	adds r5, #4
	adds r6, #1
_080588F0:
	ldrh r0, [r5]
	cmp r0, #0
	bne _080588AA
_080588F6:
	cmp r1, #1
	beq _08058900
	adds r7, #1
	cmp r7, #1
	ble _080588A4
_08058900:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08058908:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8058918
sub_8058918: @ 0x08058918
	push {lr}
	ldr r0, _08058930  @ gUnknown_0203A5EC
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x1b
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08058934
	movs r0, #0
	b _08058936
	.align 2, 0
_08058930: .4byte gUnknown_0203A5EC
_08058934:
	movs r0, #1
_08058936:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805893C
sub_805893C: @ 0x0805893C
	ldr r3, _0805895C  @ gUnknown_030018F0
	ldr r2, [r0]
	ldr r1, [r0, #4]
	ldr r0, [r2, #0x28]
	ldr r1, [r1, #0x28]
	orrs r0, r1
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	adds r2, #0x23
	adds r2, r2, r0
	ldrb r0, [r2]
	strh r0, [r3]
	subs r0, #1
	bx lr
	.align 2, 0
_0805895C: .4byte gUnknown_030018F0

	THUMB_FUNC_START SomethingFilterBattleAnimId
SomethingFilterBattleAnimId: @ 0x08058960
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x9e
	beq _0805897A
	cmp r0, #0x9e
	blt _080589AC
	cmp r0, #0xcb
	bgt _080589AC
	cmp r0, #0xc9
	blt _080589AC
_0805897A:
	adds r0, r1, #0
	bl GetItemIndex
	cmp r0, #0x36
	beq _0805899C
	cmp r0, #0x36
	bgt _0805898E
	cmp r0, #0x35
	beq _08058994
	b _080589AC
_0805898E:
	cmp r0, #0x37
	beq _080589A4
	b _080589AC
_08058994:
	ldr r0, _08058998  @ gUnknown_085BA300
	b _080589AE
	.align 2, 0
_08058998: .4byte gUnknown_085BA300
_0805899C:
	ldr r0, _080589A0  @ gUnknown_085BA2E0
	b _080589AE
	.align 2, 0
_080589A0: .4byte gUnknown_085BA2E0
_080589A4:
	ldr r0, _080589A8  @ gUnknown_085BA320
	b _080589AE
	.align 2, 0
_080589A8: .4byte gUnknown_085BA320
_080589AC:
	movs r0, #0
_080589AE:
	pop {r1}
	bx r1

	THUMB_FUNC_START GetAllegienceId
GetAllegienceId: @ 0x080589B4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #0x40
	beq _080589D2
	cmp r0, #0x40
	ble _080589DA
	cmp r1, #0x80
	beq _080589CE
	cmp r1, #0xc0
	beq _080589D6
	b _080589DA
_080589CE:
	movs r0, #1
	b _080589DC
_080589D2:
	movs r0, #2
	b _080589DC
_080589D6:
	movs r0, #3
	b _080589DC
_080589DA:
	movs r0, #0
_080589DC:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80589E0
sub_80589E0: @ 0x080589E0
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	bl GetAISSubjectId
	ldr r1, _08058A08  @ gUnknown_0203E182
	lsls r0, r0, #1
	adds r0, r0, r1
	strh r4, [r0]
	bl sub_80599E8
	adds r0, r5, #0
	movs r1, #6
	bl sub_805A07C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08058A08: .4byte gUnknown_0203E182

	THUMB_FUNC_START GetSomeAISRelatedIndexMaybeByID
GetSomeAISRelatedIndexMaybeByID: @ 0x08058A0C
	push {lr}
	ldr r1, _08058A28  @ gUnknown_0203E12A
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _08058A2C
	movs r0, #0xff
	ands r0, r2
	b _08058A2E
	.align 2, 0
_08058A28: .4byte gUnknown_0203E12A
_08058A2C:
	adds r0, r1, #0
_08058A2E:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8058A34
sub_8058A34: @ 0x08058A34
	push {lr}
	ldr r1, _08058A54  @ gUnknown_0203E12A
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _08058A58
	subs r0, #0xff
	ands r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _08058A5A
	.align 2, 0
_08058A54: .4byte gUnknown_0203E12A
_08058A58:
	movs r0, #0
_08058A5A:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8058A60
sub_8058A60: @ 0x08058A60
	ldr r1, _08058A6C  @ gUnknown_0203E156
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08058A6C: .4byte gUnknown_0203E156

	THUMB_FUNC_START sub_8058A70
sub_8058A70: @ 0x08058A70
	ldr r1, _08058A84  @ gUnknown_0203E156
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08058A88  @ 0xFFFFFF00
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08058A84: .4byte gUnknown_0203E156
_08058A88: .4byte 0xFFFFFF00

	THUMB_FUNC_START IsItemDisplayedInBattle
IsItemDisplayedInBattle: @ 0x08058A8C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	adds r0, r4, #0
	bl GetItemIndex
	cmp r0, #0x7d
	beq _08058AC0
	adds r0, r4, #0
	bl GetItemIndex
	cmp r0, #0x7e
	beq _08058AC0
	adds r0, r4, #0
	bl GetItemIndex
	cmp r0, #0x7f
	beq _08058AC0
	adds r0, r5, #0
	bl GetItemIndex
	cmp r0, #0x80
	beq _08058AC0
	movs r0, #0
	b _08058AC2
_08058AC0:
	movs r0, #1
_08058AC2:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8058AC8
sub_8058AC8: @ 0x08058AC8
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl GetItemIndex
	cmp r0, #0x87
	beq _08058AFE
	cmp r0, #0x87
	bgt _08058AEE
	cmp r0, #0x4a
	beq _08058AFE
	cmp r0, #0x4a
	bgt _08058AE8
	cmp r0, #0x3e
	beq _08058AFE
	b _08058B02
_08058AE8:
	cmp r0, #0x85
	beq _08058AFE
	b _08058B02
_08058AEE:
	cmp r0, #0x8e
	beq _08058AFE
	cmp r0, #0x8e
	blt _08058B02
	cmp r0, #0x94
	bgt _08058B02
	cmp r0, #0x91
	blt _08058B02
_08058AFE:
	movs r0, #1
	b _08058B04
_08058B02:
	movs r0, #0
_08058B04:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8058B08
sub_8058B08: @ 0x08058B08
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl GetItemIndex
	cmp r0, #0x85
	beq _08058B1A
	cmp r0, #0x92
	bne _08058B1E
_08058B1A:
	movs r0, #1
	b _08058B20
_08058B1E:
	movs r0, #0
_08058B20:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8058B24
sub_8058B24: @ 0x08058B24
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x13
	bgt _08058B5C
	ldr r1, _08058B50  @ gUnknown_0203E12A
	lsls r0, r2, #1
	adds r0, r0, r1
_08058B34:
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	beq _08058B4C
	cmp r1, #1
	beq _08058B4C
	cmp r1, #2
	beq _08058B4C
	cmp r1, #3
	beq _08058B4C
	cmp r1, #9
	bne _08058B54
_08058B4C:
	movs r0, #1
	b _08058B5E
	.align 2, 0
_08058B50: .4byte gUnknown_0203E12A
_08058B54:
	adds r0, #4
	adds r2, #2
	cmp r2, #0x13
	ble _08058B34
_08058B5C:
	movs r0, #0
_08058B5E:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8058B64
sub_8058B64: @ 0x08058B64
	ldr r1, _08058B6C  @ gUnknown_0203E1E0
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08058B6C: .4byte gUnknown_0203E1E0

	THUMB_FUNC_START sub_8058B70
sub_8058B70: @ 0x08058B70
	ldr r1, _08058B78  @ gUnknown_0203E1E0
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08058B78: .4byte gUnknown_0203E1E0

	THUMB_FUNC_START sub_8058B7C
sub_8058B7C: @ 0x08058B7C
	push {lr}
	ldr r0, _08058B8C  @ gUnknown_0203E1E0
	ldr r0, [r0]
	cmp r0, #0
	beq _08058B90
	movs r0, #1
	b _08058B92
	.align 2, 0
_08058B8C: .4byte gUnknown_0203E1E0
_08058B90:
	movs r0, #0
_08058B92:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_8058B98
sub_8058B98: @ 0x08058B98
	ldr r1, _08058BA4  @ gUnknown_0203E1B8
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08058BA4: .4byte gUnknown_0203E1B8

	THUMB_FUNC_START sub_8058BA8
sub_8058BA8: @ 0x08058BA8
	ldr r1, _08058BB4  @ gUnknown_0203E1BC
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08058BB4: .4byte gUnknown_0203E1BC

	THUMB_FUNC_START sub_8058BB8
sub_8058BB8: @ 0x08058BB8
	ldr r1, _08058BC4  @ gUnknown_0203E1C0
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08058BC4: .4byte gUnknown_0203E1C0

	THUMB_FUNC_START BattleAIS_ExecCommands
BattleAIS_ExecCommands: @ 0x08058BC8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r2, #0

	THUMB_FUNC_START sub_8058BD4
sub_8058BD4: @ 0x08058BD4
	ldr r0, _08058C38  @ gUnknown_03004FAC
	str r2, [r0]
	ldr r1, _08058C3C  @ gUnknown_02000000
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r7, [r0]
	adds r2, #1
	mov r9, r2
	cmp r7, #0
	bne _08058BEC
	bl _080598AE
_08058BEC:
	ldrh r0, [r7, #0xc]
	movs r1, #0xf0
	lsls r1, r1, #8
	mov r8, r1
	mov r2, r8
	ands r2, r0
	mov r8, r2
	cmp r2, #0
	bne _08058C02
	bl _080598AE
_08058C02:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	cmp r0, #0
	bne _08058C10
	bl sub_80596E0
_08058C10:
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	bne _08058C1A
	bl _080596D6
_08058C1A:
	subs r1, r0, #1
	adds r2, r7, #0
	adds r2, #0x15
	adds r1, r2, r1
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0x7b
	bls _08058C2E
	bl _080596CC
_08058C2E:
	lsls r0, r1, #2
	ldr r1, _08058C40  @ _08058C44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08058C38: .4byte gUnknown_03004FAC
_08058C3C: .4byte gUnknown_02000000
_08058C40: .4byte _08058C44
_08058C44: @ jump table
	.4byte _080596CC @ case 0
	.4byte _08058E34 @ case 1
	.4byte _08058E98 @ case 2
	.4byte _08058EB0 @ case 3
	.4byte _08058F30 @ case 4
	.4byte _08058FB4 @ case 5
	.4byte _08059018 @ case 6
	.4byte _08059048 @ case 7
	.4byte _08059158 @ case 8
	.4byte _08059158 @ case 9
	.4byte _08059158 @ case 10
	.4byte _08059158 @ case 11
	.4byte _08059158 @ case 12
	.4byte _080591F2 @ case 13
	.4byte _080596CC @ case 14
	.4byte _080596CC @ case 15
	.4byte _080596CC @ case 16
	.4byte _080596CC @ case 17
	.4byte _080596CC @ case 18
	.4byte _080593A0 @ case 19
	.4byte _080593D0 @ case 20
	.4byte _080593E4 @ case 21
	.4byte _080596CC @ case 22
	.4byte _080596CC @ case 23
	.4byte _080593F8 @ case 24
	.4byte _08059698 @ case 25
	.4byte _0805942C @ case 26
	.4byte _08059698 @ case 27
	.4byte _08059698 @ case 28
	.4byte _08059698 @ case 29
	.4byte _08059698 @ case 30
	.4byte _08059698 @ case 31
	.4byte _08059698 @ case 32
	.4byte _08059698 @ case 33
	.4byte _08059698 @ case 34
	.4byte _08059698 @ case 35
	.4byte _08059698 @ case 36
	.4byte _08059698 @ case 37
	.4byte _080594AC @ case 38
	.4byte _080594C2 @ case 39
	.4byte _08059698 @ case 40
	.4byte _08059698 @ case 41
	.4byte _08059698 @ case 42
	.4byte _08059698 @ case 43
	.4byte _080594D8 @ case 44
	.4byte _080594EC @ case 45
	.4byte _08059536 @ case 46
	.4byte _0805954C @ case 47
	.4byte _08059562 @ case 48
	.4byte _08059578 @ case 49
	.4byte _0805958E @ case 50
	.4byte _08059698 @ case 51
	.4byte _08059698 @ case 52
	.4byte _08059698 @ case 53
	.4byte _08059698 @ case 54
	.4byte _08059698 @ case 55
	.4byte _08059698 @ case 56
	.4byte _080595A4 @ case 57
	.4byte _08059698 @ case 58
	.4byte _080596CC @ case 59
	.4byte _08059698 @ case 60
	.4byte _080595CA @ case 61
	.4byte _08059698 @ case 62
	.4byte _08059698 @ case 63
	.4byte _08059698 @ case 64
	.4byte _08059698 @ case 65
	.4byte _08059698 @ case 66
	.4byte _08059698 @ case 67
	.4byte _08059698 @ case 68
	.4byte _08059698 @ case 69
	.4byte _08059698 @ case 70
	.4byte _080595FC @ case 71
	.4byte _08059698 @ case 72
	.4byte _08059698 @ case 73
	.4byte _08059698 @ case 74
	.4byte _08059698 @ case 75
	.4byte _08059698 @ case 76
	.4byte _08059698 @ case 77
	.4byte _08059604 @ case 78
	.4byte _08059698 @ case 79
	.4byte _080596CC @ case 80
	.4byte _0805960C @ case 81
	.4byte _08059630 @ case 82
	.4byte _080596CC @ case 83
	.4byte _080596CC @ case 84
	.4byte _080596CC @ case 85
	.4byte _08059698 @ case 86
	.4byte _08059698 @ case 87
	.4byte _08059698 @ case 88
	.4byte _08059698 @ case 89
	.4byte _08059698 @ case 90
	.4byte _08059698 @ case 91
	.4byte _08059698 @ case 92
	.4byte _08059698 @ case 93
	.4byte _08059698 @ case 94
	.4byte _08059698 @ case 95
	.4byte _08059698 @ case 96
	.4byte _08059698 @ case 97
	.4byte _08059698 @ case 98
	.4byte _08059698 @ case 99
	.4byte _08059698 @ case 100
	.4byte _08059698 @ case 101
	.4byte _08059698 @ case 102
	.4byte _08059698 @ case 103
	.4byte _08059698 @ case 104
	.4byte _080596CC @ case 105
	.4byte _08059698 @ case 106
	.4byte _08059698 @ case 107
	.4byte _08059698 @ case 108
	.4byte _08059698 @ case 109
	.4byte _08059698 @ case 110
	.4byte _08059698 @ case 111
	.4byte _08059698 @ case 112
	.4byte _080596A6 @ case 113
	.4byte _080596BA @ case 114
	.4byte _08059698 @ case 115
	.4byte _08059698 @ case 116
	.4byte _08059698 @ case 117
	.4byte _08059698 @ case 118
	.4byte _08059698 @ case 119
	.4byte _08059698 @ case 120
	.4byte _08059698 @ case 121
	.4byte _08059698 @ case 122
	.4byte _08059698 @ case 123
_08058E34:
	ldr r0, _08058E44  @ gUnknown_02000024
	ldr r0, [r0]
	cmp r0, #1
	bne _08058E48
	ldr r0, [r7, #0x24]
	str r0, [r7, #0x20]
	bl _080596CC
	.align 2, 0
_08058E44: .4byte gUnknown_02000024
_08058E48:
	ldrh r1, [r7, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08058E56
	bl _08059686
_08058E56:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08058E62
	bl _080596CC
_08058E62:
	bl sub_80522CC
	cmp r0, #1
	beq _08058E6E
	bl _080596CC
_08058E6E:
	ldrh r1, [r7, #0x10]
	ldr r0, _08058E94  @ 0x0000FFF2
	ands r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x20]
	adds r0, #4
	str r0, [r7, #0x20]
	bl sub_8055A28
	cmp r0, #0
	bne _08058E88
	bl _080596CC
_08058E88:
	movs r0, #0
	bl sub_8055A34
	bl _080596CC
	.align 2, 0
_08058E94: .4byte 0x0000FFF2
_08058E98:
	ldrh r1, [r7, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08058EA6
	bl _080596CC
_08058EA6:
	ldr r0, _08058EAC  @ 0x0000FFFE
	b _08059682
	.align 2, 0
_08058EAC: .4byte 0x0000FFFE
_08058EB0:
	ldr r4, _08058F2C  @ gUnknown_02000000
	ldr r0, [r4]
	bl sub_8054BD4
	movs r5, #0xc
	ands r0, r5
	cmp r0, #0
	beq _08058EC8
	ldr r0, [r4]
	movs r1, #0
	bl sub_8054BA4
_08058EC8:
	ldr r0, [r4, #4]
	bl sub_8054BD4
	ands r0, r5
	cmp r0, #0
	beq _08058EDC
	ldr r0, [r4, #4]
	movs r1, #0
	bl sub_8054BA4
_08058EDC:
	ldr r0, [r4, #8]
	bl sub_8054BD4
	ands r0, r5
	cmp r0, #0
	beq _08058EF0
	ldr r0, [r4, #8]
	movs r1, #0
	bl sub_8054BA4
_08058EF0:
	ldr r0, [r4, #0xc]
	bl sub_8054BD4
	ands r0, r5
	cmp r0, #0
	beq _08058F04
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl sub_8054BA4
_08058F04:
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08058F26
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _08058F26
	adds r0, r7, #0
	bl sub_806D8D0
_08058F26:
	ldrh r1, [r7, #0x10]
	b _08059674
	.align 2, 0
_08058F2C: .4byte gUnknown_02000000
_08058F30:
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08058F46
	adds r0, r2, #0
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r7, #0x10]
_08058F46:
	ldrh r2, [r7, #0x10]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _08058F52
	b _080596CC
_08058F52:
	ldr r1, _08058FAC  @ 0x0000FFDF
	ands r1, r2
	ldr r0, _08058FB0  @ 0x0000FFBF
	ands r1, r0
	ldr r0, [r7, #0x20]
	adds r0, #4
	str r0, [r7, #0x20]
	movs r5, #9
	movs r6, #0
	orrs r1, r5
	strh r1, [r7, #0x10]
	adds r0, r7, #0
	bl GetCoreAIStruct
	adds r2, r0, #0
	adds r0, r7, #0
	str r2, [sp]
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	mov r4, r8
	adds r0, r4, #0
	bl GetSomeBoolean
	ldr r2, [sp]
	cmp r0, #1
	beq _08058F8E
	b _080596CC
_08058F8E:
	cmp r2, #0
	bne _08058F94
	b _080596CC
_08058F94:
	ldrh r0, [r2, #0x10]
	orrs r0, r5
	strh r0, [r2, #0x10]
	adds r0, r7, #0
	str r2, [sp]
	bl sub_805A154
	cmp r0, #0
	beq _08058FA8
	b _080596CC
_08058FA8:
	adds r0, r4, #0
	b _080591E2
	.align 2, 0
_08058FAC: .4byte 0x0000FFDF
_08058FB0: .4byte 0x0000FFBF
_08058FB4:
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08058FCA
	adds r0, r2, #0
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r7, #0x10]
_08058FCA:
	ldrh r2, [r7, #0x10]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _08058FD6
	b _080596CC
_08058FD6:
	ldr r1, _08059010  @ 0x0000FFDF
	ands r1, r2
	ldr r0, _08059014  @ 0x0000FFBF
	ands r1, r0
	ldr r0, [r7, #0x20]
	adds r0, #4
	str r0, [r7, #0x20]
	movs r0, #9
	orrs r1, r0
	strh r1, [r7, #0x10]
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _08058FF6
	b _080596CC
_08058FF6:
	adds r0, r7, #0
	bl StartSpellAnimation
	bl sub_8055A28
	cmp r0, #0
	bne _08059006
	b _080596CC
_08059006:
	movs r0, #2
	bl sub_8055A34
	b _080596CC
	.align 2, 0
_08059010: .4byte 0x0000FFDF
_08059014: .4byte 0x0000FFBF
_08059018:
	adds r0, r7, #0
	bl GetCoreAIStruct
	adds r2, r0, #0
	cmp r2, #0
	bne _08059026
	b _080596CC
_08059026:
	str r2, [sp]
	bl sub_805A334
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	movs r0, #1
	negs r0, r0
	ldr r2, [sp]
	cmp r8, r0
	bne _0805903E
	b _080596CC
_0805903E:
	ldrh r1, [r2, #0x10]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0x10]
	b _080596CC
_08059048:
	adds r0, r7, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r7, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	movs r1, #0x80
	lsls r1, r1, #4
	ands r1, r0
	cmp r1, #0
	beq _0805908C
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08059074
	b _08059674
_08059074:
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _08059140
	adds r0, r7, #0
	bl sub_806E310
	b _08059140
_0805908C:
	adds r0, r7, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r7, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	movs r1, #0x80
	lsls r1, r1, #3
	ands r1, r0
	cmp r1, #0
	beq _080590D2
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080590B8
	b _08059674
_080590B8:
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _08059140
	adds r0, r7, #0
	movs r1, #1
	bl sub_806E58C
	b _08059140
_080590D2:
	adds r0, r7, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r7, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	movs r1, #0x80
	lsls r1, r1, #2
	ands r1, r0
	cmp r1, #0
	beq _08059140
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r5, #0x20
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08059100
	b _08059674
_08059100:
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _08059140
	adds r0, r7, #0
	bl sub_806E310
	ldr r4, _08059150  @ gUnknown_02000000
	ldr r1, [r4, #8]
	ldrh r2, [r1, #0x10]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #0x10]
	ldr r1, [r4, #8]
	ldrh r3, [r1]
	ldr r2, _08059154  @ 0x0000FFF7
	adds r0, r2, #0
	ands r0, r3
	strh r0, [r1]
	ldr r1, [r4, #0xc]
	ldrh r3, [r1, #0x10]
	adds r0, r5, #0
	ands r0, r3
	strh r0, [r1, #0x10]
	ldr r0, [r4, #0xc]
	ldrh r1, [r0]
	ands r2, r1
	strh r2, [r0]
_08059140:
	ldrh r1, [r7, #0x10]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805914C
	b _080596CC
_0805914C:
	b _08059674
	.align 2, 0
_08059150: .4byte gUnknown_02000000
_08059154: .4byte 0x0000FFF7
_08059158:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _08059164
	b _080596CC
_08059164:
	adds r0, r7, #0
	bl GetCoreAIStruct
	adds r2, r0, #0
	adds r0, r7, #0
	str r2, [sp]
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	bl GetSomeBoolean
	ldr r2, [sp]
	cmp r0, #0
	bne _080591C6
	adds r0, r2, #0
	bl sub_8072400
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp]
	cmp r0, #2
	beq _080591C6
	adds r0, r7, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r7, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	movs r1, #0x80
	lsls r1, r1, #5
	ands r1, r0
	ldr r2, [sp]
	cmp r1, #0
	beq _080591BC
	adds r0, r2, #0
	bl sub_806E014
	b _080591C4
_080591BC:
	adds r0, r2, #0
	str r2, [sp]
	bl sub_806C71C
_080591C4:
	ldr r2, [sp]
_080591C6:
	cmp r2, #0
	bne _080591CC
	b _080596CC
_080591CC:
	ldrh r1, [r2, #0x10]
	movs r0, #9
	orrs r0, r1
	strh r0, [r2, #0x10]
	adds r0, r7, #0
	str r2, [sp]
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
_080591E2:
	bl GetSomeBoolean
	adds r1, r0, #0
	ldr r2, [sp]
	adds r0, r2, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	b _080596CC
_080591F2:
	adds r0, r7, #0
	bl sub_805A2F0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r4, _08059234  @ gUnknown_02000000
	adds r0, r7, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r2, [r0]
	adds r0, r7, #0
	str r2, [sp]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r6, [r0]
	ldrb r0, [r7, #0x12]
	ldr r2, [sp]
	cmp r0, #9
	bls _08059228
	b _080596CC
_08059228:
	lsls r0, r0, #2
	ldr r1, _08059238  @ _0805923C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059234: .4byte gUnknown_02000000
_08059238: .4byte _0805923C
_0805923C: @ jump table
	.4byte _08059264 @ case 0
	.4byte _08059264 @ case 1
	.4byte _08059264 @ case 2
	.4byte _08059264 @ case 3
	.4byte _08059368 @ case 4
	.4byte _08059368 @ case 5
	.4byte _08059376 @ case 6
	.4byte _08059376 @ case 7
	.4byte _08059376 @ case 8
	.4byte _08059264 @ case 9
_08059264:
	movs r0, #1
	negs r0, r0
	cmp r8, r0
	bne _0805926E
	b _08059368
_0805926E:
	ldrh r0, [r2, #0xe]
	adds r0, #1
	strh r0, [r2, #0xe]
	ldrh r0, [r6, #0xe]
	adds r0, #1
	strh r0, [r6, #0xe]
	adds r0, r2, #0
	mov r1, r8
	str r2, [sp]
	bl sub_805A07C
	adds r0, r6, #0
	mov r1, r8
	bl sub_805A07C
	ldr r2, [sp]
	ldrh r0, [r2, #0x10]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2, #0x10]
	ldrh r0, [r6, #0x10]
	orrs r1, r0
	strh r1, [r6, #0x10]
	ldr r1, _080592C4  @ gUnknown_080DAF18
	ldr r0, _080592C8  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
	ldr r1, _080592CC  @ gUnknown_080DAEF0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r7, #0
	str r2, [sp]
	bl GetAISSubjectId
	ldr r2, [sp]
	cmp r0, #0
	bne _080592D4
	ldr r0, _080592D0  @ gUnknown_0200005C
	b _080592D6
	.align 2, 0
_080592C4: .4byte gUnknown_080DAF18
_080592C8: .4byte gUnknown_0203E120
_080592CC: .4byte gUnknown_080DAEF0
_080592D0: .4byte gUnknown_0200005C
_080592D4:
	ldr r0, _08059354  @ gUnknown_02000060
_080592D6:
	ldr r1, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r7, #0
	str r2, [sp]
	bl GetAISSubjectId
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #9
	ldr r0, _08059358  @ gUnknown_0200F1C8
	adds r1, r1, r0
	adds r1, r4, r1
	ldr r0, [r1, #4]
	ldr r2, [sp]
	str r0, [r2, #0x28]
	ldr r4, [r2, #0x30]
	ldr r1, [r1, #8]
	adds r4, r4, r1
	str r4, [r2, #0x3c]
	ldr r4, [r6, #0x30]
	ldr r0, _0805935C  @ 0x000057F0
	adds r4, r4, r0
	str r4, [r6, #0x3c]
	ldr r4, _08059360  @ gUnknown_0203E1A4
	adds r0, r7, #0
	str r2, [sp]
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r2, [sp]
	cmp r0, #0
	bne _0805938A
	ldr r4, _08059364  @ gUnknown_0201FB1C
	adds r0, r2, #0
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r2, [sp]
	ldr r0, [r2, #0x28]
	cmp r1, r0
	beq _0805938A
	adds r0, r2, #0
	bl NewEkrChienCHR
	ldr r2, [sp]
	adds r0, r2, #0
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [sp]
	ldr r1, [r2, #0x28]
	str r1, [r0]
	b _0805938A
	.align 2, 0
_08059354: .4byte gUnknown_02000060
_08059358: .4byte gUnknown_0200F1C8
_0805935C: .4byte 0x000057F0
_08059360: .4byte gUnknown_0203E1A4
_08059364: .4byte gUnknown_0201FB1C
_08059368:
	ldr r1, _08059398  @ gUnknown_080DAF18
	ldr r0, _0805939C  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r8, r0
_08059376:
	adds r0, r2, #0
	mov r1, r8
	str r2, [sp]
	bl sub_805A07C
	adds r0, r6, #0
	mov r1, r8
	bl sub_805A07C
	ldr r2, [sp]
_0805938A:
	adds r0, r2, #0
	bl sub_80598CC
	adds r0, r6, #0
	bl sub_80598CC
	b _080596D6
	.align 2, 0
_08059398: .4byte gUnknown_080DAF18
_0805939C: .4byte gUnknown_0203E120
_080593A0:
	ldrh r2, [r7, #0x10]
	movs r1, #0x20
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _080593B4
	adds r0, r1, #0
	orrs r0, r2
	strh r0, [r7, #0x10]
	b _080596CC
_080593B4:
	ldr r1, _080593C8  @ gUnknown_02017758
	ldr r0, [r1]
	cmp r0, #1
	beq _080593BE
	b _080596CC
_080593BE:
	movs r0, #0
	str r0, [r1]
	ldr r0, _080593CC  @ 0x0000FFDF
	ands r0, r2
	b _08059684
	.align 2, 0
_080593C8: .4byte gUnknown_02017758
_080593CC: .4byte 0x0000FFDF
_080593D0:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _080593DC
	b _080596CC
_080593DC:
	movs r0, #3
	bl sub_8053730
	b _080596CC
_080593E4:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _080593F0
	b _080596CC
_080593F0:
	movs r0, #0
	bl sub_8053730
	b _080596CC
_080593F8:
	ldrh r1, [r7, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08059404
	b _080596CC
_08059404:
	ldr r0, _08059424  @ 0x0000FFFE
	ands r0, r1
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x20]
	adds r0, #4
	str r0, [r7, #0x20]
	ldrh r1, [r7, #8]
	ldr r0, _08059428  @ 0x0000F3FF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #8]
	movs r0, #0x8c
	b _080596B2
	.align 2, 0
_08059424: .4byte 0x0000FFFE
_08059428: .4byte 0x0000F3FF
_0805942C:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _08059438
	b _080596CC
_08059438:
	adds r0, r7, #0
	bl GetCoreAIStruct
	adds r2, r0, #0
	cmp r2, #0
	beq _0805946A
	ldrh r1, [r2, #0x10]
	movs r0, #9
	orrs r0, r1
	strh r0, [r2, #0x10]
	adds r0, r7, #0
	str r2, [sp]
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	bl GetSomeBoolean
	adds r1, r0, #0
	ldr r2, [sp]
	adds r0, r2, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldr r2, [sp]
_0805946A:
	adds r0, r2, #0
	str r2, [sp]
	bl sub_8072400
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _0805947C
	b _080596CC
_0805947C:
	adds r0, r7, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r7, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	movs r1, #0x80
	lsls r1, r1, #5
	ands r1, r0
	ldr r2, [sp]
	cmp r1, #0
	beq _080594A4
	adds r0, r2, #0
	bl sub_806E014
	b _080596CC
_080594A4:
	adds r0, r7, #0
	bl sub_806C87C
	b _080596CC
_080594AC:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _080594B8
	b _080596CC
_080594B8:
	adds r0, r7, #0
	movs r1, #0
	bl sub_806CC60
	b _080596CC
_080594C2:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _080594CE
	b _080596CC
_080594CE:
	adds r0, r7, #0
	movs r1, #1
	bl sub_806CC60
	b _080596CC
_080594D8:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _080594E4
	b _080596CC
_080594E4:
	adds r0, r7, #0
	bl sub_806CE30
	b _080596CC
_080594EC:
	adds r0, r7, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r7, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	movs r1, #0x80
	lsls r1, r1, #5
	ands r1, r0
	cmp r1, #0
	bne _0805950C
	b _08059686
_0805950C:
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805951A
	b _08059674
_0805951A:
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _0805952C
	b _080596CC
_0805952C:
	adds r0, r7, #0
	movs r1, #0
	bl sub_806E1F0
	b _080596CC
_08059536:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _08059542
	b _080596CC
_08059542:
	adds r0, r7, #0
	movs r1, #0
	bl sub_806D080
	b _080596CC
_0805954C:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _08059558
	b _080596CC
_08059558:
	adds r0, r7, #0
	movs r1, #1
	bl sub_806D080
	b _080596CC
_08059562:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _0805956E
	b _080596CC
_0805956E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_806D320
	b _080596CC
_08059578:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _08059584
	b _080596CC
_08059584:
	adds r0, r7, #0
	movs r1, #1
	bl sub_806D320
	b _080596CC
_0805958E:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _0805959A
	b _080596CC
_0805959A:
	adds r0, r7, #0
	movs r1, #2
	bl sub_806D320
	b _080596CC
_080595A4:
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08059674
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	beq _080595C2
	b _080596CC
_080595C2:
	adds r0, r7, #0
	bl sub_806D65C
	b _080596CC
_080595CA:
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080595D8
	b _08058F26
_080595D8:
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _080595EE
	movs r0, #1
	bl sub_8055A34
_080595EE:
	adds r0, r7, #0
	bl nullsub_17
	adds r0, r7, #0
	bl sub_8055A40
	b _08058F26
_080595FC:
	adds r0, r7, #0
	bl sub_806DD34
	b _080596CC
_08059604:
	adds r0, r7, #0
	bl sub_806D570
	b _080596CC
_0805960C:
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08059674
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _080596CC
	adds r0, r7, #0
	bl sub_806D6E8
	b _080596CC
_08059630:
	adds r0, r7, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r7, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl sub_8058A34
	movs r1, #0x80
	lsls r1, r1, #5
	ands r1, r0
	cmp r1, #0
	beq _08059686
	ldrh r1, [r7, #0x10]
	movs r2, #0x20
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08059674
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #0x10]
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _080596CC
	adds r0, r7, #0
	movs r1, #1
	bl sub_806E1F0
	b _080596CC
_08059674:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080596CC
	ldr r0, _08059690  @ 0x0000FFDF
	ands r0, r1
	ldr r1, _08059694  @ 0x0000FFBF
_08059682:
	ands r0, r1
_08059684:
	strh r0, [r7, #0x10]
_08059686:
	ldr r0, [r7, #0x20]
	adds r0, #4
	str r0, [r7, #0x20]
	b _080596CC
	.align 2, 0
_08059690: .4byte 0x0000FFDF
_08059694: .4byte 0x0000FFBF
_08059698:
	subs r0, r3, #1
	adds r0, r2, r0
	ldrb r1, [r0]
	adds r0, r7, #0
	bl sub_8071B6C
	b _080596CC
_080596A6:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _080596CC
	movs r0, #0x14
_080596B2:
	strh r0, [r7, #0xa]
	bl AISArray_Sort
	b _080596CC
_080596BA:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _080596CC
	movs r0, #0x64
	strh r0, [r7, #0xa]
	bl AISArray_Sort
_080596CC:
	ldrb r0, [r7, #0x14]
	subs r0, #1
	strb r0, [r7, #0x14]
	bl _08058C10
_080596D6:
	ldrh r1, [r7, #0xc]
	movs r0, #0xe7
	lsls r0, r0, #8
	ands r0, r1
	strh r0, [r7, #0xc]

	THUMB_FUNC_START sub_80596E0
sub_80596E0: @ 0x080596E0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _08059746
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _0805973C
	ldr r4, _0805979C  @ gUnknown_0203E1A4
	adds r0, r7, #0
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0805973C
	ldrh r1, [r7, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0805973C
	ldr r4, _080597A0  @ gUnknown_0201FB1C
	adds r0, r7, #0
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, [r7, #0x28]
	cmp r1, r0
	beq _0805973C
	adds r0, r7, #0
	bl RegisterAISSheetGraphics
	adds r0, r7, #0
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r7, #0x28]
	str r1, [r0]
_0805973C:
	ldrh r1, [r7, #0xc]
	movs r0, #0xd7
	lsls r0, r0, #8
	ands r0, r1
	strh r0, [r7, #0xc]
_08059746:
	movs r0, #0x80
	lsls r0, r0, #7
	mov r1, r8
	ands r1, r0
	cmp r1, #0
	bne _0805975C
	ldr r0, _080597A4  @ gUnknown_02000024
	ldr r0, [r0]
	cmp r0, #1
	beq _0805975C
	b _080598AE
_0805975C:
	ldrh r1, [r7, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080597E8
	adds r0, r7, #0
	bl sub_805A2F0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	movs r0, #1
	negs r0, r0
	cmp r8, r0
	beq _080597B0
	ldr r6, _080597A8  @ gUnknown_02000000
	adds r0, r7, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r2, #0
	mov r1, r8
	str r2, [sp]
	bl sub_805A07C
	ldr r2, [sp]
	ldrh r1, [r2, #0x10]
	ldr r4, _080597AC  @ 0x0000FFFD
	b _08059824
	.align 2, 0
_0805979C: .4byte gUnknown_0203E1A4
_080597A0: .4byte gUnknown_0201FB1C
_080597A4: .4byte gUnknown_02000024
_080597A8: .4byte gUnknown_02000000
_080597AC: .4byte 0x0000FFFD
_080597B0:
	ldr r5, _080597E0  @ gUnknown_02000000
	adds r0, r7, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r2, [r0]
	ldrh r1, [r2, #0x10]
	ldr r4, _080597E4  @ 0x0000FFFD
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r2, #0x10]
	adds r0, r7, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r6, [r0]
	ldrh r0, [r6, #0x10]
	ands r4, r0
	strh r4, [r6, #0x10]
	b _080598AE
	.align 2, 0
_080597E0: .4byte gUnknown_02000000
_080597E4: .4byte 0x0000FFFD
_080597E8:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08059874
	adds r0, r7, #0
	bl sub_805A2F0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	movs r0, #1
	negs r0, r0
	cmp r8, r0
	beq _080598AE
	ldr r6, _0805986C  @ gUnknown_02000000
	adds r0, r7, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r2, [r0]
	adds r0, r2, #0
	mov r1, r8
	str r2, [sp]
	bl sub_805A07C
	ldr r2, [sp]
	ldrh r1, [r2, #0x10]
	ldr r4, _08059870  @ 0x00007FFF
_08059824:
	adds r0, r4, #0
	ands r0, r1
	movs r5, #4
	orrs r0, r5
	strh r0, [r2, #0x10]
	adds r0, r7, #0
	str r2, [sp]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r6, [r0]
	adds r0, r6, #0
	mov r1, r8
	bl sub_805A07C
	ldrh r0, [r6, #0x10]
	ands r4, r0
	orrs r4, r5
	strh r4, [r6, #0x10]
	ldr r2, [sp]
	ldrh r0, [r2, #0xe]
	adds r0, #1
	strh r0, [r2, #0xe]
	ldrh r0, [r6, #0xe]
	adds r0, #1
	strh r0, [r6, #0xe]
	adds r0, r2, #0
	bl sub_80598CC
	adds r0, r6, #0
	bl sub_80598CC
	b _080598AE
	.align 2, 0
_0805986C: .4byte gUnknown_02000000
_08059870: .4byte 0x00007FFF
_08059874:
	adds r0, r7, #0
	bl sub_805A154
	cmp r0, #0
	bne _080598AE
	adds r0, r7, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r7, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r1
	bl GetSomeAISRelatedIndexMaybeByID
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	movs r0, #1
	negs r0, r0
	cmp r8, r0
	bne _080598AE
	adds r0, r7, #0
	bl GetAISSubjectId
	ldr r1, _080598C8  @ gUnknown_0201FB04
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
_080598AE:
	mov r2, r9
	cmp r2, #3
	bhi _080598B8
	bl sub_8058BD4
_080598B8:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080598C8: .4byte gUnknown_0201FB04

	THUMB_FUNC_START sub_80598CC
sub_80598CC: @ 0x080598CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x12]
	bl sub_805A1D0
	cmp r0, #0
	beq _08059906
	ldr r1, [r4, #0x20]
	ldr r0, _080598E8  @ gUnknown_085B9D5C
	cmp r1, r0
	beq _08059906
	movs r2, #0x3f
	b _080598F4
	.align 2, 0
_080598E8: .4byte gUnknown_085B9D5C
_080598EC:
	cmp r1, #6
	bne _080598F4
	adds r0, #0xc
	str r0, [r4, #0x20]
_080598F4:
	ldr r0, [r4, #0x20]
	ldrb r1, [r0, #3]
	ands r1, r2
	cmp r1, #0
	beq _08059902
	cmp r1, #5
	bne _080598EC
_08059902:
	subs r0, #0xc
	str r0, [r4, #0x20]
_08059906:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START NewEkrChienCHR
NewEkrChienCHR: @ 0x0805990C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08059920  @ gUnknown_085B9D94
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059920: .4byte gUnknown_085B9D94

	THUMB_FUNC_START sub_8059924
sub_8059924: @ 0x08059924
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl RegisterAISSheetGraphics
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START RegisterAISSheetGraphics
RegisterAISSheetGraphics: @ 0x0805993C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #8]
	ldr r4, _08059968  @ 0x000003FF
	ands r4, r0
	lsls r4, r4, #5
	ldr r0, _0805996C  @ 0x06010000
	adds r4, r4, r0
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl LZ77UnCompWram
	ldr r0, [r5, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r4, #0
	bl RegisterTileGraphics
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059968: .4byte 0x000003FF
_0805996C: .4byte 0x06010000

	THUMB_FUNC_START sub_8059970
sub_8059970: @ 0x08059970
	push {lr}
	adds r2, r0, #0
	ldr r0, _08059998  @ gUnknown_0203E1DC
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08059992
	movs r1, #0
	adds r3, r2, #0
	adds r3, #0x80
_08059988:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #7
	bls _08059988
_08059992:
	pop {r0}
	bx r0
	.align 2, 0
_08059998: .4byte gUnknown_0203E1DC

	THUMB_FUNC_START sub_805999C
sub_805999C: @ 0x0805999C
	push {lr}
	adds r2, r0, #0
	cmp r1, #0
	bne _080599AC
	ldr r0, _080599A8  @ gUnknown_0203E188
	b _080599AE
	.align 2, 0
_080599A8: .4byte gUnknown_0203E188
_080599AC:
	ldr r0, _080599C4  @ gUnknown_0203E18C
_080599AE:
	ldr r0, [r0]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #4]
	cmp r0, #0x1a
	beq _080599D6
	cmp r0, #0x1a
	bhi _080599C8
	cmp r0, #0x19
	beq _080599D2
	b _080599E2
	.align 2, 0
_080599C4: .4byte gUnknown_0203E18C
_080599C8:
	cmp r0, #0x1b
	beq _080599DA
	cmp r0, #0x1c
	beq _080599DE
	b _080599E2
_080599D2:
	movs r0, #0x25
	b _080599E4
_080599D6:
	movs r0, #0x27
	b _080599E4
_080599DA:
	movs r0, #0x29
	b _080599E4
_080599DE:
	movs r0, #0x2b
	b _080599E4
_080599E2:
	adds r0, r2, #0
_080599E4:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_80599E8
sub_80599E8: @ 0x080599E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08059BD8  @ gUnknown_08C00008
	mov sl, r0
	ldr r1, _08059BDC  @ gUnknown_0201FB1C
	movs r0, #0
	str r0, [r1, #4]
	str r0, [r1]
	ldr r0, _08059BE0  @ gUnknown_0203E104
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _08059ADE
	ldr r0, _08059BE4  @ gUnknown_0203E182
	movs r2, #0
	ldrsh r7, [r0, r2]
	ldr r0, _08059BE8  @ gUnknown_0203E114
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	ldr r0, _08059BEC  @ gUnknown_0203E110
	movs r1, #0
	ldrsh r5, [r0, r1]
	lsls r4, r7, #5
	add r4, sl
	ldr r0, [r4, #0x10]
	ldr r1, _08059BF0  @ gUnknown_0200F1C8
	bl LZ77UnCompWram
	ldr r1, _08059BF4  @ gUnknown_0200005C
	ldr r0, [r4, #0xc]
	str r0, [r1]
	adds r0, r7, #0
	movs r1, #0
	bl sub_805999C
	lsls r0, r0, #5
	add r0, sl
	ldr r0, [r0, #0x1c]
	ldr r4, _08059BF8  @ gUnknown_02004088
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	beq _08059A64
	lsls r0, r5, #4
	ldr r2, _08059BFC  @ gUnknown_08EF8008
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	adds r1, r4, #0
	bl LZ77UnCompWram
	adds r0, r4, #0
	movs r1, #0
	bl sub_8059970
_08059A64:
	ldr r1, _08059C00  @ gUnknown_02000054
	mov r2, r8
	lsls r0, r2, #5
	adds r0, r0, r4
	str r0, [r1]
	ldr r4, _08059C04  @ gUnknown_02022B88
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r0, _08059C08  @ gUnknown_0203E19C
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x20
	movs r2, #8
	bl CpuFastSet
	ldr r0, _08059C0C  @ gUnknown_0203A4EC
	adds r0, #0x30
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0xb
	beq _08059A98
	cmp r1, #0xd
	bne _08059AA4
_08059A98:
	ldr r1, _08059C10  @ 0xFFFFFD20
	adds r0, r4, r1
	adds r1, r4, #0
	movs r2, #1
	bl sub_8071468
_08059AA4:
	ldr r0, _08059C14  @ gUnknown_0203A56C
	adds r0, #0x30
	ldrb r0, [r0]
	movs r1, #0xf
	ands r1, r0
	cmp r1, #0xb
	beq _08059AB6
	cmp r1, #0xd
	bne _08059AC4
_08059AB6:
	ldr r0, _08059C18  @ gPaletteBuffer
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #1
	bl sub_8071468
_08059AC4:
	bl EnablePaletteSync
	lsls r0, r7, #5
	add r0, sl
	ldr r0, [r0, #0x18]
	ldr r4, _08059C1C  @ gUnknown_020041C8
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _08059C20  @ 0x000057F0
	adds r4, r4, r0
	movs r0, #1
	str r0, [r4]
_08059ADE:
	ldr r0, _08059BE0  @ gUnknown_0203E104
	movs r2, #2
	ldrsh r1, [r0, r2]
	mov r9, r1
	cmp r1, #1
	bne _08059B7E
	ldr r0, _08059BE4  @ gUnknown_0203E182
	movs r1, #2
	ldrsh r7, [r0, r1]
	ldr r0, _08059BE8  @ gUnknown_0203E114
	movs r1, #2
	ldrsh r2, [r0, r1]
	mov r8, r2
	ldr r0, _08059BEC  @ gUnknown_0203E110
	movs r2, #2
	ldrsh r5, [r0, r2]
	lsls r0, r7, #5
	mov r1, sl
	adds r6, r0, r1
	ldr r0, [r6, #0x10]
	ldr r1, _08059C24  @ gUnknown_02011BC8
	bl LZ77UnCompWram
	ldr r1, _08059C28  @ gUnknown_02000060
	ldr r0, [r6, #0xc]
	str r0, [r1]
	adds r0, r7, #0
	movs r1, #1
	bl sub_805999C
	lsls r0, r0, #5
	add r0, sl
	ldr r0, [r0, #0x1c]
	ldr r4, _08059C2C  @ gUnknown_02004128
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	beq _08059B46
	lsls r0, r5, #4
	ldr r2, _08059BFC  @ gUnknown_08EF8008
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	adds r1, r4, #0
	bl LZ77UnCompWram
	adds r0, r4, #0
	movs r1, #1
	bl sub_8059970
_08059B46:
	ldr r1, _08059C00  @ gUnknown_02000054
	mov r2, r8
	lsls r0, r2, #5
	adds r0, r0, r4
	str r0, [r1, #4]
	ldr r4, _08059C30  @ gUnknown_02022BC8
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r0, _08059C08  @ gUnknown_0203E19C
	ldr r0, [r0, #4]
	adds r4, #0x20
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	bl EnablePaletteSync
	ldr r0, [r6, #0x14]
	ldr r4, _08059C34  @ gUnknown_020099C8
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _08059C20  @ 0x000057F0
	adds r4, r4, r0
	mov r1, r9
	str r1, [r4]
_08059B7E:
	ldr r4, _08059C38  @ gUnknown_0203E194
	ldr r2, [r4]
	cmp r2, #0
	bne _08059B88
	b _08059D06
_08059B88:
	ldr r0, [r2, #4]
	ldr r1, [r0, #0x34]
	adds r0, r2, #0
	movs r2, #0
	mov r3, sp
	bl sub_8057CAC
	lsls r0, r0, #0x10
	ldr r2, _08059C08  @ gUnknown_0203E19C
	lsrs r0, r0, #0xb
	add r0, sl
	ldr r0, [r0, #0x1c]
	str r0, [r2]
	ldr r1, [r4]
	ldr r0, [r1]
	ldrb r0, [r0, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r1, #4]
	ldrb r5, [r0, #4]
	movs r3, #0
	ldr r0, _08059C3C  @ gUnknown_0895E0A4
	lsls r1, r4, #3
	subs r1, r1, r4
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, r5
	bne _08059C44
	ldr r0, _08059C40  @ gUnknown_0895EEA4
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, _08059BFC  @ gUnknown_08EF8008
	adds r0, r0, r1
	subs r0, #0x10
	ldr r0, [r0, #0xc]
	str r0, [r2]
	b _08059C72
	.align 2, 0
_08059BD8: .4byte gUnknown_08C00008
_08059BDC: .4byte gUnknown_0201FB1C
_08059BE0: .4byte gUnknown_0203E104
_08059BE4: .4byte gUnknown_0203E182
_08059BE8: .4byte gUnknown_0203E114
_08059BEC: .4byte gUnknown_0203E110
_08059BF0: .4byte gUnknown_0200F1C8
_08059BF4: .4byte gUnknown_0200005C
_08059BF8: .4byte gUnknown_02004088
_08059BFC: .4byte gUnknown_08EF8008
_08059C00: .4byte gUnknown_02000054
_08059C04: .4byte gUnknown_02022B88
_08059C08: .4byte gUnknown_0203E19C
_08059C0C: .4byte gUnknown_0203A4EC
_08059C10: .4byte 0xFFFFFD20
_08059C14: .4byte gUnknown_0203A56C
_08059C18: .4byte gPaletteBuffer
_08059C1C: .4byte gUnknown_020041C8
_08059C20: .4byte 0x000057F0
_08059C24: .4byte gUnknown_02011BC8
_08059C28: .4byte gUnknown_02000060
_08059C2C: .4byte gUnknown_02004128
_08059C30: .4byte gUnknown_02022BC8
_08059C34: .4byte gUnknown_020099C8
_08059C38: .4byte gUnknown_0203E194
_08059C3C: .4byte gUnknown_0895E0A4
_08059C40: .4byte gUnknown_0895EEA4
_08059C44:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #6
	bhi _08059C72
	ldr r0, _08059CC4  @ gUnknown_0895E0A4
	lsls r1, r4, #3
	subs r1, r1, r4
	adds r2, r3, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r5
	bne _08059C44
	ldr r1, _08059CC8  @ gUnknown_0203E19C
	ldr r0, _08059CCC  @ gUnknown_0895EEA4
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r2, _08059CD0  @ gUnknown_08EF8008
	adds r0, r0, r2
	subs r0, #0x10
	ldr r0, [r0, #0xc]
	str r0, [r1]
_08059C72:
	ldr r4, _08059CD4  @ gUnknown_0203E194
	ldr r0, [r4, #4]
	ldr r1, [r0, #4]
	ldr r1, [r1, #0x34]
	movs r2, #0
	mov r3, sp
	bl sub_8057CAC
	lsls r0, r0, #0x10
	ldr r2, _08059CC8  @ gUnknown_0203E19C
	lsrs r0, r0, #0xb
	add r0, sl
	ldr r0, [r0, #0x1c]
	str r0, [r2, #4]
	ldr r1, [r4, #4]
	ldr r0, [r1]
	ldrb r0, [r0, #4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r1, #4]
	ldrb r5, [r0, #4]
	movs r3, #0
	ldr r0, _08059CC4  @ gUnknown_0895E0A4
	lsls r1, r4, #3
	subs r1, r1, r4
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, r5
	bne _08059CD8
	ldr r0, _08059CCC  @ gUnknown_0895EEA4
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, _08059CD0  @ gUnknown_08EF8008
	adds r0, r0, r1
	subs r0, #0x10
	ldr r0, [r0, #0xc]
	str r0, [r2, #4]
	b _08059D06
	.align 2, 0
_08059CC4: .4byte gUnknown_0895E0A4
_08059CC8: .4byte gUnknown_0203E19C
_08059CCC: .4byte gUnknown_0895EEA4
_08059CD0: .4byte gUnknown_08EF8008
_08059CD4: .4byte gUnknown_0203E194
_08059CD8:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #6
	bhi _08059D06
	ldr r0, _08059D18  @ gUnknown_0895E0A4
	lsls r1, r4, #3
	subs r1, r1, r4
	adds r2, r3, r1
	adds r0, r2, r0
	ldrb r0, [r0]
	cmp r0, r5
	bne _08059CD8
	ldr r1, _08059D1C  @ gUnknown_0203E19C
	ldr r0, _08059D20  @ gUnknown_0895EEA4
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r2, _08059D24  @ gUnknown_08EF8008
	adds r0, r0, r2
	subs r0, #0x10
	ldr r0, [r0, #0xc]
	str r0, [r1, #4]
_08059D06:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059D18: .4byte gUnknown_0895E0A4
_08059D1C: .4byte gUnknown_0203E19C
_08059D20: .4byte gUnknown_0895EEA4
_08059D24: .4byte gUnknown_08EF8008

	THUMB_FUNC_START sub_8059D28
sub_8059D28: @ 0x08059D28
	push {lr}
	ldr r0, _08059D40  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bhi _08059DA2
	lsls r0, r0, #2
	ldr r1, _08059D44  @ _08059D48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059D40: .4byte gUnknown_0203E120
_08059D44: .4byte _08059D48
_08059D48: @ jump table
	.4byte _08059D5C @ case 0
	.4byte _08059D66 @ case 1
	.4byte _08059D70 @ case 2
	.4byte _08059D5C @ case 3
	.4byte _08059D5C @ case 4
_08059D5C:
	movs r0, #6
	movs r1, #6
	bl sub_8059DB8
	b _08059DA2
_08059D66:
	movs r0, #8
	movs r1, #8
	bl sub_8059DB8
	b _08059DA2
_08059D70:
	movs r0, #8
	movs r1, #8
	bl sub_8059DB8
	bl sub_8052184
	cmp r0, #0
	bne _08059D94
	ldr r1, _08059D90  @ gUnknown_02000000
	ldr r2, [r1, #8]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2, #2]
	ldr r1, [r1, #0xc]
	b _08059DA0
	.align 2, 0
_08059D90: .4byte gUnknown_02000000
_08059D94:
	ldr r1, _08059DB0  @ gUnknown_02000000
	ldr r2, [r1]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2, #2]
	ldr r1, [r1, #4]
_08059DA0:
	strh r0, [r1, #2]
_08059DA2:
	ldr r1, _08059DB4  @ gUnknown_0203E152
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	pop {r0}
	bx r0
	.align 2, 0
_08059DB0: .4byte gUnknown_02000000
_08059DB4: .4byte gUnknown_0203E152

	THUMB_FUNC_START sub_8059DB8
sub_8059DB8: @ 0x08059DB8
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r4, _08059E0C  @ gUnknown_02000000
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r5, _08059E10  @ gUnknown_0203E104
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _08059DDA
	adds r0, r2, #0
	bl sub_8059E18
_08059DDA:
	movs r1, #2
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _08059DE8
	adds r0, r6, #0
	bl sub_8059F5C
_08059DE8:
	ldr r0, _08059E14  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bne _08059E04
	ldr r2, [r4]
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, [r4, #4]
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r2]
_08059E04:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059E0C: .4byte gUnknown_02000000
_08059E10: .4byte gUnknown_0203E104
_08059E14: .4byte gUnknown_0203E120

	THUMB_FUNC_START sub_8059E18
sub_8059E18: @ 0x08059E18
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r2, _08059F20  @ gUnknown_080DAEF0
	lsls r1, r7, #2
	adds r0, r1, r2
	ldrb r5, [r0]
	adds r0, r1, #1
	adds r0, r0, r2
	ldrb r6, [r0]
	adds r0, r1, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r8, r0
	adds r1, #3
	adds r1, r1, r2
	ldrb r1, [r1]
	mov r9, r1
	ldr r0, _08059F24  @ gUnknown_080DAF1D
	ldr r1, _08059F28  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r1, r0
	ldrb r4, [r0]
	ldr r3, _08059F2C  @ gUnknown_02000030
	ldr r0, _08059F30  @ gUnknown_080DAF28
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	negs r1, r1
	movs r2, #0
	strh r1, [r3]
	ldr r0, _08059F34  @ gUnknown_02000034
	strh r2, [r0]
	ldr r0, _08059F38  @ gUnknown_02000028
	adds r1, r1, r4
	strh r1, [r0]
	ldr r1, _08059F3C  @ gUnknown_0200002C
	movs r0, #0x58
	strh r0, [r1]
	ldr r0, _08059F40  @ gUnknown_0200005C
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08059F44  @ gUnknown_0200F1C8
	adds r0, r1, r0
	cmp r5, #0xff
	bne _08059E80
	ldr r0, _08059F48  @ gUnknown_085B9D5C
_08059E80:
	adds r1, r6, #0
	bl AIS_New
	adds r3, r0, #0
	ldr r2, _08059F38  @ gUnknown_02000028
	ldr r0, _08059F4C  @ gUnknown_0201FB0C
	ldr r1, [r0]
	ldrh r0, [r2]
	subs r0, r0, r1
	movs r2, #0
	strh r0, [r3, #2]
	ldr r0, _08059F3C  @ gUnknown_0200002C
	ldrh r0, [r0]
	strh r0, [r3, #4]
	movs r0, #0xf4
	lsls r0, r0, #7
	strh r0, [r3, #8]
	ldrh r1, [r3, #0xc]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3, #0xc]
	strh r2, [r3, #0xe]
	strb r7, [r3, #0x12]
	ldr r0, _08059F50  @ gUnknown_02000088
	str r0, [r3, #0x2c]
	ldr r0, _08059F54  @ gUnknown_020041C8
	str r0, [r3, #0x30]
	ldr r0, _08059F58  @ gUnknown_02000000
	str r3, [r0]
	ldr r0, _08059F40  @ gUnknown_0200005C
	ldr r1, [r0]
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08059F44  @ gUnknown_0200F1C8
	adds r0, r1, r0
	cmp r2, #0xff
	bne _08059ED4
	ldr r0, _08059F48  @ gUnknown_085B9D5C
_08059ED4:
	mov r1, r9
	bl AIS_New
	adds r3, r0, #0
	ldr r2, _08059F38  @ gUnknown_02000028
	ldr r0, _08059F4C  @ gUnknown_0201FB0C
	ldr r1, [r0]
	ldrh r0, [r2]
	subs r0, r0, r1
	movs r2, #0
	strh r0, [r3, #2]
	ldr r0, _08059F3C  @ gUnknown_0200002C
	ldrh r0, [r0]
	strh r0, [r3, #4]
	movs r0, #0xf4
	lsls r0, r0, #7
	strh r0, [r3, #8]
	ldrh r1, [r3, #0xc]
	movs r4, #0xa0
	lsls r4, r4, #3
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3, #0xc]
	strh r2, [r3, #0xe]
	strb r7, [r3, #0x12]
	ldr r0, _08059F50  @ gUnknown_02000088
	str r0, [r3, #0x2c]
	ldr r0, _08059F54  @ gUnknown_020041C8
	str r0, [r3, #0x30]
	ldr r0, _08059F58  @ gUnknown_02000000
	str r3, [r0, #4]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08059F20: .4byte gUnknown_080DAEF0
_08059F24: .4byte gUnknown_080DAF1D
_08059F28: .4byte gUnknown_0203E120
_08059F2C: .4byte gUnknown_02000030
_08059F30: .4byte gUnknown_080DAF28
_08059F34: .4byte gUnknown_02000034
_08059F38: .4byte gUnknown_02000028
_08059F3C: .4byte gUnknown_0200002C
_08059F40: .4byte gUnknown_0200005C
_08059F44: .4byte gUnknown_0200F1C8
_08059F48: .4byte gUnknown_085B9D5C
_08059F4C: .4byte gUnknown_0201FB0C
_08059F50: .4byte gUnknown_02000088
_08059F54: .4byte gUnknown_020041C8
_08059F58: .4byte gUnknown_02000000

	THUMB_FUNC_START sub_8059F5C
sub_8059F5C: @ 0x08059F5C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r2, _0805A044  @ gUnknown_080DAEF0
	lsls r1, r5, #2
	adds r0, r1, r2
	ldrb r3, [r0]
	adds r0, r1, #1
	adds r0, r0, r2
	ldrb r4, [r0]
	adds r0, r1, #2
	adds r0, r0, r2
	ldrb r6, [r0]
	adds r1, #3
	adds r1, r1, r2
	ldrb r7, [r1]
	ldr r1, _0805A048  @ gUnknown_080DAF22
	ldr r0, _0805A04C  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldr r0, _0805A050  @ gUnknown_02000030
	movs r1, #0
	strh r1, [r0, #2]
	ldr r0, _0805A054  @ gUnknown_02000034
	strh r1, [r0, #2]
	ldr r0, _0805A058  @ gUnknown_02000028
	strh r2, [r0, #2]
	ldr r1, _0805A05C  @ gUnknown_0200002C
	movs r0, #0x58
	strh r0, [r1, #2]
	ldr r0, _0805A060  @ gUnknown_02000060
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0805A064  @ gUnknown_02011BC8
	adds r0, r1, r0
	cmp r3, #0xff
	bne _08059FAE
	ldr r0, _0805A068  @ gUnknown_085B9D5C
_08059FAE:
	adds r1, r4, #0
	bl AIS_New
	adds r3, r0, #0
	ldr r2, _0805A058  @ gUnknown_02000028
	ldr r0, _0805A06C  @ gUnknown_0201FB0C
	ldr r1, [r0]
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	movs r2, #0
	strh r0, [r3, #2]
	ldr r0, _0805A05C  @ gUnknown_0200002C
	ldrh r0, [r0, #2]
	strh r0, [r3, #4]
	movs r0, #0x9b
	lsls r0, r0, #8
	strh r0, [r3, #8]
	ldrh r1, [r3, #0xc]
	movs r4, #0xc0
	lsls r4, r4, #3
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3, #0xc]
	strh r2, [r3, #0xe]
	strb r5, [r3, #0x12]
	ldr r0, _0805A070  @ gUnknown_02002088
	str r0, [r3, #0x2c]
	ldr r0, _0805A074  @ gUnknown_020099C8
	str r0, [r3, #0x30]
	ldr r0, _0805A078  @ gUnknown_02000000
	str r3, [r0, #8]
	ldr r0, _0805A060  @ gUnknown_02000060
	ldr r1, [r0]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0805A064  @ gUnknown_02011BC8
	adds r0, r1, r0
	cmp r6, #0xff
	bne _0805A000
	ldr r0, _0805A068  @ gUnknown_085B9D5C
_0805A000:
	adds r1, r7, #0
	bl AIS_New
	adds r3, r0, #0
	ldr r2, _0805A058  @ gUnknown_02000028
	ldr r0, _0805A06C  @ gUnknown_0201FB0C
	ldr r1, [r0]
	ldrh r0, [r2, #2]
	subs r0, r0, r1
	movs r2, #0
	strh r0, [r3, #2]
	ldr r0, _0805A05C  @ gUnknown_0200002C
	ldrh r0, [r0, #2]
	strh r0, [r3, #4]
	movs r0, #0x9b
	lsls r0, r0, #8
	strh r0, [r3, #8]
	ldrh r1, [r3, #0xc]
	movs r4, #0xe0
	lsls r4, r4, #3
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3, #0xc]
	strh r2, [r3, #0xe]
	strb r5, [r3, #0x12]
	ldr r0, _0805A070  @ gUnknown_02002088
	str r0, [r3, #0x2c]
	ldr r0, _0805A074  @ gUnknown_020099C8
	str r0, [r3, #0x30]
	ldr r0, _0805A078  @ gUnknown_02000000
	str r3, [r0, #0xc]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A044: .4byte gUnknown_080DAEF0
_0805A048: .4byte gUnknown_080DAF22
_0805A04C: .4byte gUnknown_0203E120
_0805A050: .4byte gUnknown_02000030
_0805A054: .4byte gUnknown_02000034
_0805A058: .4byte gUnknown_02000028
_0805A05C: .4byte gUnknown_0200002C
_0805A060: .4byte gUnknown_02000060
_0805A064: .4byte gUnknown_02011BC8
_0805A068: .4byte gUnknown_085B9D5C
_0805A06C: .4byte gUnknown_0201FB0C
_0805A070: .4byte gUnknown_02002088
_0805A074: .4byte gUnknown_020099C8
_0805A078: .4byte gUnknown_02000000

	THUMB_FUNC_START sub_805A07C
sub_805A07C: @ 0x0805A07C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_805A154
	cmp r0, #0
	bne _0805A09C
	ldr r0, _0805A098  @ gUnknown_080DAEF0
	lsls r1, r6, #2
	adds r2, r1, r0
	ldrb r5, [r2]
	adds r1, #1
	adds r1, r1, r0
	b _0805A0AA
	.align 2, 0
_0805A098: .4byte gUnknown_080DAEF0
_0805A09C:
	ldr r2, _0805A0C8  @ gUnknown_080DAEF0
	lsls r1, r6, #2
	adds r0, r1, #2
	adds r0, r0, r2
	ldrb r5, [r0]
	adds r1, #3
	adds r1, r1, r2
_0805A0AA:
	ldrb r7, [r1]
	cmp r5, #0xff
	beq _0805A0F0
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805A0D4
	ldr r0, _0805A0CC  @ gUnknown_0200005C
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0805A0D0  @ gUnknown_0200F1C8
	b _0805A0E0
	.align 2, 0
_0805A0C8: .4byte gUnknown_080DAEF0
_0805A0CC: .4byte gUnknown_0200005C
_0805A0D0: .4byte gUnknown_0200F1C8
_0805A0D4:
	ldr r0, _0805A0E8  @ gUnknown_02000060
	ldr r1, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _0805A0EC  @ gUnknown_02011BC8
_0805A0E0:
	adds r1, r1, r0
	str r1, [r4, #0x24]
	str r1, [r4, #0x20]
	b _0805A0FA
	.align 2, 0
_0805A0E8: .4byte gUnknown_02000060
_0805A0EC: .4byte gUnknown_02011BC8
_0805A0F0:
	ldr r0, _0805A148  @ gUnknown_085B9D5C
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	movs r0, #0
	strh r0, [r4, #0x10]
_0805A0FA:
	movs r3, #0
	movs r2, #0
	strh r7, [r4, #0xa]
	ldrh r1, [r4, #8]
	ldr r0, _0805A14C  @ 0x0000F3FF
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #4
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r4, #8]
	strh r2, [r4, #6]
	ldrh r1, [r4, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #3
	ands r0, r1
	strh r0, [r4, #0xc]
	strb r6, [r4, #0x12]
	strb r3, [r4, #0x14]
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	subs r1, r1, r0
	lsls r1, r1, #0xb
	ldr r0, _0805A150  @ gUnknown_020041C8
	adds r1, r1, r0
	str r1, [r4, #0x30]
	bl AISArray_Sort
	adds r0, r4, #0
	bl sub_807705C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A148: .4byte gUnknown_085B9D5C
_0805A14C: .4byte 0x0000F3FF
_0805A150: .4byte gUnknown_020041C8

	THUMB_FUNC_START sub_805A154
sub_805A154: @ 0x0805A154
	push {lr}
	ldrh r1, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A166
	movs r0, #1
	b _0805A168
_0805A166:
	movs r0, #0
_0805A168:
	pop {r1}
	bx r1

	THUMB_FUNC_START GetAISSubjectId
GetAISSubjectId: @ 0x0805A16C
	push {lr}
	ldrh r1, [r0, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805A17E
	movs r0, #1
	b _0805A180
_0805A17E:
	movs r0, #0
_0805A180:
	pop {r1}
	bx r1

	THUMB_FUNC_START GetSomeBoolean
GetSomeBoolean: @ 0x0805A184
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bhi _0805A1C8
	lsls r0, r0, #2
	ldr r1, _0805A198  @ _0805A19C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A198: .4byte _0805A19C
_0805A19C: @ jump table
	.4byte _0805A1C8 @ case 0
	.4byte _0805A1C8 @ case 1
	.4byte _0805A1C8 @ case 2
	.4byte _0805A1C8 @ case 3
	.4byte _0805A1C4 @ case 4
	.4byte _0805A1C4 @ case 5
	.4byte _0805A1C8 @ case 6
	.4byte _0805A1C8 @ case 7
	.4byte _0805A1C8 @ case 8
	.4byte _0805A1C8 @ case 9
_0805A1C4:
	movs r0, #1
	b _0805A1CA
_0805A1C8:
	movs r0, #0
_0805A1CA:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805A1D0
sub_805A1D0: @ 0x0805A1D0
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bhi _0805A214
	lsls r0, r0, #2
	ldr r1, _0805A1E4  @ _0805A1E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A1E4: .4byte _0805A1E8
_0805A1E8: @ jump table
	.4byte _0805A214 @ case 0
	.4byte _0805A214 @ case 1
	.4byte _0805A214 @ case 2
	.4byte _0805A214 @ case 3
	.4byte _0805A214 @ case 4
	.4byte _0805A214 @ case 5
	.4byte _0805A210 @ case 6
	.4byte _0805A210 @ case 7
	.4byte _0805A210 @ case 8
	.4byte _0805A214 @ case 9
_0805A210:
	movs r0, #1
	b _0805A216
_0805A214:
	movs r0, #0
_0805A216:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805A21C
sub_805A21C: @ 0x0805A21C
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bhi _0805A260
	lsls r0, r0, #2
	ldr r1, _0805A230  @ _0805A234
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A230: .4byte _0805A234
_0805A234: @ jump table
	.4byte _0805A25C @ case 0
	.4byte _0805A25C @ case 1
	.4byte _0805A25C @ case 2
	.4byte _0805A25C @ case 3
	.4byte _0805A260 @ case 4
	.4byte _0805A260 @ case 5
	.4byte _0805A260 @ case 6
	.4byte _0805A260 @ case 7
	.4byte _0805A260 @ case 8
	.4byte _0805A25C @ case 9
_0805A25C:
	movs r0, #1
	b _0805A262
_0805A260:
	movs r0, #0
_0805A262:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805A268
sub_805A268: @ 0x0805A268
	push {lr}
	ldrb r0, [r0, #0x12]
	cmp r0, #9
	bhi _0805A2AC
	lsls r0, r0, #2
	ldr r1, _0805A27C  @ _0805A280
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A27C: .4byte _0805A280
_0805A280: @ jump table
	.4byte _0805A2AC @ case 0
	.4byte _0805A2A8 @ case 1
	.4byte _0805A2AC @ case 2
	.4byte _0805A2A8 @ case 3
	.4byte _0805A2AC @ case 4
	.4byte _0805A2AC @ case 5
	.4byte _0805A2AC @ case 6
	.4byte _0805A2AC @ case 7
	.4byte _0805A2AC @ case 8
	.4byte _0805A2AC @ case 9
_0805A2A8:
	movs r0, #1
	b _0805A2AE
_0805A2AC:
	movs r0, #0
_0805A2AE:
	pop {r1}
	bx r1

	THUMB_FUNC_START GetCoreAIStruct
GetCoreAIStruct: @ 0x0805A2B4
	push {r4, lr}
	ldr r4, _0805A2CC  @ gUnknown_02000000
	bl GetAISSubjectId
	movs r1, #1
	eors r1, r0
	lsls r1, r1, #3
	adds r1, r1, r4
	ldr r0, [r1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805A2CC: .4byte gUnknown_02000000

	THUMB_FUNC_START sub_805A2D0
sub_805A2D0: @ 0x0805A2D0
	push {r4, lr}
	adds r4, r0, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r4, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl GetSomeAISRelatedIndexMaybeByID
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805A2F0
sub_805A2F0: @ 0x0805A2F0
	push {r4, lr}
	adds r4, r0, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #1
	adds r0, r0, r1
	bl GetSomeAISRelatedIndexMaybeByID
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START GetSomeAISRelatedIndexMaybe
GetSomeAISRelatedIndexMaybe: @ 0x0805A310
	push {r4, lr}
	adds r4, r0, #0
	bl GetAISSubjectId
	adds r2, r0, #0
	ldrh r0, [r4, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	movs r1, #1
	eors r1, r2
	adds r0, r0, r1
	bl GetSomeAISRelatedIndexMaybeByID
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805A334
sub_805A334: @ 0x0805A334
	push {r4, lr}
	adds r4, r0, #0
	bl GetAISSubjectId
	adds r2, r0, #0
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #1
	movs r1, #1
	eors r1, r2
	adds r0, r0, r1
	bl GetSomeAISRelatedIndexMaybeByID
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805A358
sub_805A358: @ 0x0805A358
	push {lr}
	cmp r0, #0
	bne _0805A374
	ldr r2, _0805A370  @ gUnknown_02000000
	ldr r3, [r2]
	ldrh r0, [r3]
	movs r1, #2
	orrs r0, r1
	strh r0, [r3]
	ldr r3, [r2, #4]
	b _0805A386
	.align 2, 0
_0805A370: .4byte gUnknown_02000000
_0805A374:
	cmp r0, #1
	bne _0805A38C
	ldr r2, _0805A390  @ gUnknown_02000000
	ldr r3, [r2, #8]
	ldrh r0, [r3]
	movs r1, #2
	orrs r0, r1
	strh r0, [r3]
	ldr r3, [r2, #0xc]
_0805A386:
	ldrh r0, [r3]
	orrs r1, r0
	strh r1, [r3]
_0805A38C:
	pop {r0}
	bx r0
	.align 2, 0
_0805A390: .4byte gUnknown_02000000

	THUMB_FUNC_START sub_805A394
sub_805A394: @ 0x0805A394
	push {r4, lr}
	cmp r0, #0
	bne _0805A3B4
	ldr r3, _0805A3AC  @ gUnknown_02000000
	ldr r4, [r3]
	ldrh r2, [r4]
	ldr r1, _0805A3B0  @ 0x0000FFFD
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldr r4, [r3, #4]
	b _0805A3C8
	.align 2, 0
_0805A3AC: .4byte gUnknown_02000000
_0805A3B0: .4byte 0x0000FFFD
_0805A3B4:
	cmp r0, #1
	bne _0805A3CE
	ldr r3, _0805A3D4  @ gUnknown_02000000
	ldr r4, [r3, #8]
	ldrh r2, [r4]
	ldr r1, _0805A3D8  @ 0x0000FFFD
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r4]
	ldr r4, [r3, #0xc]
_0805A3C8:
	ldrh r0, [r4]
	ands r1, r0
	strh r1, [r4]
_0805A3CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A3D4: .4byte gUnknown_02000000
_0805A3D8: .4byte 0x0000FFFD

	THUMB_FUNC_START sub_805A3DC
sub_805A3DC: @ 0x0805A3DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r4, #0
	bne _0805A3E8
	b _0805A576
_0805A3E8:
	ldrh r0, [r4, #0xc]
	movs r5, #0xf0
	lsls r5, r5, #8
	ands r5, r0
	cmp r5, #0
	bne _0805A3F6
	b _0805A576
_0805A3F6:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r5
	cmp r0, #0
	bne _0805A402
	b _0805A538
_0805A402:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _0805A40A
	b _0805A52E
_0805A40A:
	adds r0, r4, r0
	ldrb r0, [r0, #0x14]
	cmp r0, #0x32
	bls _0805A414
	b _0805A526
_0805A414:
	lsls r0, r0, #2
	ldr r1, _0805A420  @ _0805A424
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A420: .4byte _0805A424
_0805A424: @ jump table
	.4byte _0805A526 @ case 0
	.4byte _0805A4F0 @ case 1
	.4byte _0805A4F0 @ case 2
	.4byte _0805A508 @ case 3
	.4byte _0805A508 @ case 4
	.4byte _0805A4F8 @ case 5
	.4byte _0805A526 @ case 6
	.4byte _0805A526 @ case 7
	.4byte _0805A526 @ case 8
	.4byte _0805A526 @ case 9
	.4byte _0805A526 @ case 10
	.4byte _0805A526 @ case 11
	.4byte _0805A526 @ case 12
	.4byte _0805A510 @ case 13
	.4byte _0805A518 @ case 14
	.4byte _0805A526 @ case 15
	.4byte _0805A526 @ case 16
	.4byte _0805A526 @ case 17
	.4byte _0805A526 @ case 18
	.4byte _0805A526 @ case 19
	.4byte _0805A526 @ case 20
	.4byte _0805A526 @ case 21
	.4byte _0805A526 @ case 22
	.4byte _0805A526 @ case 23
	.4byte _0805A520 @ case 24
	.4byte _0805A526 @ case 25
	.4byte _0805A526 @ case 26
	.4byte _0805A526 @ case 27
	.4byte _0805A526 @ case 28
	.4byte _0805A526 @ case 29
	.4byte _0805A526 @ case 30
	.4byte _0805A526 @ case 31
	.4byte _0805A526 @ case 32
	.4byte _0805A526 @ case 33
	.4byte _0805A526 @ case 34
	.4byte _0805A526 @ case 35
	.4byte _0805A526 @ case 36
	.4byte _0805A526 @ case 37
	.4byte _0805A526 @ case 38
	.4byte _0805A526 @ case 39
	.4byte _0805A526 @ case 40
	.4byte _0805A526 @ case 41
	.4byte _0805A526 @ case 42
	.4byte _0805A526 @ case 43
	.4byte _0805A526 @ case 44
	.4byte _0805A526 @ case 45
	.4byte _0805A526 @ case 46
	.4byte _0805A526 @ case 47
	.4byte _0805A526 @ case 48
	.4byte _0805A526 @ case 49
	.4byte _0805A526 @ case 50
_0805A4F0:
	adds r0, r4, #0
	bl sub_805A580
	b _0805A526
_0805A4F8:
	adds r0, r4, #0
	bl sub_805A154
	cmp r0, #0
	bne _0805A508
	adds r0, r4, #0
	bl sub_806EB54
_0805A508:
	ldr r0, [r4, #0x20]
	adds r0, #4
	str r0, [r4, #0x20]
	b _0805A526
_0805A510:
	adds r0, r4, #0
	bl sub_805A5A8
	b _0805A526
_0805A518:
	adds r0, r4, #0
	bl sub_806EB54
	b _0805A526
_0805A520:
	adds r0, r4, #0
	bl sub_805A580
_0805A526:
	ldrb r0, [r4, #0x14]
	subs r0, #1
	strb r0, [r4, #0x14]
	b _0805A402
_0805A52E:
	ldrh r1, [r4, #0xc]
	movs r0, #0xe7
	lsls r0, r0, #8
	ands r0, r1
	strh r0, [r4, #0xc]
_0805A538:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r5
	cmp r0, #0
	beq _0805A568
	adds r0, r4, #0
	bl sub_805A154
	cmp r0, #0
	bne _0805A55E
	ldr r1, [r6, #0x2c]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _0805A55E
	adds r0, r4, #0
	bl RegisterAISSheetGraphics
	ldr r0, [r4, #0x28]
	str r0, [r6, #0x2c]
_0805A55E:
	ldrh r1, [r4, #0xc]
	movs r0, #0xd7
	lsls r0, r0, #8
	ands r0, r1
	strh r0, [r4, #0xc]
_0805A568:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r5, r0
	cmp r5, #0
	beq _0805A576
	ldr r0, _0805A57C  @ 0x0000FFFF
	strh r0, [r4, #0xe]
_0805A576:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A57C: .4byte 0x0000FFFF

	THUMB_FUNC_START sub_805A580
sub_805A580: @ 0x0805A580
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805A5A4  @ 0x0000FFFE
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0x10]
	movs r2, #8
	ands r2, r0
	cmp r2, #0
	beq _0805A59E
	strh r2, [r1, #0x10]
	movs r0, #0
	strh r0, [r1, #0xe]
	ldr r0, [r1, #0x20]
	adds r0, #4
	str r0, [r1, #0x20]
_0805A59E:
	pop {r0}
	bx r0
	.align 2, 0
_0805A5A4: .4byte 0x0000FFFE

	THUMB_FUNC_START sub_805A5A8
sub_805A5A8: @ 0x0805A5A8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, [r6, #0x44]
	ldr r4, _0805A600  @ gUnknown_08C00008
	bl sub_805A154
	cmp r0, #0
	bne _0805A5FA
	ldr r0, _0805A604  @ gUnknown_080DAEF0
	ldrb r1, [r0, #0x18]
	movs r2, #6
	ldrsh r0, [r5, r2]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r0, [r0, #0xc]
	ldr r2, [r5, #0x14]
	ldr r3, [r5, #0x18]
	ldr r4, [r5, #0x28]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r1, r4, r1
	ldr r0, [r1, #4]
	str r0, [r2, #0x28]
	ldr r4, [r2, #0x30]
	ldr r1, [r1, #8]
	adds r4, r4, r1
	str r4, [r2, #0x3c]
	ldr r4, [r3, #0x30]
	ldr r0, _0805A608  @ 0x000057F0
	adds r4, r4, r0
	str r4, [r3, #0x3c]
	ldr r1, [r5, #0x2c]
	ldr r0, [r6, #0x28]
	cmp r1, r0
	beq _0805A5FA
	adds r0, r6, #0
	bl NewEkrChienCHR
	ldr r0, [r6, #0x28]
	str r0, [r5, #0x2c]
_0805A5FA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A600: .4byte gUnknown_08C00008
_0805A604: .4byte gUnknown_080DAEF0
_0805A608: .4byte 0x000057F0

	THUMB_FUNC_START sub_805A60C
sub_805A60C: @ 0x0805A60C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0805A694  @ gUnknown_08C00008
	mov r9, r0
	ldr r2, _0805A698  @ gUnknown_080DAEF0
	ldrh r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r0, r1, r2
	ldrb r5, [r0]
	adds r0, r1, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r8, r0
	adds r0, r1, #2
	adds r0, r0, r2
	ldrb r6, [r0]
	adds r1, #3
	adds r1, r1, r2
	ldrb r1, [r1]
	mov sl, r1
	movs r1, #6
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	add r0, r9
	ldr r0, [r0, #0x10]
	ldr r1, [r4, #0x28]
	bl LZ77UnCompWram
	movs r2, #6
	ldrsh r0, [r4, r2]
	lsls r0, r0, #5
	mov r3, r9
	adds r1, r0, r3
	ldr r2, [r1, #0xc]
	ldr r3, [r4, #0x28]
	ldr r7, _0805A69C  @ gUnknown_085B9D5C
	cmp r5, #0xff
	beq _0805A66A
	lsls r0, r5, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r7, r3, r0
_0805A66A:
	ldr r0, _0805A69C  @ gUnknown_085B9D5C
	str r0, [sp]
	cmp r6, #0xff
	beq _0805A67C
	lsls r0, r6, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r3, r3, r0
	str r3, [sp]
_0805A67C:
	ldrh r0, [r4, #0xc]
	cmp r0, #0
	bne _0805A6A4
	ldr r5, [r4, #0x24]
	ldr r0, [r1, #0x18]
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r2, _0805A6A0  @ 0x000057F0
	adds r1, r5, r2
	b _0805A6B2
	.align 2, 0
_0805A694: .4byte gUnknown_08C00008
_0805A698: .4byte gUnknown_080DAEF0
_0805A69C: .4byte gUnknown_085B9D5C
_0805A6A0: .4byte 0x000057F0
_0805A6A4:
	ldr r5, [r4, #0x24]
	ldr r0, [r1, #0x14]
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r3, _0805A70C  @ 0x000057F0
	adds r1, r5, r3
_0805A6B2:
	movs r0, #1
	str r0, [r1]
	mov r1, r8
	adds r0, r7, #0
	bl AIS_New
	adds r2, r0, #0
	ldr r0, [r4, #0x24]
	str r0, [r2, #0x30]
	ldrh r0, [r4, #2]
	movs r5, #0
	strh r0, [r2, #2]
	ldrh r0, [r4, #4]
	strh r0, [r2, #4]
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #0xc
	movs r1, #0x80
	lsls r1, r1, #4
	adds r6, r1, #0
	orrs r0, r6
	ldrh r1, [r4, #0xe]
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #9
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	ldrh r1, [r2, #0xc]
	orrs r0, r1
	strh r0, [r2, #0xc]
	strh r5, [r2, #0xe]
	ldrh r0, [r4, #0xa]
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x1c]
	str r0, [r2, #0x2c]
	str r2, [r4, #0x14]
	str r4, [r2, #0x44]
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #0xc4
	bne _0805A710
	str r5, [r4, #0x18]
	b _0805A752
	.align 2, 0
_0805A70C: .4byte 0x000057F0
_0805A710:
	mov r1, sl
	ldr r0, [sp]
	bl AIS_New
	adds r2, r0, #0
	ldr r0, [r4, #0x24]
	str r0, [r2, #0x30]
	ldrh r0, [r4, #2]
	strh r0, [r2, #2]
	ldrh r0, [r4, #4]
	strh r0, [r2, #4]
	ldrh r0, [r4, #0x10]
	lsls r0, r0, #0xc
	orrs r0, r6
	ldrh r1, [r4, #0xe]
	orrs r0, r1
	strh r0, [r2, #8]
	ldrh r0, [r4, #0xc]
	lsls r0, r0, #9
	movs r3, #0xa0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	ldrh r1, [r2, #0xc]
	orrs r0, r1
	strh r0, [r2, #0xc]
	strh r5, [r2, #0xe]
	ldrh r0, [r4, #0xa]
	strb r0, [r2, #0x12]
	ldr r0, [r4, #0x1c]
	str r0, [r2, #0x2c]
	str r2, [r4, #0x18]
	str r4, [r2, #0x44]
_0805A752:
	movs r1, #6
	ldrsh r0, [r4, r1]
	lsls r0, r0, #5
	add r0, r9
	ldr r0, [r0, #0x1c]
	ldr r1, [r4, #0x20]
	bl LZ77UnCompWram
	movs r2, #8
	ldrsh r1, [r4, r2]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _0805A77E
	adds r0, r1, #0
	lsls r0, r0, #4
	ldr r1, _0805A7AC  @ gUnknown_08EF8008
	adds r0, r0, r1
	ldr r0, [r0, #0xc]
	ldr r1, [r4, #0x20]
	bl LZ77UnCompWram
_0805A77E:
	ldrb r1, [r4, #1]
	lsls r1, r1, #5
	ldr r0, [r4, #0x20]
	adds r0, r0, r1
	ldrh r1, [r4, #0x10]
	lsls r1, r1, #5
	ldr r2, _0805A7B0  @ gUnknown_02022AA8
	adds r1, r1, r2
	movs r2, #8
	bl CpuFastSet
	bl EnablePaletteSync
	movs r0, #0
	str r0, [r4, #0x2c]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A7AC: .4byte gUnknown_08EF8008
_0805A7B0: .4byte gUnknown_02022AA8

	THUMB_FUNC_START sub_805A7B4
sub_805A7B4: @ 0x0805A7B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _0805A82C  @ gUnknown_08C00008
	mov sl, r0
	ldr r2, _0805A830  @ gUnknown_080DAEF0
	ldrh r0, [r7, #0xa]
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrb r4, [r1]
	adds r0, #2
	adds r0, r0, r2
	ldrb r5, [r0]
	movs r1, #6
	ldrsh r0, [r7, r1]
	lsls r0, r0, #5
	add r0, sl
	ldr r0, [r0, #0x10]
	ldr r1, [r7, #0x28]
	bl LZ77UnCompWram
	movs r2, #6
	ldrsh r0, [r7, r2]
	lsls r0, r0, #5
	mov r2, sl
	adds r1, r0, r2
	ldr r2, [r1, #0xc]
	ldr r3, [r7, #0x28]
	ldr r0, _0805A834  @ gUnknown_085B9D5C
	mov r8, r0
	cmp r4, #0xff
	beq _0805A804
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r3
	mov r8, r0
_0805A804:
	ldr r0, _0805A834  @ gUnknown_085B9D5C
	mov r9, r0
	cmp r5, #0xff
	beq _0805A816
	lsls r0, r5, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r3, r3, r0
	mov r9, r3
_0805A816:
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	bne _0805A83C
	ldr r4, [r7, #0x24]
	ldr r0, [r1, #0x18]
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r2, _0805A838  @ 0x000057F0
	adds r1, r4, r2
	b _0805A84A
	.align 2, 0
_0805A82C: .4byte gUnknown_08C00008
_0805A830: .4byte gUnknown_080DAEF0
_0805A834: .4byte gUnknown_085B9D5C
_0805A838: .4byte 0x000057F0
_0805A83C:
	ldr r4, [r7, #0x24]
	ldr r0, [r1, #0x14]
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0805A924  @ 0x000057F0
	adds r1, r4, r0
_0805A84A:
	movs r0, #1
	str r0, [r1]
	ldr r6, [r7, #0x14]
	mov r1, r8
	str r1, [r6, #0x24]
	str r1, [r6, #0x20]
	ldr r0, [r7, #0x24]
	str r0, [r6, #0x30]
	ldrh r0, [r7, #2]
	movs r5, #0
	movs r3, #0
	strh r0, [r6, #2]
	ldrh r0, [r7, #4]
	strh r0, [r6, #4]
	ldrh r0, [r7, #0x10]
	lsls r0, r0, #0xc
	movs r2, #0x80
	lsls r2, r2, #4
	adds r4, r2, #0
	orrs r0, r4
	ldrh r1, [r7, #0xe]
	orrs r0, r1
	strh r0, [r6, #8]
	ldrh r1, [r6, #0xc]
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r6, #0xc]
	strh r3, [r6, #0x10]
	strh r3, [r6, #6]
	strh r3, [r6, #0xe]
	ldrh r0, [r7, #0xa]
	strb r0, [r6, #0x12]
	ldr r0, [r7, #0x1c]
	str r0, [r6, #0x2c]
	strb r5, [r6, #0x14]
	str r6, [r7, #0x14]
	ldr r6, [r7, #0x18]
	mov r0, r9
	str r0, [r6, #0x24]
	str r0, [r6, #0x20]
	ldr r0, [r7, #0x24]
	str r0, [r6, #0x30]
	ldrh r0, [r7, #2]
	strh r0, [r6, #2]
	ldrh r0, [r7, #4]
	strh r0, [r6, #4]
	ldrh r0, [r7, #0x10]
	lsls r0, r0, #0xc
	orrs r0, r4
	ldrh r1, [r7, #0xe]
	orrs r0, r1
	strh r0, [r6, #8]
	ldrh r0, [r6, #0xc]
	ands r2, r0
	strh r2, [r6, #0xc]
	strh r3, [r6, #0x10]
	strh r3, [r6, #6]
	strh r3, [r6, #0xe]
	ldrh r0, [r7, #0xa]
	strb r0, [r6, #0x12]
	ldr r0, [r7, #0x1c]
	str r0, [r6, #0x2c]
	strb r5, [r6, #0x14]
	str r6, [r7, #0x18]
	movs r1, #6
	ldrsh r0, [r7, r1]
	lsls r0, r0, #5
	add r0, sl
	ldr r0, [r0, #0x1c]
	ldr r1, [r7, #0x20]
	bl LZ77UnCompWram
	movs r2, #8
	ldrsh r1, [r7, r2]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _0805A8FA
	adds r0, r1, #0
	lsls r0, r0, #4
	ldr r2, _0805A928  @ gUnknown_08EF8008
	adds r0, r0, r2
	ldr r0, [r0, #0xc]
	ldr r1, [r7, #0x20]
	bl LZ77UnCompWram
_0805A8FA:
	ldrb r1, [r7, #1]
	lsls r1, r1, #5
	ldr r0, [r7, #0x20]
	adds r0, r0, r1
	ldrh r1, [r7, #0x10]
	lsls r1, r1, #5
	ldr r2, _0805A92C  @ gUnknown_02022AA8
	adds r1, r1, r2
	movs r2, #8
	bl CpuFastSet
	bl EnablePaletteSync
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A924: .4byte 0x000057F0
_0805A928: .4byte gUnknown_08EF8008
_0805A92C: .4byte gUnknown_02022AA8

	THUMB_FUNC_START sub_805A930
sub_805A930: @ 0x0805A930
	push {lr}
	strh r1, [r0, #6]
	strh r2, [r0, #8]
	bl sub_805A7B4
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805A940
sub_805A940: @ 0x0805A940
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	ldr r2, [r0, #0x14]
	strh r1, [r2, #2]
	ldrh r1, [r0, #4]
	strh r1, [r2, #4]
	ldr r2, [r0, #0x18]
	ldrh r1, [r0, #2]
	strh r1, [r2, #2]
	ldrh r0, [r0, #4]
	strh r0, [r2, #4]
	bx lr

	THUMB_FUNC_START sub_805A95C
sub_805A95C: @ 0x0805A95C
	lsls r1, r1, #0x10
	ldr r2, [r0, #0x14]
	lsrs r1, r1, #6
	strh r1, [r2, #8]
	ldr r2, [r0, #0x18]
	strh r1, [r2, #8]
	bx lr

	THUMB_FUNC_START sub_805A96C
sub_805A96C: @ 0x0805A96C
	push {lr}
	ldr r1, [r0, #0x14]
	ldr r2, [r0, #0x18]
	ldrh r0, [r1, #0xe]
	ldr r1, _0805A984  @ 0x0000FFFE
	cmp r0, r1
	beq _0805A988
	ldrh r0, [r2, #0xe]
	cmp r0, r1
	beq _0805A988
	movs r0, #0
	b _0805A98A
	.align 2, 0
_0805A984: .4byte 0x0000FFFE
_0805A988:
	movs r0, #1
_0805A98A:
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_805A990
sub_805A990: @ 0x0805A990
	ldr r3, [r0, #0x14]
	ldrh r1, [r3, #0x10]
	movs r2, #8
	orrs r1, r2
	strh r1, [r3, #0x10]
	ldr r3, [r0, #0x18]
	ldrh r0, [r3, #0x10]
	orrs r2, r0
	strh r2, [r3, #0x10]
	bx lr

	THUMB_FUNC_START sub_805A9A4
sub_805A9A4: @ 0x0805A9A4
	push {lr}
	ldr r0, [r0, #0x14]
	ldrh r1, [r0, #0xe]
	ldr r0, _0805A9B4  @ 0x0000FFFF
	cmp r1, r0
	bne _0805A9B8
	movs r0, #1
	b _0805A9BA
	.align 2, 0
_0805A9B4: .4byte 0x0000FFFF
_0805A9B8:
	movs r0, #0
_0805A9BA:
	pop {r1}
	bx r1

	THUMB_FUNC_START NewEfxAnimeDrvProc
NewEfxAnimeDrvProc: @ 0x0805A9C0
	push {r4, lr}
	ldr r4, _0805A9D8  @ gUnknown_0201FB18
	ldr r0, _0805A9DC  @ gUnknown_085B9DAC
	movs r1, #4
	bl Proc_Create
	str r0, [r4]
	bl ClearAISArray
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A9D8: .4byte gUnknown_0201FB18
_0805A9DC: .4byte gUnknown_085B9DAC

	THUMB_FUNC_START sub_805A9E0
sub_805A9E0: @ 0x0805A9E0
	push {lr}
	ldr r0, _0805A9F0  @ gUnknown_0201FB18
	ldr r0, [r0]
	bl Proc_Delete
	pop {r0}
	bx r0
	.align 2, 0
_0805A9F0: .4byte gUnknown_0201FB18

	THUMB_FUNC_START ExecAllAIS
ExecAllAIS: @ 0x0805A9F4
	push {lr}
	bl AIS_ExecAll
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805AA00
sub_805AA00: @ 0x0805AA00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0805AA24  @ gUnknown_085B9DC4
	movs r1, #4
	bl Proc_Create
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_805A60C
	str r4, [r5, #0x5c]
	str r5, [r4, #0x34]
	movs r0, #1
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805AA24: .4byte gUnknown_085B9DC4

	THUMB_FUNC_START sub_805AA28
sub_805AA28: @ 0x0805AA28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl AIS_Free
	ldr r0, [r4, #0x18]
	bl AIS_Free
	movs r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x34]
	bl Proc_Delete
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805AA4C
sub_805AA4C: @ 0x0805AA4C
	push {r4, lr}
	ldr r4, [r0, #0x5c]
	ldr r1, [r4, #0x14]
	adds r0, r4, #0
	bl sub_805A3DC
	ldr r1, [r4, #0x18]
	adds r0, r4, #0
	bl sub_805A3DC
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805AA68
sub_805AA68: @ 0x0805AA68
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r2, _0805AAD0  @ gUnknown_08EE0008
	adds r0, r0, r2
	mov r8, r0
	movs r0, #6
	ldrsh r1, [r6, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r5, r0, r2
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r4, #1
	negs r4, r4
	cmp r0, r4
	beq _0805AAA6
	mov r2, r8
	ldr r0, [r2, #0xc]
	ldr r1, [r6, #0x20]
	bl LZ77UnCompWram
_0805AAA6:
	movs r1, #6
	ldrsh r0, [r6, r1]
	cmp r0, r4
	beq _0805AABC
	ldr r0, [r5, #0xc]
	ldr r1, [r6, #0x20]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r1, r2
	bl LZ77UnCompWram
_0805AABC:
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	cmp r0, #3
	bgt _0805AAD4
	cmp r0, #1
	bge _0805AAE2
	cmp r0, #0
	beq _0805AAD8
	b _0805AAE2
	.align 2, 0
_0805AAD0: .4byte gUnknown_08EE0008
_0805AAD4:
	cmp r0, #4
	bne _0805AAE2
_0805AAD8:
	ldr r3, [r6, #0x20]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r7, r3, r2
	b _0805AAF0
_0805AAE2:
	ldr r0, [r6, #0x20]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r3, r0, r1
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r7, r0, r2
_0805AAF0:
	mov r0, r8
	ldr r0, [r0, #0x10]
	mov r8, r0
	ldr r5, [r5, #0x10]
	mov r9, r5
	movs r1, #0xe
	ldrsh r4, [r6, r1]
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	beq _0805AB74
	cmp r4, r0
	blt _0805ABD4
	cmp r4, #3
	bgt _0805ABD4
	movs r2, #4
	ldrsh r0, [r6, r2]
	adds r0, #0x40
	lsls r0, r0, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r0, r0, r4
	ldr r1, [r6, #0x1c]
	adds r1, r1, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r3, #0
	adds r2, r5, #0
	bl RegisterTileGraphics
	movs r1, #0xa
	ldrsh r0, [r6, r1]
	lsls r0, r0, #5
	adds r0, r0, r4
	ldr r1, [r6, #0x1c]
	adds r1, r1, r0
	adds r0, r7, #0
	adds r2, r5, #0
	bl RegisterTileGraphics
	movs r2, #2
	ldrsh r1, [r6, r2]
	lsls r1, r1, #5
	ldr r4, _0805AB70  @ gPaletteBuffer
	adds r1, r1, r4
	mov r0, r8
	movs r2, #8
	bl CpuFastSet
	movs r0, #8
	ldrsh r1, [r6, r0]
	lsls r1, r1, #5
	adds r1, r1, r4
	mov r0, r9
	movs r2, #8
	bl CpuFastSet
	bl EnablePaletteSync
	adds r0, r6, #0
	bl sub_805AE58
	b _0805ABD4
	.align 2, 0
_0805AB70: .4byte gPaletteBuffer
_0805AB74:
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, r4
	beq _0805ABA2
	movs r2, #4
	ldrsh r0, [r6, r2]
	lsls r0, r0, #5
	ldr r1, [r6, #0x1c]
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r3, #0
	bl RegisterTileGraphics
	movs r0, #2
	ldrsh r1, [r6, r0]
	lsls r1, r1, #5
	ldr r0, _0805ABEC  @ gUnknown_02022AA8
	adds r1, r1, r0
	mov r0, r8
	movs r2, #8
	bl CpuFastSet
_0805ABA2:
	movs r1, #6
	ldrsh r0, [r6, r1]
	cmp r0, r4
	beq _0805ABD0
	movs r2, #0xa
	ldrsh r0, [r6, r2]
	lsls r0, r0, #5
	ldr r1, [r6, #0x1c]
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r7, #0
	bl RegisterTileGraphics
	movs r0, #8
	ldrsh r1, [r6, r0]
	lsls r1, r1, #5
	ldr r0, _0805ABEC  @ gUnknown_02022AA8
	adds r1, r1, r0
	mov r0, r9
	movs r2, #8
	bl CpuFastSet
_0805ABD0:
	bl EnablePaletteSync
_0805ABD4:
	ldrh r0, [r6, #0xe]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bls _0805ABE2
	b _0805AE02
_0805ABE2:
	lsls r0, r0, #2
	ldr r1, _0805ABF0  @ _0805ABF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805ABEC: .4byte gUnknown_02022AA8
_0805ABF0: .4byte _0805ABF4
_0805ABF4: @ jump table
	.4byte _0805AC28 @ case 0
	.4byte _0805AC08 @ case 1
	.4byte _0805AC10 @ case 2
	.4byte _0805AC18 @ case 3
	.4byte _0805AC20 @ case 4
_0805AC08:
	movs r0, #1
	bl BG_EnableSyncByMask
	b _0805AE02
_0805AC10:
	movs r0, #2
	bl BG_EnableSyncByMask
	b _0805AE02
_0805AC18:
	movs r0, #4
	bl BG_EnableSyncByMask
	b _0805AE02
_0805AC20:
	movs r0, #8
	bl BG_EnableSyncByMask
	b _0805AE02
_0805AC28:
	movs r0, #0
	str r0, [r6, #0x14]
	str r0, [r6, #0x18]
	movs r2, #6
	ldrsh r1, [r6, r2]
	subs r0, #1
	cmp r1, r0
	beq _0805AD16
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	cmp r0, #4
	bhi _0805AD16
	lsls r0, r0, #2
	ldr r1, _0805AC4C  @ _0805AC50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805AC4C: .4byte _0805AC50
_0805AC50: @ jump table
	.4byte _0805AC64 @ case 0
	.4byte _0805AC90 @ case 1
	.4byte _0805ACBC @ case 2
	.4byte _0805ACE8 @ case 3
	.4byte _0805AC64 @ case 4
_0805AC64:
	movs r2, #8
	ldrsh r0, [r6, r2]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	orrs r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805AC8C  @ gUnknown_085C73B8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xa8
	b _0805AD0C
	.align 2, 0
_0805AC8C: .4byte gUnknown_085C73B8
_0805AC90:
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	orrs r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805ACB8  @ gUnknown_085C72AC
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xb0
	b _0805AD0C
	.align 2, 0
_0805ACB8: .4byte gUnknown_085C72AC
_0805ACBC:
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	orrs r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805ACE4  @ gUnknown_085C72AC
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xb0
	b _0805AD0C
	.align 2, 0
_0805ACE4: .4byte gUnknown_085C72AC
_0805ACE8:
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #0xa]
	orrs r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805AD34  @ gUnknown_085C72AC
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0x80
_0805AD0C:
	movs r1, #0x68
	movs r3, #2
	bl sub_80716C8
	str r0, [r6, #0x18]
_0805AD16:
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _0805AE02
	movs r1, #0xc
	ldrsh r0, [r6, r1]
	cmp r0, #4
	bhi _0805AE02
	lsls r0, r0, #2
	ldr r1, _0805AD38  @ _0805AD3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805AD34: .4byte gUnknown_085C72AC
_0805AD38: .4byte _0805AD3C
_0805AD3C: @ jump table
	.4byte _0805AD50 @ case 0
	.4byte _0805AD7C @ case 1
	.4byte _0805ADA8 @ case 2
	.4byte _0805ADD4 @ case 3
	.4byte _0805AD50 @ case 4
_0805AD50:
	movs r2, #2
	ldrsh r0, [r6, r2]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #4]
	orrs r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805AD78  @ gUnknown_085C7438
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0x48
	b _0805ADF8
	.align 2, 0
_0805AD78: .4byte gUnknown_085C7438
_0805AD7C:
	movs r1, #2
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #4]
	orrs r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805ADA4  @ gUnknown_085C7338
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0x20
	b _0805ADF8
	.align 2, 0
_0805ADA4: .4byte gUnknown_085C7338
_0805ADA8:
	movs r1, #2
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #4]
	orrs r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805ADD0  @ gUnknown_085C7338
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0x40
	b _0805ADF8
	.align 2, 0
_0805ADD0: .4byte gUnknown_085C7338
_0805ADD4:
	movs r1, #2
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0xc
	ldrh r1, [r6, #4]
	orrs r0, r1
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0805AE10  @ gUnknown_085C7438
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0x78
_0805ADF8:
	movs r1, #0x68
	movs r3, #2
	bl sub_80716C8
	str r0, [r6, #0x14]
_0805AE02:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AE10: .4byte gUnknown_085C7438

	THUMB_FUNC_START sub_805AE14
sub_805AE14: @ 0x0805AE14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xe
	ldrsh r1, [r4, r0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0805AE38
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0805AE2E
	bl Proc_Delete
_0805AE2E:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805AE38
	bl Proc_Delete
_0805AE38:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805AE40
sub_805AE40: @ 0x0805AE40
	push {r4, r5, lr}
	ldr r4, [sp, #0xc]
	ldr r5, [r0, #0x14]
	strh r1, [r5, #0x32]
	strh r2, [r5, #0x3a]
	ldr r5, [r0, #0x18]
	strh r3, [r5, #0x32]
	strh r4, [r5, #0x3a]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805AE58
sub_805AE58: @ 0x0805AE58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	movs r4, #0
	mov sl, r4
	ldr r0, _0805AE9C  @ gUnknown_085B9D6C
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	lsls r2, r1, #3
	adds r2, r2, r0
	ldr r2, [r2]
	str r2, [sp, #0x10]
	lsls r1, r1, #1
	adds r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	str r1, [sp, #0x14]
	movs r0, #0
	bl sub_80559B0
	movs r1, #0xc
	ldrsh r0, [r7, r1]
	cmp r0, #4
	bhi _0805AEEC
	lsls r0, r0, #2
	ldr r1, _0805AEA0  @ _0805AEA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805AE9C: .4byte gUnknown_085B9D6C
_0805AEA0: .4byte _0805AEA4
_0805AEA4: @ jump table
	.4byte _0805AEB8 @ case 0
	.4byte _0805AEC0 @ case 1
	.4byte _0805AED8 @ case 2
	.4byte _0805AEEC @ case 3
	.4byte _0805AEB8 @ case 4
_0805AEB8:
	movs r4, #0x21
	movs r2, #0x30
	mov sl, r2
	b _0805AF0C
_0805AEC0:
	movs r4, #0x1d
	movs r0, #0x30
	mov sl, r0
	ldr r0, _0805AED4  @ gUnknown_02017744
	ldr r0, [r0]
	movs r5, #4
	negs r5, r5
_0805AECE:
	cmp r0, #1
	bne _0805AF0E
	b _0805AF0C
	.align 2, 0
_0805AED4: .4byte gUnknown_02017744
_0805AED8:
	movs r4, #3
	movs r1, #0x30
	mov sl, r1
	ldr r0, _0805AEE8  @ gUnknown_02017744
	ldr r0, [r0]
	movs r5, #0x1e
	negs r5, r5
	b _0805AECE
	.align 2, 0
_0805AEE8: .4byte gUnknown_02017744
_0805AEEC:
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq _0805AEFE
	movs r4, #0x27
	movs r0, #3
	mov sl, r0
_0805AEFE:
	movs r2, #6
	ldrsh r0, [r7, r2]
	cmp r0, r1
	beq _0805AF0C
	movs r4, #3
	movs r0, #0x2a
	mov sl, r0
_0805AF0C:
	movs r5, #0
_0805AF0E:
	movs r1, #1
	negs r1, r1
	mov r9, r1
	lsls r2, r4, #1
	ldr r4, _0805AF94  @ gUnknown_0201CF84
	adds r2, r2, r4
	movs r0, #0xf
	mov r8, r0
	str r0, [sp]
	movs r6, #5
	str r6, [sp, #4]
	movs r1, #2
	ldrsh r0, [r7, r1]
	str r0, [sp, #8]
	movs r1, #4
	ldrsh r0, [r7, r1]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r1, r9
	movs r3, #0x42
	bl sub_8070EF4
	mov r0, sl
	lsls r2, r0, #1
	adds r2, r2, r4
	mov r1, r8
	str r1, [sp]
	str r6, [sp, #4]
	movs r1, #8
	ldrsh r0, [r7, r1]
	str r0, [sp, #8]
	movs r1, #0xa
	ldrsh r0, [r7, r1]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	mov r1, r9
	movs r3, #0x42
	bl sub_8070EF4
	lsls r0, r5, #1
	adds r4, r4, r0
	ldr r2, _0805AF98  @ 0xFFFFFA96
	adds r4, r4, r2
	ldr r2, _0805AF9C  @ gBG2TilemapBuffer
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	mov r0, r9
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x42
	movs r3, #0x20
	bl sub_8070EF4
	movs r0, #4
	bl BG_EnableSyncByMask
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AF94: .4byte gUnknown_0201CF84
_0805AF98: .4byte 0xFFFFFA96
_0805AF9C: .4byte gBG2TilemapBuffer

	THUMB_FUNC_START sub_805AFA0
sub_805AFA0: @ 0x0805AFA0
	push {lr}
	sub sp, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bhi _0805AFE8
	lsls r0, r0, #2
	ldr r1, _0805AFBC  @ _0805AFC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805AFBC: .4byte _0805AFC0
_0805AFC0: @ jump table
	.4byte _0805AFD4 @ case 0
	.4byte _0805AFDE @ case 1
	.4byte _0805AFE8 @ case 2
	.4byte _0805AFE8 @ case 3
	.4byte _0805AFD4 @ case 4
_0805AFD4:
	movs r2, #0x30
	cmp r3, #0
	bne _0805AFF0
	movs r2, #0x21
	b _0805AFF0
_0805AFDE:
	movs r2, #0x30
	cmp r3, #0
	bne _0805AFF0
	movs r2, #0x1d
	b _0805AFF0
_0805AFE8:
	movs r2, #0x30
	cmp r3, #0
	bne _0805AFF0
	movs r2, #3
_0805AFF0:
	ldr r0, _0805B014  @ gUnknown_080DAF60
	movs r1, #1
	negs r1, r1
	lsls r2, r2, #1
	ldr r3, _0805B018  @ gUnknown_0201CF84
	adds r2, r2, r3
	movs r3, #0xf
	str r3, [sp]
	movs r3, #5
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	movs r3, #0x42
	bl sub_8070EF4
	add sp, #0x10
	pop {r0}
	bx r0
	.align 2, 0
_0805B014: .4byte gUnknown_080DAF60
_0805B018: .4byte gUnknown_0201CF84

	THUMB_FUNC_START SetBattleAnimArenaFlag
SetBattleAnimArenaFlag: @ 0x0805B01C
	ldr r1, _0805B024  @ gUnknown_0203E1E4
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B024: .4byte gUnknown_0203E1E4

	THUMB_FUNC_START sub_805B028
sub_805B028: @ 0x0805B028
	ldr r0, _0805B030  @ gUnknown_0203E1E4
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0805B030: .4byte gUnknown_0203E1E4

	THUMB_FUNC_START sub_805B034
sub_805B034: @ 0x0805B034
	push {r4, lr}
	sub sp, #0x10
	asrs r4, r0, #3
	movs r1, #7
	ands r1, r0
	movs r0, #3
	movs r2, #0
	bl BG_SetPosition
	lsls r4, r4, #1
	ldr r0, _0805B074  @ gUnknown_0201D438
	adds r4, r4, r0
	ldr r2, _0805B078  @ gBG3TilemapBuffer
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x16
	str r0, [sp, #4]
	subs r0, #0x17
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x42
	movs r3, #0x20
	bl sub_8070EF4
	movs r0, #8
	bl BG_EnableSyncByMask
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B074: .4byte gUnknown_0201D438
_0805B078: .4byte gBG3TilemapBuffer

	THUMB_FUNC_START sub_805B07C
sub_805B07C: @ 0x0805B07C
	push {lr}
	bl sub_805B028
	cmp r0, #0
	beq _0805B090
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0x8f
	bl SomePlaySound_8071990
_0805B090:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805B094
sub_805B094: @ 0x0805B094
	push {lr}
	bl sub_805B028
	cmp r0, #0
	beq _0805B0A4
	movs r0, #0x8e
	bl sub_8071A44
_0805B0A4:
	pop {r0}
	bx r0

	THUMB_FUNC_START BeginAnimsOnBattle_Arena
BeginAnimsOnBattle_Arena: @ 0x0805B0A8
	push {lr}
	bl NewEkrBattleDeamon
	bl ClearAISArray
	bl sub_8052184
	ldr r1, _0805B0C8  @ gUnknown_02017744
	str r0, [r1]
	bl NewEkrTogiInitPROC
	movs r0, #0
	bl SetPrimaryHBlankHandler
	pop {r0}
	bx r0
	.align 2, 0
_0805B0C8: .4byte gUnknown_02017744

	THUMB_FUNC_START sub_805B0CC
sub_805B0CC: @ 0x0805B0CC
	push {lr}
	bl ClearAISArray
	bl NewEkrTogiEndPROC
	ldr r0, _0805B0E8  @ MainUpdate_8055C68
	bl SetMainUpdateRoutine
	ldr r0, _0805B0EC  @ gUnknown_085B9A34
	bl Proc_DeleteAllWithScript
	pop {r0}
	bx r0
	.align 2, 0
_0805B0E8: .4byte MainUpdate_8055C68
_0805B0EC: .4byte gUnknown_085B9A34

	THUMB_FUNC_START NewEkrTogiInitPROC
NewEkrTogiInitPROC: @ 0x0805B0F0
	push {lr}
	ldr r0, _0805B100  @ gUnknown_085B9DDC
	movs r1, #3
	bl Proc_Create
	pop {r0}
	bx r0
	.align 2, 0
_0805B100: .4byte gUnknown_085B9DDC

	THUMB_FUNC_START sub_805B104
sub_805B104: @ 0x0805B104
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	movs r0, #0
	bl SetupOAMBufferSplice
	ldr r1, _0805B178  @ gUnknown_02017744
	ldr r0, _0805B17C  @ gUnknown_0203E100
	movs r2, #0
	ldrsh r0, [r0, r2]
	str r0, [r1]
	bl sub_8051CC4
	bl sub_80599E8
	bl NewEkrGauge
	bl NewEkrDispUP
	bl NewEkrBattle
	ldr r0, _0805B180  @ gUnknown_085BEF94
	ldr r4, _0805B184  @ gUnknown_02022968
	adds r1, r4, #0
	movs r2, #0x20
	bl CpuFastSet
	subs r4, #0xc0
	ldr r5, _0805B188  @ gUnknown_020165C8
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl CpuFastSet
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0x10
	bl sub_80712B0
	bl EnablePaletteSync
	mov r0, r8
	bl Proc_ClearNativeCallback
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B178: .4byte gUnknown_02017744
_0805B17C: .4byte gUnknown_0203E100
_0805B180: .4byte gUnknown_085BEF94
_0805B184: .4byte gUnknown_02022968
_0805B188: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_805B18C
sub_805B18C: @ 0x0805B18C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _0805B1EC  @ gUnknown_085BC188
	ldr r1, _0805B1F0  @ 0x06008000
	bl LZ77UnCompVram
	ldr r0, _0805B1F4  @ gUnknown_085BE7F4
	ldr r6, _0805B1F8  @ gUnknown_02019790
	adds r1, r6, #0
	bl LZ77UnCompWram
	movs r1, #1
	negs r1, r1
	ldr r2, _0805B1FC  @ gUnknown_0201D428
	movs r0, #0x2e
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	adds r0, r6, #0
	movs r3, #0x42
	bl sub_8070EF4
	movs r0, #0
	bl sub_805B034
	movs r0, #8
	bl BG_EnableSyncByMask
	strh r4, [r5, #0x2c]
	movs r0, #0x10
	strh r0, [r5, #0x2e]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0x8e
	bl SomePlaySound_8071990
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B1EC: .4byte gUnknown_085BC188
_0805B1F0: .4byte 0x06008000
_0805B1F4: .4byte gUnknown_085BE7F4
_0805B1F8: .4byte gUnknown_02019790
_0805B1FC: .4byte gUnknown_0201D428

	THUMB_FUNC_START sub_805B200
sub_805B200: @ 0x0805B200
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r6, r0]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_8012DCC
	adds r5, r0, #0
	ldr r0, _0805B25C  @ gUnknown_020165C8
	ldr r4, _0805B260  @ gPaletteBuffer
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	adds r3, r5, #0
	bl sub_80712B0
	bl EnablePaletteSync
	ldrh r1, [r6, #0x2c]
	adds r1, #1
	strh r1, [r6, #0x2c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x2e
	ldrsh r0, [r6, r2]
	adds r0, #1
	cmp r1, r0
	bne _0805B254
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_0805B254:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B25C: .4byte gUnknown_020165C8
_0805B260: .4byte gPaletteBuffer

	THUMB_FUNC_START sub_805B264
sub_805B264: @ 0x0805B264
	push {r4, lr}
	adds r4, r0, #0
	bl NewEkrTogiColor
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START NewEkrTogiEndPROC
NewEkrTogiEndPROC: @ 0x0805B278
	push {lr}
	ldr r0, _0805B28C  @ gUnknown_085B9E0C
	movs r1, #3
	bl Proc_Create
	bl EndEkrTogiColor
	pop {r0}
	bx r0
	.align 2, 0
_0805B28C: .4byte gUnknown_085B9E0C

	THUMB_FUNC_START sub_805B290
sub_805B290: @ 0x0805B290
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805B2B4  @ gPaletteBuffer
	ldr r1, _0805B2B8  @ gUnknown_020165C8
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x10
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B2B4: .4byte gPaletteBuffer
_0805B2B8: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_805B2BC
sub_805B2BC: @ 0x0805B2BC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r6, r0]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_8012DCC
	adds r5, r0, #0
	ldr r0, _0805B318  @ gUnknown_020165C8
	ldr r4, _0805B31C  @ gPaletteBuffer
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	adds r3, r5, #0
	bl sub_80712B0
	bl EnablePaletteSync
	ldrh r1, [r6, #0x2c]
	adds r1, #1
	strh r1, [r6, #0x2c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x2e
	ldrsh r0, [r6, r2]
	adds r0, #1
	cmp r1, r0
	bne _0805B310
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_0805B310:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B318: .4byte gUnknown_020165C8
_0805B31C: .4byte gPaletteBuffer

	THUMB_FUNC_START sub_805B320
sub_805B320: @ 0x0805B320
	push {r4, lr}
	adds r4, r0, #0
	bl EndEkrBattleDeamon
	bl EndEkrGauge
	ldr r0, _0805B344  @ SomeUpdateRoutine
	bl SetMainUpdateRoutine
	ldr r0, _0805B348  @ GeneralVBlankHandler
	bl SetInterrupt_LCDVBlank
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B344: .4byte SomeUpdateRoutine
_0805B348: .4byte GeneralVBlankHandler

	THUMB_FUNC_START NewEkrTogiColor
NewEkrTogiColor: @ 0x0805B34C
	push {r4, lr}
	ldr r4, _0805B370  @ gUnknown_0201FB24
	ldr r0, _0805B374  @ gUnknown_085B9E34
	movs r1, #3
	bl Proc_Create
	str r0, [r4]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0805B378  @ gUnknown_080DB026
	str r1, [r0, #0x48]
	ldr r1, _0805B37C  @ gUnknown_085B9E4C
	str r1, [r0, #0x4c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B370: .4byte gUnknown_0201FB24
_0805B374: .4byte gUnknown_085B9E34
_0805B378: .4byte gUnknown_080DB026
_0805B37C: .4byte gUnknown_085B9E4C

	THUMB_FUNC_START EndEkrTogiColor
EndEkrTogiColor: @ 0x0805B380
	push {lr}
	ldr r0, _0805B390  @ gUnknown_0201FB24
	ldr r0, [r0]
	bl Proc_Delete
	pop {r0}
	bx r0
	.align 2, 0
_0805B390: .4byte gUnknown_0201FB24

	THUMB_FUNC_START sub_805B394
sub_805B394: @ 0x0805B394
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _0805B3C0
	ldr r1, [r4, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0805B3C8  @ gUnknown_02022968
	movs r2, #0x20
	bl CpuFastSet
	bl EnablePaletteSync
_0805B3C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B3C8: .4byte gUnknown_02022968

	THUMB_FUNC_START StartSpellAnimation
StartSpellAnimation: @ 0x0805B3CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0805B3F4  @ gUnknown_0203E118
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	ldr r1, _0805B3F8  @ gUnknown_085D4E60
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B3F4: .4byte gUnknown_0203E118
_0805B3F8: .4byte gUnknown_085D4E60

	THUMB_FUNC_START sub_805B3FC
sub_805B3FC: @ 0x0805B3FC
	bx lr

	THUMB_FUNC_START sub_805B400
sub_805B400: @ 0x0805B400
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x18]
	ldr r1, _0805B43C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805B440  @ gUnknown_085D4F98
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r5, [r0, #0x44]
	str r6, [r0, #0x48]
	mov r1, r8
	str r1, [r0, #0x4c]
	str r7, [r0, #0x50]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805B43C: .4byte gUnknown_0201774C
_0805B440: .4byte gUnknown_085D4F98

	THUMB_FUNC_START sub_805B444
sub_805B444: @ 0x0805B444
	ldr r1, _0805B450  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B450: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805B454
sub_805B454: @ 0x0805B454
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	ldr r0, _0805B4D4  @ gUnknown_0201FDB8
	ldr r0, [r0]
	ldr r4, _0805B4D8  @ gUnknown_0201FDC4
	cmp r0, #0
	bne _0805B46C
	ldr r4, _0805B4DC  @ gUnknown_0201FF04
_0805B46C:
	ldrh r0, [r2, #0x2e]
	lsls r1, r0, #0x18
	lsrs r3, r1, #0x18
	ldr r1, [r2, #0x50]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r1, #0
	ldr r0, [r2, #0x44]
	mov r8, r0
	ldr r6, [r2, #0x48]
	mov sl, r6
	ldr r7, _0805B4E0  @ gUnknown_0875879C
	mov ip, r7
	ldr r5, [r2, #0x4c]
	ldr r0, _0805B4E4  @ gLCDControlBuffer
	mov r9, r0
_0805B48C:
	mov r6, sl
	adds r0, r3, r6
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r0, r3, #1
	add r0, ip
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r5, r0
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r6, r9
	ldrh r6, [r6, #0x20]
	adds r0, r0, r6
	strh r0, [r4]
	adds r4, #2
	adds r1, #1
	cmp r1, #0x77
	bls _0805B48C
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r8
	bne _0805B4C6
	adds r0, r2, #0
	bl Proc_Delete
_0805B4C6:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B4D4: .4byte gUnknown_0201FDB8
_0805B4D8: .4byte gUnknown_0201FDC4
_0805B4DC: .4byte gUnknown_0201FF04
_0805B4E0: .4byte gUnknown_0875879C
_0805B4E4: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_805B4E8
sub_805B4E8: @ 0x0805B4E8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805B528  @ gUnknown_085D4FB8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r5, [r0, #0x44]
	ldr r2, _0805B52C  @ gUnknown_0201FDC4
_0805B502:
	lsrs r0, r1, #1
	negs r0, r0
	strh r0, [r2]
	adds r2, #2
	adds r1, #1
	cmp r1, #0x77
	bls _0805B502
	ldr r2, _0805B530  @ gUnknown_0201FF04
	movs r1, #0
_0805B514:
	lsrs r0, r1, #1
	negs r0, r0
	strh r0, [r2]
	adds r2, #2
	adds r1, #1
	cmp r1, #0x77
	bls _0805B514
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B528: .4byte gUnknown_085D4FB8
_0805B52C: .4byte gUnknown_0201FDC4
_0805B530: .4byte gUnknown_0201FF04

	THUMB_FUNC_START sub_805B534
sub_805B534: @ 0x0805B534
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r2, #0x44]
	cmp r0, r1
	bne _0805B54E
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_0805B54E:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805B554
sub_805B554: @ 0x0805B554
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0805B57C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805B580  @ gUnknown_085D4FD0
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r5, [r0, #0x44]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B57C: .4byte gUnknown_0201774C
_0805B580: .4byte gUnknown_085D4FD0

	THUMB_FUNC_START sub_805B584
sub_805B584: @ 0x0805B584
	ldr r1, _0805B590  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B590: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805B594
sub_805B594: @ 0x0805B594
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _0805B5D0  @ gUnknown_0201FDB8
	ldr r0, [r0]
	ldr r1, _0805B5D4  @ gUnknown_0201FDC4
	cmp r0, #0
	bne _0805B5A4
	ldr r1, _0805B5D8  @ gUnknown_0201FF04
_0805B5A4:
	movs r2, #0
	ldr r5, [r3, #0x44]
	ldr r4, _0805B5DC  @ gLCDControlBuffer
_0805B5AA:
	ldrh r0, [r4, #0x20]
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0x77
	bls _0805B5AA
	ldrh r0, [r3, #0x2c]
	adds r0, #1
	strh r0, [r3, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _0805B5CA
	adds r0, r3, #0
	bl Proc_Delete
_0805B5CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B5D0: .4byte gUnknown_0201FDB8
_0805B5D4: .4byte gUnknown_0201FDC4
_0805B5D8: .4byte gUnknown_0201FF04
_0805B5DC: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_805B5E0
sub_805B5E0: @ 0x0805B5E0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r1, _0805B628  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805B62C  @ gUnknown_085D4FF0
	movs r1, #3
	bl Proc_Create
	adds r7, r0, #0
	mov r0, r8
	str r0, [r7, #0x5c]
	movs r1, #0
	mov r9, r1
	movs r0, #0
	strh r0, [r7, #0x2c]
	strh r0, [r7, #0x2e]
	str r4, [r7, #0x44]
	str r5, [r7, #0x54]
	str r6, [r7, #0x58]
	mov r0, r8
	bl GetCoreAIStruct
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805B634
	ldr r0, _0805B630  @ 0x0000FFB8
	b _0805B636
	.align 2, 0
_0805B628: .4byte gUnknown_0201774C
_0805B62C: .4byte gUnknown_085D4FF0
_0805B630: .4byte 0x0000FFB8
_0805B634:
	ldr r0, _0805B654  @ 0x0000FFF8
_0805B636:
	strh r0, [r7, #0x32]
	ldr r0, _0805B658  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805B662
	mov r0, r8
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805B65C
	ldrh r0, [r7, #0x32]
	adds r0, #0x18
	b _0805B660
	.align 2, 0
_0805B654: .4byte 0x0000FFF8
_0805B658: .4byte gUnknown_0203E120
_0805B65C:
	ldrh r0, [r7, #0x32]
	subs r0, #0x18
_0805B660:
	strh r0, [r7, #0x32]
_0805B662:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805B670
sub_805B670: @ 0x0805B670
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0805B6B8  @ gUnknown_0201FB2C
	ldr r0, [r0]
	ldr r5, _0805B6BC  @ gUnknown_0201FB38
	cmp r0, #0
	bne _0805B680
	ldr r5, _0805B6C0  @ gUnknown_0201FC78
_0805B680:
	ldr r1, [r4, #0x54]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r1, [r4, #0x58]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r0, _0805B6C4  @ 0x0000FFFF
	cmp r2, r0
	beq _0805B6EC
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	movs r2, #0
	ldr r6, [r4, #0x44]
	ldr r7, _0805B6C8  @ 0x00007FFF
	mov ip, r7
_0805B6A8:
	ldrh r1, [r3]
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r0, ip
	bne _0805B6CC
	movs r0, #0
	b _0805B6DE
	.align 2, 0
_0805B6B8: .4byte gUnknown_0201FB2C
_0805B6BC: .4byte gUnknown_0201FB38
_0805B6C0: .4byte gUnknown_0201FC78
_0805B6C4: .4byte 0x0000FFFF
_0805B6C8: .4byte 0x00007FFF
_0805B6CC:
	ldrh r0, [r4, #0x32]
	adds r1, r1, r0
	ldrh r7, [r3, #2]
	adds r0, r0, r7
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
_0805B6DE:
	strh r0, [r5]
	adds r3, #4
	adds r5, #2
	adds r2, #1
	cmp r2, #0x77
	bls _0805B6A8
	b _0805B6FC
_0805B6EC:
	movs r2, #0
	ldr r6, [r4, #0x44]
	movs r0, #0
_0805B6F2:
	strh r0, [r5]
	adds r5, #2
	adds r2, #1
	cmp r2, #0x77
	bls _0805B6F2
_0805B6FC:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, r6
	bne _0805B718
	ldr r1, _0805B720  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805B718:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B720: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805B724
sub_805B724: @ 0x0805B724
	push {lr}
	ldr r0, _0805B744  @ 0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805B740
	ldr r3, _0805B748  @ 0x04000014
	ldr r2, _0805B74C  @ gUnknown_0201FDC0
	ldr r0, [r2]
	ldrh r1, [r0]
	strh r1, [r3]
	adds r0, #2
	str r0, [r2]
_0805B740:
	pop {r0}
	bx r0
	.align 2, 0
_0805B744: .4byte 0x04000004
_0805B748: .4byte 0x04000014
_0805B74C: .4byte gUnknown_0201FDC0

	THUMB_FUNC_START sub_805B750
sub_805B750: @ 0x0805B750
	push {lr}
	ldr r0, _0805B770  @ 0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805B76C
	ldr r3, _0805B774  @ 0x04000016
	ldr r2, _0805B778  @ gUnknown_0201FDC0
	ldr r0, [r2]
	ldrh r1, [r0]
	strh r1, [r3]
	adds r0, #2
	str r0, [r2]
_0805B76C:
	pop {r0}
	bx r0
	.align 2, 0
_0805B770: .4byte 0x04000004
_0805B774: .4byte 0x04000016
_0805B778: .4byte gUnknown_0201FDC0

	THUMB_FUNC_START sub_805B77C
sub_805B77C: @ 0x0805B77C
	push {lr}
	ldr r0, _0805B7AC  @ 0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805B7A6
	ldr r3, _0805B7B0  @ 0x0400001A
	ldr r2, _0805B7B4  @ gUnknown_0201FB34
	ldr r0, [r2]
	ldrh r1, [r0]
	strh r1, [r3]
	adds r0, #2
	str r0, [r2]
	subs r3, #6
	ldr r2, _0805B7B8  @ gUnknown_0201FDC0
	ldr r0, [r2]
	ldrh r1, [r0]
	strh r1, [r3]
	adds r0, #2
	str r0, [r2]
_0805B7A6:
	pop {r0}
	bx r0
	.align 2, 0
_0805B7AC: .4byte 0x04000004
_0805B7B0: .4byte 0x0400001A
_0805B7B4: .4byte gUnknown_0201FB34
_0805B7B8: .4byte gUnknown_0201FDC0

	THUMB_FUNC_START sub_805B7BC
sub_805B7BC: @ 0x0805B7BC
	push {lr}
	ldr r0, _0805B7EC  @ 0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805B7E6
	ldr r3, _0805B7F0  @ 0x0400001A
	ldr r2, _0805B7F4  @ gUnknown_0201FB34
	ldr r0, [r2]
	ldrh r1, [r0]
	strh r1, [r3]
	adds r0, #2
	str r0, [r2]
	subs r3, #4
	ldr r2, _0805B7F8  @ gUnknown_0201FDC0
	ldr r0, [r2]
	ldrh r1, [r0]
	strh r1, [r3]
	adds r0, #2
	str r0, [r2]
_0805B7E6:
	pop {r0}
	bx r0
	.align 2, 0
_0805B7EC: .4byte 0x04000004
_0805B7F0: .4byte 0x0400001A
_0805B7F4: .4byte gUnknown_0201FB34
_0805B7F8: .4byte gUnknown_0201FDC0

	THUMB_FUNC_START sub_805B7FC
sub_805B7FC: @ 0x0805B7FC
	push {lr}
	ldr r0, _0805B81C  @ 0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0805B818
	ldr r3, _0805B820  @ 0x0400001A
	ldr r2, _0805B824  @ gUnknown_0201FB34
	ldr r0, [r2]
	ldrh r1, [r0]
	strh r1, [r3]
	adds r0, #2
	str r0, [r2]
_0805B818:
	pop {r0}
	bx r0
	.align 2, 0
_0805B81C: .4byte 0x04000004
_0805B820: .4byte 0x0400001A
_0805B824: .4byte gUnknown_0201FB34

	THUMB_FUNC_START sub_805B828
sub_805B828: @ 0x0805B828
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	adds r4, r3, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0805B8C4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r6, _0805B8C8  @ gUnknown_0201FDC4
	ldr r7, _0805B8CC  @ gUnknown_0201FF04
	ldr r0, _0805B8D0  @ gUnknown_0201FDBC
	mov sl, r0
	cmp r4, #2
	bne _0805B88A
	ldr r1, _0805B8D4  @ gUnknown_0201FB38
	movs r0, #0
	adds r5, r1, #0
	ldr r3, _0805B8D8  @ gUnknown_0201FB2C
	mov ip, r3
	ldr r3, _0805B8DC  @ gUnknown_0201FB30
	mov r8, r3
	ldr r3, _0805B8E0  @ gUnknown_0201FB34
	mov r9, r3
_0805B864:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, #0x9f
	bls _0805B864
	ldr r1, _0805B8E4  @ gUnknown_0201FC78
	movs r0, #0
_0805B872:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, #0x9f
	bls _0805B872
	movs r0, #0
	mov r1, ip
	str r0, [r1]
	mov r3, r8
	str r5, [r3]
	mov r0, r9
	str r5, [r0]
_0805B88A:
	adds r1, r6, #0
	movs r0, #0
_0805B88E:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, #0x9f
	bls _0805B88E
	adds r1, r7, #0
	movs r0, #0
_0805B89C:
	strh r2, [r1]
	adds r1, #2
	adds r0, #1
	cmp r0, #0x9f
	bls _0805B89C
	movs r0, #0
	ldr r1, _0805B8E8  @ gUnknown_0201FDB8
	str r0, [r1]
	mov r3, sl
	str r6, [r3]
	ldr r0, _0805B8EC  @ gUnknown_0201FDC0
	str r6, [r0]
	cmp r4, #1
	beq _0805B8FC
	cmp r4, #1
	bcc _0805B8F0
	cmp r4, #2
	beq _0805B908
	b _0805B90E
	.align 2, 0
_0805B8C4: .4byte gUnknown_0201774C
_0805B8C8: .4byte gUnknown_0201FDC4
_0805B8CC: .4byte gUnknown_0201FF04
_0805B8D0: .4byte gUnknown_0201FDBC
_0805B8D4: .4byte gUnknown_0201FB38
_0805B8D8: .4byte gUnknown_0201FB2C
_0805B8DC: .4byte gUnknown_0201FB30
_0805B8E0: .4byte gUnknown_0201FB34
_0805B8E4: .4byte gUnknown_0201FC78
_0805B8E8: .4byte gUnknown_0201FDB8
_0805B8EC: .4byte gUnknown_0201FDC0
_0805B8F0:
	ldr r0, _0805B8F8  @ sub_805B724
	bl SetPrimaryHBlankHandler
	b _0805B90E
	.align 2, 0
_0805B8F8: .4byte sub_805B724
_0805B8FC:
	ldr r0, _0805B904  @ sub_805B750
	bl SetPrimaryHBlankHandler
	b _0805B90E
	.align 2, 0
_0805B904: .4byte sub_805B750
_0805B908:
	ldr r0, _0805B934  @ sub_805B750
	bl SetPrimaryHBlankHandler
_0805B90E:
	ldr r0, _0805B938  @ gUnknown_085D5008
	movs r1, #0
	bl Proc_Create
	ldr r1, [sp]
	str r1, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	ldr r3, [sp, #4]
	str r3, [r0, #0x44]
	str r4, [r0, #0x48]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B934: .4byte sub_805B750
_0805B938: .4byte gUnknown_085D5008

	THUMB_FUNC_START sub_805B93C
sub_805B93C: @ 0x0805B93C
	push {lr}
	adds r3, r2, #0
	movs r2, #0
	bl sub_805B828
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805B94C
sub_805B94C: @ 0x0805B94C
	push {lr}
	bl Proc_ClearNativeCallback
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805B958
sub_805B958: @ 0x0805B958
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805B984  @ gUnknown_0202BCB0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r3, _0805B988  @ gUnknown_0201FB30
	ldr r2, _0805B98C  @ gUnknown_0201FDBC
	cmp r0, #0
	beq _0805B9D0
	ldr r0, [r4, #0x48]
	cmp r0, #2
	bne _0805B9A0
	ldr r1, _0805B990  @ gUnknown_0201FB2C
	ldr r0, [r1]
	cmp r0, #1
	bne _0805B998
	movs r0, #0
	str r0, [r1]
	ldr r0, _0805B994  @ gUnknown_0201FB38
	b _0805B99E
	.align 2, 0
_0805B984: .4byte gUnknown_0202BCB0
_0805B988: .4byte gUnknown_0201FB30
_0805B98C: .4byte gUnknown_0201FDBC
_0805B990: .4byte gUnknown_0201FB2C
_0805B994: .4byte gUnknown_0201FB38
_0805B998:
	movs r0, #1
	str r0, [r1]
	ldr r0, _0805B9B4  @ gUnknown_0201FC78
_0805B99E:
	str r0, [r3]
_0805B9A0:
	ldr r1, _0805B9B8  @ gUnknown_0201FDB8
	ldr r0, [r1]
	cmp r0, #1
	bne _0805B9C4
	movs r0, #0
	str r0, [r1]
	ldr r1, _0805B9BC  @ gUnknown_0201FDBC
	ldr r0, _0805B9C0  @ gUnknown_0201FDC4
	b _0805B9CC
	.align 2, 0
_0805B9B4: .4byte gUnknown_0201FC78
_0805B9B8: .4byte gUnknown_0201FDB8
_0805B9BC: .4byte gUnknown_0201FDBC
_0805B9C0: .4byte gUnknown_0201FDC4
_0805B9C4:
	movs r0, #1
	str r0, [r1]
	ldr r1, _0805BA08  @ gUnknown_0201FDBC
	ldr r0, _0805BA0C  @ gUnknown_0201FF04
_0805B9CC:
	str r0, [r1]
	adds r2, r1, #0
_0805B9D0:
	ldr r1, _0805BA10  @ gUnknown_0201FB34
	ldr r0, [r3]
	str r0, [r1]
	ldr r1, _0805BA14  @ gUnknown_0201FDC0
	ldr r0, [r2]
	str r0, [r1]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x44]
	cmp r0, r1
	bne _0805BA00
	ldr r1, _0805BA18  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	movs r0, #0
	bl SetPrimaryHBlankHandler
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805BA00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BA08: .4byte gUnknown_0201FDBC
_0805BA0C: .4byte gUnknown_0201FF04
_0805BA10: .4byte gUnknown_0201FB34
_0805BA14: .4byte gUnknown_0201FDC0
_0805BA18: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805BA1C
sub_805BA1C: @ 0x0805BA1C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r7, [sp, #0x18]
	ldr r1, _0805BA5C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805BA60  @ gUnknown_085D5028
	movs r1, #3
	bl Proc_Create
	str r5, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r4, [r0, #0x2e]
	adds r4, r4, r6
	strh r4, [r0, #0x30]
	mov r1, r8
	str r1, [r0, #0x44]
	str r7, [r0, #0x48]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #0x4c]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BA5C: .4byte gUnknown_0201774C
_0805BA60: .4byte gUnknown_085D5028

	THUMB_FUNC_START sub_805BA64
sub_805BA64: @ 0x0805BA64
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	cmp r0, r1
	blt _0805BB18
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x48]
	movs r6, #0x2c
	ldrsh r3, [r5, r6]
	movs r0, #0x2e
	ldrsh r4, [r5, r0]
	subs r3, r3, r4
	movs r6, #0x30
	ldrsh r0, [r5, r6]
	subs r0, r0, r4
	str r0, [sp]
	movs r0, #0
	bl sub_8012DCC
	adds r4, r0, #0
	ldr r0, [r5, #0x4c]
	cmp r0, #1
	beq _0805BAC0
	cmp r0, #1
	bgt _0805BAAA
	cmp r0, #0
	beq _0805BAB0
	b _0805BAFE
_0805BAAA:
	cmp r0, #2
	beq _0805BAD0
	b _0805BAFE
_0805BAB0:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	b _0805BAFE
_0805BAC0:
	lsls r3, r4, #0x18
	lsrs r3, r3, #0x18
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl SetSpecialColorEffectsParameters
	b _0805BAFE
_0805BAD0:
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	subs r3, r3, r1
	movs r6, #0x30
	ldrsh r0, [r5, r6]
	subs r0, r0, r1
	str r0, [sp]
	movs r0, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_8012DCC
	adds r2, r0, #0
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #1
	movs r3, #0
	bl SetSpecialColorEffectsParameters
_0805BAFE:
	movs r0, #0x2c
	ldrsh r1, [r5, r0]
	movs r2, #0x30
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _0805BB18
	ldr r1, _0805BB20  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805BB18:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BB20: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805BB24
sub_805BB24: @ 0x0805BB24
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	mov r8, r0
	mov r9, r1
	mov sl, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x1c]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, _0805BB7C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805BB80  @ gUnknown_085D5040
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	mov r0, r8
	str r0, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	strh r0, [r4, #0x2e]
	mov r0, r9
	str r0, [r4, #0x44]
	mov r0, sl
	str r0, [r4, #0x54]
	mov r0, r8
	bl GetCoreAIStruct
	strh r5, [r4, #0x32]
	strh r6, [r4, #0x3a]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BB7C: .4byte gUnknown_0201774C
_0805BB80: .4byte gUnknown_085D5040

	THUMB_FUNC_START sub_805BB84
sub_805BB84: @ 0x0805BB84
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, _0805BC04  @ gUnknown_0201FB2C
	ldr r0, [r0]
	ldr r1, _0805BC08  @ gUnknown_0201FB38
	mov r8, r1
	cmp r0, #0
	bne _0805BB9E
	ldr r2, _0805BC0C  @ gUnknown_0201FC78
	mov r8, r2
_0805BB9E:
	ldr r4, [r5, #0x54]
	movs r7, #0x2e
	ldrsh r0, [r5, r7]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r7, [r0]
	adds r0, r7, #0
	bl sub_8013278
	adds r6, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0, #2]
	ldr r0, _0805BC10  @ 0x0000FFFF
	cmp r1, r0
	beq _0805BBC8
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	strh r0, [r5, #0x2e]
_0805BBC8:
	ldrh r1, [r5, #0x3a]
	subs r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0805BBD6
	movs r2, #0
_0805BBD6:
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa0
	ble _0805BBE4
	movs r1, #0xa0
_0805BBE4:
	movs r3, #0
	lsls r0, r2, #0x10
	ldr r2, [r5, #0x44]
	mov ip, r2
	asrs r0, r0, #0x10
	mov r9, r0
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
_0805BBF4:
	cmp r9, r3
	bhi _0805BBFC
	cmp r4, r3
	bcs _0805BC14
_0805BBFC:
	movs r0, #0
	mov r7, r8
	strh r0, [r7]
	b _0805BC44
	.align 2, 0
_0805BC04: .4byte gUnknown_0201FB2C
_0805BC08: .4byte gUnknown_0201FB38
_0805BC0C: .4byte gUnknown_0201FC78
_0805BC10: .4byte 0x0000FFFF
_0805BC14:
	ldrh r2, [r5, #0x32]
	ldrh r1, [r6]
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _0805BC24
	movs r1, #0
_0805BC24:
	ldrh r7, [r6, #2]
	adds r0, r2, r7
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf0
	ble _0805BC34
	movs r2, #0xf0
_0805BC34:
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	adds r6, #4
_0805BC44:
	movs r2, #2
	add r8, r2
	adds r3, #1
	cmp r3, #0x9f
	bls _0805BBF4
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	movs r7, #0x2c
	ldrsh r0, [r5, r7]
	cmp r0, ip
	bne _0805BC6E
	ldr r1, _0805BC7C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl SetDefaultColorEffects
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805BC6E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BC7C: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellThing_MagicQuake
StartSpellThing_MagicQuake: @ 0x0805BC80
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	ldr r1, _0805BCBC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805BCC0  @ gUnknown_085D5058
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r6, [r4, #0x5c]
	adds r0, r5, #0
	movs r1, #0
	bl sub_8053678
	str r0, [r4, #0x60]
	movs r0, #0
	strh r0, [r4, #0x2c]
	mov r0, r8
	strh r0, [r4, #0x2e]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BCBC: .4byte gUnknown_0201774C
_0805BCC0: .4byte gUnknown_085D5058

	THUMB_FUNC_START Loop6C_efxMagicQUAKE
Loop6C_efxMagicQUAKE: @ 0x0805BCC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r5, _0805BD54  @ gUnknown_02017760
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	movs r0, #2
	bl BG_SetPosition
	ldr r4, _0805BD58  @ gUnknown_02000038
	ldrh r1, [r4]
	ldrh r0, [r5]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #2]
	ldrh r3, [r5, #2]
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	bl BG_SetPosition
	ldrh r0, [r4]
	ldrh r1, [r5]
	adds r0, r0, r1
	negs r0, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	ldrh r2, [r5, #2]
	adds r1, r1, r2
	negs r1, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl EkrGauge_80511E4
	ldrh r0, [r4]
	ldrh r3, [r5]
	adds r0, r0, r3
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	ldrh r2, [r5, #2]
	adds r1, r1, r2
	negs r1, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_8051B5C
	bl sub_806FAB0
	cmp r0, #0
	beq _0805BD42
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	movs r0, #3
	bl BG_SetPosition
_0805BD42:
	bl sub_806FAB0
	cmp r0, #0
	beq _0805BD60
	ldr r4, _0805BD5C  @ gUnknown_02000028
	ldrh r0, [r4]
	ldrh r1, [r5]
	subs r0, r0, r1
	b _0805BD68
	.align 2, 0
_0805BD54: .4byte gUnknown_02017760
_0805BD58: .4byte gUnknown_02000038
_0805BD5C: .4byte gUnknown_02000028
_0805BD60:
	ldr r4, _0805BE78  @ gUnknown_02000028
	ldrh r0, [r5]
	ldrh r3, [r4]
	adds r0, r0, r3
_0805BD68:
	ldr r3, _0805BE7C  @ gUnknown_0201FB0C
	ldr r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _0805BE80  @ gUnknown_0200002C
	ldrh r0, [r2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r9, r4
	mov sl, r2
	ldr r2, _0805BE84  @ gUnknown_02017760
	ldrh r0, [r2]
	mov r1, r9
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	ldr r3, _0805BE7C  @ gUnknown_0201FB0C
	ldr r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r1, sl
	ldrh r0, [r1, #2]
	ldrh r1, [r2, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	movs r0, #0
	bl sub_80559F0
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_80559F0
	mov r2, r8
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	ble _0805BE6A
	ldr r1, _0805BE88  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r4, _0805BE8C  @ gUnknown_02000038
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	movs r0, #0
	bl BG_SetPosition
	ldrh r0, [r4]
	negs r0, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	negs r1, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl EkrGauge_80511E4
	ldrh r0, [r4]
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	negs r1, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_8051B5C
	bl sub_806FAB0
	cmp r0, #0
	beq _0805BE2A
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_0805BE2A:
	ldr r0, _0805BE7C  @ gUnknown_0201FB0C
	ldr r2, [r0]
	mov r3, r9
	ldrh r1, [r3]
	subs r1, r1, r2
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sl
	ldrh r4, [r0, #2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0
	bl sub_80559F0
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl sub_80559F0
	mov r1, r8
	ldr r0, [r1, #0x60]
	bl Proc_Delete
	mov r0, r8
	bl Proc_ClearNativeCallback
_0805BE6A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BE78: .4byte gUnknown_02000028
_0805BE7C: .4byte gUnknown_0201FB0C
_0805BE80: .4byte gUnknown_0200002C
_0805BE84: .4byte gUnknown_02017760
_0805BE88: .4byte gUnknown_0201774C
_0805BE8C: .4byte gUnknown_02000038

	THUMB_FUNC_START StartSpellAnimDummy
StartSpellAnimDummy: @ 0x0805BE90
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805BEB0  @ gUnknown_085D5070
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BEB0: .4byte gUnknown_085D5070

	THUMB_FUNC_START Loop6C_efxDummymagic
Loop6C_efxDummymagic: @ 0x0805BEB4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805BEDA
	ldrh r0, [r4, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r4, #0x10]
	b _0805BF02
_0805BEDA:
	cmp r0, #0xa
	bne _0805BF02
	adds r0, r4, #0
	bl sub_805A2F0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq _0805BEF8
	ldrh r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4, #0x10]
_0805BEF8:
	bl SetSomethingSpellFxToFalse
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805BF02:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START StartSpellAnimHandAxe
StartSpellAnimHandAxe: @ 0x0805BF08
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805BF3C  @ gUnknown_085D5088
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805BF3C: .4byte gUnknown_085D5088

	THUMB_FUNC_START sub_805BF40
sub_805BF40: @ 0x0805BF40
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r6, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805BFC0
	ldr r0, [r5, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	ldr r0, [r5, #0x5c]
	bl sub_805BFDC
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _0805BFC0
	ldrh r0, [r6, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r6, #0x10]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r6, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	adds r0, r6, #0
	bl sub_8072400
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _0805BFB2
	ldr r0, [r5, #0x5c]
	bl sub_805A268
	cmp r0, #1
	bne _0805BFA6
	adds r0, r6, #0
	bl sub_806C71C
	b _0805BFB2
_0805BFA6:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805BFD6
	ldr r0, [r5, #0x5c]
	bl sub_806C87C
_0805BFB2:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805BFD6
	adds r0, r6, #0
	bl sub_8072450
	b _0805BFD6
_0805BFC0:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0x46
	beq _0805BFD6
	cmp r0, #0x50
	bne _0805BFD6
	bl SetSomethingSpellFxToFalse
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805BFD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805BFDC
sub_805BFDC: @ 0x0805BFDC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0805C020  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805C024  @ gUnknown_085D50A0
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	str r4, [r6, #0x5c]
	movs r0, #0
	strh r0, [r6, #0x2c]
	ldr r1, _0805C028  @ gUnknown_085DA6FC
	ldr r2, _0805C02C  @ gUnknown_085DA364
	ldr r3, _0805C030  @ gUnknown_085DA758
	ldr r0, _0805C034  @ gUnknown_085DA3C0
	str r0, [sp]
	adds r0, r4, #0
	bl sub_8055554
	adds r5, r0, #0
	str r5, [r6, #0x60]
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805C038
	ldrh r0, [r5, #2]
	adds r0, #0x48
	b _0805C03C
	.align 2, 0
_0805C020: .4byte gUnknown_0201774C
_0805C024: .4byte gUnknown_085D50A0
_0805C028: .4byte gUnknown_085DA6FC
_0805C02C: .4byte gUnknown_085DA364
_0805C030: .4byte gUnknown_085DA758
_0805C034: .4byte gUnknown_085DA3C0
_0805C038:
	ldrh r0, [r5, #2]
	subs r0, #0x48
_0805C03C:
	strh r0, [r5, #2]
	ldr r0, _0805C04C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805C050
	movs r0, #0x23
	b _0805C052
	.align 2, 0
_0805C04C: .4byte gUnknown_0203E120
_0805C050:
	movs r0, #0xa
_0805C052:
	strh r0, [r6, #0x2e]
	ldr r0, [r6, #0x5c]
	ldr r1, [r6, #0x60]
	bl sub_805C1C8
	str r0, [r6, #0x64]
	ldr r0, _0805C078  @ gUnknown_085DA05C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C07C  @ gUnknown_085D9C5C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805C078: .4byte gUnknown_085DA05C
_0805C07C: .4byte gUnknown_085D9C5C

	THUMB_FUNC_START sub_805C080
sub_805C080: @ 0x0805C080
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0805C0D6
	ldr r1, _0805C0C4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r0, _0805C0C8  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805C0D0
	ldr r0, _0805C0CC  @ gUnknown_02017758
	movs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x64]
	bl Proc_Delete
	adds r0, r4, #0
	bl Proc_Delete
	b _0805C0D6
	.align 2, 0
_0805C0C4: .4byte gUnknown_0201774C
_0805C0C8: .4byte gUnknown_0203E120
_0805C0CC: .4byte gUnknown_02017758
_0805C0D0:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805C0D6:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805C0DC
sub_805C0DC: @ 0x0805C0DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805C100  @ gUnknown_02017754
	movs r0, #0
	str r0, [r1]
	ldr r0, [r4, #0x64]
	bl Proc_Delete
	ldr r0, [r4, #0x5c]
	bl sub_805C104
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C100: .4byte gUnknown_02017754

	THUMB_FUNC_START sub_805C104
sub_805C104: @ 0x0805C104
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0805C144  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805C148  @ gUnknown_085D50C0
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	str r4, [r6, #0x5c]
	movs r0, #0
	strh r0, [r6, #0x2c]
	ldr r3, _0805C14C  @ gUnknown_085DA778
	ldr r2, _0805C150  @ gUnknown_085DA3E0
	str r2, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_8055554
	adds r5, r0, #0
	str r5, [r6, #0x60]
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805C154
	ldrh r0, [r5, #2]
	adds r0, #0x48
	b _0805C158
	.align 2, 0
_0805C144: .4byte gUnknown_0201774C
_0805C148: .4byte gUnknown_085D50C0
_0805C14C: .4byte gUnknown_085DA778
_0805C150: .4byte gUnknown_085DA3E0
_0805C154:
	ldrh r0, [r5, #2]
	subs r0, #0x48
_0805C158:
	strh r0, [r5, #2]
	ldr r0, _0805C180  @ gUnknown_085DA05C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C184  @ gUnknown_085D9C5C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	ldr r0, [r6, #0x5c]
	ldr r1, [r6, #0x60]
	bl sub_805C1C8
	str r0, [r6, #0x64]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805C180: .4byte gUnknown_085DA05C
_0805C184: .4byte gUnknown_085D9C5C

	THUMB_FUNC_START sub_805C188
sub_805C188: @ 0x0805C188
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x11
	bne _0805C1BA
	ldr r1, _0805C1C0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldr r1, _0805C1C4  @ gUnknown_02017758
	movs r0, #1
	str r0, [r1]
	ldr r0, [r4, #0x64]
	bl Proc_Delete
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805C1BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C1C0: .4byte gUnknown_0201774C
_0805C1C4: .4byte gUnknown_02017758

	THUMB_FUNC_START sub_805C1C8
sub_805C1C8: @ 0x0805C1C8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _0805C204  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805C208  @ gUnknown_085D50D8
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r6, [r4, #0x5c]
	str r5, [r4, #0x60]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #1
	strh r0, [r4, #0x2e]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r0, #0xcd
	movs r3, #1
	bl sub_80729A4
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805C204: .4byte gUnknown_0201774C
_0805C208: .4byte gUnknown_085D50D8

	THUMB_FUNC_START sub_805C20C
sub_805C20C: @ 0x0805C20C
	ldr r1, _0805C218  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_0805C218: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805C21C
sub_805C21C: @ 0x0805C21C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _0805C25C
	ldr r0, [r4, #0x60]
	bl sub_807290C
	ldr r1, [r4, #0x60]
	ldrh r2, [r1, #2]
	adds r2, r2, r0
	movs r1, #0x80
	lsls r1, r1, #1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #0xcd
	movs r3, #1
	bl sub_80729A4
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldrh r1, [r4, #0x2e]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r0, #8
	bgt _0805C25C
	adds r0, r1, #1
	strh r0, [r4, #0x2e]
_0805C25C:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START StartSpellAnimArrow
StartSpellAnimArrow: @ 0x0805C264
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C298  @ gUnknown_085D50F8
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C298: .4byte gUnknown_085D50F8

	THUMB_FUNC_START sub_805C29C
sub_805C29C: @ 0x0805C29C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r6, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r4, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805C334
	ldr r0, [r5, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	ldr r0, [r5, #0x5c]
	bl sub_805C358
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r5, #0x5c]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0xcc
	movs r3, #1
	bl sub_80729A4
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _0805C334
	ldrh r0, [r6, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r6, #0x10]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r6, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	adds r0, r6, #0
	bl sub_8072400
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _0805C326
	ldr r0, [r5, #0x5c]
	bl sub_805A268
	cmp r0, #1
	bne _0805C31A
	adds r0, r6, #0
	bl sub_806C71C
	b _0805C326
_0805C31A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805C350
	ldr r0, [r5, #0x5c]
	bl sub_806C87C
_0805C326:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805C350
	adds r0, r6, #0
	bl sub_8072450
	b _0805C350
_0805C334:
	movs r3, #0x2c
	ldrsh r1, [r5, r3]
	adds r0, r4, #0
	adds r0, #9
	cmp r1, r0
	beq _0805C350
	adds r0, #1
	cmp r1, r0
	bne _0805C350
	bl SetSomethingSpellFxToFalse
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805C350:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805C358
sub_805C358: @ 0x0805C358
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805C3A0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805C3A4  @ gUnknown_085D5110
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r1, _0805C3A8  @ gUnknown_085DA8E0
	ldr r2, _0805C3AC  @ gUnknown_085DA854
	ldr r3, _0805C3B0  @ gUnknown_085DA8F0
	ldr r0, _0805C3B4  @ gUnknown_085DA864
	str r0, [sp]
	adds r0, r5, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _0805C3B8  @ gUnknown_085DA05C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C3BC  @ gUnknown_085DA7AC
	movs r1, #0x60
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C3A0: .4byte gUnknown_0201774C
_0805C3A4: .4byte gUnknown_085D5110
_0805C3A8: .4byte gUnknown_085DA8E0
_0805C3AC: .4byte gUnknown_085DA854
_0805C3B0: .4byte gUnknown_085DA8F0
_0805C3B4: .4byte gUnknown_085DA864
_0805C3B8: .4byte gUnknown_085DA05C
_0805C3BC: .4byte gUnknown_085DA7AC

	THUMB_FUNC_START sub_805C3C0
sub_805C3C0: @ 0x0805C3C0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bne _0805C3E6
	ldr r0, _0805C3EC  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805C3E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C3EC: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimJavelin
StartSpellAnimJavelin: @ 0x0805C3F0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C440  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl sub_805C88C
	ldr r0, _0805C444  @ gUnknown_085DAB30
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C448  @ gUnknown_085DA900
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C440: .4byte gUnknown_085D5128
_0805C444: .4byte gUnknown_085DAB30
_0805C448: .4byte gUnknown_085DA900

	THUMB_FUNC_START sub_805C44C
sub_805C44C: @ 0x0805C44C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C49C  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_805C88C
	ldr r0, _0805C4A0  @ gUnknown_085DAD6C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C4A4  @ gUnknown_085DAB50
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C49C: .4byte gUnknown_085D5128
_0805C4A0: .4byte gUnknown_085DAD6C
_0805C4A4: .4byte gUnknown_085DAB50

	THUMB_FUNC_START sub_805C4A8
sub_805C4A8: @ 0x0805C4A8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C4F8  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl sub_805C88C
	ldr r0, _0805C4FC  @ gUnknown_085DAFA4
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C500  @ gUnknown_085DAD8C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C4F8: .4byte gUnknown_085D5128
_0805C4FC: .4byte gUnknown_085DAFA4
_0805C500: .4byte gUnknown_085DAD8C

	THUMB_FUNC_START sub_805C504
sub_805C504: @ 0x0805C504
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C554  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_805C88C
	ldr r0, _0805C558  @ gUnknown_085DB1E0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C55C  @ gUnknown_085DAFC4
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C554: .4byte gUnknown_085D5128
_0805C558: .4byte gUnknown_085DB1E0
_0805C55C: .4byte gUnknown_085DAFC4

	THUMB_FUNC_START sub_805C560
sub_805C560: @ 0x0805C560
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C5B0  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_805C88C
	ldr r0, _0805C5B4  @ gUnknown_085DB42C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C5B8  @ gUnknown_085DB200
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C5B0: .4byte gUnknown_085D5128
_0805C5B4: .4byte gUnknown_085DB42C
_0805C5B8: .4byte gUnknown_085DB200

	THUMB_FUNC_START sub_805C5BC
sub_805C5BC: @ 0x0805C5BC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C60C  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_805C88C
	ldr r0, _0805C610  @ gUnknown_085DB694
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C614  @ gUnknown_085DB44C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C60C: .4byte gUnknown_085D5128
_0805C610: .4byte gUnknown_085DB694
_0805C614: .4byte gUnknown_085DB44C

	THUMB_FUNC_START sub_805C618
sub_805C618: @ 0x0805C618
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C668  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_805C88C
	ldr r0, _0805C66C  @ gUnknown_085DB8EC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C670  @ gUnknown_085DB6B4
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C668: .4byte gUnknown_085D5128
_0805C66C: .4byte gUnknown_085DB8EC
_0805C670: .4byte gUnknown_085DB6B4

	THUMB_FUNC_START sub_805C674
sub_805C674: @ 0x0805C674
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C6C4  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_805C88C
	ldr r0, _0805C6C8  @ gUnknown_085DBB70
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C6CC  @ gUnknown_085DB90C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C6C4: .4byte gUnknown_085D5128
_0805C6C8: .4byte gUnknown_085DBB70
_0805C6CC: .4byte gUnknown_085DB90C

	THUMB_FUNC_START sub_805C6D0
sub_805C6D0: @ 0x0805C6D0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C720  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_805C88C
	ldr r0, _0805C724  @ gUnknown_085DBE00
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C728  @ gUnknown_085DBB90
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C720: .4byte gUnknown_085D5128
_0805C724: .4byte gUnknown_085DBE00
_0805C728: .4byte gUnknown_085DBB90

	THUMB_FUNC_START sub_805C72C
sub_805C72C: @ 0x0805C72C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C77C  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_805C88C
	ldr r0, _0805C780  @ gUnknown_085DC050
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C784  @ gUnknown_085DBE20
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C77C: .4byte gUnknown_085D5128
_0805C780: .4byte gUnknown_085DC050
_0805C784: .4byte gUnknown_085DBE20

	THUMB_FUNC_START sub_805C788
sub_805C788: @ 0x0805C788
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C7D8  @ gUnknown_085D5128
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl sub_805C88C
	ldr r0, _0805C7DC  @ gUnknown_085DB1E0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805C7E0  @ gUnknown_085DAFC4
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C7D8: .4byte gUnknown_085D5128
_0805C7DC: .4byte gUnknown_085DB1E0
_0805C7E0: .4byte gUnknown_085DAFC4

	THUMB_FUNC_START sub_805C7E4
sub_805C7E4: @ 0x0805C7E4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805C870
	ldr r0, [r5, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r5, #0x5c]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0xca
	movs r3, #1
	bl sub_80729A4
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _0805C870
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r6, r0, #0
	ldrh r0, [r6, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r6, #0x10]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r6, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	adds r0, r6, #0
	bl sub_8072400
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _0805C862
	ldr r0, [r5, #0x5c]
	bl sub_805A268
	cmp r0, #1
	bne _0805C856
	adds r0, r6, #0
	bl sub_806C71C
	b _0805C862
_0805C856:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805C886
	ldr r0, [r5, #0x5c]
	bl sub_806C87C
_0805C862:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805C886
	adds r0, r6, #0
	bl sub_8072450
	b _0805C886
_0805C870:
	movs r3, #0x2c
	ldrsh r0, [r5, r3]
	cmp r0, #0xe
	beq _0805C886
	cmp r0, #0x10
	bne _0805C886
	bl SetSomethingSpellFxToFalse
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805C886:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805C88C
sub_805C88C: @ 0x0805C88C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, _0805C8B8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805C8BC  @ gUnknown_085D5140
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r6, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	cmp r4, #0
	bne _0805C8C8
	ldr r2, _0805C8C0  @ gUnknown_085DC244
	ldr r3, _0805C8C4  @ gUnknown_085DC498
	b _0805C8CC
	.align 2, 0
_0805C8B8: .4byte gUnknown_0201774C
_0805C8BC: .4byte gUnknown_085D5140
_0805C8C0: .4byte gUnknown_085DC244
_0805C8C4: .4byte gUnknown_085DC498
_0805C8C8:
	ldr r2, _0805C8EC  @ gUnknown_085DC6F8
	ldr r3, _0805C8F0  @ gUnknown_085DC958
_0805C8CC:
	str r2, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r5, #0x60]
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805C8F4
	ldrh r0, [r4, #2]
	adds r0, #0x38
	b _0805C8F8
	.align 2, 0
_0805C8EC: .4byte gUnknown_085DC6F8
_0805C8F0: .4byte gUnknown_085DC958
_0805C8F4:
	ldrh r0, [r4, #2]
	subs r0, #0x38
_0805C8F8:
	strh r0, [r4, #2]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805C904
sub_805C904: @ 0x0805C904
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	bne _0805C92A
	ldr r0, _0805C930  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805C92A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C930: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimSong
StartSpellAnimSong: @ 0x0805C934
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C968  @ gUnknown_085D5158
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C968: .4byte gUnknown_085D5158

	THUMB_FUNC_START sub_805C96C
sub_805C96C: @ 0x0805C96C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	movs r7, #0
	movs r6, #0
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x27
	bne _0805C9EC
	adds r0, r4, #0
	movs r1, #0
	bl sub_805CA64
	adds r0, r4, #0
	movs r1, #0
	bl sub_805CB40
	adds r0, r4, #0
	movs r1, #0x82
	movs r2, #1
	bl sub_805B93C
	adds r0, r4, #0
	movs r1, #0x64
	bl sub_805B4E8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_805BA1C
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x3c
	movs r2, #0x28
	movs r3, #0x10
	bl sub_805BA1C
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #0xef
	movs r3, #1
	bl sub_80729A4
_0805C9EC:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0x8b
	bne _0805CA44
	ldrh r0, [r4, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_8055518
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805CA28
	ldr r0, _0805CA20  @ gUnknown_02000054
	ldr r0, [r0]
	ldr r1, _0805CA24  @ gUnknown_02022B88
	movs r2, #8
	bl CpuFastSet
	b _0805CA34
	.align 2, 0
_0805CA20: .4byte gUnknown_02000054
_0805CA24: .4byte gUnknown_02022B88
_0805CA28:
	ldr r0, _0805CA3C  @ gUnknown_02000054
	ldr r0, [r0, #4]
	ldr r1, _0805CA40  @ gUnknown_02022BC8
	movs r2, #8
	bl CpuFastSet
_0805CA34:
	adds r0, r4, #0
	bl sub_8054B84
	b _0805CA5A
	.align 2, 0
_0805CA3C: .4byte gUnknown_02000054
_0805CA40: .4byte gUnknown_02022BC8
_0805CA44:
	cmp r0, #0xb3
	bne _0805CA5A
	ldrh r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4, #0x10]
	bl SetSomethingSpellFxToFalse
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805CA5A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805CA64
sub_805CA64: @ 0x0805CA64
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0805CAAC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805CAB0  @ gUnknown_085D5170
	movs r1, #3
	bl Proc_Create
	str r5, [r0, #0x5c]
	movs r2, #0
	strh r2, [r0, #0x2c]
	str r2, [r0, #0x44]
	ldr r1, _0805CAB4  @ gUnknown_080DC956
	str r1, [r0, #0x48]
	ldr r1, _0805CAB8  @ gUnknown_085D5188
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _0805CABC  @ gUnknown_085D51F4
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	lsls r4, r4, #5
	ldr r0, _0805CAC0  @ gUnknown_08754870
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805CAAC: .4byte gUnknown_0201774C
_0805CAB0: .4byte gUnknown_085D5170
_0805CAB4: .4byte gUnknown_080DC956
_0805CAB8: .4byte gUnknown_085D5188
_0805CABC: .4byte gUnknown_085D51F4
_0805CAC0: .4byte gUnknown_08754870

	THUMB_FUNC_START sub_805CAC4
sub_805CAC4: @ 0x0805CAC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0805CB14
	ldr r7, [r4, #0x4c]
	ldr r0, [r4, #0x50]
	mov r8, r0
	ldr r0, [r4, #0x54]
	lsls r5, r1, #2
	adds r6, r5, r0
	ldr r0, [r4, #0x58]
	ldr r2, [r6]
	cmp r0, r2
	beq _0805CAFE
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r2, #0
	bl SomeImageStoringRoutine_SpellAnim2
_0805CAFE:
	ldr r0, [r6]
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	adds r1, r5, r7
	ldr r1, [r1]
	mov r3, r8
	adds r2, r5, r3
	ldr r2, [r2]
	bl sub_8055670
	b _0805CB32
_0805CB14:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0805CB32
	bl ClearBG1
	ldr r1, _0805CB3C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805CB32:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CB3C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805CB40
sub_805CB40: @ 0x0805CB40
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _0805CB94  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805CB98  @ gUnknown_085D5260
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r6, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x38
	strh r0, [r4, #0x2e]
	ldr r3, _0805CB9C  @ gUnknown_08758134
	str r3, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	lsls r5, r5, #5
	ldr r0, _0805CBA0  @ gUnknown_08754870
	adds r5, r5, r0
	adds r0, r5, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805CBA4  @ gUnknown_08755FD4
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805CB94: .4byte gUnknown_0201774C
_0805CB98: .4byte gUnknown_085D5260
_0805CB9C: .4byte gUnknown_08758134
_0805CBA0: .4byte gUnknown_08754870
_0805CBA4: .4byte gUnknown_08755FD4

	THUMB_FUNC_START sub_805CBA8
sub_805CBA8: @ 0x0805CBA8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0805CBD2
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _0805CBD8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805CBD2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805CBD8: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimDance
StartSpellAnimDance: @ 0x0805CBDC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805CC10  @ gUnknown_085D5278
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805CC10: .4byte gUnknown_085D5278

	THUMB_FUNC_START sub_805CC14
sub_805CC14: @ 0x0805CC14
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	movs r7, #0
	movs r6, #0
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x19
	bne _0805CC94
	adds r0, r4, #0
	movs r1, #0
	bl sub_805CA64
	adds r0, r4, #0
	movs r1, #0
	bl sub_805CB40
	adds r0, r4, #0
	movs r1, #0x82
	movs r2, #1
	bl sub_805B93C
	adds r0, r4, #0
	movs r1, #0x64
	bl sub_805B4E8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_805BA1C
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x3c
	movs r2, #0x28
	movs r3, #0x10
	bl sub_805BA1C
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #0xef
	movs r3, #1
	bl sub_80729A4
_0805CC94:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0x7d
	bne _0805CCEC
	ldrh r0, [r4, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_8055518
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805CCD0
	ldr r0, _0805CCC8  @ gUnknown_02000054
	ldr r0, [r0]
	ldr r1, _0805CCCC  @ gUnknown_02022B88
	movs r2, #8
	bl CpuFastSet
	b _0805CCDC
	.align 2, 0
_0805CCC8: .4byte gUnknown_02000054
_0805CCCC: .4byte gUnknown_02022B88
_0805CCD0:
	ldr r0, _0805CCE4  @ gUnknown_02000054
	ldr r0, [r0, #4]
	ldr r1, _0805CCE8  @ gUnknown_02022BC8
	movs r2, #8
	bl CpuFastSet
_0805CCDC:
	adds r0, r4, #0
	bl sub_8054B84
	b _0805CD02
	.align 2, 0
_0805CCE4: .4byte gUnknown_02000054
_0805CCE8: .4byte gUnknown_02022BC8
_0805CCEC:
	cmp r0, #0xa5
	bne _0805CD02
	ldrh r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4, #0x10]
	bl SetSomethingSpellFxToFalse
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805CD02:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805CD0C
sub_805CD0C: @ 0x0805CD0C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805CD58  @ gUnknown_085D5290
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r1, r4, #0
	adds r1, #0x29
	strb r0, [r1]
	movs r0, #0x9b
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805CD58: .4byte gUnknown_085D5290

	THUMB_FUNC_START sub_805CD5C
sub_805CD5C: @ 0x0805CD5C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r6, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _0805CD82
	ldr r0, [r5, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _0805CE14
_0805CD82:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0x22
	bne _0805CDA4
	ldr r0, _0805CDA0  @ 0x00000137
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r5, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
	b _0805CE14
	.align 2, 0
_0805CDA0: .4byte 0x00000137
_0805CDA4:
	cmp r0, #0x2a
	bne _0805CDB0
	adds r0, r6, #0
	bl sub_805CE1C
	b _0805CE14
_0805CDB0:
	cmp r0, #0x2d
	bne _0805CE02
	ldrh r0, [r6, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r6, #0x10]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r6, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	adds r0, r6, #0
	bl sub_8072400
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _0805CDF4
	ldr r0, [r5, #0x5c]
	bl sub_805A268
	cmp r0, #1
	bne _0805CDE8
	adds r0, r6, #0
	bl sub_806C71C
	b _0805CDF4
_0805CDE8:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805CE14
	ldr r0, [r5, #0x5c]
	bl sub_806C87C
_0805CDF4:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805CE14
	adds r0, r6, #0
	bl sub_8072450
	b _0805CE14
_0805CE02:
	cmp r0, #0x3e
	beq _0805CE14
	cmp r0, #0x40
	bne _0805CE14
	bl SetSomethingSpellFxToFalse
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805CE14:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805CE1C
sub_805CE1C: @ 0x0805CE1C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805CE70  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805CE74  @ gUnknown_085D52A8
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r7, #0
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r3, _0805CE78  @ gUnknown_085DCA5C
	ldr r2, _0805CE7C  @ gUnknown_085DCAF8
	str r2, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_8055554
	adds r6, r0, #0
	str r6, [r4, #0x60]
	ldrh r0, [r6, #4]
	adds r0, #0x10
	strh r0, [r6, #4]
	ldrh r1, [r6, #8]
	movs r0, #0xc0
	lsls r0, r0, #4
	ands r0, r1
	strh r0, [r6, #8]
	adds r0, r5, #0
	bl GetAISSubjectId
	cmp r0, #1
	bne _0805CE80
	ldrh r0, [r6, #8]
	movs r2, #0xe4
	lsls r2, r2, #7
	b _0805CE86
	.align 2, 0
_0805CE70: .4byte gUnknown_0201774C
_0805CE74: .4byte gUnknown_085D52A8
_0805CE78: .4byte gUnknown_085DCA5C
_0805CE7C: .4byte gUnknown_085DCAF8
_0805CE80:
	ldrh r0, [r6, #8]
	movs r2, #0x93
	lsls r2, r2, #8
_0805CE86:
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #8]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805CE94
sub_805CE94: @ 0x0805CE94
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _0805CEBA
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _0805CEC0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805CEBA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805CEC0: .4byte gUnknown_0201774C

	THUMB_FUNC_START nullsub_42
nullsub_42: @ 0x0805CEC4
	bx lr

	THUMB_FUNC_START sub_805CEC8
sub_805CEC8: @ 0x0805CEC8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805CF00  @ gUnknown_085D52C0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805CF00: .4byte gUnknown_085D52C0

	THUMB_FUNC_START sub_805CF04
sub_805CF04: @ 0x0805CF04
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r7, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805CF32
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0805CF32:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r6, #1
	cmp r1, r0
	bne _0805CF80
	ldr r0, _0805CF7C  @ 0x0000010D
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	bl sub_805CFC0
	ldr r0, [r4, #0x5c]
	movs r1, #6
	bl StartSpellBG_FLASH
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805CFB6
	adds r0, r5, #0
	bl sub_8072450
	b _0805CFB6
	.align 2, 0
_0805CF7C: .4byte 0x0000010D
_0805CF80:
	adds r0, r6, #0
	adds r0, #0x1c
	cmp r1, r0
	bne _0805CF9A
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0x10
	bl sub_805BA1C
	b _0805CFB6
_0805CF9A:
	adds r0, r6, #0
	adds r0, #0x32
	cmp r1, r0
	beq _0805CFB6
	adds r0, #5
	cmp r1, r0
	bne _0805CFB6
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805CFB6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805CFC0
sub_805CFC0: @ 0x0805CFC0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805D018  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D01C  @ gUnknown_085D52D8
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x34
	strh r0, [r4, #0x2e]
	adds r0, r5, #0
	bl GetAISSubjectId
	ldr r3, _0805D020  @ gUnknown_085E12DC
	cmp r0, #0
	bne _0805CFF0
	ldr r3, _0805D024  @ gUnknown_085E067C
_0805CFF0:
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _0805D028  @ gUnknown_085DE964
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805D02C  @ gUnknown_085DDC64
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D018: .4byte gUnknown_0201774C
_0805D01C: .4byte gUnknown_085D52D8
_0805D020: .4byte gUnknown_085E12DC
_0805D024: .4byte gUnknown_085E067C
_0805D028: .4byte gUnknown_085DE964
_0805D02C: .4byte gUnknown_085DDC64

	THUMB_FUNC_START sub_805D030
sub_805D030: @ 0x0805D030
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0805D05A
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _0805D060  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D05A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D060: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimFireBreath
StartSpellAnimFireBreath: @ 0x0805D064
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805D098  @ gUnknown_085D52F0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D098: .4byte gUnknown_085D52F0

	THUMB_FUNC_START sub_805D09C
sub_805D09C: @ 0x0805D09C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805D0C4
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0805D0C4:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _0805D110
	ldr r0, [r4, #0x5c]
	movs r1, #0x5a
	movs r2, #0xa
	bl StartSpellThing_MagicQuake
	adds r0, r5, #0
	bl sub_805D14C
	adds r0, r5, #0
	bl sub_805D260
	adds r0, r5, #0
	bl sub_805D2EC
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #0xf
	movs r3, #0x10
	bl sub_805BA1C
	ldr r0, _0805D10C  @ 0x0000011D
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	b _0805D142
	.align 2, 0
_0805D10C: .4byte 0x0000011D
_0805D110:
	cmp r0, #0xf
	bne _0805D134
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805D142
	adds r0, r5, #0
	bl sub_8072450
	b _0805D142
_0805D134:
	cmp r0, #0x82
	bne _0805D142
	bl SetSomethingSpellFxToFalse
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D142:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805D14C
sub_805D14C: @ 0x0805D14C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _0805D1A8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D1AC  @ gUnknown_085D5308
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r6, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	movs r0, #0x34
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	bl GetAISSubjectId
	ldr r3, _0805D1B0  @ gUnknown_085E35DC
	cmp r0, #0
	bne _0805D17C
	ldr r3, _0805D1B4  @ gUnknown_085E2A24
_0805D17C:
	str r3, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r5, #0x60]
	ldr r0, _0805D1B8  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805D1C2
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805D1BC
	ldrh r0, [r4, #2]
	adds r0, #0x10
	b _0805D1D6
	.align 2, 0
_0805D1A8: .4byte gUnknown_0201774C
_0805D1AC: .4byte gUnknown_085D5308
_0805D1B0: .4byte gUnknown_085E35DC
_0805D1B4: .4byte gUnknown_085E2A24
_0805D1B8: .4byte gUnknown_0203E120
_0805D1BC:
	ldrh r0, [r4, #2]
	subs r0, #0x10
	b _0805D1D6
_0805D1C2:
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805D1D2
	ldrh r0, [r4, #2]
	adds r0, #0x48
	b _0805D1D6
_0805D1D2:
	ldrh r0, [r4, #2]
	subs r0, #0x48
_0805D1D6:
	strh r0, [r4, #2]
	ldr r0, _0805D1F4  @ gUnknown_085DE964
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805D1F8  @ gUnknown_085DDC64
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D1F4: .4byte gUnknown_085DE964
_0805D1F8: .4byte gUnknown_085DDC64

	THUMB_FUNC_START sub_805D1FC
sub_805D1FC: @ 0x0805D1FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805D220  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805D22E
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805D224
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	ldrh r0, [r0, #2]
	adds r0, #0x48
	b _0805D22C
	.align 2, 0
_0805D220: .4byte gUnknown_0203E120
_0805D224:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	ldrh r0, [r0, #2]
	subs r0, #0x48
_0805D22C:
	strh r0, [r1, #2]
_0805D22E:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0805D254
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _0805D25C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D254:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D25C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805D260
sub_805D260: @ 0x0805D260
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0805D2A4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D2A8  @ gUnknown_085D5320
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x70
	strh r0, [r4, #0x2e]
	ldr r0, _0805D2AC  @ gUnknown_087246D8
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r2, _0805D2B0  @ gUnknown_08725AF0
	ldr r0, [r4, #0x5c]
	adds r1, r2, #0
	bl sub_8055670
	bl ClearBG1Setup
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D2A4: .4byte gUnknown_0201774C
_0805D2A8: .4byte gUnknown_085D5320
_0805D2AC: .4byte gUnknown_087246D8
_0805D2B0: .4byte gUnknown_08725AF0

	THUMB_FUNC_START sub_805D2B4
sub_805D2B4: @ 0x0805D2B4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0805D2E0
	bl ClearBG1
	bl sub_805526C
	ldr r1, _0805D2E8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D2E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D2E8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805D2EC
sub_805D2EC: @ 0x0805D2EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805D318  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D31C  @ gUnknown_085D5338
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0805D320  @ gUnknown_080DCA5C
	str r1, [r0, #0x48]
	ldr r1, _0805D324  @ gUnknown_08725AD0
	str r1, [r0, #0x4c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D318: .4byte gUnknown_0201774C
_0805D31C: .4byte gUnknown_085D5338
_0805D320: .4byte gUnknown_080DCA5C
_0805D324: .4byte gUnknown_08725AD0

	THUMB_FUNC_START sub_805D328
sub_805D328: @ 0x0805D328
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	blt _0805D368
	ldr r0, [r4, #0x4c]
	ldr r4, _0805D364  @ gUnknown_020165C8
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	adds r3, r5, #0
	bl sub_807132C
	adds r0, r4, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _0805D37E
	.align 2, 0
_0805D364: .4byte gUnknown_020165C8
_0805D368:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _0805D37E
	ldr r1, _0805D384  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D37E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D384: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimIceBreath
StartSpellAnimIceBreath: @ 0x0805D388
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805D3C0  @ gUnknown_085D5358
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D3C0: .4byte gUnknown_085D5358

	THUMB_FUNC_START sub_805D3C4
sub_805D3C4: @ 0x0805D3C4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805D400
	ldr r0, [r4, #0x5c]
	movs r1, #0x5a
	movs r2, #0xa
	bl StartSpellThing_MagicQuake
	ldr r0, [r4, #0x5c]
	bl sub_805D444
	movs r0, #0x8f
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
_0805D400:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #4
	bne _0805D428
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805D43E
	adds r0, r5, #0
	bl sub_8072450
	b _0805D43E
_0805D428:
	cmp r0, #0x32
	beq _0805D43E
	cmp r0, #0x3c
	bne _0805D43E
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D43E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805D444
sub_805D444: @ 0x0805D444
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0805D480  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D484  @ gUnknown_085D5370
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	ldr r2, _0805D488  @ gUnknown_085E420C
	ldr r3, _0805D48C  @ gUnknown_085E4E3C
	str r2, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_8055554
	adds r6, r0, #0
	str r6, [r5, #0x60]
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805D490
	ldrh r0, [r6, #2]
	adds r0, #0x20
	b _0805D494
	.align 2, 0
_0805D480: .4byte gUnknown_0201774C
_0805D484: .4byte gUnknown_085D5370
_0805D488: .4byte gUnknown_085E420C
_0805D48C: .4byte gUnknown_085E4E3C
_0805D490:
	ldrh r0, [r6, #2]
	subs r0, #0x20
_0805D494:
	strh r0, [r6, #2]
	ldr r0, _0805D4B0  @ gUnknown_085DFA28
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805D4B4  @ gUnknown_085DDC64
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D4B0: .4byte gUnknown_085DFA28
_0805D4B4: .4byte gUnknown_085DDC64

	THUMB_FUNC_START sub_805D4B8
sub_805D4B8: @ 0x0805D4B8
	push {lr}
	ldr r2, _0805D4CC  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r0, [r0, #0x60]
	bl AIS_Free
	pop {r0}
	bx r0
	.align 2, 0
_0805D4CC: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimDarkBreath
StartSpellAnimDarkBreath: @ 0x0805D4D0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805D504  @ gUnknown_085D5390
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D504: .4byte gUnknown_085D5390

	THUMB_FUNC_START Loop6C_efxDarkbreath
Loop6C_efxDarkbreath: @ 0x0805D508
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805D558
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	ldr r0, [r4, #0x5c]
	movs r1, #0x5a
	movs r2, #0xa
	bl StartSpellThing_MagicQuake
	ldr r0, [r4, #0x5c]
	bl sub_805D59C
	ldr r0, [r4, #0x5c]
	bl sub_805D644
	ldr r0, [r4, #0x5c]
	bl sub_805D6CC
	ldr r0, _0805D580  @ 0x0000011F
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
_0805D558:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #4
	bne _0805D584
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805D596
	adds r0, r5, #0
	bl sub_8072450
	b _0805D596
	.align 2, 0
_0805D580: .4byte 0x0000011F
_0805D584:
	cmp r0, #0x20
	beq _0805D596
	cmp r0, #0x30
	bne _0805D596
	bl SetSomethingSpellFxToFalse
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D596:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805D59C
sub_805D59C: @ 0x0805D59C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805D5D8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D5DC  @ gUnknown_085D53A8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0805D5E0  @ gUnknown_080DCB78
	str r1, [r0, #0x48]
	ldr r1, _0805D5E4  @ gUnknown_085D53C0
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r0, _0805D5E8  @ gUnknown_085E5AE4
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D5D8: .4byte gUnknown_0201774C
_0805D5DC: .4byte gUnknown_085D53A8
_0805D5E0: .4byte gUnknown_080DCB78
_0805D5E4: .4byte gUnknown_085D53C0
_0805D5E8: .4byte gUnknown_085E5AE4

	THUMB_FUNC_START sub_805D5EC
sub_805D5EC: @ 0x0805D5EC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0805D61A
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _0805D638
_0805D61A:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _0805D638
	bl ClearBG1
	ldr r1, _0805D640  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D638:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D640: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805D644
sub_805D644: @ 0x0805D644
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805D670  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D674  @ gUnknown_085D53F0
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0805D678  @ gUnknown_080DCBD4
	str r1, [r0, #0x48]
	ldr r1, _0805D67C  @ gUnknown_08608838
	str r1, [r0, #0x4c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D670: .4byte gUnknown_0201774C
_0805D674: .4byte gUnknown_085D53F0
_0805D678: .4byte gUnknown_080DCBD4
_0805D67C: .4byte gUnknown_08608838

	THUMB_FUNC_START sub_805D680
sub_805D680: @ 0x0805D680
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0805D6A6
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _0805D6C0
_0805D6A6:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0805D6C0
	bl sub_805526C
	ldr r1, _0805D6C8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D6C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D6C8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805D6CC
sub_805D6CC: @ 0x0805D6CC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _0805D728  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D72C  @ gUnknown_085D5410
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r6, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	movs r0, #0x37
	strh r0, [r5, #0x2e]
	ldr r2, _0805D730  @ gUnknown_085E5A78
	ldr r3, _0805D734  @ gUnknown_08723208
	str r3, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r5, #0x60]
	movs r0, #0x14
	strh r0, [r5, #0x32]
	ldr r0, _0805D738  @ 0x0000FFFC
	strh r0, [r5, #0x3a]
	ldr r0, _0805D73C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805D716
	movs r0, #0x2c
	strh r0, [r5, #0x32]
_0805D716:
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805D740
	ldrh r0, [r5, #0x32]
	ldrh r1, [r4, #2]
	adds r0, r0, r1
	b _0805D746
	.align 2, 0
_0805D728: .4byte gUnknown_0201774C
_0805D72C: .4byte gUnknown_085D5410
_0805D730: .4byte gUnknown_085E5A78
_0805D734: .4byte gUnknown_08723208
_0805D738: .4byte 0x0000FFFC
_0805D73C: .4byte gUnknown_0203E120
_0805D740:
	ldrh r0, [r4, #2]
	ldrh r1, [r5, #0x32]
	subs r0, r0, r1
_0805D746:
	strh r0, [r4, #2]
	ldrh r0, [r5, #0x3a]
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	ldr r0, _0805D76C  @ gUnknown_085DFA48
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805D770  @ gUnknown_085DDC64
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D76C: .4byte gUnknown_085DFA48
_0805D770: .4byte gUnknown_085DDC64

	THUMB_FUNC_START sub_805D774
sub_805D774: @ 0x0805D774
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805D798  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805D7A8
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805D79C
	ldr r2, [r4, #0x60]
	ldr r1, [r4, #0x5c]
	ldrh r0, [r4, #0x32]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	b _0805D7A6
	.align 2, 0
_0805D798: .4byte gUnknown_0203E120
_0805D79C:
	ldr r2, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	ldrh r0, [r0, #2]
	ldrh r1, [r4, #0x32]
	subs r0, r0, r1
_0805D7A6:
	strh r0, [r2, #2]
_0805D7A8:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0805D7CE
	ldr r0, _0805D7D4  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D7CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D7D4: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimThunder
StartSpellAnimThunder: @ 0x0805D7D8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805D810  @ gUnknown_085D5428
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D810: .4byte gUnknown_085D5428

	THUMB_FUNC_START Loop6C_efxThunder
Loop6C_efxThunder: @ 0x0805D814
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805D83E
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0805D83E:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r6, #1
	cmp r1, r0
	bne _0805D85C
	adds r0, r5, #0
	bl sub_805D8B4
	adds r0, r5, #0
	bl sub_805D9BC
	adds r0, r5, #0
	bl sub_805DA44
	b _0805D8AE
_0805D85C:
	adds r0, r6, #4
	cmp r1, r0
	bne _0805D892
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #2
	ldrsh r2, [r5, r0]
	movs r0, #0xf5
	movs r3, #1
	bl sub_80729A4
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805D8AE
	adds r0, r5, #0
	bl sub_8072450
	b _0805D8AE
_0805D892:
	adds r0, r6, #0
	adds r0, #0x50
	cmp r1, r0
	beq _0805D8AE
	adds r0, #0x10
	cmp r1, r0
	bne _0805D8AE
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D8AE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805D8B4
sub_805D8B4: @ 0x0805D8B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805D90C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D910  @ gUnknown_085D5440
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0805D914  @ gUnknown_080DCCA6
	str r0, [r5, #0x48]
	ldr r0, _0805D918  @ gUnknown_085D5458
	str r0, [r5, #0x4c]
	ldr r0, _0805D91C  @ gUnknown_085D5460
	str r0, [r5, #0x50]
	ldr r0, _0805D920  @ gUnknown_085F2DC0
	movs r1, #0x86
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _0805D924  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805D932
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805D928
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0805D932
	.align 2, 0
_0805D90C: .4byte gUnknown_0201774C
_0805D910: .4byte gUnknown_085D5440
_0805D914: .4byte gUnknown_080DCCA6
_0805D918: .4byte gUnknown_085D5458
_0805D91C: .4byte gUnknown_085D5460
_0805D920: .4byte gUnknown_085F2DC0
_0805D924: .4byte gUnknown_0203E120
_0805D928:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805D932:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805D938
sub_805D938: @ 0x0805D938
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r6, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	blt _0805D990
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r5, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	cmp r5, #0
	bne _0805D96E
	ldr r6, _0805D988  @ 0x0000011F
_0805D96E:
	cmp r5, #1
	bne _0805D976
	movs r6, #0xa8
	lsls r6, r6, #1
_0805D976:
	ldr r0, _0805D98C  @ gUnknown_020234E4
	str r6, [sp]
	movs r1, #2
	movs r2, #0x14
	movs r3, #1
	bl FillBGRect
	b _0805D9AE
	.align 2, 0
_0805D988: .4byte 0x0000011F
_0805D98C: .4byte gUnknown_020234E4
_0805D990:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _0805D9AE
	bl ClearBG1
	ldr r1, _0805D9B8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805D9AE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D9B8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805D9BC
sub_805D9BC: @ 0x0805D9BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805D9E8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D9EC  @ gUnknown_085D5468
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0805D9F0  @ gUnknown_080DCCC0
	str r1, [r0, #0x48]
	ldr r1, _0805D9F4  @ gUnknown_085F367C
	str r1, [r0, #0x4c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D9E8: .4byte gUnknown_0201774C
_0805D9EC: .4byte gUnknown_085D5468
_0805D9F0: .4byte gUnknown_080DCCC0
_0805D9F4: .4byte gUnknown_085F367C

	THUMB_FUNC_START sub_805D9F8
sub_805D9F8: @ 0x0805D9F8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0805DA1E
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _0805DA38
_0805DA1E:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0805DA38
	bl sub_805526C
	ldr r1, _0805DA40  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805DA38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DA40: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805DA44
sub_805DA44: @ 0x0805DA44
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805DA8C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805DA90  @ gUnknown_085D5488
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r3, _0805DA94  @ gUnknown_085F5550
	ldr r2, _0805DA98  @ gUnknown_085F4A24
	str r2, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _0805DA9C  @ gUnknown_085F3F40
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805DAA0  @ gUnknown_085F3AA8
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DA8C: .4byte gUnknown_0201774C
_0805DA90: .4byte gUnknown_085D5488
_0805DA94: .4byte gUnknown_085F5550
_0805DA98: .4byte gUnknown_085F4A24
_0805DA9C: .4byte gUnknown_085F3F40
_0805DAA0: .4byte gUnknown_085F3AA8

	THUMB_FUNC_START sub_805DAA4
sub_805DAA4: @ 0x0805DAA4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x32
	ble _0805DACA
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _0805DAD0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805DACA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DAD0: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimFire
StartSpellAnimFire: @ 0x0805DAD4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805DB14  @ gUnknown_085D54A0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x2a
	strb r1, [r0]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DB14: .4byte gUnknown_085D54A0

	THUMB_FUNC_START StartSpellAnimElfire
StartSpellAnimElfire: @ 0x0805DB18
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805DB58  @ gUnknown_085D54A0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r1, r4, #0
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DB58: .4byte gUnknown_085D54A0

	THUMB_FUNC_START Loop6C_efxFire
Loop6C_efxFire: @ 0x0805DB5C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r6, r0, #0
	ldr r0, _0805DB88  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805DB8C
	movs r5, #0x20
	movs r7, #0x34
	movs r3, #0x36
	mov r8, r3
	movs r0, #0x55
	mov r9, r0
	b _0805DB98
	.align 2, 0
_0805DB88: .4byte gUnknown_0203E120
_0805DB8C:
	movs r5, #0x28
	movs r7, #0x3c
	movs r1, #0x41
	mov r8, r1
	movs r3, #0x60
	mov r9, r3
_0805DB98:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805DBC4
	ldr r0, [r4, #0x5c]
	bl sub_805DC64
	ldr r0, [r4, #0x5c]
	bl sub_805DD1C
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0xf1
	movs r3, #1
	bl sub_80729A4
_0805DBC4:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, r5
	bne _0805DBD8
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _0805DC58
_0805DBD8:
	cmp r0, r7
	bne _0805DC42
	ldrh r0, [r6, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r6, #0x10]
	adds r5, r4, #0
	adds r5, #0x29
	ldrb r1, [r5]
	adds r0, r6, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r5]
	cmp r0, #0
	bne _0805DC58
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805DC18
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r6, r3]
	movs r0, #0xf7
	movs r3, #1
	bl sub_80729A4
	adds r0, r6, #0
	bl StartSubSpell_efxFireHITBG
	b _0805DC3A
_0805DC18:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r0, #0xf8
	movs r3, #1
	bl sub_80729A4
	adds r0, r6, #0
	bl StartSubSpell_efxElfireBG
	adds r0, r6, #0
	bl StartSubSpell_efxElfireBGCOL
	adds r0, r6, #0
	bl StartSubSpell_efxElfireOBJ
_0805DC3A:
	adds r0, r6, #0
	bl sub_8072450
	b _0805DC58
_0805DC42:
	cmp r0, r8
	beq _0805DC58
	cmp r0, r9
	bne _0805DC58
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805DC58:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805DC64
sub_805DC64: @ 0x0805DC64
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805DCA8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805DCAC  @ gUnknown_085D54B8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0805DCB0  @ gUnknown_080DCD26
	str r1, [r0, #0x48]
	ldr r1, _0805DCB4  @ gUnknown_085D54D0
	str r1, [r0, #0x4c]
	ldr r1, _0805DCB8  @ gUnknown_085D5500
	str r1, [r0, #0x50]
	ldr r0, _0805DCBC  @ gUnknown_085F6230
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _0805DCC0  @ gUnknown_085F5638
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DCA8: .4byte gUnknown_0201774C
_0805DCAC: .4byte gUnknown_085D54B8
_0805DCB0: .4byte gUnknown_080DCD26
_0805DCB4: .4byte gUnknown_085D54D0
_0805DCB8: .4byte gUnknown_085D5500
_0805DCBC: .4byte gUnknown_085F6230
_0805DCC0: .4byte gUnknown_085F5638

	THUMB_FUNC_START Loop6C_efxFireBG
Loop6C_efxFireBG: @ 0x0805DCC4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0805DCF2
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _0805DD10
_0805DCF2:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _0805DD10
	bl ClearBG1
	ldr r1, _0805DD18  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805DD10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DD18: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805DD1C
sub_805DD1C: @ 0x0805DD1C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _0805DD60  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805DD64  @ gUnknown_085D5530
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r6, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r1, _0805DD68  @ gUnknown_085F843C
	ldr r2, _0805DD6C  @ gUnknown_085F80B4
	ldr r3, _0805DD70  @ gUnknown_085F8468
	ldr r0, _0805DD74  @ gUnknown_085F80E0
	str r0, [sp]
	adds r0, r6, #0
	bl sub_8055554
	adds r5, r0, #0
	str r5, [r4, #0x60]
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805DD78
	ldrh r0, [r6, #2]
	subs r0, #8
	b _0805DD7C
	.align 2, 0
_0805DD60: .4byte gUnknown_0201774C
_0805DD64: .4byte gUnknown_085D5530
_0805DD68: .4byte gUnknown_085F843C
_0805DD6C: .4byte gUnknown_085F80B4
_0805DD70: .4byte gUnknown_085F8468
_0805DD74: .4byte gUnknown_085F80E0
_0805DD78:
	ldrh r0, [r6, #2]
	adds r0, #8
_0805DD7C:
	strh r0, [r5, #2]
	ldrh r0, [r6, #4]
	adds r0, #8
	strh r0, [r5, #4]
	ldr r0, _0805DDA0  @ gUnknown_085F7D64
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805DDA4  @ gUnknown_085F7768
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DDA0: .4byte gUnknown_085F7D64
_0805DDA4: .4byte gUnknown_085F7768

	THUMB_FUNC_START sub_805DDA8
sub_805DDA8: @ 0x0805DDA8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x25
	bne _0805DDCE
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0xf2
	movs r3, #1
	bl sub_80729A4
	b _0805DDE6
_0805DDCE:
	cmp r0, #0x32
	ble _0805DDE6
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _0805DDEC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805DDE6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DDEC: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSubSpell_efxFireHITBG
StartSubSpell_efxFireHITBG: @ 0x0805DDF0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805DE48  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805DE4C  @ gUnknown_085D5548
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0805DE50  @ gUnknown_080DCD72
	str r0, [r5, #0x48]
	ldr r0, _0805DE54  @ gUnknown_085D55B4
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0805DE58  @ gUnknown_085D5560
	str r0, [r5, #0x54]
	ldr r0, _0805DE5C  @ gUnknown_0860108C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _0805DE60  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805DE6E
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805DE64
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0805DE6E
	.align 2, 0
_0805DE48: .4byte gUnknown_0201774C
_0805DE4C: .4byte gUnknown_085D5548
_0805DE50: .4byte gUnknown_080DCD72
_0805DE54: .4byte gUnknown_085D55B4
_0805DE58: .4byte gUnknown_085D5560
_0805DE5C: .4byte gUnknown_0860108C
_0805DE60: .4byte gUnknown_0203E120
_0805DE64:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805DE6E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805DE74
sub_805DE74: @ 0x0805DE74
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0805DEB0
	ldr r5, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, [r7, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r4, r5
	ldr r1, [r5]
	adds r4, r4, r6
	ldr r2, [r4]
	bl sub_8055670
	b _0805DECE
_0805DEB0:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0805DECE
	bl ClearBG1
	ldr r1, _0805DED4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_Delete
_0805DECE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DED4: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSubSpell_efxElfireBG
StartSubSpell_efxElfireBG: @ 0x0805DED8
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0805DF34  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805DF38  @ gUnknown_085D5608
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	ldr r0, _0805DF3C  @ gUnknown_08602B94
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r5, #0x5c]
	ldr r2, _0805DF40  @ gUnknown_08603D50
	adds r1, r2, #0
	bl sub_8055670
	bl ClearBG1Setup
	bl sub_80551B0
	ldr r0, _0805DF44  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805DF64
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805DF48
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0805DF52
	.align 2, 0
_0805DF34: .4byte gUnknown_0201774C
_0805DF38: .4byte gUnknown_085D5608
_0805DF3C: .4byte gUnknown_08602B94
_0805DF40: .4byte gUnknown_08603D50
_0805DF44: .4byte gUnknown_0203E120
_0805DF48:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805DF52:
	ldr r0, _0805DF6C  @ gUnknown_020234E4
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp]
	movs r1, #2
	movs r2, #0x14
	movs r3, #1
	bl sub_8070DBC
_0805DF64:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DF6C: .4byte gUnknown_020234E4

	THUMB_FUNC_START sub_805DF70
sub_805DF70: @ 0x0805DF70
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	bne _0805DF98
	bl ClearBG1
	bl sub_805526C
	ldr r1, _0805DFA0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805DF98:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DFA0: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSubSpell_efxElfireBGCOL
StartSubSpell_efxElfireBGCOL: @ 0x0805DFA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805DFD8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805DFDC  @ gUnknown_085D5620
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0805DFE0  @ gUnknown_080DCDE4
	str r1, [r0, #0x48]
	ldr r1, _0805DFE4  @ gUnknown_08603B50
	str r1, [r0, #0x4c]
	adds r0, r1, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DFD8: .4byte gUnknown_0201774C
_0805DFDC: .4byte gUnknown_085D5620
_0805DFE0: .4byte gUnknown_080DCDE4
_0805DFE4: .4byte gUnknown_08603B50

	THUMB_FUNC_START sub_805DFE8
sub_805DFE8: @ 0x0805DFE8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0805E00E
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _0805E024
_0805E00E:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0805E024
	ldr r1, _0805E02C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805E024:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E02C: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSubSpell_efxElfireOBJ
StartSubSpell_efxElfireOBJ: @ 0x0805E030
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805E070  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805E074  @ gUnknown_085D5640
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r3, _0805E078  @ gUnknown_08605DF4
	ldr r2, _0805E07C  @ gUnknown_08604FD4
	str r2, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_8055554
	adds r6, r0, #0
	str r6, [r4, #0x60]
	adds r0, r5, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805E080
	ldrh r0, [r6, #2]
	subs r0, #8
	b _0805E084
	.align 2, 0
_0805E070: .4byte gUnknown_0201774C
_0805E074: .4byte gUnknown_085D5640
_0805E078: .4byte gUnknown_08605DF4
_0805E07C: .4byte gUnknown_08604FD4
_0805E080:
	ldrh r0, [r6, #2]
	adds r0, #8
_0805E084:
	strh r0, [r6, #2]
	ldr r0, [r6, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x1c]
	ldr r0, _0805E0AC  @ gUnknown_08604210
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805E0B0  @ gUnknown_08603F98
	movs r1, #0x80
	lsls r1, r1, #4
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E0AC: .4byte gUnknown_08604210
_0805E0B0: .4byte gUnknown_08603F98

	THUMB_FUNC_START sub_805E0B4
sub_805E0B4: @ 0x0805E0B4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	ble _0805E0DA
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _0805E0E0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805E0DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E0E0: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimFimbulvetr
StartSpellAnimFimbulvetr: @ 0x0805E0E4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805E11C  @ gUnknown_085D5658
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E11C: .4byte gUnknown_085D5658

	THUMB_FUNC_START sub_805E120
sub_805E120: @ 0x0805E120
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r7, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805E14E
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0805E14E:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r6, #1
	cmp r1, r0
	bne _0805E194
	adds r0, r5, #0
	bl sub_805E230
	adds r0, r5, #0
	bl sub_805E4C4
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_805BA1C
	movs r0, #0x91
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
_0805E194:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r6, #0
	adds r0, #0x52
	cmp r1, r0
	bne _0805E1AA
	ldr r0, [r4, #0x5c]
	movs r1, #4
	bl StartSpellBG_FLASH
	b _0805E228
_0805E1AA:
	adds r0, r6, #0
	adds r0, #0x55
	cmp r1, r0
	bne _0805E1E4
	adds r0, r5, #0
	bl sub_805E318
	adds r0, r5, #0
	bl sub_805E430
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x18
	movs r2, #0x10
	movs r3, #0x10
	bl sub_805BA1C
	ldr r0, _0805E1E0  @ 0x00000123
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	b _0805E228
	.align 2, 0
_0805E1E0: .4byte 0x00000123
_0805E1E4:
	adds r0, r6, #0
	adds r0, #0x58
	cmp r1, r0
	bne _0805E20C
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805E228
	adds r0, r5, #0
	bl sub_8072450
	b _0805E228
_0805E20C:
	adds r0, r6, #0
	adds r0, #0x88
	cmp r1, r0
	beq _0805E228
	adds r0, #0x19
	cmp r1, r0
	bne _0805E228
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805E228:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805E230
sub_805E230: @ 0x0805E230
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805E284  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805E288  @ gUnknown_085D5670
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0805E28C  @ gUnknown_080DCE6E
	str r0, [r5, #0x48]
	ldr r0, _0805E290  @ gUnknown_085D5688
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0805E294  @ gUnknown_085D56A0
	str r0, [r5, #0x54]
	ldr r0, _0805E298  @ gUnknown_08617F04
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _0805E29C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805E2AA
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805E2A0
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0805E2AA
	.align 2, 0
_0805E284: .4byte gUnknown_0201774C
_0805E288: .4byte gUnknown_085D5670
_0805E28C: .4byte gUnknown_080DCE6E
_0805E290: .4byte gUnknown_085D5688
_0805E294: .4byte gUnknown_085D56A0
_0805E298: .4byte gUnknown_08617F04
_0805E29C: .4byte gUnknown_0203E120
_0805E2A0:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805E2AA:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805E2B4
sub_805E2B4: @ 0x0805E2B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _0805E2F0
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	b _0805E30E
_0805E2F0:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _0805E30E
	bl ClearBG1
	ldr r1, _0805E314  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805E30E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E314: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805E318
sub_805E318: @ 0x0805E318
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805E36C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805E370  @ gUnknown_085D56B8
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0805E374  @ gUnknown_080DCEEC
	str r0, [r5, #0x48]
	ldr r0, _0805E378  @ gUnknown_085D56D0
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0805E37C  @ gUnknown_085D56FC
	str r0, [r5, #0x54]
	ldr r0, _0805E380  @ gUnknown_086101DC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _0805E384  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805E392
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805E388
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _0805E392
	.align 2, 0
_0805E36C: .4byte gUnknown_0201774C
_0805E370: .4byte gUnknown_085D56B8
_0805E374: .4byte gUnknown_080DCEEC
_0805E378: .4byte gUnknown_085D56D0
_0805E37C: .4byte gUnknown_085D56FC
_0805E380: .4byte gUnknown_086101DC
_0805E384: .4byte gUnknown_0203E120
_0805E388:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0805E392:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805E39C
sub_805E39C: @ 0x0805E39C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0805E3C0  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805E3CE
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805E3C4
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0805E3CE
	.align 2, 0
_0805E3C0: .4byte gUnknown_0203E120
_0805E3C4:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805E3CE:
	adds r0, r6, #0
	adds r0, #0x2c
	adds r1, r6, #0
	adds r1, #0x44
	ldr r2, [r6, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0805E408
	ldr r1, [r6, #0x4c]
	ldr r2, [r6, #0x50]
	ldr r5, [r6, #0x54]
	ldr r0, [r6, #0x5c]
	lsls r4, r4, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	b _0805E426
_0805E408:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0805E426
	bl ClearBG1
	ldr r1, _0805E42C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_0805E426:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E42C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805E430
sub_805E430: @ 0x0805E430
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805E480  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805E484  @ gUnknown_085D5728
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r3, _0805E488  @ gUnknown_0861ACB8
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldrh r1, [r0, #2]
	adds r1, #0x18
	strh r1, [r0, #2]
	ldr r0, _0805E48C  @ gUnknown_08670528
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805E490  @ gUnknown_08618BBC
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E480: .4byte gUnknown_0201774C
_0805E484: .4byte gUnknown_085D5728
_0805E488: .4byte gUnknown_0861ACB8
_0805E48C: .4byte gUnknown_08670528
_0805E490: .4byte gUnknown_08618BBC

	THUMB_FUNC_START sub_805E494
sub_805E494: @ 0x0805E494
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x33
	ble _0805E4BA
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _0805E4C0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805E4BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E4C0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805E4C4
sub_805E4C4: @ 0x0805E4C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805E500  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805E504  @ gUnknown_085D5740
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r2, #0
	strh r2, [r0, #0x2c]
	strh r2, [r0, #0x2e]
	movs r1, #1
	str r1, [r0, #0x44]
	str r2, [r0, #0x48]
	ldr r0, _0805E508  @ gUnknown_08670528
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805E50C  @ gUnknown_08618BBC
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E500: .4byte gUnknown_0201774C
_0805E504: .4byte gUnknown_085D5740
_0805E508: .4byte gUnknown_08670528
_0805E50C: .4byte gUnknown_08618BBC

	THUMB_FUNC_START sub_805E510
sub_805E510: @ 0x0805E510
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0805E516:
	ldr r0, [r5, #0x5c]
	adds r1, r4, #0
	bl sub_805E53C
	adds r4, #1
	cmp r4, #0x1f
	ble _0805E516
	ldr r1, _0805E538  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E538: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805E53C
sub_805E53C: @ 0x0805E53C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	mov r4, sp
	mov r0, sp
	movs r1, #0
	movs r2, #8
	bl memset
	movs r5, #0
	movs r0, #1
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	ldr r1, _0805E5CC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805E5D0  @ gUnknown_085D5758
	movs r1, #3
	bl Proc_Create
	adds r7, r0, #0
	str r6, [r7, #0x5c]
	strh r5, [r7, #0x2c]
	movs r0, #0x64
	strh r0, [r7, #0x2e]
	movs r0, #7
	mov r1, r8
	ands r0, r1
	mov r2, sp
	adds r4, r2, r0
	ldrb r0, [r4]
	adds r1, r7, #0
	adds r1, #0x29
	strb r0, [r1]
	ldr r0, _0805E5D4  @ gUnknown_0861AD24
	movs r1, #0x78
	bl AIS_New
	str r0, [r7, #0x60]
	movs r1, #0xa1
	lsls r1, r1, #6
	strh r1, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r5, _0805E5D8  @ 0x0000FFFF
	adds r0, r5, #0
	bl sub_80716B0
	strh r0, [r7, #0x32]
	adds r0, r5, #0
	bl sub_80716B0
	strh r0, [r7, #0x3a]
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805E5E0
	adds r0, r5, #0
	bl sub_80716B0
	ldr r2, _0805E5DC  @ 0x000001FF
	adds r1, r2, #0
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #3
	b _0805E5F2
	.align 2, 0
_0805E5CC: .4byte gUnknown_0201774C
_0805E5D0: .4byte gUnknown_085D5758
_0805E5D4: .4byte gUnknown_0861AD24
_0805E5D8: .4byte 0x0000FFFF
_0805E5DC: .4byte 0x000001FF
_0805E5E0:
	adds r0, r5, #0
	bl sub_80716B0
	ldr r2, _0805E63C  @ 0x000001FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r1, r2, #0
_0805E5F2:
	adds r0, r0, r1
	strh r0, [r7, #0x34]
	ldr r4, _0805E640  @ 0x0000FF0F
	adds r0, r4, #0
	bl sub_80716B0
	ldr r2, _0805E644  @ 0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r1, _0805E648  @ 0xFFFFFF00
	adds r0, r0, r1
	strh r0, [r7, #0x3c]
	adds r0, r4, #0
	bl sub_80716B0
	strh r0, [r7, #0x36]
	adds r0, r4, #0
	bl sub_80716B0
	strh r0, [r7, #0x3e]
	movs r0, #7
	mov r2, r8
	ands r0, r2
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E64C
	adds r0, r4, #0
	bl sub_80716B0
	ldr r2, _0805E63C  @ 0x000001FF
	adds r1, r2, #0
	ands r0, r1
	movs r1, #0xe0
	lsls r1, r1, #3
	b _0805E65E
	.align 2, 0
_0805E63C: .4byte 0x000001FF
_0805E640: .4byte 0x0000FF0F
_0805E644: .4byte 0x000003FF
_0805E648: .4byte 0xFFFFFF00
_0805E64C:
	adds r0, r4, #0
	bl sub_80716B0
	ldr r2, _0805E684  @ 0x000001FF
	adds r1, r2, #0
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #4
	adds r1, r2, #0
_0805E65E:
	adds r0, r0, r1
	strh r0, [r7, #0x38]
	ldr r0, _0805E688  @ 0x0000FF0F
	bl sub_80716B0
	ldr r2, _0805E68C  @ 0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldr r1, _0805E690  @ 0xFFFFFF00
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x40
	strh r0, [r1]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E684: .4byte 0x000001FF
_0805E688: .4byte 0x0000FF0F
_0805E68C: .4byte 0x000003FF
_0805E690: .4byte 0xFFFFFF00

	THUMB_FUNC_START sub_805E694
sub_805E694: @ 0x0805E694
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x60]
	ldrh r0, [r4, #0x2c]
	adds r2, r0, #1
	strh r2, [r4, #0x2c]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	cmp r0, r1
	ble _0805E6C8
	ldr r1, _0805E6C4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r3, #0
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _0805E748
	.align 2, 0
_0805E6C4: .4byte gUnknown_0201774C
_0805E6C8:
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	bne _0805E70C
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E6E4
	ldr r0, _0805E6E0  @ gUnknown_0861AD84
	b _0805E6E6
	.align 2, 0
_0805E6E0: .4byte gUnknown_0861AD84
_0805E6E4:
	ldr r0, _0805E708  @ gUnknown_0861AD8C
_0805E6E6:
	str r0, [r3, #0x24]
	str r0, [r3, #0x20]
	movs r0, #0
	strh r0, [r3, #6]
	ldrh r1, [r4, #0x34]
	ldrh r0, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	ldrh r0, [r4, #0x3c]
	ldrh r2, [r4, #0x3a]
	adds r0, r0, r2
	strh r0, [r4, #0x3a]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x18
	strh r1, [r3, #2]
	ldrh r0, [r4, #0x3a]
	b _0805E744
	.align 2, 0
_0805E708: .4byte gUnknown_0861AD8C
_0805E70C:
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805E720
	ldr r0, _0805E71C  @ gUnknown_0861AD84
	b _0805E722
	.align 2, 0
_0805E71C: .4byte gUnknown_0861AD84
_0805E720:
	ldr r0, _0805E750  @ gUnknown_0861AD8C
_0805E722:
	str r0, [r3, #0x24]
	str r0, [r3, #0x20]
	movs r0, #0
	strh r0, [r3, #6]
	ldrh r0, [r4, #0x38]
	ldrh r5, [r4, #0x3e]
	adds r0, r0, r5
	strh r0, [r4, #0x3e]
	adds r1, r4, #0
	adds r1, #0x40
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x3e]
	ldrh r0, [r4, #0x36]
	lsrs r0, r0, #8
	strh r0, [r3, #2]
	ldrh r0, [r4, #0x3e]
_0805E744:
	lsrs r0, r0, #8
	strh r0, [r3, #4]
_0805E748:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E750: .4byte gUnknown_0861AD8C

	THUMB_FUNC_START sub_805E754
sub_805E754: @ 0x0805E754
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805E78C  @ gUnknown_085D5770
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E78C: .4byte gUnknown_085D5770

	THUMB_FUNC_START sub_805E790
sub_805E790: @ 0x0805E790
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805E7BA
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0805E7BA:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r6, #1
	cmp r1, r0
	bne _0805E7E0
	ldr r0, _0805E828  @ 0x00000119
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	bl sub_805E850
	adds r0, r5, #0
	bl sub_805E98C
_0805E7E0:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r6, #0
	adds r0, #0x59
	cmp r1, r0
	bne _0805E7F6
	adds r0, r5, #0
	movs r1, #2
	movs r2, #3
	bl sub_805EAAC
_0805E7F6:
	movs r3, #0x2c
	ldrsh r1, [r4, r3]
	adds r0, r6, #0
	adds r0, #0x5e
	cmp r1, r0
	bne _0805E82C
	adds r0, r5, #0
	bl sub_805E900
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805E848
	adds r0, r5, #0
	bl sub_8072450
	b _0805E848
	.align 2, 0
_0805E828: .4byte 0x00000119
_0805E82C:
	adds r0, r6, #0
	adds r0, #0xc3
	cmp r1, r0
	beq _0805E848
	adds r0, #5
	cmp r1, r0
	bne _0805E848
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805E848:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805E850
sub_805E850: @ 0x0805E850
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805E88C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805E890  @ gUnknown_085D5788
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0805E894  @ gUnknown_080DCF7E
	str r1, [r0, #0x48]
	ldr r1, _0805E898  @ gUnknown_085D57CC
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _0805E89C  @ gUnknown_085D57A0
	str r1, [r0, #0x54]
	ldr r0, _0805E8A0  @ gUnknown_08608838
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E88C: .4byte gUnknown_0201774C
_0805E890: .4byte gUnknown_085D5788
_0805E894: .4byte gUnknown_080DCF7E
_0805E898: .4byte gUnknown_085D57CC
_0805E89C: .4byte gUnknown_085D57A0
_0805E8A0: .4byte gUnknown_08608838

	THUMB_FUNC_START sub_805E8A4
sub_805E8A4: @ 0x0805E8A4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0805E8E0
	ldr r5, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, [r7, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r4, r5
	ldr r1, [r5]
	adds r4, r4, r6
	ldr r2, [r4]
	bl sub_8055670
	b _0805E8F6
_0805E8E0:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0805E8F6
	ldr r1, _0805E8FC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r7, #0
	bl Proc_Delete
_0805E8F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E8FC: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805E900
sub_805E900: @ 0x0805E900
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805E91C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805E920  @ gUnknown_085D57F8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E91C: .4byte gUnknown_0201774C
_0805E920: .4byte gUnknown_085D57F8

	THUMB_FUNC_START sub_805E924
sub_805E924: @ 0x0805E924
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	ldr r3, _0805E95C  @ gUnknown_0860A5D4
	str r3, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _0805E960  @ gUnknown_085F3F40
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805E964  @ gUnknown_085F3AA8
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E95C: .4byte gUnknown_0860A5D4
_0805E960: .4byte gUnknown_085F3F40
_0805E964: .4byte gUnknown_085F3AA8

	THUMB_FUNC_START sub_805E968
sub_805E968: @ 0x0805E968
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _0805E988  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E988: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805E98C
sub_805E98C: @ 0x0805E98C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805E9A8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805E9AC  @ gUnknown_085D5820
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E9A8: .4byte gUnknown_0201774C
_0805E9AC: .4byte gUnknown_085D5820

	THUMB_FUNC_START sub_805E9B0
sub_805E9B0: @ 0x0805E9B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8d
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
	ldr r0, [r4, #0x5c]
	movs r1, #0x26
	bl StartSpellBG_FLASH
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #5
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805E9E4
sub_805E9E4: @ 0x0805E9E4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r6, r0]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_8012DCC
	adds r5, r0, #0
	ldr r0, _0805EA44  @ gPaletteBuffer
	ldr r4, _0805EA48  @ gUnknown_020165C8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	adds r3, r5, #0
	bl sub_807132C
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	cmp r0, r1
	ble _0805EA3A
	movs r0, #0
	strh r0, [r6, #0x2c]
	movs r0, #0xa
	strh r0, [r6, #0x2e]
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_0805EA3A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EA44: .4byte gPaletteBuffer
_0805EA48: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_805EA4C
sub_805EA4C: @ 0x0805EA4C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_8012DCC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0805EA9E
	bl ClearBG1
	bl sub_805526C
	ldr r1, _0805EAA8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805EA9E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EAA8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805EAAC
sub_805EAAC: @ 0x0805EAAC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r1, _0805EAE0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805EAE4  @ gPaletteBuffer
	ldr r1, _0805EAE8  @ gUnknown_020165C8
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	ldr r0, _0805EAEC  @ gUnknown_085D5860
	movs r1, #0
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	strh r6, [r0, #0x30]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EAE0: .4byte gUnknown_0201774C
_0805EAE4: .4byte gPaletteBuffer
_0805EAE8: .4byte gUnknown_020165C8
_0805EAEC: .4byte gUnknown_085D5860

	THUMB_FUNC_START sub_805EAF0
sub_805EAF0: @ 0x0805EAF0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_8012DCC
	adds r3, r0, #0
	ldr r4, _0805EB50  @ gUnknown_020165C8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_80712B0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	cmp r0, r1
	ble _0805EB46
	movs r0, #0
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805EB46:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805EB50: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_805EB54
sub_805EB54: @ 0x0805EB54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805EB90  @ gUnknown_020165C8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0805EB8A
	ldr r1, _0805EB94  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805EB8A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EB90: .4byte gUnknown_020165C8
_0805EB94: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805EB98
sub_805EB98: @ 0x0805EB98
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805EBD0  @ gUnknown_085D5880
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805EBD0: .4byte gUnknown_085D5880

	THUMB_FUNC_START sub_805EBD4
sub_805EBD4: @ 0x0805EBD4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldr r0, _0805EC2C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r3, #0x3a
	cmp r0, #0
	beq _0805EBF6
	movs r3, #0x32
_0805EBF6:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805EC30
	ldr r0, [r4, #0x5c]
	bl sub_805EE24
	movs r0, #0x84
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _0805ECCC
	.align 2, 0
_0805EC2C: .4byte gUnknown_0203E120
_0805EC30:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r3, r2
	cmp r1, r0
	bne _0805EC44
	ldr r0, [r4, #0x5c]
	movs r1, #6
	bl StartSpellBG_FLASH
	b _0805ECCC
_0805EC44:
	adds r0, r2, #6
	adds r0, r3, r0
	cmp r1, r0
	bne _0805EC80
	adds r0, r5, #0
	bl sub_805ECD4
	adds r0, r5, #0
	bl sub_805ED98
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r1, #6
	movs r2, #5
	movs r3, #0x10
	bl sub_805BA1C
	ldr r0, _0805EC7C  @ 0x00000109
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	b _0805ECCC
	.align 2, 0
_0805EC7C: .4byte 0x00000109
_0805EC80:
	adds r0, r2, #0
	adds r0, #8
	adds r0, r3, r0
	cmp r1, r0
	bne _0805ECAA
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805ECCC
	adds r0, r5, #0
	bl sub_8072450
	b _0805ECCC
_0805ECAA:
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r3, r0
	cmp r1, r0
	beq _0805ECCC
	adds r0, r2, #0
	adds r0, #0xe
	adds r0, r3, r0
	cmp r1, r0
	bne _0805ECCC
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805ECCC:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805ECD4
sub_805ECD4: @ 0x0805ECD4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0805ED20  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805ED24  @ gUnknown_085D5898
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	str r0, [r4, #0x44]
	ldr r0, _0805ED28  @ gUnknown_080DD024
	str r0, [r4, #0x48]
	ldr r0, _0805ED2C  @ gUnknown_085D58B0
	str r0, [r4, #0x4c]
	ldr r0, _0805ED30  @ gUnknown_08621960
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805ED34
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0805ED3E
	.align 2, 0
_0805ED20: .4byte gUnknown_0201774C
_0805ED24: .4byte gUnknown_085D5898
_0805ED28: .4byte gUnknown_080DD024
_0805ED2C: .4byte gUnknown_085D58B0
_0805ED30: .4byte gUnknown_08621960
_0805ED34:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805ED3E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805ED44
sub_805ED44: @ 0x0805ED44
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0805ED70
	ldr r2, [r4, #0x4c]
	ldr r0, [r4, #0x5c]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	movs r2, #0x20
	movs r3, #0x14
	bl sub_805576C
	b _0805ED8E
_0805ED70:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0805ED8E
	bl ClearBG1
	ldr r1, _0805ED94  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805ED8E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805ED94: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805ED98
sub_805ED98: @ 0x0805ED98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805EDCC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805EDD0  @ gUnknown_085D58B8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	ldr r1, _0805EDD4  @ gUnknown_080DD044
	str r1, [r0, #0x48]
	ldr r1, _0805EDD8  @ gUnknown_08622F2C
	str r1, [r0, #0x4c]
	adds r0, r1, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EDCC: .4byte gUnknown_0201774C
_0805EDD0: .4byte gUnknown_085D58B8
_0805EDD4: .4byte gUnknown_080DD044
_0805EDD8: .4byte gUnknown_08622F2C

	THUMB_FUNC_START sub_805EDDC
sub_805EDDC: @ 0x0805EDDC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0805EE02
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _0805EE18
_0805EE02:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0805EE18
	ldr r1, _0805EE20  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805EE18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE20: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805EE24
sub_805EE24: @ 0x0805EE24
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0805EE68  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805EE6C  @ gUnknown_085D58D8
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	str r4, [r6, #0x5c]
	movs r0, #0
	strh r0, [r6, #0x2c]
	ldr r1, _0805EE70  @ gUnknown_086267D8
	ldr r2, _0805EE74  @ gUnknown_08625094
	ldr r3, _0805EE78  @ gUnknown_0862688C
	ldr r0, _0805EE7C  @ gUnknown_08625148
	str r0, [sp]
	adds r0, r4, #0
	bl sub_8055554
	adds r5, r0, #0
	str r5, [r6, #0x60]
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805EE80
	ldrh r0, [r5, #2]
	adds r0, #0x48
	b _0805EE84
	.align 2, 0
_0805EE68: .4byte gUnknown_0201774C
_0805EE6C: .4byte gUnknown_085D58D8
_0805EE70: .4byte gUnknown_086267D8
_0805EE74: .4byte gUnknown_08625094
_0805EE78: .4byte gUnknown_0862688C
_0805EE7C: .4byte gUnknown_08625148
_0805EE80:
	ldrh r0, [r5, #2]
	subs r0, #0x48
_0805EE84:
	strh r0, [r5, #2]
	movs r0, #0x60
	strh r0, [r6, #0x2e]
	ldr r0, _0805EEA4  @ gUnknown_08623A9C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805EEA8  @ gUnknown_086234D8
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EEA4: .4byte gUnknown_08623A9C
_0805EEA8: .4byte gUnknown_086234D8

	THUMB_FUNC_START sub_805EEAC
sub_805EEAC: @ 0x0805EEAC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	bne _0805EED0
	ldr r1, _0805EED4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_0805EED0:
	pop {r0}
	bx r0
	.align 2, 0
_0805EED4: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805EED8
sub_805EED8: @ 0x0805EED8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805EF10  @ gUnknown_085D58F0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805EF10: .4byte gUnknown_085D58F0

	THUMB_FUNC_START sub_805EF14
sub_805EF14: @ 0x0805EF14
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805EF50
	movs r0, #0x85
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	bl sub_805F004
	b _0805EFFE
_0805EF50:
	cmp r0, #0x10
	bne _0805EF5C
	ldr r0, [r4, #0x5c]
	bl sub_805F1A4
	b _0805EFFE
_0805EF5C:
	cmp r0, #0x4a
	bne _0805EF6C
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _0805EFFE
_0805EF6C:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0x4b
	cmp r1, r0
	bne _0805EF82
	adds r0, r5, #0
	bl sub_805F1E8
	str r0, [r4, #0x64]
	b _0805EFFE
_0805EF82:
	adds r0, r2, #0
	adds r0, #0x5e
	cmp r1, r0
	bne _0805EFA8
	ldr r0, _0805EFA4  @ 0x000002E1
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	ldr r0, [r4, #0x5c]
	bl sub_805F0B0
	b _0805EFFE
	.align 2, 0
_0805EFA4: .4byte 0x000002E1
_0805EFA8:
	adds r0, r2, #0
	adds r0, #0x72
	cmp r1, r0
	bne _0805EFB8
	ldr r0, [r4, #0x64]
	bl Proc_Delete
	b _0805EFFE
_0805EFB8:
	adds r0, r2, #0
	adds r0, #0x83
	cmp r1, r0
	bne _0805EFE8
	ldr r0, [r4, #0x5c]
	movs r1, #6
	bl StartSpellBG_FLASH
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805EFFE
	adds r0, r5, #0
	bl sub_8072450
	b _0805EFFE
_0805EFE8:
	adds r0, r2, #0
	adds r0, #0xa4
	cmp r1, r0
	bne _0805EFFE
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805EFFE:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805F004
sub_805F004: @ 0x0805F004
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805F05C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805F060  @ gUnknown_085D5908
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0805F064  @ gUnknown_080DD094
	str r0, [r5, #0x48]
	ldr r0, _0805F068  @ gUnknown_085D5920
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0805F06C  @ gUnknown_085D59C4
	str r0, [r5, #0x54]
	ldr r0, _0805F070  @ gUnknown_0862A2D0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _0805F074  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805F082
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805F078
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _0805F082
	.align 2, 0
_0805F05C: .4byte gUnknown_0201774C
_0805F060: .4byte gUnknown_085D5908
_0805F064: .4byte gUnknown_080DD094
_0805F068: .4byte gUnknown_085D5920
_0805F06C: .4byte gUnknown_085D59C4
_0805F070: .4byte gUnknown_0862A2D0
_0805F074: .4byte gUnknown_0203E120
_0805F078:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0805F082:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805F098
	ldr r1, _0805F094  @ gLCDControlBuffer
	ldrh r0, [r1, #0x20]
	adds r0, #4
	b _0805F09E
	.align 2, 0
_0805F094: .4byte gLCDControlBuffer
_0805F098:
	ldr r1, _0805F0AC  @ gLCDControlBuffer
	ldrh r0, [r1, #0x20]
	subs r0, #4
_0805F09E:
	strh r0, [r1, #0x20]
	ldrh r0, [r1, #0x22]
	adds r0, #8
	strh r0, [r1, #0x22]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F0AC: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_805F0B0
sub_805F0B0: @ 0x0805F0B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805F114  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805F118  @ gUnknown_085D5908
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0805F11C  @ gUnknown_080DD0C6
	str r0, [r5, #0x48]
	ldr r0, _0805F120  @ gUnknown_085D5920
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0805F124  @ gUnknown_085D59C4
	str r0, [r5, #0x54]
	ldr r0, _0805F128  @ gUnknown_0862A2F0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	movs r0, #1
	movs r1, #0xa
	movs r2, #7
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, _0805F12C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805F13A
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805F130
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _0805F13A
	.align 2, 0
_0805F114: .4byte gUnknown_0201774C
_0805F118: .4byte gUnknown_085D5908
_0805F11C: .4byte gUnknown_080DD0C6
_0805F120: .4byte gUnknown_085D5920
_0805F124: .4byte gUnknown_085D59C4
_0805F128: .4byte gUnknown_0862A2F0
_0805F12C: .4byte gUnknown_0203E120
_0805F130:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0805F13A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805F140
sub_805F140: @ 0x0805F140
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0805F17C
	ldr r5, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, [r7, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r4, r5
	ldr r1, [r5]
	adds r4, r4, r6
	ldr r2, [r4]
	bl sub_8055670
	b _0805F19A
_0805F17C:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0805F19A
	bl ClearBG1
	ldr r1, _0805F1A0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_Delete
_0805F19A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F1A0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805F1A4
sub_805F1A4: @ 0x0805F1A4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805F1DC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805F1E0  @ gUnknown_085D5A68
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	adds r0, r5, #0
	bl GetCoreAIStruct
	ldr r3, _0805F1E4  @ gUnknown_085D4F90
	ldr r0, [r4, #0x5c]
	str r3, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F1DC: .4byte gUnknown_0201774C
_0805F1E0: .4byte gUnknown_085D5A68
_0805F1E4: .4byte gUnknown_085D4F90

	THUMB_FUNC_START sub_805F1E8
sub_805F1E8: @ 0x0805F1E8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805F228  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805F22C  @ gUnknown_085D5AB0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	adds r0, r5, #0
	bl GetCoreAIStruct
	ldr r3, _0805F230  @ gUnknown_085D4F90
	ldr r0, [r4, #0x5c]
	str r3, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldrh r1, [r0, #4]
	subs r1, #4
	strh r1, [r0, #4]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805F228: .4byte gUnknown_0201774C
_0805F22C: .4byte gUnknown_085D5AB0
_0805F230: .4byte gUnknown_085D4F90

	THUMB_FUNC_START sub_805F234
sub_805F234: @ 0x0805F234
	push {lr}
	ldr r2, _0805F248  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r0, [r0, #0x60]
	bl AIS_Free
	pop {r0}
	bx r0
	.align 2, 0
_0805F248: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805F24C
sub_805F24C: @ 0x0805F24C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _0805F27C  @ gUnknown_0862D6A8
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _0805F280  @ gUnknown_0862D424
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805F284  @ gUnknown_0862C82C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F27C: .4byte gUnknown_0862D6A8
_0805F280: .4byte gUnknown_0862D424
_0805F284: .4byte gUnknown_0862C82C

	THUMB_FUNC_START sub_805F288
sub_805F288: @ 0x0805F288
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _0805F2B8  @ gUnknown_0862D82C
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _0805F2BC  @ gUnknown_0862D424
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805F2C0  @ gUnknown_0862CC2C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F2B8: .4byte gUnknown_0862D82C
_0805F2BC: .4byte gUnknown_0862D424
_0805F2C0: .4byte gUnknown_0862CC2C

	THUMB_FUNC_START sub_805F2C4
sub_805F2C4: @ 0x0805F2C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _0805F2F4  @ gUnknown_0862DCE0
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _0805F2F8  @ gUnknown_0862D424
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805F2FC  @ gUnknown_0862D06C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F2F4: .4byte gUnknown_0862DCE0
_0805F2F8: .4byte gUnknown_0862D424
_0805F2FC: .4byte gUnknown_0862D06C

	THUMB_FUNC_START sub_805F300
sub_805F300: @ 0x0805F300
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _0805F328  @ gUnknown_0862DC24
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	movs r0, #0x14
	strh r0, [r1, #0xa]
	bl AISArray_Sort
	movs r0, #0x27
	strh r0, [r4, #0x2c]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F328: .4byte gUnknown_0862DC24

	THUMB_FUNC_START sub_805F32C
sub_805F32C: @ 0x0805F32C
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x60]
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	movs r3, #0
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x28
	bne _0805F34C
	ldr r0, _0805F350  @ gUnknown_0862DC58
	str r0, [r2, #0x24]
	str r0, [r2, #0x20]
	strh r3, [r2, #6]
	strh r3, [r1, #0x2c]
_0805F34C:
	pop {r0}
	bx r0
	.align 2, 0
_0805F350: .4byte gUnknown_0862DC58

	THUMB_FUNC_START StartSpellAnimNosferatu
StartSpellAnimNosferatu: @ 0x0805F354
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805F38C  @ gUnknown_085D5AE0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F38C: .4byte gUnknown_085D5AE0

	THUMB_FUNC_START Loop6C_efxResire
Loop6C_efxResire: @ 0x0805F390
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r7, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805F3BE
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0805F3BE:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r6, #1
	cmp r1, r0
	bne _0805F402
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_805BA1C
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x23
	movs r2, #0x14
	movs r3, #0x10
	bl sub_805BA1C
	adds r0, r5, #0
	bl sub_805F53C
	movs r0, #0x92
	lsls r0, r0, #1
	b _0805F452
_0805F402:
	adds r0, r6, #0
	adds r0, #0xf
	cmp r1, r0
	bne _0805F43C
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x2a
	movs r2, #0xf
	movs r3, #0
	bl sub_805B400
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0x1e
	bl sub_805F838
	ldr r0, _0805F438  @ gLCDControlBuffer
	movs r1, #0x20
	ldrsh r2, [r0, r1]
	adds r0, r5, #0
	movs r1, #0x2b
	movs r3, #0
	bl sub_805B828
	b _0805F4A8
	.align 2, 0
_0805F438: .4byte gLCDControlBuffer
_0805F43C:
	adds r0, r6, #0
	adds r0, #0x3c
	cmp r1, r0
	bne _0805F468
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_805F4B0
	ldr r0, _0805F464  @ 0x00000125
_0805F452:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	b _0805F4A8
	.align 2, 0
_0805F464: .4byte 0x00000125
_0805F468:
	adds r0, r6, #0
	adds r0, #0x41
	cmp r1, r0
	bne _0805F490
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_8055424
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805F4A8
	adds r0, r5, #0
	bl sub_8072450
	b _0805F4A8
_0805F490:
	adds r0, r6, #0
	adds r0, #0x6e
	cmp r1, r0
	beq _0805F4A8
	adds r0, #0x14
	cmp r1, r0
	bne _0805F4A8
	bl SetSomethingSpellFxToFalse
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805F4A8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805F4B0
sub_805F4B0: @ 0x0805F4B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0805F510  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805F514  @ gUnknown_085D5AF8
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	str r4, [r6, #0x5c]
	adds r1, r6, #0
	adds r1, #0x29
	movs r0, #0
	strb r5, [r1]
	strh r0, [r6, #0x2c]
	str r0, [r6, #0x44]
	ldr r0, _0805F518  @ gUnknown_080DD186
	str r0, [r6, #0x48]
	ldr r0, _0805F51C  @ gUnknown_085D5C0C
	str r0, [r6, #0x4c]
	str r0, [r6, #0x50]
	ldr r0, _0805F520  @ gUnknown_085D5B40
	str r0, [r6, #0x54]
	ldr r0, _0805F524  @ gUnknown_08636640
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _0805F528  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805F536
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805F52C
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0805F536
	.align 2, 0
_0805F510: .4byte gUnknown_0201774C
_0805F514: .4byte gUnknown_085D5AF8
_0805F518: .4byte gUnknown_080DD186
_0805F51C: .4byte gUnknown_085D5C0C
_0805F520: .4byte gUnknown_085D5B40
_0805F524: .4byte gUnknown_08636640
_0805F528: .4byte gUnknown_0203E120
_0805F52C:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805F536:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805F53C
sub_805F53C: @ 0x0805F53C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805F5AC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805F5B0  @ gUnknown_085D5B28
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0805F5B4  @ gUnknown_080DD252
	str r0, [r5, #0x48]
	ldr r0, _0805F5B8  @ gUnknown_085D5C0C
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0805F5BC  @ gUnknown_085D5B40
	str r0, [r5, #0x54]
	ldr r0, _0805F5C0  @ gUnknown_08636640
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r2, _0805F5C4  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	ldr r0, _0805F5C8  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805F5D6
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805F5CC
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0805F5D6
	.align 2, 0
_0805F5AC: .4byte gUnknown_0201774C
_0805F5B0: .4byte gUnknown_085D5B28
_0805F5B4: .4byte gUnknown_080DD252
_0805F5B8: .4byte gUnknown_085D5C0C
_0805F5BC: .4byte gUnknown_085D5B40
_0805F5C0: .4byte gUnknown_08636640
_0805F5C4: .4byte gLCDControlBuffer
_0805F5C8: .4byte gUnknown_0203E120
_0805F5CC:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805F5D6:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805F5DC
sub_805F5DC: @ 0x0805F5DC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0805F618
	ldr r5, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, [r7, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r4, r5
	ldr r1, [r5]
	adds r4, r4, r6
	ldr r2, [r4]
	bl sub_8055670
	b _0805F65A
_0805F618:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0805F65A
	bl ClearBG1
	adds r0, r7, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805F64C
	ldr r1, _0805F648  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	bl sub_8055000
	adds r0, r7, #0
	bl Proc_Delete
	b _0805F65A
	.align 2, 0
_0805F648: .4byte gUnknown_0201774C
_0805F64C:
	movs r0, #0
	strh r0, [r7, #0x2c]
	movs r0, #1
	strh r0, [r7, #0x2e]
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_0805F65A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805F660
sub_805F660: @ 0x0805F660
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0805F684  @ gUnknown_02017750
	ldr r0, [r5]
	cmp r0, #2
	bne _0805F68C
	ldr r1, _0805F688  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_Delete
	b _0805F6E6
	.align 2, 0
_0805F684: .4byte gUnknown_02017750
_0805F688: .4byte gUnknown_0201774C
_0805F68C:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x2e
	ldrsh r2, [r4, r1]
	ldrh r1, [r4, #0x2e]
	cmp r0, r2
	ble _0805F6A4
	strh r1, [r4, #0x2c]
_0805F6A4:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, r2
	bne _0805F6E6
	ldr r0, [r5]
	cmp r0, #1
	bne _0805F6E6
	strh r3, [r4, #0x2c]
	strh r3, [r4, #0x2e]
	str r3, [r4, #0x44]
	ldr r0, _0805F6EC  @ gUnknown_080DD1F4
	str r0, [r4, #0x48]
	ldr r0, _0805F6F0  @ gUnknown_085D5C0C
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	ldr r0, _0805F6F4  @ gUnknown_085D5B40
	str r0, [r4, #0x54]
	ldr r0, _0805F6F8  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805F6E0
	bl GetAnimationStartFrameMaybe
	strh r0, [r4, #0x2e]
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0805F6E0:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805F6E6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F6EC: .4byte gUnknown_080DD1F4
_0805F6F0: .4byte gUnknown_085D5C0C
_0805F6F4: .4byte gUnknown_085D5B40
_0805F6F8: .4byte gUnknown_0203E120

	THUMB_FUNC_START sub_805F6FC
sub_805F6FC: @ 0x0805F6FC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0805F766
	ldr r0, _0805F73C  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0805F74A
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805F740
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _0805F74A
	.align 2, 0
_0805F73C: .4byte gUnknown_0203E120
_0805F740:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0805F74A:
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x93
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805F766:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805F76C
sub_805F76C: @ 0x0805F76C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0805F7A8
	ldr r5, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, [r7, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r4, r5
	ldr r1, [r5]
	adds r4, r4, r6
	ldr r2, [r4]
	bl sub_8055670
	b _0805F7CA
_0805F7A8:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0805F7CA
	bl ClearBG1
	ldr r1, _0805F7D0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	bl sub_8055000
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_0805F7CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F7D0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805F7D4
sub_805F7D4: @ 0x0805F7D4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0805F810
	ldr r5, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, [r7, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r4, r5
	ldr r1, [r5]
	adds r4, r4, r6
	ldr r2, [r4]
	bl sub_8055670
	b _0805F82E
_0805F810:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0805F82E
	bl ClearBG1
	ldr r1, _0805F834  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_0805F82E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F834: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805F838
sub_805F838: @ 0x0805F838
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r1, _0805F860  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805F864  @ gUnknown_085D5CD8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	str r6, [r0, #0x64]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805F860: .4byte gUnknown_0201774C
_0805F864: .4byte gUnknown_085D5CD8

	THUMB_FUNC_START sub_805F868
sub_805F868: @ 0x0805F868
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x64]
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0x80
	bl sub_8012DCC
	str r0, [r4, #0x4c]
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	cmp r0, r1
	ble _0805F8A6
	ldr r1, _0805F8B0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805F8A6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F8B0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805F8B4
sub_805F8B4: @ 0x0805F8B4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805F8EC  @ gUnknown_085D5CF0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F8EC: .4byte gUnknown_085D5CF0

	THUMB_FUNC_START sub_805F8F0
sub_805F8F0: @ 0x0805F8F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805F91A
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0805F91A:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r6, #1
	cmp r1, r0
	bne _0805F93E
	movs r0, #0x90
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	bl sub_805F9A8
	b _0805F9A0
_0805F93E:
	adds r0, r6, #0
	adds r0, #0x1a
	cmp r1, r0
	bne _0805F984
	ldr r0, _0805F980  @ 0x00000121
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	ldr r0, [r4, #0x5c]
	movs r1, #4
	bl StartSpellBG_FLASH
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805F9A0
	adds r0, r5, #0
	bl sub_8072450
	b _0805F9A0
	.align 2, 0
_0805F980: .4byte 0x00000121
_0805F984:
	adds r0, r6, #0
	adds r0, #0x2f
	cmp r1, r0
	beq _0805F9A0
	adds r0, #1
	cmp r1, r0
	bne _0805F9A0
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805F9A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805F9A8
sub_805F9A8: @ 0x0805F9A8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805F9FC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805FA00  @ gUnknown_085D5D08
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0805FA04  @ gUnknown_080DD288
	str r0, [r5, #0x48]
	ldr r0, _0805FA08  @ gUnknown_085D5E28
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0805FA0C  @ gUnknown_085D5D20
	str r0, [r5, #0x54]
	ldr r0, _0805FA10  @ gUnknown_085D5DA4
	str r0, [r5, #0x58]
	bl sub_80551B0
	ldr r0, _0805FA14  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805FA22
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0805FA18
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0805FA22
	.align 2, 0
_0805F9FC: .4byte gUnknown_0201774C
_0805FA00: .4byte gUnknown_085D5D08
_0805FA04: .4byte gUnknown_080DD288
_0805FA08: .4byte gUnknown_085D5E28
_0805FA0C: .4byte gUnknown_085D5D20
_0805FA10: .4byte gUnknown_085D5DA4
_0805FA14: .4byte gUnknown_0203E120
_0805FA18:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805FA22:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805FA28
sub_805FA28: @ 0x0805FA28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	blt _0805FAB0
	ldr r6, [r7, #0x4c]
	ldr r0, [r7, #0x50]
	mov r8, r0
	ldr r0, [r7, #0x54]
	ldr r4, [r7, #0x58]
	lsls r5, r5, #2
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r5, r4
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r6, r5, r6
	ldr r1, [r6]
	add r5, r8
	ldr r2, [r5]
	bl sub_8055670
	ldr r0, _0805FA90  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805FACE
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	adds r1, r0, #0
	cmp r1, #0
	bne _0805FA98
	ldr r0, _0805FA94  @ gBG1TilemapBuffer
	b _0805FA9C
	.align 2, 0
_0805FA90: .4byte gUnknown_0203E120
_0805FA94: .4byte gBG1TilemapBuffer
_0805FA98:
	ldr r0, _0805FAAC  @ gUnknown_020234E2
	movs r1, #0
_0805FA9C:
	str r1, [sp]
	movs r1, #3
	movs r2, #0x14
	movs r3, #0
	bl FillBGRect
	b _0805FACE
	.align 2, 0
_0805FAAC: .4byte gUnknown_020234E2
_0805FAB0:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _0805FACE
	bl ClearBG1
	ldr r1, _0805FADC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_Delete
_0805FACE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FADC: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimPurge
StartSpellAnimPurge: @ 0x0805FAE0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805FB1C  @ gUnknown_085D5EAC
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r6, #0
	strh r6, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	ldr r0, _0805FB20  @ gUnknown_02020044
	str r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FB1C: .4byte gUnknown_085D5EAC
_0805FB20: .4byte gUnknown_02020044

	THUMB_FUNC_START sub_805FB24
sub_805FB24: @ 0x0805FB24
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _0805FB40  @ gUnknown_02020044
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805FB44
	adds r1, #0xff
	movs r0, #0xfe
	bl sub_80729A4
	b _0805FB4E
	.align 2, 0
_0805FB40: .4byte gUnknown_02020044
_0805FB44:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0xff
	bl sub_80729A4
_0805FB4E:
	ldr r1, _0805FB5C  @ gUnknown_02020044
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0805FB5C: .4byte gUnknown_02020044

	THUMB_FUNC_START sub_805FB60
sub_805FB60: @ 0x0805FB60
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r4, r0, #0
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	movs r7, #0
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0805FB8E
	ldr r0, [r6, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0805FB8E:
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	adds r0, r4, #1
	cmp r1, r0
	bne _0805FBB0
	adds r0, r5, #0
	movs r1, #4
	bl StartSpellBG_FLASH
	adds r0, r5, #0
	bl sub_805FC90
	adds r0, r5, #0
	bl sub_805FD5C
	movs r0, #0x30
	b _0805FBD6
_0805FBB0:
	adds r0, r4, #0
	adds r0, #0x15
	cmp r1, r0
	bne _0805FBC4
	adds r0, r5, #0
	movs r1, #4
	bl StartSpellBG_FLASH
	movs r0, #0xa0
	b _0805FBD6
_0805FBC4:
	adds r0, r4, #0
	adds r0, #0x29
	cmp r1, r0
	bne _0805FBDE
	adds r0, r5, #0
	movs r1, #4
	bl StartSpellBG_FLASH
	movs r0, #0x70
_0805FBD6:
	movs r1, #0
	bl sub_805FB24
	b _0805FC88
_0805FBDE:
	adds r0, r4, #0
	adds r0, #0x3d
	cmp r1, r0
	bne _0805FC12
	adds r0, r5, #0
	movs r1, #4
	bl StartSpellBG_FLASH
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xa
	movs r3, #0
	bl sub_805BA1C
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	adds r0, r1, #0
	movs r3, #1
	bl sub_80729A4
	b _0805FC88
_0805FC12:
	adds r0, r4, #0
	adds r0, #0x5e
	cmp r1, r0
	bne _0805FC58
	adds r0, r5, #0
	movs r1, #4
	bl StartSpellBG_FLASH
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, r6, #0
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldr r0, _0805FC54  @ 0x00000101
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805FC88
	adds r0, r5, #0
	bl sub_8072450
	b _0805FC88
	.align 2, 0
_0805FC54: .4byte 0x00000101
_0805FC58:
	adds r0, r4, #0
	adds r0, #0x69
	cmp r1, r0
	bne _0805FC72
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x14
	movs r3, #8
	bl sub_805BA1C
	b _0805FC88
_0805FC72:
	adds r0, r4, #0
	adds r0, #0x71
	cmp r1, r0
	bne _0805FC88
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_0805FC88:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805FC90
sub_805FC90: @ 0x0805FC90
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805FCC8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805FCCC  @ gUnknown_085D5EC4
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0805FCD0  @ gUnknown_080DD328
	str r1, [r0, #0x48]
	ldr r1, _0805FCD4  @ gUnknown_085D614C
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _0805FCD8  @ gUnknown_085D5EDC
	str r1, [r0, #0x54]
	ldr r1, _0805FCDC  @ gUnknown_085D6014
	str r1, [r0, #0x58]
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805FCC8: .4byte gUnknown_0201774C
_0805FCCC: .4byte gUnknown_085D5EC4
_0805FCD0: .4byte gUnknown_080DD328
_0805FCD4: .4byte gUnknown_085D614C
_0805FCD8: .4byte gUnknown_085D5EDC
_0805FCDC: .4byte gUnknown_085D6014

	THUMB_FUNC_START sub_805FCE0
sub_805FCE0: @ 0x0805FCE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	blt _0805FD2E
	ldr r6, [r7, #0x4c]
	ldr r0, [r7, #0x50]
	mov r8, r0
	ldr r0, [r7, #0x54]
	ldr r4, [r7, #0x58]
	lsls r5, r5, #2
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r5, r4
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r6, r5, r6
	ldr r1, [r6]
	add r5, r8
	ldr r2, [r5]
	bl sub_8055670
	b _0805FD4C
_0805FD2E:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _0805FD4C
	bl ClearBG1
	ldr r1, _0805FD58  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_Delete
_0805FD4C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FD58: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805FD5C
sub_805FD5C: @ 0x0805FD5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805FD88  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805FD8C  @ gUnknown_085D6284
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r2, #0
	strh r2, [r0, #0x2c]
	movs r1, #7
	str r1, [r0, #0x44]
	strh r2, [r0, #0x2e]
	movs r1, #6
	str r1, [r0, #0x48]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805FD88: .4byte gUnknown_0201774C
_0805FD8C: .4byte gUnknown_085D6284

	THUMB_FUNC_START sub_805FD90
sub_805FD90: @ 0x0805FD90
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x44]
	cmp r0, r1
	ble _0805FDEC
	movs r0, #0
	strh r0, [r5, #0x2c]
	ldr r2, _0805FDF4  @ gUnknown_085D62A4
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	lsls r1, r0, #3
	adds r1, r1, r2
	ldr r4, [r1]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [r5, #0x60]
	adds r1, r4, #0
	bl sub_805FDFC
	adds r0, r4, #0
	movs r1, #1
	bl sub_805FB24
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x48]
	cmp r0, r1
	ble _0805FDEC
	ldr r1, _0805FDF8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0805FDEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805FDF4: .4byte gUnknown_085D62A4
_0805FDF8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_805FDFC
sub_805FDFC: @ 0x0805FDFC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r1, _0805FE54  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805FE58  @ gUnknown_085D62DC
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	ldr r3, _0805FE5C  @ gUnknown_0866F58C
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	strh r6, [r0, #2]
	mov r1, r8
	strh r1, [r0, #4]
	ldr r0, _0805FE60  @ gUnknown_0866F2B4
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0805FE64  @ gUnknown_0866EFF0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805FE54: .4byte gUnknown_0201774C
_0805FE58: .4byte gUnknown_085D62DC
_0805FE5C: .4byte gUnknown_0866F58C
_0805FE60: .4byte gUnknown_0866F2B4
_0805FE64: .4byte gUnknown_0866EFF0

	THUMB_FUNC_START sub_805FE68
sub_805FE68: @ 0x0805FE68
	push {lr}
	ldr r0, [r0, #0x60]
	bl AIS_Free
	ldr r1, _0805FE7C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0805FE7C: .4byte gUnknown_0201774C

	THUMB_FUNC_START nullsub_41
nullsub_41: @ 0x0805FE80
	bx lr

	THUMB_FUNC_START StartSpellAnimDivine
StartSpellAnimDivine: @ 0x0805FE84
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805FEBC  @ gUnknown_085D62FC
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805FEBC: .4byte gUnknown_085D62FC

	THUMB_FUNC_START DivineSfxLoop
DivineSfxLoop: @ 0x0805FEC0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r3, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #1
	bne _0805FF04
	ldr r0, _0805FF00  @ 0x00000127
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	bl sub_805FFB0
	ldr r0, [r4, #0x5c]
	bl sub_80601E0
	b _0805FFAA
	.align 2, 0
_0805FF00: .4byte 0x00000127
_0805FF04:
	cmp r2, #0x14
	bne _0805FF18
	movs r0, #0x94
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _0805FF44
_0805FF18:
	cmp r2, #0x32
	bne _0805FF28
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _0805FFAA
_0805FF28:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r3, #0
	adds r0, #0x46
	cmp r1, r0
	bne _0805FF50
	adds r0, r5, #0
	bl sub_8060034
	ldr r0, _0805FF4C  @ 0x00000129
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
_0805FF44:
	movs r3, #1
	bl sub_80729A4
	b _0805FFAA
	.align 2, 0
_0805FF4C: .4byte 0x00000129
_0805FF50:
	adds r0, r3, #0
	adds r0, #0x49
	cmp r1, r0
	bne _0805FF62
	ldr r0, [r4, #0x5c]
	movs r1, #0xa
	bl StartSpellBG_FLASH
	b _0805FFAA
_0805FF62:
	adds r0, r3, #0
	adds r0, #0x4b
	cmp r1, r0
	bne _0805FF90
	adds r0, r5, #0
	bl sub_80600B8
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805FFAA
	adds r0, r5, #0
	bl sub_8072450
	b _0805FFAA
_0805FF90:
	adds r0, r3, #0
	adds r0, #0x5a
	cmp r1, r0
	beq _0805FFAA
	cmp r2, #0x64
	bne _0805FFAA
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0805FFAA:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_805FFB0
sub_805FFB0: @ 0x0805FFB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08060004  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060008  @ gUnknown_085D6314
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0806000C  @ gUnknown_080DD4D4
	str r0, [r5, #0x48]
	ldr r0, _08060010  @ gUnknown_085D637C
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08060014  @ gUnknown_085D632C
	str r0, [r5, #0x54]
	ldr r0, _08060018  @ gUnknown_08641D84
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _0806001C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806002A
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08060020
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _0806002A
	.align 2, 0
_08060004: .4byte gUnknown_0201774C
_08060008: .4byte gUnknown_085D6314
_0806000C: .4byte gUnknown_080DD4D4
_08060010: .4byte gUnknown_085D637C
_08060014: .4byte gUnknown_085D632C
_08060018: .4byte gUnknown_08641D84
_0806001C: .4byte gUnknown_0203E120
_08060020:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0806002A:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8060034
sub_8060034: @ 0x08060034
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08060088  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806008C  @ gUnknown_085D6314
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _08060090  @ gUnknown_080DD542
	str r0, [r5, #0x48]
	ldr r0, _08060094  @ gUnknown_085D63D8
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08060098  @ gUnknown_085D63CC
	str r0, [r5, #0x54]
	ldr r0, _0806009C  @ gUnknown_08641D84
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _080600A0  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080600AE
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080600A4
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _080600AE
	.align 2, 0
_08060088: .4byte gUnknown_0201774C
_0806008C: .4byte gUnknown_085D6314
_08060090: .4byte gUnknown_080DD542
_08060094: .4byte gUnknown_085D63D8
_08060098: .4byte gUnknown_085D63CC
_0806009C: .4byte gUnknown_08641D84
_080600A0: .4byte gUnknown_0203E120
_080600A4:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_080600AE:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80600B8
sub_80600B8: @ 0x080600B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0806010C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060110  @ gUnknown_085D6314
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _08060114  @ gUnknown_080DD550
	str r0, [r5, #0x48]
	ldr r0, _08060118  @ gUnknown_085D6438
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0806011C  @ gUnknown_085D63E4
	str r0, [r5, #0x54]
	ldr r0, _08060120  @ gUnknown_08641D64
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _08060124  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08060132
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08060128
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _08060132
	.align 2, 0
_0806010C: .4byte gUnknown_0201774C
_08060110: .4byte gUnknown_085D6314
_08060114: .4byte gUnknown_080DD550
_08060118: .4byte gUnknown_085D6438
_0806011C: .4byte gUnknown_085D63E4
_08060120: .4byte gUnknown_08641D64
_08060124: .4byte gUnknown_0203E120
_08060128:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_08060132:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806013C
sub_806013C: @ 0x0806013C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _080601B4
	ldr r5, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, [r7, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r4, r5
	ldr r1, [r5]
	adds r4, r4, r6
	ldr r2, [r4]
	bl sub_8055670
	ldr r0, _08060194  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080601D2
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	adds r1, r0, #0
	cmp r1, #0
	bne _0806019C
	ldr r0, _08060198  @ gBG1TilemapBuffer
	b _080601A0
	.align 2, 0
_08060194: .4byte gUnknown_0203E120
_08060198: .4byte gBG1TilemapBuffer
_0806019C:
	ldr r0, _080601B0  @ gUnknown_020234E2
	movs r1, #0
_080601A0:
	str r1, [sp]
	movs r1, #3
	movs r2, #0x14
	movs r3, #0
	bl FillBGRect
	b _080601D2
	.align 2, 0
_080601B0: .4byte gUnknown_020234E2
_080601B4:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _080601D2
	bl ClearBG1
	ldr r1, _080601DC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_080601D2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080601DC: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80601E0
sub_80601E0: @ 0x080601E0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08060220  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060224  @ gUnknown_085D648C
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r3, _08060228  @ gUnknown_08646510
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r6, r0, #0
	str r6, [r4, #0x60]
	adds r0, r5, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806022C
	ldrh r0, [r6, #2]
	subs r0, #6
	b _08060230
	.align 2, 0
_08060220: .4byte gUnknown_0201774C
_08060224: .4byte gUnknown_085D648C
_08060228: .4byte gUnknown_08646510
_0806022C:
	ldrh r0, [r6, #2]
	adds r0, #6
_08060230:
	strh r0, [r6, #2]
	ldr r0, _0806024C  @ gUnknown_08645F44
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08060250  @ gUnknown_08645DD8
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806024C: .4byte gUnknown_08645F44
_08060250: .4byte gUnknown_08645DD8

	THUMB_FUNC_START sub_8060254
sub_8060254: @ 0x08060254
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2c
	bne _0806027A
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _08060280  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806027A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060280: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8060284
sub_8060284: @ 0x08060284
	bx lr

	THUMB_FUNC_START nullsub_40
nullsub_40: @ 0x08060288
	bx lr

	THUMB_FUNC_START sub_806028C
sub_806028C: @ 0x0806028C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080602C4  @ gUnknown_085D64A4
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080602C4: .4byte gUnknown_085D64A4

	THUMB_FUNC_START sub_80602C8
sub_80602C8: @ 0x080602C8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r4, r0, #0
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	movs r7, #0
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080602F6
	ldr r0, [r6, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_080602F6:
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	adds r0, r4, #1
	cmp r1, r0
	bne _0806034C
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl sub_805BA1C
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x50
	movs r2, #0xf
	movs r3, #0x10
	bl sub_805BA1C
	ldr r0, [r6, #0x5c]
	bl sub_8060440
	ldr r0, [r6, #0x5c]
	bl sub_8060790
	movs r0, #0x9c
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x78
	movs r3, #0
	bl sub_80729A4
	b _08060438
_0806034C:
	adds r0, r4, #0
	adds r0, #0x46
	cmp r1, r0
	bne _0806037A
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x2a
	movs r2, #0xf
	movs r3, #0
	bl sub_805B400
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0x1e
	bl sub_805F838
	adds r0, r5, #0
	movs r1, #0x2b
	movs r2, #0
	bl sub_805B93C
	b _08060438
_0806037A:
	adds r0, r4, #0
	adds r0, #0x78
	cmp r1, r0
	bne _0806038A
	adds r0, r5, #0
	bl sub_80604B0
	b _08060438
_0806038A:
	adds r0, r4, #0
	adds r0, #0x7d
	cmp r1, r0
	bne _080603A8
	ldr r0, _080603A4  @ 0x00000139
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	b _08060438
	.align 2, 0
_080603A4: .4byte 0x00000139
_080603A8:
	adds r0, r4, #0
	adds r0, #0x97
	cmp r1, r0
	bne _080603B8
	ldr r0, [r6, #0x5c]
	bl sub_80605E8
	b _08060438
_080603B8:
	adds r0, r4, #0
	adds r0, #0xe2
	cmp r1, r0
	bne _08060400
	ldr r0, _080603FC  @ 0x000002E2
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	movs r1, #0xa
	bl StartSpellBG_FLASH
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, r6, #0
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _08060438
	adds r0, r5, #0
	bl sub_8072450
	b _08060438
	.align 2, 0
_080603FC: .4byte 0x000002E2
_08060400:
	adds r0, r4, #0
	adds r0, #0xec
	cmp r1, r0
	bne _08060420
	adds r0, r5, #0
	bl sub_8060514
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0xa
	movs r3, #0x10
	bl sub_805BA1C
	b _08060438
_08060420:
	movs r2, #0x87
	lsls r2, r2, #1
	adds r0, r4, r2
	cmp r1, r0
	bne _08060438
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_08060438:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8060440
sub_8060440: @ 0x08060440
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08060494  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060498  @ gUnknown_085D64BC
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r2, #0
	strh r2, [r0, #0x2c]
	str r2, [r0, #0x44]
	ldr r1, _0806049C  @ gUnknown_080DD5D2
	str r1, [r0, #0x48]
	ldr r1, _080604A0  @ gUnknown_085D64D4
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _080604A4  @ gUnknown_085D6540
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	ldr r0, _080604A8  @ gUnknown_08636640
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r2, _080604AC  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060494: .4byte gUnknown_0201774C
_08060498: .4byte gUnknown_085D64BC
_0806049C: .4byte gUnknown_080DD5D2
_080604A0: .4byte gUnknown_085D64D4
_080604A4: .4byte gUnknown_085D6540
_080604A8: .4byte gUnknown_08636640
_080604AC: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_80604B0
sub_80604B0: @ 0x080604B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080604FC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060500  @ gUnknown_085D64BC
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r2, #0
	strh r2, [r0, #0x2c]
	str r2, [r0, #0x44]
	ldr r1, _08060504  @ gUnknown_080DD5D8
	str r1, [r0, #0x48]
	ldr r1, _08060508  @ gUnknown_085D64D4
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _0806050C  @ gUnknown_085D6540
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	ldr r0, _08060510  @ gUnknown_0864E790
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	movs r0, #1
	movs r1, #0xc
	movs r2, #6
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080604FC: .4byte gUnknown_0201774C
_08060500: .4byte gUnknown_085D64BC
_08060504: .4byte gUnknown_080DD5D8
_08060508: .4byte gUnknown_085D64D4
_0806050C: .4byte gUnknown_085D6540
_08060510: .4byte gUnknown_0864E790

	THUMB_FUNC_START sub_8060514
sub_8060514: @ 0x08060514
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08060554  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060558  @ gUnknown_085D64BC
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r2, #0
	strh r2, [r0, #0x2c]
	str r2, [r0, #0x44]
	ldr r1, _0806055C  @ gUnknown_080DD67A
	str r1, [r0, #0x48]
	ldr r1, _08060560  @ gUnknown_085D64D4
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _08060564  @ gUnknown_085D6540
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	ldr r0, _08060568  @ gUnknown_0864E7B0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060554: .4byte gUnknown_0201774C
_08060558: .4byte gUnknown_085D64BC
_0806055C: .4byte gUnknown_080DD67A
_08060560: .4byte gUnknown_085D64D4
_08060564: .4byte gUnknown_085D6540
_08060568: .4byte gUnknown_0864E7B0

	THUMB_FUNC_START sub_806056C
sub_806056C: @ 0x0806056C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080605BC
	ldr r7, [r4, #0x4c]
	ldr r0, [r4, #0x50]
	mov r8, r0
	ldr r0, [r4, #0x54]
	lsls r5, r1, #2
	adds r6, r5, r0
	ldr r0, [r4, #0x58]
	ldr r2, [r6]
	cmp r0, r2
	beq _080605A6
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r2, #0
	bl SomeImageStoringRoutine_SpellAnim2
_080605A6:
	ldr r0, [r6]
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	adds r1, r5, r7
	ldr r1, [r1]
	mov r3, r8
	adds r2, r5, r3
	ldr r2, [r2]
	bl sub_8055670
	b _080605DA
_080605BC:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080605DA
	bl ClearBG1
	ldr r1, _080605E4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080605DA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080605E4: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80605E8
sub_80605E8: @ 0x080605E8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08060640  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060644  @ gUnknown_085D65AC
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	adds r0, r5, #0
	bl GetCoreAIStruct
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r3, _08060648  @ gUnknown_085D4F90
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r6, r0, #0
	str r6, [r4, #0x60]
	ldrh r1, [r6, #8]
	ldr r0, _0806064C  @ 0x0000F3FF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #8]
	adds r0, r5, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08060650
	ldrh r0, [r6, #2]
	subs r0, #8
	b _08060654
	.align 2, 0
_08060640: .4byte gUnknown_0201774C
_08060644: .4byte gUnknown_085D65AC
_08060648: .4byte gUnknown_085D4F90
_0806064C: .4byte 0x0000F3FF
_08060650:
	ldrh r0, [r6, #2]
	adds r0, #8
_08060654:
	strh r0, [r6, #2]
	ldrh r0, [r6, #4]
	subs r0, #0x10
	strh r0, [r6, #4]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8060664
sub_8060664: @ 0x08060664
	push {lr}
	ldr r2, _08060678  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r0, [r0, #0x60]
	bl AIS_Free
	pop {r0}
	bx r0
	.align 2, 0
_08060678: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806067C
sub_806067C: @ 0x0806067C
	push {r4, lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x60]
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	movs r4, #0
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #1
	bne _080606C0
	ldr r0, _080606B4  @ gUnknown_086517DC
	str r0, [r2, #0x24]
	str r0, [r2, #0x20]
	strh r4, [r2, #6]
	movs r0, #0xa
	strh r0, [r1, #0x2e]
	ldr r0, _080606B8  @ gUnknown_0865163C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080606BC  @ gUnknown_086508DC
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	b _080606D0
	.align 2, 0
_080606B4: .4byte gUnknown_086517DC
_080606B8: .4byte gUnknown_0865163C
_080606BC: .4byte gUnknown_086508DC
_080606C0:
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	cmp r3, r0
	bne _080606D0
	strh r4, [r1, #0x2c]
	adds r0, r1, #0
	bl Proc_ClearNativeCallback
_080606D0:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80606D8
sub_80606D8: @ 0x080606D8
	push {r4, lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x60]
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	movs r4, #0
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #1
	bne _0806071C
	ldr r0, _08060710  @ gUnknown_08651AE4
	str r0, [r2, #0x24]
	str r0, [r2, #0x20]
	strh r4, [r2, #6]
	movs r0, #0xa
	strh r0, [r1, #0x2e]
	ldr r0, _08060714  @ gUnknown_0865163C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08060718  @ gUnknown_08650DA8
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	b _0806072C
	.align 2, 0
_08060710: .4byte gUnknown_08651AE4
_08060714: .4byte gUnknown_0865163C
_08060718: .4byte gUnknown_08650DA8
_0806071C:
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	cmp r3, r0
	bne _0806072C
	strh r4, [r1, #0x2c]
	adds r0, r1, #0
	bl Proc_ClearNativeCallback
_0806072C:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8060734
sub_8060734: @ 0x08060734
	push {r4, lr}
	adds r1, r0, #0
	ldr r2, [r1, #0x60]
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	movs r4, #0
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #1
	bne _08060778
	ldr r0, _0806076C  @ gUnknown_08651DE0
	str r0, [r2, #0x24]
	str r0, [r2, #0x20]
	strh r4, [r2, #6]
	movs r0, #0xa
	strh r0, [r1, #0x2e]
	ldr r0, _08060770  @ gUnknown_0865163C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08060774  @ gUnknown_08651240
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	b _08060788
	.align 2, 0
_0806076C: .4byte gUnknown_08651DE0
_08060770: .4byte gUnknown_0865163C
_08060774: .4byte gUnknown_08651240
_08060778:
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	cmp r3, r0
	bne _08060788
	strh r4, [r1, #0x2c]
	adds r0, r1, #0
	bl Proc_ClearNativeCallback
_08060788:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8060790
sub_8060790: @ 0x08060790
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080607C8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080607CC  @ gUnknown_085D65F4
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	movs r1, #0x2c
	strh r1, [r0, #0x30]
	ldr r0, _080607D0  @ gUnknown_0862D424
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080607D4  @ gUnknown_0862C82C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080607C8: .4byte gUnknown_0201774C
_080607CC: .4byte gUnknown_085D65F4
_080607D0: .4byte gUnknown_0862D424
_080607D4: .4byte gUnknown_0862C82C

	THUMB_FUNC_START sub_80607D8
sub_80607D8: @ 0x080607D8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _0806082A
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r0, _08060830  @ gUnknown_085D660C
	movs r1, #0x2e
	ldrsh r2, [r4, r1]
	lsls r1, r2, #2
	adds r1, r1, r0
	lsls r2, r2, #1
	adds r2, #1
	lsls r2, r2, #1
	adds r2, r2, r0
	ldr r0, [r4, #0x5c]
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_8060838
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	bne _0806082A
	ldr r1, _08060834  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806082A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060830: .4byte gUnknown_085D660C
_08060834: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8060838
sub_8060838: @ 0x08060838
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r1, _08060880  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060884  @ gUnknown_085D6624
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r3, _08060888  @ gUnknown_0862D6E0
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	strh r6, [r0, #2]
	mov r1, r8
	strh r1, [r0, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060880: .4byte gUnknown_0201774C
_08060884: .4byte gUnknown_085D6624
_08060888: .4byte gUnknown_0862D6E0

	THUMB_FUNC_START sub_806088C
sub_806088C: @ 0x0806088C
	push {lr}
	ldr r2, _080608A0  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r0, [r0, #0x60]
	bl AIS_Free
	pop {r0}
	bx r0
	.align 2, 0
_080608A0: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimFenrir
StartSpellAnimFenrir: @ 0x080608A4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080608DC  @ gUnknown_085D6644
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080608DC: .4byte gUnknown_085D6644

	THUMB_FUNC_START sub_80608E0
sub_80608E0: @ 0x080608E0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r4, r0, #0
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	movs r7, #0
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806090E
	ldr r0, [r6, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0806090E:
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	adds r0, r4, #1
	cmp r1, r0
	bne _08060984
	adds r0, r5, #0
	movs r1, #0x64
	bl sub_8060A9C
	adds r0, r5, #0
	movs r1, #0x64
	bl sub_8060B7C
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x64
	movs r2, #2
	adds r3, r4, #0
	bl sub_805B400
	adds r0, r5, #0
	movs r1, #0x69
	movs r2, #0
	bl sub_805B93C
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl sub_805BA1C
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x46
	movs r2, #0xf
	movs r3, #0x10
	bl sub_805BA1C
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, #0
	movs r2, #0x78
	movs r3, #0
	bl sub_80729A4
	b _08060A94
_08060984:
	adds r0, r4, #0
	adds r0, #0x28
	cmp r1, r0
	bne _0806099C
	adds r0, r5, #0
	movs r1, #0x4a
	bl sub_8060C18
	ldr r0, _08060998  @ 0x00000131
	b _080609F4
	.align 2, 0
_08060998: .4byte 0x00000131
_0806099C:
	adds r0, r4, #0
	adds r0, #0x6e
	cmp r1, r0
	bne _080609AC
	adds r0, r5, #0
	bl sub_8060CAC
	b _08060A94
_080609AC:
	adds r0, r4, #0
	adds r0, #0x6f
	cmp r1, r0
	beq _080609F0
	adds r0, r4, #0
	adds r0, #0x7d
	cmp r1, r0
	beq _080609F0
	adds r0, r4, #0
	adds r0, #0x8b
	cmp r1, r0
	beq _080609F0
	adds r0, r4, #0
	adds r0, #0x99
	cmp r1, r0
	beq _080609F0
	adds r0, r4, #0
	adds r0, #0xa7
	cmp r1, r0
	beq _080609F0
	adds r0, r4, #0
	adds r0, #0xb5
	cmp r1, r0
	beq _080609F0
	adds r0, r4, #0
	adds r0, #0xc3
	cmp r1, r0
	beq _080609F0
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	adds r0, r4, #0
	adds r0, #0xd1
	cmp r1, r0
	bne _08060A04
_080609F0:
	movs r0, #0x99
	lsls r0, r0, #1
_080609F4:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	b _08060A94
_08060A04:
	adds r0, r4, #0
	adds r0, #0xee
	cmp r1, r0
	bne _08060A50
	adds r0, r5, #0
	movs r1, #0xa
	bl StartSpellBG_FLASH
	adds r0, r5, #0
	bl sub_8060E90
	ldrh r1, [r5, #0x10]
	movs r0, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, r6, #0
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldr r0, _08060A4C  @ 0x00000133
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	ldrb r0, [r4]
	cmp r0, #0
	bne _08060A94
	adds r0, r5, #0
	bl sub_8072450
	b _08060A94
	.align 2, 0
_08060A4C: .4byte 0x00000133
_08060A50:
	adds r0, r4, #0
	adds r0, #0xf8
	cmp r1, r0
	bne _08060A72
	adds r0, r5, #0
	bl sub_8060D3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x12
	movs r2, #8
	movs r3, #0x10
	bl sub_805BA1C
	b _08060A94
_08060A72:
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r4, r2
	cmp r1, r0
	beq _08060A94
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r4, r3
	cmp r1, r0
	bne _08060A94
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_08060A94:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8060A9C
sub_8060A9C: @ 0x08060A9C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08060B10  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060B14  @ gUnknown_085D665C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	ldr r0, _08060B18  @ gUnknown_08651DF4
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl ClearBG1
	ldr r0, _08060B1C  @ gUnknown_08652734
	ldr r4, _08060B20  @ gUnknown_02019790
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08060B24  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x20
	movs r3, #0x20
	bl sub_8070E94
	movs r0, #2
	bl BG_EnableSyncByMask
	bl sub_80551B0
	ldr r2, _08060B28  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08060B10: .4byte gUnknown_0201774C
_08060B14: .4byte gUnknown_085D665C
_08060B18: .4byte gUnknown_08651DF4
_08060B1C: .4byte gUnknown_08652734
_08060B20: .4byte gUnknown_02019790
_08060B24: .4byte gBG1TilemapBuffer
_08060B28: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_8060B2C
sub_8060B2C: @ 0x08060B2C
	push {lr}
	bl ClearBG1
	ldr r1, _08060B44  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	pop {r0}
	bx r0
	.align 2, 0
_08060B44: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8060B48
sub_8060B48: @ 0x08060B48
	push {lr}
	adds r2, r0, #0
	ldr r1, _08060B78  @ gLCDControlBuffer
	ldrh r0, [r1, #0x22]
	adds r0, #1
	strh r0, [r1, #0x22]
	ldrh r0, [r1, #0x20]
	subs r0, #1
	strh r0, [r1, #0x20]
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	ble _08060B72
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_08060B72:
	pop {r0}
	bx r0
	.align 2, 0
_08060B78: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_8060B7C
sub_8060B7C: @ 0x08060B7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08060BB4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060BB8  @ gUnknown_085D667C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	strh r5, [r0, #0x30]
	str r1, [r0, #0x44]
	ldr r1, _08060BBC  @ gUnknown_080DD70C
	str r1, [r0, #0x48]
	ldr r1, _08060BC0  @ gUnknown_08652554
	str r1, [r0, #0x4c]
	adds r0, r1, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08060BB4: .4byte gUnknown_0201774C
_08060BB8: .4byte gUnknown_085D667C
_08060BBC: .4byte gUnknown_080DD70C
_08060BC0: .4byte gUnknown_08652554

	THUMB_FUNC_START sub_8060BC4
sub_8060BC4: @ 0x08060BC4
	ldr r1, _08060BD0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08060BD0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8060BD4
sub_8060BD4: @ 0x08060BD4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _08060BF8
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
_08060BF8:
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _08060C10
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08060C10:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8060C18
sub_8060C18: @ 0x08060C18
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, _08060C64  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060C68  @ gUnknown_085D66A4
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	strh r6, [r4, #0x2e]
	ldr r3, _08060C6C  @ gUnknown_0865C7D4
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _08060C70  @ gUnknown_0865BAB8
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08060C74  @ gUnknown_0865AF3C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060C64: .4byte gUnknown_0201774C
_08060C68: .4byte gUnknown_085D66A4
_08060C6C: .4byte gUnknown_0865C7D4
_08060C70: .4byte gUnknown_0865BAB8
_08060C74: .4byte gUnknown_0865AF3C

	THUMB_FUNC_START sub_8060C78
sub_8060C78: @ 0x08060C78
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _08060CA2
	ldr r0, _08060CA8  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08060CA2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060CA8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8060CAC
sub_8060CAC: @ 0x08060CAC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08060D10  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060D14  @ gUnknown_085D66BC
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r1, #0
	strh r1, [r5, #0x2c]
	str r1, [r5, #0x44]
	ldr r0, _08060D18  @ gUnknown_080DD76A
	str r0, [r5, #0x48]
	ldr r0, _08060D1C  @ gUnknown_085D67A0
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08060D20  @ gUnknown_085D66D4
	str r0, [r5, #0x54]
	str r1, [r5, #0x58]
	ldr r0, _08060D24  @ gUnknown_086568F4
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _08060D28  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08060D36
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08060D2C
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _08060D36
	.align 2, 0
_08060D10: .4byte gUnknown_0201774C
_08060D14: .4byte gUnknown_085D66BC
_08060D18: .4byte gUnknown_080DD76A
_08060D1C: .4byte gUnknown_085D67A0
_08060D20: .4byte gUnknown_085D66D4
_08060D24: .4byte gUnknown_086568F4
_08060D28: .4byte gUnknown_0203E120
_08060D2C:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_08060D36:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8060D3C
sub_8060D3C: @ 0x08060D3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08060D98  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060D9C  @ gUnknown_085D66BC
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r1, #0
	strh r1, [r5, #0x2c]
	str r1, [r5, #0x44]
	ldr r0, _08060DA0  @ gUnknown_080DCD72
	str r0, [r5, #0x48]
	ldr r0, _08060DA4  @ gUnknown_085D55B4
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08060DA8  @ gUnknown_085D5560
	str r0, [r5, #0x54]
	str r1, [r5, #0x58]
	ldr r0, _08060DAC  @ gUnknown_08656914
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _08060DB0  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08060DBE
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08060DB4
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _08060DBE
	.align 2, 0
_08060D98: .4byte gUnknown_0201774C
_08060D9C: .4byte gUnknown_085D66BC
_08060DA0: .4byte gUnknown_080DCD72
_08060DA4: .4byte gUnknown_085D55B4
_08060DA8: .4byte gUnknown_085D5560
_08060DAC: .4byte gUnknown_08656914
_08060DB0: .4byte gUnknown_0203E120
_08060DB4:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_08060DBE:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8060DC4
sub_8060DC4: @ 0x08060DC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _08060E60
	ldr r7, [r4, #0x4c]
	ldr r0, [r4, #0x50]
	mov r8, r0
	ldr r0, [r4, #0x54]
	lsls r5, r1, #2
	adds r6, r5, r0
	ldr r0, [r4, #0x58]
	ldr r2, [r6]
	cmp r0, r2
	beq _08060E00
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r2, #0
	bl SomeImageStoringRoutine_SpellAnim2
_08060E00:
	ldr r0, [r6]
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	adds r1, r5, r7
	ldr r1, [r1]
	mov r3, r8
	adds r2, r5, r3
	ldr r2, [r2]
	bl sub_8055670
	ldr r0, _08060E3C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08060E7E
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	adds r1, r0, #0
	cmp r1, #0
	bne _08060E44
	ldr r0, _08060E40  @ gBG1TilemapBuffer
	str r1, [sp]
	movs r1, #3
	movs r2, #0x14
	movs r3, #0
	bl FillBGRect
	b _08060E54
	.align 2, 0
_08060E3C: .4byte gUnknown_0203E120
_08060E40: .4byte gBG1TilemapBuffer
_08060E44:
	ldr r0, _08060E5C  @ gUnknown_020234E2
	movs r1, #0
	str r1, [sp]
	movs r1, #3
	movs r2, #0x14
	movs r3, #0
	bl FillBGRect
_08060E54:
	movs r0, #2
	bl BG_EnableSyncByMask
	b _08060E7E
	.align 2, 0
_08060E5C: .4byte gUnknown_020234E2
_08060E60:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _08060E7E
	bl ClearBG1
	ldr r1, _08060E8C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08060E7E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060E8C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8060E90
sub_8060E90: @ 0x08060E90
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08060EC8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060ECC  @ gUnknown_085D686C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	ldr r0, _08060ED0  @ gUnknown_0865BAD8
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08060ED4  @ gUnknown_0865AF3C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060EC8: .4byte gUnknown_0201774C
_08060ECC: .4byte gUnknown_085D686C
_08060ED0: .4byte gUnknown_0865BAD8
_08060ED4: .4byte gUnknown_0865AF3C

	THUMB_FUNC_START sub_8060ED8
sub_8060ED8: @ 0x08060ED8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _08060F18
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x5c]
	ldr r2, [r4, #0x44]
	adds r1, r2, #0
	adds r2, #1
	str r2, [r4, #0x44]
	bl sub_8060F24
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _08060F18
	ldr r1, _08060F20  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08060F18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060F20: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8060F24
sub_8060F24: @ 0x08060F24
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, _08060F64  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08060F68  @ gUnknown_085D6884
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r6, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	movs r0, #0x1e
	strh r0, [r5, #0x2e]
	ldr r1, _08060F6C  @ gUnknown_085D689C
	movs r0, #7
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5, #0x44]
	movs r1, #0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08060F70
	cmp r0, #1
	beq _08060F78
	b _08060F84
	.align 2, 0
_08060F64: .4byte gUnknown_0201774C
_08060F68: .4byte gUnknown_085D6884
_08060F6C: .4byte gUnknown_085D689C
_08060F70:
	ldr r0, _08060F74  @ gUnknown_0865C77C
	b _08060F7A
	.align 2, 0
_08060F74: .4byte gUnknown_0865C77C
_08060F78:
	ldr r0, _08060FA0  @ gUnknown_0865C7A8
_08060F7A:
	movs r1, #0x78
	bl AIS_New
	adds r1, r0, #0
	str r1, [r5, #0x60]
_08060F84:
	movs r0, #0xa1
	lsls r0, r0, #6
	strh r0, [r1, #8]
	ldrh r0, [r6, #2]
	strh r0, [r1, #2]
	ldrh r0, [r6, #2]
	strh r0, [r5, #0x32]
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	ldrh r0, [r6, #4]
	strh r0, [r5, #0x3a]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08060FA0: .4byte gUnknown_0865C7A8

	THUMB_FUNC_START sub_8060FA4
sub_8060FA4: @ 0x08060FA4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, [r6, #0x60]
	movs r2, #0x96
	lsls r2, r2, #1
	movs r0, #0x2c
	ldrsh r3, [r6, r0]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl sub_8012DCC
	ldr r4, _0806101C  @ gSinLookup
	ldr r2, [r6, #0x44]
	lsls r1, r2, #1
	adds r1, r1, r4
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x40
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r4, #0
	ldrsh r1, [r2, r4]
	muls r0, r1, r0
	asrs r3, r3, #0xc
	ldrh r1, [r6, #0x32]
	adds r3, r3, r1
	strh r3, [r5, #2]
	asrs r0, r0, #0xc
	ldrh r2, [r6, #0x3a]
	adds r0, r0, r2
	strh r0, [r5, #4]
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	cmp r0, r1
	ble _08061014
	ldr r0, _08061020  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r6, #0x60]
	bl AIS_Free
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_08061014:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806101C: .4byte gSinLookup
_08061020: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimHeal
StartSpellAnimHeal: @ 0x08061024
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08061048  @ gUnknown_085D68BC
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061048: .4byte gUnknown_085D68BC

	THUMB_FUNC_START sub_806104C
sub_806104C: @ 0x0806104C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806107E
	ldr r0, [r4, #0x5c]
	bl sub_806196C
	movs r0, #0xb3
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _0806110A
_0806107E:
	cmp r0, #0x34
	bne _080610C6
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl sub_8061594
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl sub_8061774
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, [r4, #0x5c]
	movs r1, #1
	movs r2, #0xc
	movs r3, #0
	bl sub_806189C
	ldr r0, [r4, #0x5c]
	movs r1, #0x23
	movs r2, #0x19
	movs r3, #1
	bl sub_806189C
	movs r0, #0x87
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _0806110A
_080610C6:
	cmp r0, #0x37
	bne _080610D4
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	b _08061150
_080610D4:
	cmp r0, #0x71
	bne _08061118
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl sub_8061650
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl sub_80617E4
	ldr r0, [r4, #0x5c]
	movs r1, #1
	movs r2, #0xc
	movs r3, #0
	bl sub_806189C
	ldr r0, [r4, #0x5c]
	movs r1, #0x1d
	movs r2, #0x19
	movs r3, #1
	bl sub_806189C
	ldr r0, _08061114  @ 0x0000010F
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
_0806110A:
	movs r3, #1
	bl sub_80729A4
	b _08061150
	.align 2, 0
_08061114: .4byte 0x0000010F
_08061118:
	cmp r0, #0xa6
	bne _08061124
	adds r0, r5, #0
	bl sub_8052A0C
	b _08061150
_08061124:
	cmp r0, #0xb5
	bne _08061150
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r5, #0
	bl sub_805A2F0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq _0806114A
	ldrh r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r5, #0x10]
_0806114A:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061150:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START StartSpellAnimMend
StartSpellAnimMend: @ 0x08061158
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806117C  @ gUnknown_085D68D4
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806117C: .4byte gUnknown_085D68D4

	THUMB_FUNC_START sub_8061180
sub_8061180: @ 0x08061180
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080611B8
	ldr r0, [r4, #0x5c]
	bl sub_806196C
	movs r0, #0xb3
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _08061268
_080611B8:
	cmp r0, #0x34
	bne _08061200
	ldr r0, [r4, #0x5c]
	movs r1, #1
	bl sub_8061594
	ldr r0, [r4, #0x5c]
	movs r1, #1
	bl sub_8061774
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, [r4, #0x5c]
	movs r1, #1
	movs r2, #0xc
	movs r3, #0
	bl sub_806189C
	ldr r0, [r4, #0x5c]
	movs r1, #0x23
	movs r2, #0x19
	movs r3, #1
	bl sub_806189C
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _08061268
_08061200:
	cmp r0, #0x37
	bne _0806120E
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	b _080612B4
_0806120E:
	cmp r0, #0x71
	bne _0806121E
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _080612B4
_0806121E:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0x72
	cmp r1, r0
	bne _08061274
	ldr r0, [r4, #0x5c]
	movs r1, #1
	bl sub_8061650
	ldr r0, [r4, #0x5c]
	movs r1, #1
	bl sub_80617E4
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, [r4, #0x5c]
	movs r1, #1
	movs r2, #0xc
	movs r3, #0
	bl sub_806189C
	ldr r0, [r4, #0x5c]
	movs r1, #0x1d
	movs r2, #0x19
	movs r3, #1
	bl sub_806189C
	ldr r0, _08061270  @ 0x00000111
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
_08061268:
	movs r3, #1
	bl sub_80729A4
	b _080612B4
	.align 2, 0
_08061270: .4byte 0x00000111
_08061274:
	adds r0, r2, #0
	adds r0, #0xa6
	cmp r1, r0
	bne _08061284
	adds r0, r5, #0
	bl sub_8052A0C
	b _080612B4
_08061284:
	adds r0, r2, #0
	adds r0, #0xb5
	cmp r1, r0
	bne _080612B4
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r5, #0
	bl sub_805A2F0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq _080612AE
	ldrh r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r5, #0x10]
_080612AE:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080612B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START StartSpellAnimRecover
StartSpellAnimRecover: @ 0x080612BC
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080612E0  @ gUnknown_085D68EC
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080612E0: .4byte gUnknown_085D68EC

	THUMB_FUNC_START sub_80612E4
sub_80612E4: @ 0x080612E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806131C
	ldr r0, [r4, #0x5c]
	bl sub_806196C
	movs r0, #0xb3
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _080613CC
_0806131C:
	cmp r0, #0x34
	bne _08061364
	ldr r0, [r4, #0x5c]
	movs r1, #2
	bl sub_8061594
	ldr r0, [r4, #0x5c]
	movs r1, #2
	bl sub_8061774
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, [r4, #0x5c]
	movs r1, #1
	movs r2, #0xc
	movs r3, #0
	bl sub_806189C
	ldr r0, [r4, #0x5c]
	movs r1, #0x23
	movs r2, #0x19
	movs r3, #1
	bl sub_806189C
	movs r0, #0x89
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _080613CC
_08061364:
	cmp r0, #0x37
	bne _08061372
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	b _08061418
_08061372:
	cmp r0, #0x71
	bne _08061382
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _08061418
_08061382:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0x72
	cmp r1, r0
	bne _080613D8
	ldr r0, [r4, #0x5c]
	movs r1, #2
	bl sub_8061650
	ldr r0, [r4, #0x5c]
	movs r1, #2
	bl sub_80617E4
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, [r4, #0x5c]
	movs r1, #1
	movs r2, #0xc
	movs r3, #0
	bl sub_806189C
	ldr r0, [r4, #0x5c]
	movs r1, #0x1d
	movs r2, #0x19
	movs r3, #1
	bl sub_806189C
	ldr r0, _080613D4  @ 0x00000113
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
_080613CC:
	movs r3, #1
	bl sub_80729A4
	b _08061418
	.align 2, 0
_080613D4: .4byte 0x00000113
_080613D8:
	adds r0, r2, #0
	adds r0, #0xa6
	cmp r1, r0
	bne _080613E8
	adds r0, r5, #0
	bl sub_8052A0C
	b _08061418
_080613E8:
	adds r0, r2, #0
	adds r0, #0xb5
	cmp r1, r0
	bne _08061418
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r5, #0
	bl sub_805A2F0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq _08061412
	ldrh r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r5, #0x10]
_08061412:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061418:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8061420
sub_8061420: @ 0x08061420
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08061444  @ gUnknown_085D6904
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061444: .4byte gUnknown_085D6904

	THUMB_FUNC_START sub_8061448
sub_8061448: @ 0x08061448
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08061488
	ldr r0, [r4, #0x5c]
	bl sub_806196C
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl sub_8061ACC
	movs r0, #0xb3
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _08061540
_08061488:
	cmp r0, #0x34
	bne _080614D0
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl sub_8061594
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl sub_8061774
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, [r4, #0x5c]
	movs r1, #1
	movs r2, #0xc
	movs r3, #0
	bl sub_806189C
	ldr r0, [r4, #0x5c]
	movs r1, #0x23
	movs r2, #0x19
	movs r3, #1
	bl sub_806189C
	movs r0, #0x87
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _08061540
_080614D0:
	cmp r0, #0x37
	bne _080614DE
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	b _0806158C
_080614DE:
	cmp r0, #0x97
	bne _080614F6
	ldr r0, [r4, #0x5c]
	movs r1, #1
	bl sub_8061ACC
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _0806158C
_080614F6:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0xa1
	cmp r1, r0
	bne _0806154C
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl sub_8061650
	ldr r0, [r4, #0x5c]
	movs r1, #0
	bl sub_80617E4
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, [r4, #0x5c]
	movs r1, #1
	movs r2, #0xc
	movs r3, #0
	bl sub_806189C
	ldr r0, [r4, #0x5c]
	movs r1, #0x1d
	movs r2, #0x19
	movs r3, #1
	bl sub_806189C
	ldr r0, _08061548  @ 0x0000010F
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
_08061540:
	movs r3, #1
	bl sub_80729A4
	b _0806158C
	.align 2, 0
_08061548: .4byte 0x0000010F
_0806154C:
	adds r0, r2, #0
	adds r0, #0xd3
	cmp r1, r0
	bne _0806155C
	adds r0, r5, #0
	bl sub_8052A0C
	b _0806158C
_0806155C:
	adds r0, r2, #0
	adds r0, #0xdd
	cmp r1, r0
	bne _0806158C
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r5, #0
	bl sub_805A2F0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq _08061586
	ldrh r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r5, #0x10]
_08061586:
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806158C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8061594
sub_8061594: @ 0x08061594
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, _080615DC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080615E0  @ gUnknown_085D691C
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	cmp r6, #0
	beq _080615F4
	cmp r6, #2
	bhi _08061646
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	ldr r0, _080615E4  @ gUnknown_080DD8D2
	str r0, [r5, #0x48]
	ldr r0, _080615E8  @ gUnknown_08670D40
	str r0, [r5, #0x4c]
	ldr r0, _080615EC  @ gUnknown_086716A0
	str r0, [r5, #0x50]
	ldr r0, _080615F0  @ gUnknown_08670548
	movs r1, #0xa8
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim2
	b _08061646
	.align 2, 0
_080615DC: .4byte gUnknown_0201774C
_080615E0: .4byte gUnknown_085D691C
_080615E4: .4byte gUnknown_080DD8D2
_080615E8: .4byte gUnknown_08670D40
_080615EC: .4byte gUnknown_086716A0
_080615F0: .4byte gUnknown_08670548
_080615F4:
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0806162C  @ gUnknown_080DD8C6
	str r0, [r5, #0x48]
	ldr r0, _08061630  @ gUnknown_0866F774
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08061634  @ gUnknown_0866F5E4
	movs r1, #0x80
	lsls r1, r1, #3
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _08061638  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08061646
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806163C
	movs r0, #1
	movs r1, #0x18
	b _08061640
	.align 2, 0
_0806162C: .4byte gUnknown_080DD8C6
_08061630: .4byte gUnknown_0866F774
_08061634: .4byte gUnknown_0866F5E4
_08061638: .4byte gUnknown_0203E120
_0806163C:
	movs r0, #1
	movs r1, #0xe8
_08061640:
	movs r2, #0
	bl BG_SetPosition
_08061646:
	bl sub_80551B0
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8061650
sub_8061650: @ 0x08061650
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, _08061698  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806169C  @ gUnknown_085D691C
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r1, #0
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x29
	strb r1, [r0]
	cmp r6, #0
	beq _080616B0
	cmp r6, #2
	bhi _080616FA
	ldr r0, _080616A0  @ gUnknown_080DD8D8
	str r0, [r5, #0x48]
	ldr r0, _080616A4  @ gUnknown_08670D40
	str r0, [r5, #0x4c]
	ldr r0, _080616A8  @ gUnknown_086716A0
	str r0, [r5, #0x50]
	ldr r0, _080616AC  @ gUnknown_08670548
	movs r1, #0xa8
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim2
	b _080616FA
	.align 2, 0
_08061698: .4byte gUnknown_0201774C
_0806169C: .4byte gUnknown_085D691C
_080616A0: .4byte gUnknown_080DD8D8
_080616A4: .4byte gUnknown_08670D40
_080616A8: .4byte gUnknown_086716A0
_080616AC: .4byte gUnknown_08670548
_080616B0:
	ldr r0, _080616E0  @ gUnknown_080DD8CC
	str r0, [r5, #0x48]
	ldr r0, _080616E4  @ gUnknown_0866F774
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _080616E8  @ gUnknown_0866F5E4
	movs r1, #0x80
	lsls r1, r1, #3
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _080616EC  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080616FA
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080616F0
	movs r0, #1
	movs r1, #0xe8
	b _080616F4
	.align 2, 0
_080616E0: .4byte gUnknown_080DD8CC
_080616E4: .4byte gUnknown_0866F774
_080616E8: .4byte gUnknown_0866F5E4
_080616EC: .4byte gUnknown_0203E120
_080616F0:
	movs r0, #1
	movs r1, #0x18
_080616F4:
	movs r2, #0
	bl BG_SetPosition
_080616FA:
	bl sub_80551B0
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8061704
sub_8061704: @ 0x08061704
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _08061736
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r3, r4, #4
	subs r3, r3, r4
	lsls r3, r3, #4
	adds r1, r1, r3
	adds r2, r2, r3
	bl sub_805560C
	b _08061768
_08061736:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _08061768
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _08061750
	bl ClearBG1
	bl sub_805526C
_08061750:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r1, _08061770  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061768:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061770: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8061774
sub_8061774: @ 0x08061774
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0806179C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080617A0  @ gUnknown_085D6934
	movs r1, #3
	bl Proc_Create
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	cmp r5, #0
	bne _080617A8
	ldr r0, _080617A4  @ gUnknown_080DD8EE
	b _080617B6
	.align 2, 0
_0806179C: .4byte gUnknown_0201774C
_080617A0: .4byte gUnknown_085D6934
_080617A4: .4byte gUnknown_080DD8EE
_080617A8:
	cmp r5, #1
	bne _080617B4
	ldr r0, _080617B0  @ gUnknown_080DD972
	b _080617B6
	.align 2, 0
_080617B0: .4byte gUnknown_080DD972
_080617B4:
	ldr r0, _080617C0  @ gUnknown_080DD9A4
_080617B6:
	str r0, [r1, #0x48]
	cmp r5, #0
	bne _080617C8
	ldr r0, _080617C4  @ gUnknown_086700D4
	b _080617D6
	.align 2, 0
_080617C0: .4byte gUnknown_080DD9A4
_080617C4: .4byte gUnknown_086700D4
_080617C8:
	cmp r5, #1
	bne _080617D4
	ldr r0, _080617D0  @ gUnknown_08672220
	b _080617D6
	.align 2, 0
_080617D0: .4byte gUnknown_08672220
_080617D4:
	ldr r0, _080617E0  @ gUnknown_08672000
_080617D6:
	str r0, [r1, #0x4c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080617E0: .4byte gUnknown_08672000

	THUMB_FUNC_START sub_80617E4
sub_80617E4: @ 0x080617E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0806180C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08061810  @ gUnknown_085D6934
	movs r1, #3
	bl Proc_Create
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	cmp r5, #0
	bne _08061818
	ldr r0, _08061814  @ gUnknown_080DD930
	b _08061826
	.align 2, 0
_0806180C: .4byte gUnknown_0201774C
_08061810: .4byte gUnknown_085D6934
_08061814: .4byte gUnknown_080DD930
_08061818:
	cmp r5, #1
	bne _08061824
	ldr r0, _08061820  @ gUnknown_080DD972
	b _08061826
	.align 2, 0
_08061820: .4byte gUnknown_080DD972
_08061824:
	ldr r0, _08061830  @ gUnknown_080DD9A4
_08061826:
	str r0, [r1, #0x48]
	cmp r5, #0
	bne _08061838
	ldr r0, _08061834  @ gUnknown_086700D4
	b _08061846
	.align 2, 0
_08061830: .4byte gUnknown_080DD9A4
_08061834: .4byte gUnknown_086700D4
_08061838:
	cmp r5, #1
	bne _08061844
	ldr r0, _08061840  @ gUnknown_08672220
	b _08061846
	.align 2, 0
_08061840: .4byte gUnknown_08672220
_08061844:
	ldr r0, _08061850  @ gUnknown_08672000
_08061846:
	str r0, [r1, #0x4c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061850: .4byte gUnknown_08672000

	THUMB_FUNC_START sub_8061854
sub_8061854: @ 0x08061854
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0806187A
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08061890
_0806187A:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _08061890
	ldr r1, _08061898  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061890:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061898: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806189C
sub_806189C: @ 0x0806189C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r8, r3
	ldr r1, _080618D0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080618D4  @ gUnknown_085D6954
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	strh r5, [r0, #0x2c]
	strh r6, [r0, #0x2e]
	adds r0, #0x29
	mov r1, r8
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080618D0: .4byte gUnknown_0201774C
_080618D4: .4byte gUnknown_085D6954

	THUMB_FUNC_START sub_80618D8
sub_80618D8: @ 0x080618D8
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	subs r0, #1
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080618EE
	adds r0, r1, #0
	bl Proc_ClearNativeCallback
_080618EE:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80618F4
sub_80618F4: @ 0x080618F4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0806191C
	ldr r1, _08061918  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _08061964
	.align 2, 0
_08061918: .4byte gUnknown_0201774C
_0806191C:
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806193C
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_8012DCC
	b _08061950
_0806193C:
	movs r2, #0x2c
	ldrsh r3, [r4, r2]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_8012DCC
_08061950:
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
_08061964:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806196C
sub_806196C: @ 0x0806196C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080619B8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080619BC  @ gUnknown_085D6974
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x33
	strh r0, [r4, #0x2e]
	ldr r3, _080619C0  @ gUnknown_08675114
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _080619C4  @ gUnknown_08670528
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080619C8  @ gUnknown_086702D4
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080619B8: .4byte gUnknown_0201774C
_080619BC: .4byte gUnknown_085D6974
_080619C0: .4byte gUnknown_08675114
_080619C4: .4byte gUnknown_08670528
_080619C8: .4byte gUnknown_086702D4

	THUMB_FUNC_START sub_80619CC
sub_80619CC: @ 0x080619CC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08061A1C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08061A20  @ gUnknown_085D698C
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x33
	strh r0, [r4, #0x2e]
	movs r0, #0x34
	strh r0, [r4, #0x30]
	ldr r3, _08061A24  @ gUnknown_08675114
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _08061A28  @ gUnknown_08670528
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08061A2C  @ gUnknown_086702D4
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061A1C: .4byte gUnknown_0201774C
_08061A20: .4byte gUnknown_085D698C
_08061A24: .4byte gUnknown_08675114
_08061A28: .4byte gUnknown_08670528
_08061A2C: .4byte gUnknown_086702D4

	THUMB_FUNC_START sub_8061A30
sub_8061A30: @ 0x08061A30
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08061A5A
	ldr r0, _08061A60  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061A5A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061A60: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8061A64
sub_8061A64: @ 0x08061A64
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x60]
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	movs r4, #0
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x2e
	ldrsh r1, [r2, r5]
	cmp r0, r1
	bne _08061A8E
	ldr r0, _08061A94  @ gUnknown_086751A4
	str r0, [r3, #0x24]
	str r0, [r3, #0x20]
	strh r4, [r3, #6]
	strh r4, [r2, #0x2c]
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_08061A8E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061A94: .4byte gUnknown_086751A4

	THUMB_FUNC_START sub_8061A98
sub_8061A98: @ 0x08061A98
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08061AC2
	ldr r0, _08061AC8  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061AC2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061AC8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8061ACC
sub_8061ACC: @ 0x08061ACC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _08061AFC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08061B00  @ gUnknown_085D69AC
	movs r1, #3
	bl Proc_Create
	adds r1, r0, #0
	str r5, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	adds r0, r1, #0
	adds r0, #0x29
	strb r4, [r0]
	cmp r4, #0
	bne _08061B04
	movs r0, #0x2b
	strh r0, [r1, #0x2e]
	movs r0, #0x44
	b _08061B0A
	.align 2, 0
_08061AFC: .4byte gUnknown_0201774C
_08061B00: .4byte gUnknown_085D69AC
_08061B04:
	movs r0, #0x1f
	strh r0, [r1, #0x2e]
	movs r0, #0x3d
_08061B0A:
	strh r0, [r1, #0x30]
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8061B14
sub_8061B14: @ 0x08061B14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08061BD6
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _08061B7E
	ldr r0, _08061B60  @ gUnknown_086766C0
	mov r8, r0
	ldr r7, _08061B64  @ gUnknown_08677CC0
	ldr r0, _08061B68  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08061B6C
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	movs r5, #0x88
	cmp r0, #0
	bne _08061B7A
	movs r5, #0x68
	b _08061B7A
	.align 2, 0
_08061B60: .4byte gUnknown_086766C0
_08061B64: .4byte gUnknown_08677CC0
_08061B68: .4byte gUnknown_0203E120
_08061B6C:
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	movs r5, #0x70
	cmp r0, #0
	bne _08061B7A
	movs r5, #0x80
_08061B7A:
	movs r6, #0x4e
	b _08061BBC
_08061B7E:
	ldr r2, _08061BA0  @ gUnknown_08676734
	mov r8, r2
	ldr r7, _08061BA4  @ gUnknown_08677D34
	ldr r0, _08061BA8  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08061BAC
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	movs r5, #0x4c
	cmp r0, #0
	bne _08061BBA
	movs r5, #0xa4
	b _08061BBA
	.align 2, 0
_08061BA0: .4byte gUnknown_08676734
_08061BA4: .4byte gUnknown_08677D34
_08061BA8: .4byte gUnknown_0203E120
_08061BAC:
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	movs r5, #0x64
	cmp r0, #0
	bne _08061BBA
	movs r5, #0x8c
_08061BBA:
	movs r6, #0x40
_08061BBC:
	ldr r0, [r4, #0x5c]
	mov r2, r8
	str r2, [sp]
	adds r1, r7, #0
	adds r3, r7, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	strh r5, [r0, #2]
	strh r6, [r0, #4]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061BD6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8061BE4
sub_8061BE4: @ 0x08061BE4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08061C0E
	ldr r0, _08061C14  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061C0E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061C14: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8061C18
sub_8061C18: @ 0x08061C18
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08061C44  @ gUnknown_085D69CC
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r2, #0
	movs r1, #0
	strh r1, [r0, #0x2c]
	adds r0, #0x29
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061C44: .4byte gUnknown_085D69CC

	THUMB_FUNC_START sub_8061C48
sub_8061C48: @ 0x08061C48
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08061C74  @ gUnknown_085D69CC
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	adds r0, #0x29
	movs r1, #1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061C74: .4byte gUnknown_085D69CC

	THUMB_FUNC_START sub_8061C78
sub_8061C78: @ 0x08061C78
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #1
	bne _08061CA6
	ldr r0, [r4, #0x5c]
	bl sub_80619CC
	movs r0, #0xb3
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
	b _08061D1E
_08061CA6:
	cmp r1, #0x34
	bne _08061CBE
	ldr r0, [r4, #0x5c]
	bl sub_8061D28
	ldr r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r1, [r1]
	bl sub_8061DF8
	b _08061D1E
_08061CBE:
	cmp r1, #0xb7
	bne _08061D0A
	movs r0, #0x8a
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x78
	movs r3, #0
	bl sub_80729A4
	ldr r0, [r4, #0x5c]
	bl sub_8061E8C
	ldr r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x29
	ldrb r1, [r1]
	bl sub_8062058
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	ldr r0, [r4, #0x5c]
	movs r1, #1
	movs r2, #0x14
	movs r3, #0
	bl sub_806189C
	ldr r0, [r4, #0x5c]
	movs r1, #0xb4
	movs r2, #0x28
	movs r3, #1
	bl sub_806189C
	b _08061D1E
_08061D0A:
	ldr r0, _08061D24  @ 0x000001C5
	cmp r1, r0
	bne _08061D1E
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061D1E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061D24: .4byte 0x000001C5

	THUMB_FUNC_START sub_8061D28
sub_8061D28: @ 0x08061D28
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08061D64  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08061D68  @ gUnknown_085D69E4
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _08061D6C  @ gUnknown_080DDA3E
	str r1, [r0, #0x48]
	ldr r1, _08061D70  @ gUnknown_085D69FC
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r0, _08061D74  @ gUnknown_0866F5E4
	movs r1, #0x80
	lsls r1, r1, #3
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061D64: .4byte gUnknown_0201774C
_08061D68: .4byte gUnknown_085D69E4
_08061D6C: .4byte gUnknown_080DDA3E
_08061D70: .4byte gUnknown_085D69FC
_08061D74: .4byte gUnknown_0866F5E4

	THUMB_FUNC_START sub_8061D78
sub_8061D78: @ 0x08061D78
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r6, r0, #0
	adds r0, r4, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	blt _08061DD0
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	lsls r0, r5, #2
	adds r1, r0, r1
	ldr r1, [r1]
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	bl sub_8055670
	ldr r0, _08061DC8  @ gUnknown_080DDA50
	lsls r1, r5, #1
	adds r0, r1, r0
	ldrh r0, [r0]
	ldr r2, _08061DCC  @ gUnknown_080DDA58
	adds r1, r1, r2
	ldrh r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #0
	bl sub_80729A4
	b _08061DEE
	.align 2, 0
_08061DC8: .4byte gUnknown_080DDA50
_08061DCC: .4byte gUnknown_080DDA58
_08061DD0:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _08061DEE
	bl ClearBG1
	ldr r1, _08061DF4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061DEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061DF4: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8061DF8
sub_8061DF8: @ 0x08061DF8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08061E24  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08061E28  @ gUnknown_085D6A0C
	movs r1, #3
	bl Proc_Create
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	ldr r0, _08061E2C  @ gUnknown_080DDA70
	str r0, [r1, #0x48]
	cmp r5, #0
	bne _08061E34
	ldr r0, _08061E30  @ gUnknown_08678720
	b _08061E36
	.align 2, 0
_08061E24: .4byte gUnknown_0201774C
_08061E28: .4byte gUnknown_085D6A0C
_08061E2C: .4byte gUnknown_080DDA70
_08061E30: .4byte gUnknown_08678720
_08061E34:
	ldr r0, _08061E40  @ gUnknown_08678920
_08061E36:
	str r0, [r1, #0x4c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061E40: .4byte gUnknown_08678920

	THUMB_FUNC_START sub_8061E44
sub_8061E44: @ 0x08061E44
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _08061E6A
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08061E80
_08061E6A:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _08061E80
	ldr r1, _08061E88  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08061E80:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061E88: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8061E8C
sub_8061E8C: @ 0x08061E8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08061F58  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08061F5C  @ gUnknown_085D6A2C
	movs r1, #3
	bl Proc_Create
	str r5, [r0, #0x5c]
	movs r1, #0
	mov r8, r1
	mov r1, r8
	strh r1, [r0, #0x2c]
	mov r1, r8
	str r1, [r0, #0x44]
	ldr r1, _08061F60  @ gUnknown_080DDB82
	str r1, [r0, #0x48]
	ldr r1, _08061F64  @ gUnknown_085D6A44
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r0, _08061F68  @ gUnknown_08670548
	movs r1, #0xa8
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r3, _08061F6C  @ gLCDControlBuffer
	ldrb r2, [r3, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xc]
	ldrb r2, [r3, #0x14]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r3, #0x14]
	ldrb r0, [r3, #0x10]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r3, #0x10]
	ldrb r0, [r3, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x18]
	bl sub_8055980
	ldrh r1, [r5, #8]
	ldr r7, _08061F70  @ 0x0000F3FF
	adds r0, r7, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	adds r6, r1, #0
	orrs r0, r6
	strh r0, [r5, #8]
	ldr r4, _08061F74  @ gUnknown_02000010
	adds r0, r5, #0
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	cmp r2, #0
	beq _08061F26
	ldrh r1, [r2, #8]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r6
	strh r0, [r2, #8]
_08061F26:
	bl sub_80551B0
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_8001ED0
	mov r1, r8
	str r1, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl sub_8001F0C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08061F58: .4byte gUnknown_0201774C
_08061F5C: .4byte gUnknown_085D6A2C
_08061F60: .4byte gUnknown_080DDB82
_08061F64: .4byte gUnknown_085D6A44
_08061F68: .4byte gUnknown_08670548
_08061F6C: .4byte gLCDControlBuffer
_08061F70: .4byte 0x0000F3FF
_08061F74: .4byte gUnknown_02000010

	THUMB_FUNC_START sub_8061F78
sub_8061F78: @ 0x08061F78
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x5c]
	adds r0, r6, #0
	bl GetCoreAIStruct
	adds r7, r0, #0
	ldr r4, _08061FD4  @ gUnknown_02000010
	adds r0, r6, #0
	bl GetAISSubjectId
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r4, [r0]
	cmp r4, #0
	beq _08061FA8
	ldrh r0, [r4, #8]
	ldr r1, _08061FD8  @ 0x0000F3FF
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r4, #8]
_08061FA8:
	adds r0, r5, #0
	adds r0, #0x2c
	adds r1, r5, #0
	adds r1, #0x44
	ldr r2, [r5, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _08061FDC
	ldr r1, [r5, #0x4c]
	ldr r2, [r5, #0x50]
	lsls r0, r3, #2
	adds r1, r0, r1
	ldr r1, [r1]
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r7, #0
	bl sub_8055670
	b _08062046
	.align 2, 0
_08061FD4: .4byte gUnknown_02000010
_08061FD8: .4byte 0x0000F3FF
_08061FDC:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _08062046
	bl ClearBG1
	ldr r1, _0806204C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldr r3, _08062050  @ gLCDControlBuffer
	ldrb r2, [r3, #0xc]
	movs r1, #4
	negs r1, r1
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #0xc]
	ldrb r2, [r3, #0x10]
	adds r0, r1, #0
	ands r0, r2
	movs r2, #1
	orrs r0, r2
	strb r0, [r3, #0x10]
	ldrb r0, [r3, #0x14]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r3, #0x14]
	ldrb r0, [r3, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r3, #0x18]
	ldrh r1, [r6, #8]
	ldr r3, _08062054  @ 0x0000F3FF
	adds r0, r3, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	adds r2, r1, #0
	orrs r0, r2
	strh r0, [r6, #8]
	cmp r4, #0
	beq _0806203C
	ldrh r1, [r4, #8]
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #8]
_0806203C:
	bl sub_805526C
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_08062046:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806204C: .4byte gUnknown_0201774C
_08062050: .4byte gLCDControlBuffer
_08062054: .4byte 0x0000F3FF

	THUMB_FUNC_START sub_8062058
sub_8062058: @ 0x08062058
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08062084  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062088  @ gUnknown_085D6A48
	movs r1, #3
	bl Proc_Create
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	ldr r0, _0806208C  @ gUnknown_080DDB9A
	str r0, [r1, #0x48]
	cmp r5, #0
	bne _08062094
	ldr r0, _08062090  @ gUnknown_086700D4
	b _08062096
	.align 2, 0
_08062084: .4byte gUnknown_0201774C
_08062088: .4byte gUnknown_085D6A48
_0806208C: .4byte gUnknown_080DDB9A
_08062090: .4byte gUnknown_086700D4
_08062094:
	ldr r0, _080620A0  @ gUnknown_08678B20
_08062096:
	str r0, [r1, #0x4c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080620A0: .4byte gUnknown_08678B20

	THUMB_FUNC_START sub_80620A4
sub_80620A4: @ 0x080620A4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080620CA
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _080620E0
_080620CA:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080620E0
	ldr r1, _080620E8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080620E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080620E8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80620EC
sub_80620EC: @ 0x080620EC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08062124  @ gUnknown_085D6A68
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062124: .4byte gUnknown_085D6A68

	THUMB_FUNC_START sub_8062128
sub_8062128: @ 0x08062128
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r6, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r5, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	movs r7, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806215E
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0806215E:
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	adds r0, r5, #1
	cmp r1, r0
	bne _080621D4
	adds r0, r6, #0
	bl sub_80622A0
	movs r5, #8
	str r5, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x28
	movs r2, #0x1e
	movs r3, #0x10
	bl sub_805BA1C
	movs r4, #0x10
	str r4, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x47
	movs r2, #0x1e
	movs r3, #8
	bl sub_805BA1C
	str r5, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x66
	movs r2, #0x1e
	movs r3, #0x10
	bl sub_805BA1C
	str r4, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x85
	movs r2, #0x1e
	movs r3, #8
	bl sub_805BA1C
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0xa4
	movs r2, #0x3c
	movs r3, #0x10
	bl sub_805BA1C
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #2
	ldrsh r2, [r6, r0]
	movs r0, #0xfd
	movs r3, #1
	bl sub_80729A4
	b _08062294
_080621D4:
	adds r0, r5, #0
	adds r0, #0x50
	cmp r1, r0
	bne _080621E4
	adds r0, r6, #0
	bl sub_8062358
	b _08062294
_080621E4:
	adds r0, r5, #0
	adds r0, #0xa4
	cmp r1, r0
	bne _080621FA
	adds r0, r6, #0
	movs r1, #1
	movs r2, #5
	movs r3, #0
	bl sub_80547DC
	b _08062294
_080621FA:
	adds r0, r5, #0
	adds r0, #0xc8
	cmp r1, r0
	bne _08062274
	ldrh r0, [r6, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r6, #0x10]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	adds r0, r6, #0
	bl sub_8055518
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08062228
	ldr r0, _08062224  @ gUnknown_0203E188
	b _0806222A
	.align 2, 0
_08062224: .4byte gUnknown_0203E188
_08062228:
	ldr r0, _0806226C  @ gUnknown_0203E18C
_0806222A:
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xb
	bne _08062260
	adds r0, r6, #0
	movs r1, #0
	bl sub_8054BA4
	movs r0, #0xb
	ldrsb r0, [r4, r0]
	bl GetUnitStruct
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, _08062270  @ 0xFFFFFBBD
	ands r0, r1
	str r0, [r4, #0xc]
	bl RefreshFogAndUnitMaps
	bl SMS_UpdateFromGameData
	bl MU_EndAll
_08062260:
	adds r0, r6, #0
	movs r1, #0
	bl sub_8054BA4
	b _08062294
	.align 2, 0
_0806226C: .4byte gUnknown_0203E18C
_08062270: .4byte 0xFFFFFBBD
_08062274:
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r5, r2
	cmp r1, r0
	bne _08062294
	ldrh r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r6, #0x10]
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08062294:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80622A0
sub_80622A0: @ 0x080622A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080622DC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080622E0  @ gUnknown_085D6A80
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _080622E4  @ gUnknown_080DDC8A
	str r1, [r0, #0x48]
	ldr r1, _080622E8  @ gUnknown_085D6A98
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _080622EC  @ gUnknown_085D6ACC
	str r1, [r0, #0x54]
	ldr r0, _080622F0  @ gUnknown_0867B5A4
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080622DC: .4byte gUnknown_0201774C
_080622E0: .4byte gUnknown_085D6A80
_080622E4: .4byte gUnknown_080DDC8A
_080622E8: .4byte gUnknown_085D6A98
_080622EC: .4byte gUnknown_085D6ACC
_080622F0: .4byte gUnknown_0867B5A4

	THUMB_FUNC_START sub_80622F4
sub_80622F4: @ 0x080622F4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _08062330
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	b _0806234E
_08062330:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _0806234E
	bl ClearBG1
	ldr r1, _08062354  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806234E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062354: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8062358
sub_8062358: @ 0x08062358
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08062394  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062398  @ gUnknown_085D6B00
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	ldr r3, _0806239C  @ gUnknown_0867EE04
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r6, r0, #0
	str r6, [r5, #0x60]
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _080623A0
	ldrh r0, [r6, #2]
	subs r0, #8
	b _080623A4
	.align 2, 0
_08062394: .4byte gUnknown_0201774C
_08062398: .4byte gUnknown_085D6B00
_0806239C: .4byte gUnknown_0867EE04
_080623A0:
	ldrh r0, [r6, #2]
	adds r0, #8
_080623A4:
	strh r0, [r6, #2]
	ldrh r0, [r6, #4]
	subs r0, #8
	strh r0, [r6, #4]
	ldr r0, _080623C8  @ gUnknown_0868716C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080623CC  @ gUnknown_08686F84
	movs r1, #0x80
	lsls r1, r1, #4
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080623C8: .4byte gUnknown_0868716C
_080623CC: .4byte gUnknown_08686F84

	THUMB_FUNC_START sub_80623D0
sub_80623D0: @ 0x080623D0
	ldr r1, _080623DC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_080623DC: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimSilence
StartSpellAnimSilence: @ 0x080623E0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08062418  @ gUnknown_085D6B20
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062418: .4byte gUnknown_085D6B20

	THUMB_FUNC_START sub_806241C
sub_806241C: @ 0x0806241C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	movs r7, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08062460
	ldr r0, [r4, #0x5c]
	bl sub_8062608
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0xfa
	movs r3, #1
	bl sub_80729A4
_08062460:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0x29
	bne _08062474
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _08062518
_08062474:
	movs r3, #0x2c
	ldrsh r1, [r4, r3]
	adds r0, r6, #0
	adds r0, #0x44
	cmp r1, r0
	bne _080624A8
	ldr r0, [r4, #0x5c]
	bl sub_8062524
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #2
	ldrsh r2, [r5, r0]
	movs r0, #0xfb
	movs r3, #1
	bl sub_80729A4
	ldr r0, [r4, #0x5c]
	str r7, [sp]
	str r7, [sp, #4]
	movs r1, #0x42
	movs r2, #0x14
	movs r3, #0x10
	bl sub_805BA1C
	b _08062518
_080624A8:
	adds r0, r6, #0
	adds r0, #0x86
	cmp r1, r0
	bne _080624FA
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r0, #0xfc
	movs r3, #1
	bl sub_80729A4
	bl sub_8071A7C
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r6, r4, #0
	adds r6, #0x29
	ldrb r1, [r6]
	adds r0, r5, #0
	bl sub_8055518
	ldr r0, [r4, #0x5c]
	movs r1, #0xa
	bl StartSpellBG_FLASH
	ldrb r0, [r6]
	cmp r0, #0
	bne _08062518
	adds r0, r5, #0
	bl sub_8054BD4
	cmp r0, #0
	bne _08062518
	adds r0, r5, #0
	movs r1, #3
	bl sub_8054BA4
	b _08062518
_080624FA:
	adds r0, r6, #0
	adds r0, #0x9e
	cmp r1, r0
	bne _08062518
	ldrh r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r5, #0x10]
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08062518:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8062524
sub_8062524: @ 0x08062524
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08062584  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062588  @ gUnknown_085D6B38
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0806258C  @ gUnknown_080DDCE6
	str r0, [r5, #0x48]
	ldr r0, _08062590  @ gUnknown_085D6B50
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08062594  @ gUnknown_08680DC0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _08062598  @ gUnknown_0867EEB4
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _0806259C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080625AA
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080625A0
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _080625AA
	.align 2, 0
_08062584: .4byte gUnknown_0201774C
_08062588: .4byte gUnknown_085D6B38
_0806258C: .4byte gUnknown_080DDCE6
_08062590: .4byte gUnknown_085D6B50
_08062594: .4byte gUnknown_08680DC0
_08062598: .4byte gUnknown_0867EEB4
_0806259C: .4byte gUnknown_0203E120
_080625A0:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_080625AA:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80625B0
sub_80625B0: @ 0x080625B0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _080625DE
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _080625FC
_080625DE:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _080625FC
	bl ClearBG1
	ldr r1, _08062604  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080625FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062604: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8062608
sub_8062608: @ 0x08062608
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0806264C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062650  @ gUnknown_085D6B98
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	ldr r3, _08062654  @ gUnknown_08680FFC
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _08062658  @ gUnknown_08680DC0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806265C  @ gUnknown_086808A0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806264C: .4byte gUnknown_0201774C
_08062650: .4byte gUnknown_085D6B98
_08062654: .4byte gUnknown_08680FFC
_08062658: .4byte gUnknown_08680DC0
_0806265C: .4byte gUnknown_086808A0

	THUMB_FUNC_START sub_8062660
sub_8062660: @ 0x08062660
	push {lr}
	ldr r0, [r0, #0x60]
	bl AIS_Free
	ldr r1, _08062674  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08062674: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimSleep
StartSpellAnimSleep: @ 0x08062678
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080626B0  @ gUnknown_085D6BB8
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080626B0: .4byte gUnknown_085D6BB8

	THUMB_FUNC_START sub_80626B4
sub_80626B4: @ 0x080626B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	movs r7, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080626F8
	ldr r0, [r4, #0x5c]
	bl sub_8062898
	ldr r0, _0806274C  @ 0x0000011B
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
_080626F8:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0x64
	bne _0806270A
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0806270A:
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	adds r0, r6, #0
	adds r0, #0x82
	cmp r1, r0
	bne _08062750
	adds r0, r5, #0
	bl sub_80628F0
	adds r0, r5, #0
	bl sub_8062944
	ldr r0, [r4, #0x5c]
	bl sub_80627B4
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x14
	movs r3, #0
	bl sub_805BA1C
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	movs r1, #0xe6
	movs r2, #0x14
	movs r3, #0x10
	bl sub_805BA1C
	b _080627A6
	.align 2, 0
_0806274C: .4byte 0x0000011B
_08062750:
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r6, r3
	cmp r1, r0
	bne _08062786
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_8055518
	ldrb r0, [r4]
	cmp r0, #0
	bne _080627A6
	adds r0, r5, #0
	bl sub_8054BD4
	cmp r0, #0
	bne _080627A6
	adds r0, r5, #0
	movs r1, #2
	bl sub_8054BA4
	b _080627A6
_08062786:
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r0, r6, r2
	cmp r1, r0
	bne _080627A6
	ldrh r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r5, #0x10]
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080627A6:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80627B4
sub_80627B4: @ 0x080627B4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08062814  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062818  @ gUnknown_085D6BD0
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0806281C  @ gUnknown_080DDD58
	str r0, [r5, #0x48]
	ldr r0, _08062820  @ gUnknown_085D6BE8
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08062824  @ gUnknown_086861A4
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _08062828  @ gUnknown_086852D8
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _0806282C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806283A
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08062830
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _0806283A
	.align 2, 0
_08062814: .4byte gUnknown_0201774C
_08062818: .4byte gUnknown_085D6BD0
_0806281C: .4byte gUnknown_080DDD58
_08062820: .4byte gUnknown_085D6BE8
_08062824: .4byte gUnknown_086861A4
_08062828: .4byte gUnknown_086852D8
_0806282C: .4byte gUnknown_0203E120
_08062830:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0806283A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8062840
sub_8062840: @ 0x08062840
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _0806286E
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _0806288C
_0806286E:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _0806288C
	bl ClearBG1
	ldr r1, _08062894  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806288C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062894: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8062898
sub_8062898: @ 0x08062898
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _080628DC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080628E0  @ gUnknown_085D6C28
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	ldr r3, _080628E4  @ gUnknown_0868C2E8
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _080628E8  @ gUnknown_0868716C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080628EC  @ gUnknown_08686F84
	movs r1, #0x80
	lsls r1, r1, #4
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080628DC: .4byte gUnknown_0201774C
_080628E0: .4byte gUnknown_085D6C28
_080628E4: .4byte gUnknown_0868C2E8
_080628E8: .4byte gUnknown_0868716C
_080628EC: .4byte gUnknown_08686F84

	THUMB_FUNC_START sub_80628F0
sub_80628F0: @ 0x080628F0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08062928  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806292C  @ gUnknown_085D6C48
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	ldr r3, _08062930  @ gUnknown_0868C168
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldrh r1, [r0, #4]
	subs r1, #8
	strh r1, [r0, #4]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062928: .4byte gUnknown_0201774C
_0806292C: .4byte gUnknown_085D6C48
_08062930: .4byte gUnknown_0868C168

	THUMB_FUNC_START sub_8062934
sub_8062934: @ 0x08062934
	ldr r1, _08062940  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08062940: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8062944
sub_8062944: @ 0x08062944
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08062960  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062964  @ gUnknown_085D6C68
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062960: .4byte gUnknown_0201774C
_08062964: .4byte gUnknown_085D6C68

	THUMB_FUNC_START sub_8062968
sub_8062968: @ 0x08062968
	push {r4, lr}
	movs r3, #0x8e
	lsls r3, r3, #1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r0, #0x5c]
	movs r4, #2
	ldrsh r2, [r0, r4]
	adds r0, r3, #0
	movs r3, #1
	bl sub_80729A4
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8062988
sub_8062988: @ 0x08062988
	ldr r1, _08062994  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08062994: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimHammerne
StartSpellAnimHammerne: @ 0x08062998
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080629D0  @ gUnknown_085D6CB0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080629D0: .4byte gUnknown_085D6CB0

	THUMB_FUNC_START sub_80629D4
sub_80629D4: @ 0x080629D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r6, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r5, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	movs r7, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08062A0A
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_08062A0A:
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	adds r0, r5, #1
	cmp r1, r0
	bne _08062A84
	adds r0, r6, #0
	bl sub_8062AF4
	movs r5, #8
	str r5, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x28
	movs r2, #0x1e
	movs r3, #0x10
	bl sub_805BA1C
	movs r4, #0x10
	str r4, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x47
	movs r2, #0x1e
	movs r3, #8
	bl sub_805BA1C
	str r5, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x66
	movs r2, #0x1e
	movs r3, #0x10
	bl sub_805BA1C
	str r4, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x85
	movs r2, #0x1e
	movs r3, #8
	bl sub_805BA1C
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0xa4
	movs r2, #0x3c
	movs r3, #0x10
	bl sub_805BA1C
	ldr r0, _08062A80  @ 0x00000103
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r6, r3]
	movs r3, #1
	bl sub_80729A4
	b _08062AE8
	.align 2, 0
_08062A80: .4byte 0x00000103
_08062A84:
	adds r0, r5, #0
	adds r0, #0x50
	cmp r1, r0
	bne _08062A94
	adds r0, r6, #0
	bl sub_8062BAC
	b _08062AE8
_08062A94:
	adds r0, r5, #0
	adds r0, #0xa4
	cmp r1, r0
	bne _08062AAA
	adds r0, r6, #0
	movs r1, #1
	movs r2, #5
	movs r3, #0
	bl sub_80547DC
	b _08062AE8
_08062AAA:
	adds r0, r5, #0
	adds r0, #0xc8
	cmp r1, r0
	bne _08062AC8
	ldrh r0, [r6, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r6, #0x10]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	adds r0, r6, #0
	bl sub_8055518
	b _08062AE8
_08062AC8:
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r5, r2
	cmp r1, r0
	bne _08062AE8
	ldrh r0, [r6, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r6, #0x10]
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08062AE8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8062AF4
sub_8062AF4: @ 0x08062AF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08062B30  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062B34  @ gUnknown_085D6CC8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _08062B38  @ gUnknown_080DDE9E
	str r1, [r0, #0x48]
	ldr r1, _08062B3C  @ gUnknown_085D6CE0
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _08062B40  @ gUnknown_085D6D14
	str r1, [r0, #0x54]
	ldr r0, _08062B44  @ gUnknown_086810B8
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062B30: .4byte gUnknown_0201774C
_08062B34: .4byte gUnknown_085D6CC8
_08062B38: .4byte gUnknown_080DDE9E
_08062B3C: .4byte gUnknown_085D6CE0
_08062B40: .4byte gUnknown_085D6D14
_08062B44: .4byte gUnknown_086810B8

	THUMB_FUNC_START sub_8062B48
sub_8062B48: @ 0x08062B48
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _08062B84
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	b _08062BA2
_08062B84:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _08062BA2
	bl ClearBG1
	ldr r1, _08062BA8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08062BA2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062BA8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8062BAC
sub_8062BAC: @ 0x08062BAC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08062BF0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062BF4  @ gUnknown_085D6D48
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	ldr r3, _08062BF8  @ gUnknown_08684908
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _08062BFC  @ gUnknown_0868718C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08062C00  @ gUnknown_08686F84
	movs r1, #0x80
	lsls r1, r1, #4
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062BF0: .4byte gUnknown_0201774C
_08062BF4: .4byte gUnknown_085D6D48
_08062BF8: .4byte gUnknown_08684908
_08062BFC: .4byte gUnknown_0868718C
_08062C00: .4byte gUnknown_08686F84

	THUMB_FUNC_START sub_8062C04
sub_8062C04: @ 0x08062C04
	ldr r1, _08062C10  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08062C10: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimBerserk
StartSpellAnimBerserk: @ 0x08062C14
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08062C4C  @ gUnknown_085D6D68
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062C4C: .4byte gUnknown_085D6D68

	THUMB_FUNC_START sub_8062C50
sub_8062C50: @ 0x08062C50
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r7, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08062C7E
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_08062C7E:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r6, #1
	cmp r1, r0
	bne _08062CCC
	adds r0, r5, #0
	bl sub_8062F4C
	adds r0, r5, #0
	movs r1, #0x4a
	bl sub_8062D30
	adds r0, r5, #0
	movs r1, #0x4a
	bl sub_8062EAC
	movs r4, #0x80
	lsls r4, r4, #1
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x4a
	movs r2, #0xa
	adds r3, r4, #0
	bl sub_805B400
	adds r0, r5, #0
	movs r1, #0x4a
	movs r2, #0
	bl sub_805B93C
	movs r0, #2
	ldrsh r2, [r5, r0]
	movs r0, #0xf9
	adds r1, r4, #0
	movs r3, #1
	bl sub_80729A4
	b _08062D26
_08062CCC:
	adds r0, r6, #0
	adds r0, #0x4a
	cmp r1, r0
	bne _08062D08
	adds r0, r5, #0
	movs r1, #5
	bl StartSpellBG_FLASH
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl sub_8055518
	ldrb r0, [r4]
	cmp r0, #0
	bne _08062D26
	adds r0, r5, #0
	bl sub_8054BD4
	cmp r0, #0
	bne _08062D26
	adds r0, r5, #0
	movs r1, #4
	bl sub_8054BA4
	b _08062D26
_08062D08:
	adds r0, r6, #0
	adds r0, #0x5a
	cmp r1, r0
	bne _08062D26
	ldrh r0, [r5, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r5, #0x10]
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08062D26:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8062D30
sub_8062D30: @ 0x08062D30
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _08062E24  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062E28  @ gUnknown_085D6D80
	movs r1, #3
	bl Proc_Create
	str r5, [r0, #0x5c]
	movs r1, #0
	mov r9, r1
	mov r2, r9
	strh r2, [r0, #0x2c]
	strh r4, [r0, #0x2e]
	ldr r0, _08062E2C  @ gUnknown_0868C338
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _08062E30  @ gUnknown_086849B8
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _08062E34  @ gUnknown_08684AB8
	ldr r1, _08062E38  @ gBG1TilemapBuffer
	movs r2, #1
	mov r8, r2
	str r2, [sp]
	adds r2, #0xff
	str r2, [sp, #4]
	movs r2, #0x20
	movs r3, #0x20
	bl sub_8070E94
	movs r0, #2
	bl BG_EnableSyncByMask
	bl sub_80551B0
	movs r0, #1
	movs r1, #0xe
	movs r2, #8
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	bl sub_80708A0
	ldr r4, _08062E3C  @ gLCDControlBuffer
	adds r3, r4, #0
	adds r3, #0x37
	ldrb r1, [r3]
	movs r6, #0x20
	orrs r1, r6
	ldrb r2, [r4, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	movs r2, #0x41
	negs r2, r2
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #1]
	movs r0, #2
	negs r0, r0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	movs r0, #4
	orrs r1, r0
	movs r0, #8
	orrs r1, r0
	movs r0, #0x10
	orrs r1, r0
	strb r1, [r3]
	mov r0, r9
	str r0, [sp]
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_8001ED0
	mov r1, r8
	str r1, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_8001F0C
	adds r4, #0x3d
	ldrb r0, [r4]
	orrs r0, r6
	strb r0, [r4]
	ldr r0, [r5, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x1c]
	ldrh r1, [r5, #8]
	ldr r0, _08062E40  @ 0x0000F3FF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #8]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08062E24: .4byte gUnknown_0201774C
_08062E28: .4byte gUnknown_085D6D80
_08062E2C: .4byte gUnknown_0868C338
_08062E30: .4byte gUnknown_086849B8
_08062E34: .4byte gUnknown_08684AB8
_08062E38: .4byte gBG1TilemapBuffer
_08062E3C: .4byte gLCDControlBuffer
_08062E40: .4byte 0x0000F3FF

	THUMB_FUNC_START sub_8062E44
sub_8062E44: @ 0x08062E44
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x5c]
	ldr r1, _08062E9C  @ gLCDControlBuffer
	ldrh r0, [r1, #0x22]
	subs r0, #1
	strh r0, [r1, #0x22]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08062E96
	bl ClearBG1
	bl sub_805526C
	bl sub_8070874
	ldr r0, [r5, #0x1c]
	ldr r1, _08062EA0  @ 0xFFFFF7FF
	ands r0, r1
	str r0, [r5, #0x1c]
	ldrh r1, [r5, #8]
	ldr r0, _08062EA4  @ 0x0000F3FF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #8]
	ldr r1, _08062EA8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08062E96:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062E9C: .4byte gLCDControlBuffer
_08062EA0: .4byte 0xFFFFF7FF
_08062EA4: .4byte 0x0000F3FF
_08062EA8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8062EAC
sub_8062EAC: @ 0x08062EAC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08062ED0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062ED4  @ gUnknown_085D6D98
	movs r1, #4
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062ED0: .4byte gUnknown_0201774C
_08062ED4: .4byte gUnknown_085D6D98

	THUMB_FUNC_START sub_8062ED8
sub_8062ED8: @ 0x08062ED8
	push {r4, lr}
	sub sp, #0x48
	adds r4, r0, #0
	ldr r2, [r4, #0x5c]
	mov r1, sp
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	ldrh r0, [r2, #4]
	strh r0, [r1, #4]
	ldr r0, [r2, #0x3c]
	str r0, [sp, #0x3c]
	ldr r0, [r2, #0x1c]
	ldr r1, _08062F34  @ 0xFFFFF7FF
	ands r0, r1
	str r0, [sp, #0x1c]
	mov r0, sp
	ldrh r1, [r2, #8]
	strh r1, [r0, #8]
	mov r2, sp
	ldr r0, _08062F38  @ 0x0000F3FF
	ands r0, r1
	strh r0, [r2, #8]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #8]
	mov r0, sp
	bl AIS_Display
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08062F2C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08062F2C:
	add sp, #0x48
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062F34: .4byte 0xFFFFF7FF
_08062F38: .4byte 0x0000F3FF

	THUMB_FUNC_START sub_8062F3C
sub_8062F3C: @ 0x08062F3C
	ldr r1, _08062F48  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08062F48: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8062F4C
sub_8062F4C: @ 0x08062F4C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08062F94  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062F98  @ gUnknown_085D6DB8
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	adds r0, r5, #0
	bl GetCoreAIStruct
	ldr r3, _08062F9C  @ gUnknown_085D4F90
	ldr r0, [r4, #0x5c]
	str r3, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldrh r2, [r0, #8]
	ldr r1, _08062FA0  @ 0x0000F3FF
	ands r1, r2
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062F94: .4byte gUnknown_0201774C
_08062F98: .4byte gUnknown_085D6DB8
_08062F9C: .4byte gUnknown_085D4F90
_08062FA0: .4byte 0x0000F3FF

	THUMB_FUNC_START sub_8062FA4
sub_8062FA4: @ 0x08062FA4
	push {lr}
	ldr r2, _08062FB8  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r0, [r0, #0x60]
	bl AIS_Free
	pop {r0}
	bx r0
	.align 2, 0
_08062FB8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8062FBC
sub_8062FBC: @ 0x08062FBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _08062FEC  @ gUnknown_0868D2B4
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _08062FF0  @ gUnknown_0868CC10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08062FF4  @ gUnknown_0868C358
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062FEC: .4byte gUnknown_0868D2B4
_08062FF0: .4byte gUnknown_0868CC10
_08062FF4: .4byte gUnknown_0868C358

	THUMB_FUNC_START sub_8062FF8
sub_8062FF8: @ 0x08062FF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _08063028  @ gUnknown_0868D2C8
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _0806302C  @ gUnknown_0868CC10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08063030  @ gUnknown_0868C358
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063028: .4byte gUnknown_0868D2C8
_0806302C: .4byte gUnknown_0868CC10
_08063030: .4byte gUnknown_0868C358

	THUMB_FUNC_START sub_8063034
sub_8063034: @ 0x08063034
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _08063064  @ gUnknown_0868D2DC
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _08063068  @ gUnknown_0868CC10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806306C  @ gUnknown_0868C358
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063064: .4byte gUnknown_0868D2DC
_08063068: .4byte gUnknown_0868CC10
_0806306C: .4byte gUnknown_0868C358

	THUMB_FUNC_START sub_8063070
sub_8063070: @ 0x08063070
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _080630A0  @ gUnknown_0868D2F0
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _080630A4  @ gUnknown_0868CC10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080630A8  @ gUnknown_0868C358
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080630A0: .4byte gUnknown_0868D2F0
_080630A4: .4byte gUnknown_0868CC10
_080630A8: .4byte gUnknown_0868C358

	THUMB_FUNC_START sub_80630AC
sub_80630AC: @ 0x080630AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _080630DC  @ gUnknown_0868D304
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _080630E0  @ gUnknown_0868CC10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080630E4  @ gUnknown_0868C358
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080630DC: .4byte gUnknown_0868D304
_080630E0: .4byte gUnknown_0868CC10
_080630E4: .4byte gUnknown_0868C358

	THUMB_FUNC_START sub_80630E8
sub_80630E8: @ 0x080630E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _08063118  @ gUnknown_0868D678
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _0806311C  @ gUnknown_0868CC10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08063120  @ gUnknown_0868C7F0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063118: .4byte gUnknown_0868D678
_0806311C: .4byte gUnknown_0868CC10
_08063120: .4byte gUnknown_0868C7F0

	THUMB_FUNC_START sub_8063124
sub_8063124: @ 0x08063124
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _08063154  @ gUnknown_0868D684
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _08063158  @ gUnknown_0868CC10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806315C  @ gUnknown_0868C7F0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063154: .4byte gUnknown_0868D684
_08063158: .4byte gUnknown_0868CC10
_0806315C: .4byte gUnknown_0868C7F0

	THUMB_FUNC_START sub_8063160
sub_8063160: @ 0x08063160
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _08063190  @ gUnknown_0868D690
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _08063194  @ gUnknown_0868CC10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08063198  @ gUnknown_0868C7F0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063190: .4byte gUnknown_0868D690
_08063194: .4byte gUnknown_0868CC10
_08063198: .4byte gUnknown_0868C7F0

	THUMB_FUNC_START sub_806319C
sub_806319C: @ 0x0806319C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _080631CC  @ gUnknown_0868D69C
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _080631D0  @ gUnknown_0868CC10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080631D4  @ gUnknown_0868C7F0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080631CC: .4byte gUnknown_0868D69C
_080631D0: .4byte gUnknown_0868CC10
_080631D4: .4byte gUnknown_0868C7F0

	THUMB_FUNC_START sub_80631D8
sub_80631D8: @ 0x080631D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, _08063208  @ gUnknown_0868D6A8
	str r0, [r1, #0x24]
	str r0, [r1, #0x20]
	movs r0, #0
	strh r0, [r1, #6]
	ldr r0, _0806320C  @ gUnknown_0868CC10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08063210  @ gUnknown_0868C7F0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063208: .4byte gUnknown_0868D6A8
_0806320C: .4byte gUnknown_0868CC10
_08063210: .4byte gUnknown_0868C7F0

	THUMB_FUNC_START sub_8063214
sub_8063214: @ 0x08063214
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806324C  @ gUnknown_085D6E70
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806324C: .4byte gUnknown_085D6E70

	THUMB_FUNC_START sub_8063250
sub_8063250: @ 0x08063250
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	movs r7, #0
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806327C
	ldr r0, [r5, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0806327C:
	movs r0, #0x2c
	ldrsh r1, [r5, r0]
	adds r0, r6, #1
	cmp r1, r0
	bne _080632AC
	ldr r0, [r5, #0x5c]
	bl sub_806331C
	adds r0, r4, #0
	bl sub_80633D0
	adds r0, r4, #0
	bl sub_8063428
	movs r0, #0x81
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r3, #1
	bl sub_80729A4
	b _08063316
_080632AC:
	adds r0, r6, #0
	adds r0, #0x28
	cmp r1, r0
	beq _080632BC
	adds r0, r6, #0
	adds r0, #0x50
	cmp r1, r0
	bne _080632C4
_080632BC:
	adds r0, r4, #0
	bl sub_8063428
	b _08063316
_080632C4:
	adds r0, r6, #0
	adds r0, #0xb0
	cmp r1, r0
	bne _080632DA
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	movs r3, #0
	bl sub_80547DC
	b _08063316
_080632DA:
	adds r0, r6, #0
	adds r0, #0xe1
	cmp r1, r0
	bne _080632F8
	ldrh r0, [r4, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_8055518
	b _08063316
_080632F8:
	adds r0, r6, #0
	adds r0, #0xe6
	cmp r1, r0
	bne _08063316
	ldrh r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4, #0x10]
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_08063316:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806331C
sub_806331C: @ 0x0806331C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08063360  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063364  @ gUnknown_085D6E88
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _08063368  @ gUnknown_080DDF3A
	str r1, [r0, #0x48]
	ldr r1, _0806336C  @ gUnknown_085D6EA0
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r0, _08063370  @ gUnknown_0868DF5C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _08063374  @ gUnknown_0868D6D0
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063360: .4byte gUnknown_0201774C
_08063364: .4byte gUnknown_085D6E88
_08063368: .4byte gUnknown_080DDF3A
_0806336C: .4byte gUnknown_085D6EA0
_08063370: .4byte gUnknown_0868DF5C
_08063374: .4byte gUnknown_0868D6D0

	THUMB_FUNC_START sub_8063378
sub_8063378: @ 0x08063378
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _080633A6
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _080633C4
_080633A6:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _080633C4
	bl ClearBG1
	ldr r1, _080633CC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080633C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080633CC: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80633D0
sub_80633D0: @ 0x080633D0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08063414  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063418  @ gUnknown_085D6EB4
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	ldr r3, _0806341C  @ gUnknown_08692524
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _08063420  @ gUnknown_0868E46C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08063424  @ gUnknown_08686F84
	movs r1, #0x80
	lsls r1, r1, #4
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08063414: .4byte gUnknown_0201774C
_08063418: .4byte gUnknown_085D6EB4
_0806341C: .4byte gUnknown_08692524
_08063420: .4byte gUnknown_0868E46C
_08063424: .4byte gUnknown_08686F84

	THUMB_FUNC_START sub_8063428
sub_8063428: @ 0x08063428
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0806345C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063460  @ gUnknown_085D6ED4
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	ldr r3, _08063464  @ gUnknown_08692674
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806345C: .4byte gUnknown_0201774C
_08063460: .4byte gUnknown_085D6ED4
_08063464: .4byte gUnknown_08692674

	THUMB_FUNC_START sub_8063468
sub_8063468: @ 0x08063468
	push {lr}
	ldr r0, [r0, #0x60]
	bl AIS_Free
	ldr r1, _0806347C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0806347C: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimShine
StartSpellAnimShine: @ 0x08063480
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080634B8  @ gUnknown_085D6EF4
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080634B8: .4byte gUnknown_085D6EF4

	THUMB_FUNC_START sub_80634BC
sub_80634BC: @ 0x080634BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080634E6
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_080634E6:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r6, #1
	cmp r1, r0
	bne _080634FA
	adds r0, r5, #0
	movs r1, #0xa
	bl StartSpellBG_FLASH
	b _08063588
_080634FA:
	adds r0, r6, #0
	adds r0, #0xb
	cmp r1, r0
	bne _0806351C
	adds r0, r5, #0
	bl sub_806364C
	movs r0, #0xaf
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	b _08063588
_0806351C:
	adds r0, r6, #0
	adds r0, #0x17
	cmp r1, r0
	bne _08063534
	adds r0, r5, #0
	movs r1, #5
	bl StartSpellBG_FLASH
	adds r0, r5, #0
	bl sub_80637F8
	b _08063588
_08063534:
	adds r0, r6, #0
	adds r0, #0x1d
	cmp r1, r0
	bne _0806354A
	adds r0, r5, #0
	bl sub_8063590
	adds r0, r5, #0
	bl sub_806376C
	b _08063588
_0806354A:
	adds r0, r6, #0
	adds r0, #0x1e
	cmp r1, r0
	bne _08063572
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _08063588
	adds r0, r5, #0
	bl sub_8072450
	b _08063588
_08063572:
	adds r0, r6, #0
	adds r0, #0x23
	cmp r1, r0
	bne _08063588
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08063588:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8063590
sub_8063590: @ 0x08063590
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080635D0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080635D4  @ gUnknown_085D6F0C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _080635D8  @ gUnknown_080DE03C
	str r1, [r0, #0x48]
	ldr r1, _080635DC  @ gUnknown_085D6F24
	str r1, [r0, #0x4c]
	ldr r1, _080635E0  @ gUnknown_085D6F28
	str r1, [r0, #0x50]
	ldr r1, _080635E4  @ gUnknown_085D6F2C
	str r1, [r0, #0x54]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080635D0: .4byte gUnknown_0201774C
_080635D4: .4byte gUnknown_085D6F0C
_080635D8: .4byte gUnknown_080DE03C
_080635DC: .4byte gUnknown_085D6F24
_080635E0: .4byte gUnknown_085D6F28
_080635E4: .4byte gUnknown_085D6F2C

	THUMB_FUNC_START sub_80635E8
sub_80635E8: @ 0x080635E8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _08063624
	ldr r5, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, [r7, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r4, r5
	ldr r1, [r5]
	adds r4, r4, r6
	ldr r2, [r4]
	bl sub_8055670
	b _08063642
_08063624:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _08063642
	bl ClearBG1
	ldr r1, _08063648  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08063642:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063648: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806364C
sub_806364C: @ 0x0806364C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080636A8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080636AC  @ gUnknown_085D6F30
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _080636B0  @ gUnknown_080DE050
	str r0, [r5, #0x48]
	ldr r0, _080636B4  @ gUnknown_085D6F48
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _080636B8  @ gUnknown_08727C48
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _080636BC  @ gUnknown_0872796C
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _080636C0  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080636CE
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080636C4
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _080636CE
	.align 2, 0
_080636A8: .4byte gUnknown_0201774C
_080636AC: .4byte gUnknown_085D6F30
_080636B0: .4byte gUnknown_080DE050
_080636B4: .4byte gUnknown_085D6F48
_080636B8: .4byte gUnknown_08727C48
_080636BC: .4byte gUnknown_0872796C
_080636C0: .4byte gUnknown_0203E120
_080636C4:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_080636CE:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80636D8
sub_80636D8: @ 0x080636D8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _08063740
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	ldr r0, _08063720  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806375E
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	adds r1, r0, #0
	cmp r1, #0
	bne _08063728
	ldr r0, _08063724  @ gBG1TilemapBuffer
	b _0806372C
	.align 2, 0
_08063720: .4byte gUnknown_0203E120
_08063724: .4byte gBG1TilemapBuffer
_08063728:
	ldr r0, _0806373C  @ gUnknown_020234E2
	movs r1, #0
_0806372C:
	str r1, [sp]
	movs r1, #3
	movs r2, #0x14
	movs r3, #0
	bl FillBGRect
	b _0806375E
	.align 2, 0
_0806373C: .4byte gUnknown_020234E2
_08063740:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _0806375E
	bl ClearBG1
	ldr r1, _08063768  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806375E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063768: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806376C
sub_806376C: @ 0x0806376C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080637A0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080637A4  @ gUnknown_085D6F6C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	ldr r1, _080637A8  @ gUnknown_080DE086
	str r1, [r0, #0x48]
	ldr r1, _080637AC  @ gUnknown_08726FF4
	str r1, [r0, #0x4c]
	adds r0, r1, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080637A0: .4byte gUnknown_0201774C
_080637A4: .4byte gUnknown_085D6F6C
_080637A8: .4byte gUnknown_080DE086
_080637AC: .4byte gUnknown_08726FF4

	THUMB_FUNC_START sub_80637B0
sub_80637B0: @ 0x080637B0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080637D6
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _080637EC
_080637D6:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080637EC
	ldr r1, _080637F4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080637EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080637F4: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80637F8
sub_80637F8: @ 0x080637F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08063830  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063834  @ gUnknown_085D6F8C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r2, #0
	strh r2, [r0, #0x2c]
	movs r1, #2
	strh r1, [r0, #0x2e]
	strh r2, [r0, #0x30]
	ldr r0, _08063838  @ gUnknown_08728920
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806383C  @ gUnknown_0872865C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063830: .4byte gUnknown_0201774C
_08063834: .4byte gUnknown_085D6F8C
_08063838: .4byte gUnknown_08728920
_0806383C: .4byte gUnknown_0872865C

	THUMB_FUNC_START sub_8063840
sub_8063840: @ 0x08063840
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	cmp r0, r1
	bne _080638E0
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08063894
	ldr r0, [r5, #0x5c]
	movs r4, #2
	ldrsh r3, [r0, r4]
	ldr r4, _08063890  @ gUnknown_085D6FA4
	movs r6, #0x30
	ldrsh r2, [r5, r6]
	lsls r1, r2, #1
	adds r1, r1, r4
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r6, r3, r1
	movs r1, #4
	ldrsh r3, [r0, r1]
	adds r2, #1
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r4, #0
	ldrsh r1, [r2, r4]
	adds r2, r3, r1
	adds r1, r6, #0
	bl sub_80638F0
	b _080638C0
	.align 2, 0
_08063890: .4byte gUnknown_085D6FA4
_08063894:
	ldr r0, [r5, #0x5c]
	movs r6, #2
	ldrsh r3, [r0, r6]
	ldr r4, _080638E8  @ gUnknown_085D6FA4
	movs r1, #0x30
	ldrsh r2, [r5, r1]
	lsls r1, r2, #1
	adds r1, r1, r4
	movs r6, #0
	ldrsh r1, [r1, r6]
	subs r6, r3, r1
	movs r1, #4
	ldrsh r3, [r0, r1]
	adds r2, #1
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r4, #0
	ldrsh r1, [r2, r4]
	adds r2, r3, r1
	adds r1, r6, #0
	bl sub_80638F0
_080638C0:
	movs r0, #0
	strh r0, [r5, #0x2c]
	ldrh r0, [r5, #0x30]
	adds r0, #2
	strh r0, [r5, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080638E0
	ldr r1, _080638EC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_080638E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080638E8: .4byte gUnknown_085D6FA4
_080638EC: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80638F0
sub_80638F0: @ 0x080638F0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r1, _0806393C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063940  @ gUnknown_085D6FB4
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x46
	strh r0, [r4, #0x2e]
	ldr r3, _08063944  @ gUnknown_08728C04
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	strh r6, [r0, #2]
	mov r1, r8
	strh r1, [r0, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806393C: .4byte gUnknown_0201774C
_08063940: .4byte gUnknown_085D6FB4
_08063944: .4byte gUnknown_08728C04

	THUMB_FUNC_START sub_8063948
sub_8063948: @ 0x08063948
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	bne _0806396C
	ldr r1, _08063970  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_0806396C:
	pop {r0}
	bx r0
	.align 2, 0
_08063970: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimLuna
StartSpellAnimLuna: @ 0x08063974
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080639AC  @ gUnknown_085D6FCC
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080639AC: .4byte gUnknown_085D6FCC

	THUMB_FUNC_START sub_80639B0
sub_80639B0: @ 0x080639B0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r6, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r5, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r7, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _080639DE
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_080639DE:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r5, #1
	cmp r1, r0
	bne _08063A64
	adds r0, r6, #0
	bl sub_8063B6C
	ldr r4, _08063A5C  @ gLCDControlBuffer
	ldrb r1, [r4, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #1]
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_805BA1C
	movs r5, #0x80
	lsls r5, r5, #1
	movs r0, #2
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x14
	movs r2, #0xf
	adds r3, r5, #0
	bl sub_805B400
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0x14
	bl sub_806428C
	movs r3, #0x20
	ldrsh r2, [r4, r3]
	adds r0, r6, #0
	movs r1, #0x14
	movs r3, #0
	bl sub_805B828
	ldr r0, _08063A60  @ 0x000002BD
	adds r1, r5, #0
	movs r2, #0x78
	movs r3, #1
	bl sub_80729A4
	b _08063B62
	.align 2, 0
_08063A5C: .4byte gLCDControlBuffer
_08063A60: .4byte 0x000002BD
_08063A64:
	adds r0, r5, #0
	adds r0, #0x29
	cmp r1, r0
	bne _08063A92
	bl sub_8063C20
	adds r0, r6, #0
	movs r1, #0x15
	movs r2, #1
	bl sub_805B93C
	adds r0, r6, #0
	bl sub_8064024
	str r7, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x19
	movs r3, #0x10
	bl sub_805BA1C
	b _08063B62
_08063A92:
	adds r0, r5, #0
	adds r0, #0x37
	cmp r1, r0
	bne _08063AB0
	ldr r0, _08063AAC  @ 0x000002BE
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r6, r3]
	movs r3, #0
	bl sub_80729A4
	b _08063B62
	.align 2, 0
_08063AAC: .4byte 0x000002BE
_08063AB0:
	adds r0, r5, #0
	adds r0, #0x46
	cmp r1, r0
	bne _08063B02
	adds r0, r6, #0
	movs r1, #0x41
	bl sub_8063D64
	adds r0, r6, #0
	movs r1, #0x41
	bl sub_8063EA0
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0x10
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0xa
	movs r3, #0
	bl sub_805BA1C
	movs r0, #1
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0x41
	movs r2, #2
	movs r3, #0x80
	bl sub_805B400
	adds r0, r6, #0
	movs r1, #0x44
	movs r2, #0
	bl sub_805B93C
	b _08063B62
_08063B02:
	adds r0, r5, #0
	adds r0, #0x87
	cmp r1, r0
	bne _08063B32
	adds r0, r6, #0
	movs r1, #5
	bl StartSpellBG_FLASH
	ldrh r0, [r6, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r6, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r6, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _08063B62
	adds r0, r6, #0
	bl sub_8072450
	b _08063B62
_08063B32:
	adds r0, r5, #0
	adds r0, #0x8c
	cmp r1, r0
	bne _08063B4C
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, [r4, #0x5c]
	bl sub_8063F3C
	b _08063B62
_08063B4C:
	adds r0, r5, #0
	adds r0, #0xbe
	cmp r1, r0
	bne _08063B62
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08063B62:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8063B6C
sub_8063B6C: @ 0x08063B6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08063BB0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063BB4  @ gUnknown_085D6FE4
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _08063BB8  @ gUnknown_080DE0CE
	str r1, [r0, #0x48]
	ldr r1, _08063BBC  @ gUnknown_085D6FFC
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r0, _08063BC0  @ gUnknown_0872972C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _08063BC4  @ gUnknown_08728C5C
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063BB0: .4byte gUnknown_0201774C
_08063BB4: .4byte gUnknown_085D6FE4
_08063BB8: .4byte gUnknown_080DE0CE
_08063BBC: .4byte gUnknown_085D6FFC
_08063BC0: .4byte gUnknown_0872972C
_08063BC4: .4byte gUnknown_08728C5C

	THUMB_FUNC_START sub_8063BC8
sub_8063BC8: @ 0x08063BC8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _08063BF6
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _08063C14
_08063BF6:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _08063C14
	bl ClearBG1
	ldr r1, _08063C1C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08063C14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063C1C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8063C20
sub_8063C20: @ 0x08063C20
	push {lr}
	ldr r0, _08063C3C  @ gUnknown_085D7000
	movs r1, #3
	bl Proc_Create
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	bl sub_8063CFC
	pop {r0}
	bx r0
	.align 2, 0
_08063C3C: .4byte gUnknown_085D7000

	THUMB_FUNC_START sub_8063C40
sub_8063C40: @ 0x08063C40
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r0, _08063CA4  @ gUnknown_0201FDB8
	ldr r0, [r0]
	ldr r5, _08063CA8  @ gUnknown_0201FB38
	cmp r0, #0
	bne _08063C56
	ldr r5, _08063CAC  @ gUnknown_0201FC78
_08063C56:
	ldr r3, _08063CB0  @ gUnknown_0201FDC4
	cmp r0, #0
	bne _08063C5E
	ldr r3, _08063CB4  @ gUnknown_0201FF04
_08063C5E:
	movs r4, #0
	movs r6, #0
	ldr r0, _08063CB8  @ gUnknown_085D7030
	movs r1, #0xe0
	lsls r1, r1, #0xf
	mov r8, r1
	movs r2, #0x70
	mov ip, r2
	adds r7, r0, #0
	subs r7, #0x20
_08063C72:
	cmp r4, #0xf
	bls _08063CD0
	cmp r4, #0x6f
	bhi _08063CD0
	movs r0, #0
	ldrsh r1, [r7, r0]
	mov r2, r9
	ldr r0, [r2, #0x44]
	muls r0, r1, r0
	lsls r0, r0, #4
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08063CC8
	cmp r4, #0x3f
	bhi _08063CC0
	adds r0, r4, #0
	subs r0, #0x70
	cmp r1, r0
	bcs _08063CC8
	ldr r1, _08063CBC  @ 0x0000FF90
	adds r0, r4, r1
	lsls r0, r0, #0x10
	b _08063CC6
	.align 2, 0
_08063CA4: .4byte gUnknown_0201FDB8
_08063CA8: .4byte gUnknown_0201FB38
_08063CAC: .4byte gUnknown_0201FC78
_08063CB0: .4byte gUnknown_0201FDC4
_08063CB4: .4byte gUnknown_0201FF04
_08063CB8: .4byte gUnknown_085D7030
_08063CBC: .4byte 0x0000FF90
_08063CC0:
	cmp r1, ip
	bls _08063CC8
	mov r0, r8
_08063CC6:
	lsrs r2, r0, #0x10
_08063CC8:
	strh r2, [r5]
	adds r5, #2
	strh r2, [r3]
	b _08063CD6
_08063CD0:
	strh r6, [r5]
	adds r5, #2
	strh r6, [r3]
_08063CD6:
	adds r3, #2
	ldr r1, _08063CF8  @ 0xFFFF0000
	add r8, r1
	movs r2, #1
	negs r2, r2
	add ip, r2
	adds r7, #2
	adds r4, #1
	cmp r4, #0x9f
	bls _08063C72
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063CF8: .4byte 0xFFFF0000

	THUMB_FUNC_START sub_8063CFC
sub_8063CFC: @ 0x08063CFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08063D18  @ gUnknown_085D7018
	movs r1, #3
	bl Proc_Create
	movs r1, #0
	strh r1, [r0, #0x2c]
	movs r1, #0x14
	strh r1, [r0, #0x2e]
	str r4, [r0, #0x5c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063D18: .4byte gUnknown_085D7018

	THUMB_FUNC_START sub_8063D1C
sub_8063D1C: @ 0x08063D1C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x5c]
	movs r2, #0x80
	lsls r2, r2, #7
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl sub_8012DCC
	str r0, [r5, #0x44]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _08063D5A
	adds r0, r5, #0
	bl Proc_Delete
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08063D5A:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8063D64
sub_8063D64: @ 0x08063D64
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08063DC8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063DCC  @ gUnknown_085D70F0
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	str r4, [r6, #0x5c]
	movs r0, #0
	strh r0, [r6, #0x2c]
	strh r5, [r6, #0x2e]
	ldr r0, _08063DD0  @ gUnknown_0872987C
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _08063DD4  @ gUnknown_08729FDC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl ClearBG1
	ldr r0, _08063DD8  @ gUnknown_0872A1BC
	ldr r4, _08063DDC  @ gUnknown_02019790
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08063DE4
	ldr r1, _08063DE0  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #0x20
	bl sub_8070EC4
	b _08063DF8
	.align 2, 0
_08063DC8: .4byte gUnknown_0201774C
_08063DCC: .4byte gUnknown_085D70F0
_08063DD0: .4byte gUnknown_0872987C
_08063DD4: .4byte gUnknown_08729FDC
_08063DD8: .4byte gUnknown_0872A1BC
_08063DDC: .4byte gUnknown_02019790
_08063DE0: .4byte gBG1TilemapBuffer
_08063DE4:
	ldr r1, _08063E24  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #0x20
	bl sub_8070E94
_08063DF8:
	movs r0, #2
	bl BG_EnableSyncByMask
	bl sub_80551B0
	ldr r0, _08063E28  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08063E36
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08063E2C
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _08063E36
	.align 2, 0
_08063E24: .4byte gBG1TilemapBuffer
_08063E28: .4byte gUnknown_0203E120
_08063E2C:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_08063E36:
	ldr r2, _08063E54  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08063E54: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_8063E58
sub_8063E58: @ 0x08063E58
	push {lr}
	bl ClearBG1
	ldr r1, _08063E70  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	pop {r0}
	bx r0
	.align 2, 0
_08063E70: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8063E74
sub_8063E74: @ 0x08063E74
	push {lr}
	adds r2, r0, #0
	ldr r1, _08063E9C  @ gLCDControlBuffer
	ldrh r0, [r1, #0x22]
	adds r0, #1
	strh r0, [r1, #0x22]
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	ble _08063E98
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_08063E98:
	pop {r0}
	bx r0
	.align 2, 0
_08063E9C: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_8063EA0
sub_8063EA0: @ 0x08063EA0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08063ED8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063EDC  @ gUnknown_085D7110
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	strh r5, [r0, #0x30]
	str r1, [r0, #0x44]
	ldr r1, _08063EE0  @ gUnknown_080DE106
	str r1, [r0, #0x48]
	ldr r1, _08063EE4  @ gUnknown_08729FDC
	str r1, [r0, #0x4c]
	adds r0, r1, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08063ED8: .4byte gUnknown_0201774C
_08063EDC: .4byte gUnknown_085D7110
_08063EE0: .4byte gUnknown_080DE106
_08063EE4: .4byte gUnknown_08729FDC

	THUMB_FUNC_START sub_8063EE8
sub_8063EE8: @ 0x08063EE8
	ldr r1, _08063EF4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08063EF4: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8063EF8
sub_8063EF8: @ 0x08063EF8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _08063F1C
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
_08063F1C:
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _08063F34
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08063F34:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8063F3C
sub_8063F3C: @ 0x08063F3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08063F94  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063F98  @ gUnknown_085D7138
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _08063F9C  @ gUnknown_080DE150
	str r0, [r5, #0x48]
	ldr r0, _08063FA0  @ gUnknown_085D7150
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08063FA4  @ gUnknown_085D7180
	str r0, [r5, #0x54]
	ldr r0, _08063FA8  @ gUnknown_0872CE60
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _08063FAC  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08063FBA
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08063FB0
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _08063FBA
	.align 2, 0
_08063F94: .4byte gUnknown_0201774C
_08063F98: .4byte gUnknown_085D7138
_08063F9C: .4byte gUnknown_080DE150
_08063FA0: .4byte gUnknown_085D7150
_08063FA4: .4byte gUnknown_085D7180
_08063FA8: .4byte gUnknown_0872CE60
_08063FAC: .4byte gUnknown_0203E120
_08063FB0:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_08063FBA:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8063FC0
sub_8063FC0: @ 0x08063FC0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _08063FFC
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	b _0806401A
_08063FFC:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _0806401A
	bl ClearBG1
	ldr r1, _08064020  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806401A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064020: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8064024
sub_8064024: @ 0x08064024
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0806402A:
	ldr r0, _08064054  @ gUnknown_085D71B0
	movs r1, #3
	bl Proc_Create
	str r5, [r0, #0x5c]
	str r4, [r0, #0x44]
	adds r4, #1
	cmp r4, #7
	bls _0806402A
	ldr r0, _08064058  @ gUnknown_0872DE04
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806405C  @ gUnknown_0872DA04
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064054: .4byte gUnknown_085D71B0
_08064058: .4byte gUnknown_0872DE04
_0806405C: .4byte gUnknown_0872DA04

	THUMB_FUNC_START sub_8064060
sub_8064060: @ 0x08064060
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _080640C0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r5, #0
	strh r5, [r4, #0x2c]
	strh r5, [r4, #0x2e]
	ldr r1, [r4, #0x44]
	ldr r0, _080640C4  @ 0x00002AAA
	muls r0, r1, r0
	strh r0, [r4, #0x30]
	ldr r3, _080640C8  @ gUnknown_0872DFEC
	ldr r0, [r4, #0x5c]
	str r3, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	strh r5, [r0, #6]
	ldrh r2, [r0, #8]
	ldr r1, _080640CC  @ 0x0000F3FF
	ands r1, r2
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r1, [r4, #0x5c]
	ldrh r0, [r1, #2]
	strh r0, [r4, #0x32]
	ldrh r0, [r1, #4]
	strh r0, [r4, #0x3a]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080640C0: .4byte gUnknown_0201774C
_080640C4: .4byte 0x00002AAA
_080640C8: .4byte gUnknown_0872DFEC
_080640CC: .4byte 0x0000F3FF

	THUMB_FUNC_START sub_80640D0
sub_80640D0: @ 0x080640D0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x60]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r7, #0x14
	str r7, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0x32
	bl sub_8012DCC
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r3, [r4, #0x30]
	adds r1, r1, r3
	movs r6, #0
	strh r1, [r4, #0x30]
	ldrh r2, [r4, #0x30]
	lsrs r2, r2, #8
	ldr r3, _08064164  @ gSinLookup
	lsls r1, r2, #1
	adds r1, r1, r3
	adds r2, #0x40
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	lsls r1, r1, #4
	movs r3, #0
	ldrsh r2, [r2, r3]
	muls r0, r2, r0
	lsls r0, r0, #4
	asrs r1, r1, #0x10
	ldrh r2, [r4, #0x32]
	adds r1, r1, r2
	asrs r0, r0, #0x10
	ldrh r3, [r4, #0x3a]
	adds r0, r0, r3
	strh r1, [r5, #2]
	strh r0, [r5, #4]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _0806413C
	strh r7, [r4, #0x2c]
_0806413C:
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _0806415C
	strh r6, [r4, #0x2c]
	strh r6, [r4, #0x2e]
	ldr r0, _08064168  @ gUnknown_0872E24C
	str r0, [r5, #0x24]
	str r0, [r5, #0x20]
	strh r6, [r5, #6]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806415C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064164: .4byte gSinLookup
_08064168: .4byte gUnknown_0872E24C

	THUMB_FUNC_START sub_806416C
sub_806416C: @ 0x0806416C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x60]
	movs r3, #0x32
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r4, #0x30]
	adds r0, r0, r2
	movs r6, #0
	strh r0, [r4, #0x30]
	ldrh r0, [r4, #0x30]
	lsrs r0, r0, #8
	ldr r2, _080641E8  @ gSinLookup
	lsls r1, r0, #1
	adds r1, r1, r2
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	muls r1, r3, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3, r0
	asrs r1, r1, #0xc
	ldrh r2, [r4, #0x32]
	adds r1, r1, r2
	asrs r0, r0, #0xc
	ldrh r2, [r4, #0x3a]
	adds r0, r0, r2
	strh r1, [r5, #2]
	strh r0, [r5, #4]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080641C0
	movs r0, #0x3c
	strh r0, [r4, #0x2c]
_080641C0:
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080641E0
	strh r6, [r4, #0x2c]
	strh r6, [r4, #0x2e]
	ldr r0, _080641EC  @ gUnknown_0872E024
	str r0, [r5, #0x24]
	str r0, [r5, #0x20]
	strh r6, [r5, #6]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080641E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080641E8: .4byte gSinLookup
_080641EC: .4byte gUnknown_0872E024

	THUMB_FUNC_START sub_80641F0
sub_80641F0: @ 0x080641F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x60]
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	movs r6, #0xa
	str r6, [sp]
	movs r0, #1
	movs r1, #0x32
	movs r2, #0
	bl sub_8012DCC
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	ldrh r3, [r5, #0x30]
	adds r1, r1, r3
	strh r1, [r5, #0x30]
	ldrh r2, [r5, #0x30]
	lsrs r2, r2, #8
	ldr r3, _08064284  @ gSinLookup
	lsls r1, r2, #1
	adds r1, r1, r3
	adds r2, #0x40
	lsls r2, r2, #1
	adds r2, r2, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r1, r0, r1
	lsls r1, r1, #4
	movs r3, #0
	ldrsh r2, [r2, r3]
	muls r0, r2, r0
	lsls r0, r0, #4
	asrs r1, r1, #0x10
	ldrh r2, [r5, #0x32]
	adds r1, r1, r2
	asrs r0, r0, #0x10
	ldrh r3, [r5, #0x3a]
	adds r0, r0, r3
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _0806425A
	strh r6, [r5, #0x2c]
_0806425A:
	ldrh r0, [r5, #0x2e]
	adds r0, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _0806427C
	ldr r0, _08064288  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r5, #0x60]
	bl AIS_Free
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0806427C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064284: .4byte gSinLookup
_08064288: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806428C
sub_806428C: @ 0x0806428C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r1, _080642B4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080642B8  @ gUnknown_085D71E0
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	str r6, [r0, #0x64]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080642B4: .4byte gUnknown_0201774C
_080642B8: .4byte gUnknown_085D71E0

	THUMB_FUNC_START sub_80642BC
sub_80642BC: @ 0x080642BC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x64]
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	str r0, [sp]
	movs r0, #4
	movs r1, #0x80
	movs r2, #0
	bl sub_8012DCC
	str r0, [r4, #0x4c]
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	cmp r0, r1
	ble _080642FA
	ldr r1, _08064304  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_080642FA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064304: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8064308
sub_8064308: @ 0x08064308
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08064340  @ gUnknown_085D71F8
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064340: .4byte gUnknown_085D71F8

	THUMB_FUNC_START sub_8064344
sub_8064344: @ 0x08064344
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r6, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	movs r2, #0
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08064374
	ldr r0, [r5, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _0806441C
_08064374:
	movs r0, #0x2c
	ldrsh r1, [r5, r0]
	adds r0, r6, #1
	cmp r1, r0
	bne _080643A0
	movs r0, #0x10
	str r0, [sp]
	str r2, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x14
	movs r3, #0
	bl sub_805BA1C
	adds r0, r4, #0
	bl sub_8064C28
	ldr r0, _0806439C  @ 0x000003B5
	b _080643EA
	.align 2, 0
_0806439C: .4byte 0x000003B5
_080643A0:
	adds r0, r6, #0
	adds r0, #0x29
	cmp r1, r0
	bne _080643BA
	str r2, [sp]
	str r2, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x14
	movs r3, #0x10
	bl sub_805BA1C
	b _0806441C
_080643BA:
	adds r0, r6, #0
	adds r0, #0x3f
	cmp r1, r0
	bne _080643D4
	movs r0, #0xf
	bl sub_80646FC
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #1
	bl sub_805B93C
	b _0806441C
_080643D4:
	adds r0, r6, #0
	adds r0, #0x40
	cmp r1, r0
	bne _08064400
	adds r0, r4, #0
	bl sub_80644E0
	adds r0, r4, #0
	bl sub_806466C
	ldr r0, _080643FC  @ 0x000002BF
_080643EA:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r3, #1
	bl sub_80729A4
	b _0806441C
	.align 2, 0
_080643FC: .4byte 0x000002BF
_08064400:
	adds r0, r6, #0
	adds r0, #0x6c
	cmp r1, r0
	bne _0806441C
	movs r0, #0xb0
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r5, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
_0806441C:
	adds r7, r5, #0
	adds r7, #0x29
	ldrb r0, [r7]
	cmp r0, #0
	bne _080644A2
	movs r0, #0x2c
	ldrsh r1, [r5, r0]
	adds r0, r6, #0
	adds r0, #0x71
	cmp r1, r0
	bne _08064444
	adds r0, r4, #0
	bl sub_8064B90
	adds r0, r4, #0
	bl sub_8064838
	adds r0, r4, #0
	bl sub_8064958
_08064444:
	movs r3, #0x2c
	ldrsh r1, [r5, r3]
	adds r0, r6, #0
	adds r0, #0x92
	cmp r1, r0
	bne _0806446E
	adds r0, r4, #0
	movs r1, #5
	bl StartSpellBG_FLASH
	ldrh r0, [r4, #0x10]
	movs r1, #9
	orrs r1, r0
	strh r1, [r4, #0x10]
	ldrb r1, [r7]
	adds r0, r4, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	adds r0, r4, #0
	bl sub_8072450
_0806446E:
	movs r0, #0x2c
	ldrsh r1, [r5, r0]
	adds r0, r6, #0
	adds r0, #0x98
	cmp r1, r0
	bne _08064486
	adds r0, r4, #0
	bl sub_80649E4
	adds r0, r4, #0
	bl sub_8064B04
_08064486:
	movs r3, #0x2c
	ldrsh r1, [r5, r3]
	adds r0, r6, #0
	adds r0, #0xa7
	cmp r1, r0
	bne _080644D8
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
	b _080644D8
_080644A2:
	movs r0, #0x2c
	ldrsh r1, [r5, r0]
	adds r0, r6, #0
	adds r0, #0x6e
	cmp r1, r0
	bne _080644BE
	ldrh r0, [r4, #0x10]
	movs r1, #9
	orrs r1, r0
	strh r1, [r4, #0x10]
	ldrb r1, [r7]
	adds r0, r4, #0
	bl ThisMakesTheHPInSpellAnimGoAway
_080644BE:
	movs r3, #0x2c
	ldrsh r1, [r5, r3]
	adds r0, r6, #0
	adds r0, #0x6f
	cmp r1, r0
	bne _080644D8
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_080644D8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80644E0
sub_80644E0: @ 0x080644E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08064534  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08064538  @ gUnknown_085D7210
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	movs r1, #0x28
	strh r1, [r0, #0x2e]
	ldr r0, _0806453C  @ gUnknown_0872E25C
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl ClearBG1
	ldr r0, _08064540  @ gUnknown_0872E7EC
	ldr r1, _08064544  @ gUnknown_02019790
	bl LZ77UnCompWram
	bl sub_80551B0
	ldr r2, _08064548  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064534: .4byte gUnknown_0201774C
_08064538: .4byte gUnknown_085D7210
_0806453C: .4byte gUnknown_0872E25C
_08064540: .4byte gUnknown_0872E7EC
_08064544: .4byte gUnknown_02019790
_08064548: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_806454C
sub_806454C: @ 0x0806454C
	push {lr}
	bl ClearBG1
	ldr r1, _08064564  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	pop {r0}
	bx r0
	.align 2, 0
_08064564: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8064568
sub_8064568: @ 0x08064568
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08064598
	ldr r0, _08064590  @ gUnknown_02019790
	ldr r1, _08064594  @ gBG1TilemapBuffer
	movs r2, #1
	str r2, [sp]
	adds r2, #0xff
	str r2, [sp, #4]
	movs r2, #0x20
	movs r3, #0x20
	bl sub_8070EC4
	b _080645AC
	.align 2, 0
_08064590: .4byte gUnknown_02019790
_08064594: .4byte gBG1TilemapBuffer
_08064598:
	ldr r0, _080645DC  @ gUnknown_02019790
	ldr r1, _080645E0  @ gBG1TilemapBuffer
	movs r2, #1
	str r2, [sp]
	adds r2, #0xff
	str r2, [sp, #4]
	movs r2, #0x20
	movs r3, #0x20
	bl sub_8070E94
_080645AC:
	movs r0, #2
	bl BG_EnableSyncByMask
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r2, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _080645EE
	strh r2, [r4, #0x2c]
	movs r0, #6
	strh r0, [r4, #0x2e]
	strh r2, [r4, #0x32]
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080645E4
	movs r0, #0x80
	b _080645E6
	.align 2, 0
_080645DC: .4byte gUnknown_02019790
_080645E0: .4byte gBG1TilemapBuffer
_080645E4:
	ldr r0, _080645F8  @ 0x0000FF80
_080645E6:
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080645EE:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080645F8: .4byte 0x0000FF80

	THUMB_FUNC_START sub_80645FC
sub_80645FC: @ 0x080645FC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r5, #0x34
	ldrsh r2, [r4, r5]
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	str r0, [sp]
	movs r0, #0
	bl sub_8012DCC
	ldr r1, _08064648  @ gLCDControlBuffer
	strh r0, [r1, #0x20]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0806463E
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0xc
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806463E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064648: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_806464C
sub_806464C: @ 0x0806464C
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	ble _08064668
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_08064668:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806466C
sub_806466C: @ 0x0806466C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080646A0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080646A4  @ gUnknown_085D7240
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	ldr r1, _080646A8  @ gUnknown_080DE1CE
	str r1, [r0, #0x48]
	ldr r1, _080646AC  @ gUnknown_0872E64C
	str r1, [r0, #0x4c]
	adds r0, r1, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080646A0: .4byte gUnknown_0201774C
_080646A4: .4byte gUnknown_085D7240
_080646A8: .4byte gUnknown_080DE1CE
_080646AC: .4byte gUnknown_0872E64C

	THUMB_FUNC_START sub_80646B0
sub_80646B0: @ 0x080646B0
	ldr r1, _080646BC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_080646BC: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80646C0
sub_80646C0: @ 0x080646C0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080646E6
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _080646F4
_080646E6:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080646F4
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080646F4:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80646FC
sub_80646FC: @ 0x080646FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806471C  @ gUnknown_085D7268
	movs r1, #3
	bl Proc_Create
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	adds r1, r4, #0
	bl sub_80647D0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806471C: .4byte gUnknown_085D7268

	THUMB_FUNC_START sub_8064720
sub_8064720: @ 0x08064720
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	ldr r0, _0806477C  @ gUnknown_0201FDB8
	ldr r0, [r0]
	ldr r5, _08064780  @ gUnknown_0201FB38
	cmp r0, #0
	bne _08064736
	ldr r5, _08064784  @ gUnknown_0201FC78
_08064736:
	ldr r4, _08064788  @ gUnknown_0201FDC4
	cmp r0, #0
	bne _0806473E
	ldr r4, _0806478C  @ gUnknown_0201FF04
_0806473E:
	movs r3, #0
	movs r0, #0
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #0x10
	mov ip, r1
	movs r7, #0x80
	ldr r6, _08064790  @ gUnknown_085D7298
_0806474E:
	cmp r3, #0x7f
	bhi _080647A8
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r2, r9
	ldr r0, [r2, #0x44]
	muls r0, r1, r0
	lsls r0, r0, #4
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _080647A0
	cmp r3, #0x3f
	bhi _08064798
	adds r0, r3, #0
	subs r0, #0x80
	cmp r1, r0
	bcs _080647A0
	ldr r1, _08064794  @ 0x0000FF80
	adds r0, r3, r1
	lsls r0, r0, #0x10
	b _0806479E
	.align 2, 0
_0806477C: .4byte gUnknown_0201FDB8
_08064780: .4byte gUnknown_0201FB38
_08064784: .4byte gUnknown_0201FC78
_08064788: .4byte gUnknown_0201FDC4
_0806478C: .4byte gUnknown_0201FF04
_08064790: .4byte gUnknown_085D7298
_08064794: .4byte 0x0000FF80
_08064798:
	cmp r1, r7
	bls _080647A0
	mov r0, ip
_0806479E:
	lsrs r2, r0, #0x10
_080647A0:
	strh r2, [r5]
	adds r5, #2
	strh r2, [r4]
	b _080647B0
_080647A8:
	mov r1, r8
	strh r1, [r5]
	adds r5, #2
	strh r1, [r4]
_080647B0:
	adds r4, #2
	ldr r2, _080647CC  @ 0xFFFF0000
	add ip, r2
	subs r7, #1
	adds r6, #2
	adds r3, #1
	cmp r3, #0x9f
	bls _0806474E
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080647CC: .4byte 0xFFFF0000

	THUMB_FUNC_START sub_80647D0
sub_80647D0: @ 0x080647D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080647EC  @ gUnknown_085D7280
	movs r1, #3
	bl Proc_Create
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r4, [r0, #0x2e]
	str r5, [r0, #0x5c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080647EC: .4byte gUnknown_085D7280

	THUMB_FUNC_START sub_80647F0
sub_80647F0: @ 0x080647F0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #7
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	str r0, [sp]
	movs r0, #4
	movs r2, #0
	bl sub_8012DCC
	str r0, [r5, #0x44]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0806482E
	adds r0, r5, #0
	bl Proc_Delete
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806482E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8064838
sub_8064838: @ 0x08064838
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _0806487C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08064880  @ gUnknown_085D7398
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	movs r0, #0xc
	strh r0, [r5, #0x2e]
	ldr r0, _08064884  @ gUnknown_0872E998
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl ClearBG1
	ldr r0, _08064888  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08064894
	ldr r0, _0806488C  @ gUnknown_0872FA84
	ldr r1, _08064890  @ gUnknown_02019790
	bl LZ77UnCompWram
	b _0806489C
	.align 2, 0
_0806487C: .4byte gUnknown_0201774C
_08064880: .4byte gUnknown_085D7398
_08064884: .4byte gUnknown_0872E998
_08064888: .4byte gUnknown_0203E120
_0806488C: .4byte gUnknown_0872FA84
_08064890: .4byte gUnknown_02019790
_08064894:
	ldr r0, _080648BC  @ gUnknown_0872FEB8
	ldr r1, _080648C0  @ gUnknown_02019790
	bl LZ77UnCompWram
_0806489C:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080648C8
	ldr r0, _080648C0  @ gUnknown_02019790
	ldr r1, _080648C4  @ gBG1TilemapBuffer
	movs r2, #1
	str r2, [sp]
	adds r2, #0xff
	str r2, [sp, #4]
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070EC4
	b _080648DC
	.align 2, 0
_080648BC: .4byte gUnknown_0872FEB8
_080648C0: .4byte gUnknown_02019790
_080648C4: .4byte gBG1TilemapBuffer
_080648C8:
	ldr r0, _08064910  @ gUnknown_02019790
	ldr r1, _08064914  @ gBG1TilemapBuffer
	movs r2, #1
	str r2, [sp]
	adds r2, #0xff
	str r2, [sp, #4]
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070E94
_080648DC:
	movs r0, #2
	bl BG_EnableSyncByMask
	bl sub_80551B0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r2, _08064918  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064910: .4byte gUnknown_02019790
_08064914: .4byte gBG1TilemapBuffer
_08064918: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_806491C
sub_806491C: @ 0x0806491C
	push {lr}
	bl ClearBG1
	ldr r1, _08064934  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	pop {r0}
	bx r0
	.align 2, 0
_08064934: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8064938
sub_8064938: @ 0x08064938
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	ble _08064954
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_08064954:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8064958
sub_8064958: @ 0x08064958
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806498C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08064990  @ gUnknown_085D73B8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	ldr r1, _08064994  @ gUnknown_080DE24C
	str r1, [r0, #0x48]
	ldr r1, _08064998  @ gUnknown_0872FA04
	str r1, [r0, #0x4c]
	adds r0, r1, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806498C: .4byte gUnknown_0201774C
_08064990: .4byte gUnknown_085D73B8
_08064994: .4byte gUnknown_080DE24C
_08064998: .4byte gUnknown_0872FA04

	THUMB_FUNC_START sub_806499C
sub_806499C: @ 0x0806499C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080649C2
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _080649D8
_080649C2:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080649D8
	ldr r1, _080649E0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080649D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080649E0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80649E4
sub_80649E4: @ 0x080649E4
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _08064A28  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08064A2C  @ gUnknown_085D73D8
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	movs r0, #0xc
	strh r0, [r5, #0x2e]
	ldr r0, _08064A30  @ gUnknown_08725DCC
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl ClearBG1
	ldr r0, _08064A34  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08064A40
	ldr r0, _08064A38  @ gUnknown_087270B4
	ldr r1, _08064A3C  @ gUnknown_02019790
	bl LZ77UnCompWram
	b _08064A48
	.align 2, 0
_08064A28: .4byte gUnknown_0201774C
_08064A2C: .4byte gUnknown_085D73D8
_08064A30: .4byte gUnknown_08725DCC
_08064A34: .4byte gUnknown_0203E120
_08064A38: .4byte gUnknown_087270B4
_08064A3C: .4byte gUnknown_02019790
_08064A40:
	ldr r0, _08064A68  @ gUnknown_08727510
	ldr r1, _08064A6C  @ gUnknown_02019790
	bl LZ77UnCompWram
_08064A48:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08064A74
	ldr r0, _08064A6C  @ gUnknown_02019790
	ldr r1, _08064A70  @ gBG1TilemapBuffer
	movs r2, #1
	str r2, [sp]
	adds r2, #0xff
	str r2, [sp, #4]
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070EC4
	b _08064A88
	.align 2, 0
_08064A68: .4byte gUnknown_08727510
_08064A6C: .4byte gUnknown_02019790
_08064A70: .4byte gBG1TilemapBuffer
_08064A74:
	ldr r0, _08064ABC  @ gUnknown_02019790
	ldr r1, _08064AC0  @ gBG1TilemapBuffer
	movs r2, #1
	str r2, [sp]
	adds r2, #0xff
	str r2, [sp, #4]
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070E94
_08064A88:
	movs r0, #2
	bl BG_EnableSyncByMask
	bl sub_80551B0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r2, _08064AC4  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064ABC: .4byte gUnknown_02019790
_08064AC0: .4byte gBG1TilemapBuffer
_08064AC4: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_8064AC8
sub_8064AC8: @ 0x08064AC8
	push {lr}
	bl ClearBG1
	ldr r1, _08064AE0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	pop {r0}
	bx r0
	.align 2, 0
_08064AE0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8064AE4
sub_8064AE4: @ 0x08064AE4
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	ble _08064B00
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_08064B00:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8064B04
sub_8064B04: @ 0x08064B04
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08064B38  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08064B3C  @ gUnknown_085D73F8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	ldr r1, _08064B40  @ gUnknown_080DE284
	str r1, [r0, #0x48]
	ldr r1, _08064B44  @ gUnknown_087302A4
	str r1, [r0, #0x4c]
	adds r0, r1, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064B38: .4byte gUnknown_0201774C
_08064B3C: .4byte gUnknown_085D73F8
_08064B40: .4byte gUnknown_080DE284
_08064B44: .4byte gUnknown_087302A4

	THUMB_FUNC_START sub_8064B48
sub_8064B48: @ 0x08064B48
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _08064B6E
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08064B84
_08064B6E:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _08064B84
	ldr r1, _08064B8C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08064B84:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064B8C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8064B90
sub_8064B90: @ 0x08064B90
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08064BE8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08064BEC  @ gUnknown_085D7418
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x28
	strh r0, [r4, #0x2e]
	ldr r3, _08064BF0  @ gUnknown_087312BC
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r1, [r4, #0x5c]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	ldr r1, [r4, #0x5c]
	ldrh r1, [r1, #4]
	strh r1, [r0, #4]
	ldr r0, _08064BF4  @ gUnknown_08730780
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08064BF8  @ gUnknown_08730324
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064BE8: .4byte gUnknown_0201774C
_08064BEC: .4byte gUnknown_085D7418
_08064BF0: .4byte gUnknown_087312BC
_08064BF4: .4byte gUnknown_08730780
_08064BF8: .4byte gUnknown_08730324

	THUMB_FUNC_START sub_8064BFC
sub_8064BFC: @ 0x08064BFC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	bne _08064C20
	ldr r1, _08064C24  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_08064C20:
	pop {r0}
	bx r0
	.align 2, 0
_08064C24: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8064C28
sub_8064C28: @ 0x08064C28
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08064C68  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08064C6C  @ gUnknown_085D7430
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	strh r1, [r0, #0x32]
	ldr r1, _08064C70  @ gUnknown_080DE2B8
	str r1, [r0, #0x48]
	ldr r1, _08064C74  @ gUnknown_085D744C
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _08064C78  @ gUnknown_085D7448
	str r1, [r0, #0x54]
	ldr r0, _08064C7C  @ gUnknown_08724424
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064C68: .4byte gUnknown_0201774C
_08064C6C: .4byte gUnknown_085D7430
_08064C70: .4byte gUnknown_080DE2B8
_08064C74: .4byte gUnknown_085D744C
_08064C78: .4byte gUnknown_085D7448
_08064C7C: .4byte gUnknown_08724424

	THUMB_FUNC_START sub_8064C80
sub_8064C80: @ 0x08064C80
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r0, #0x10
	movs r1, #0xf0
	bl __modsi3
	strh r0, [r4, #0x32]
	ldrh r1, [r4, #0x32]
	movs r0, #1
	movs r2, #0
	bl BG_SetPosition
	adds r0, r4, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _08064CD4
	ldr r1, [r4, #0x4c]
	ldr r5, [r4, #0x54]
	ldr r0, [r4, #0x5c]
	lsls r4, r2, #2
	adds r1, r4, r1
	ldr r1, [r1]
	movs r2, #0x20
	movs r3, #0x14
	bl sub_805576C
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	b _08064CF2
_08064CD4:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _08064CF2
	bl ClearBG1
	ldr r1, _08064CF8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Delete
_08064CF2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064CF8: .4byte gUnknown_0201774C

	THUMB_FUNC_START nullsub_51
nullsub_51: @ 0x08064CFC
	bx lr

	THUMB_FUNC_START sub_8064D00
sub_8064D00: @ 0x08064D00
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08064D88  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08064D8C  @ gUnknown_085D7450
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	ldr r0, _08064D90  @ gUnknown_087313C8
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _08064D94  @ gUnknown_08732228
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl ClearBG1
	ldr r0, _08064D98  @ gUnknown_08732368
	ldr r4, _08064D9C  @ gUnknown_02019790
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08064DA0  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070EC4
	movs r0, #2
	bl BG_EnableSyncByMask
	bl sub_80551B0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r2, _08064DA4  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064D88: .4byte gUnknown_0201774C
_08064D8C: .4byte gUnknown_085D7450
_08064D90: .4byte gUnknown_087313C8
_08064D94: .4byte gUnknown_08732228
_08064D98: .4byte gUnknown_08732368
_08064D9C: .4byte gUnknown_02019790
_08064DA0: .4byte gBG1TilemapBuffer
_08064DA4: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_8064DA8
sub_8064DA8: @ 0x08064DA8
	push {lr}
	bl ClearBG1
	ldr r1, _08064DC0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	pop {r0}
	bx r0
	.align 2, 0
_08064DC0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8064DC4
sub_8064DC4: @ 0x08064DC4
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	ble _08064DE0
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_08064DE0:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8064DE4
sub_8064DE4: @ 0x08064DE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08064E18  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08064E1C  @ gUnknown_085D7470
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	ldr r1, _08064E20  @ gUnknown_080DE2E2
	str r1, [r0, #0x48]
	ldr r1, _08064E24  @ gUnknown_08732228
	str r1, [r0, #0x4c]
	ldr r0, _08064E28  @ gUnknown_08731348
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064E18: .4byte gUnknown_0201774C
_08064E1C: .4byte gUnknown_085D7470
_08064E20: .4byte gUnknown_080DE2E2
_08064E24: .4byte gUnknown_08732228
_08064E28: .4byte gUnknown_08731348

	THUMB_FUNC_START sub_8064E2C
sub_8064E2C: @ 0x08064E2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _08064E52
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08064E68
_08064E52:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _08064E68
	ldr r1, _08064E70  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08064E68:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064E70: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimAura
StartSpellAnimAura: @ 0x08064E74
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08064EAC  @ gUnknown_085D7490
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064EAC: .4byte gUnknown_085D7490

	THUMB_FUNC_START sub_8064EB0
sub_8064EB0: @ 0x08064EB0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08064EEC
	adds r0, r5, #0
	bl sub_8065008
	ldr r0, _08064EE8  @ 0x000002C1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _08064F4E
	.align 2, 0
_08064EE8: .4byte 0x000002C1
_08064EEC:
	cmp r0, #0xe
	bne _08064EF8
	adds r0, r5, #0
	bl sub_806509C
	b _08064FFE
_08064EF8:
	cmp r0, #0x2c
	bne _08064F10
	ldr r0, _08064F0C  @ 0x000002C2
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	b _08064F4E
	.align 2, 0
_08064F0C: .4byte 0x000002C2
_08064F10:
	cmp r0, #0x53
	bne _08064F28
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	adds r0, r5, #0
	movs r1, #0xa
	bl StartSpellBG_FLASH
	b _08064FFE
_08064F28:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0x5d
	cmp r1, r0
	bne _08064F3C
	adds r0, r5, #0
	bl sub_8065130
	b _08064FFE
_08064F3C:
	adds r0, r2, #0
	adds r0, #0x67
	cmp r1, r0
	bne _08064F5C
	ldr r0, _08064F58  @ 0x000002C3
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
_08064F4E:
	movs r3, #1
	bl sub_80729A4
	b _08064FFE
	.align 2, 0
_08064F58: .4byte 0x000002C3
_08064F5C:
	adds r0, r2, #0
	adds r0, #0x7d
	cmp r1, r0
	bne _08064F70
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xa
	b _08064FE0
_08064F70:
	adds r0, r2, #0
	adds r0, #0x89
	cmp r1, r0
	bne _08064F86
	adds r0, r5, #0
	bl sub_806521C
	adds r0, r5, #0
	bl sub_806533C
	b _08064FFE
_08064F86:
	adds r0, r2, #0
	adds r0, #0x90
	cmp r1, r0
	bne _08064FB6
	adds r0, r5, #0
	movs r1, #0xa
	bl StartSpellBG_FLASH
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _08064FFE
	adds r0, r5, #0
	bl sub_8072450
	b _08064FFE
_08064FB6:
	adds r0, r2, #0
	adds r0, #0x9a
	cmp r1, r0
	bne _08064FE8
	ldr r0, [r4, #0x5c]
	movs r1, #0x5f
	movs r2, #1
	bl sub_805B93C
	ldr r0, [r4, #0x5c]
	movs r1, #0x42
	bl sub_805B4E8
	adds r0, r5, #0
	bl sub_80653CC
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x2c
	movs r2, #0xc
_08064FE0:
	movs r3, #0x10
	bl sub_805BA1C
	b _08064FFE
_08064FE8:
	adds r0, r2, #0
	adds r0, #0xf5
	cmp r1, r0
	bne _08064FFE
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08064FFE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8065008
sub_8065008: @ 0x08065008
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0806506C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065070  @ gUnknown_085D74A8
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _08065074  @ gUnknown_080DE346
	str r0, [r5, #0x48]
	ldr r0, _08065078  @ gUnknown_085D74C0
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0806507C  @ gUnknown_087327C4
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _08065080  @ gUnknown_0873313C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _08065084  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08065092
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08065088
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _08065092
	.align 2, 0
_0806506C: .4byte gUnknown_0201774C
_08065070: .4byte gUnknown_085D74A8
_08065074: .4byte gUnknown_080DE346
_08065078: .4byte gUnknown_085D74C0
_0806507C: .4byte gUnknown_087327C4
_08065080: .4byte gUnknown_0873313C
_08065084: .4byte gUnknown_0203E120
_08065088:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_08065092:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806509C
sub_806509C: @ 0x0806509C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08065100  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065104  @ gUnknown_085D74A8
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _08065108  @ gUnknown_080DE374
	str r0, [r5, #0x48]
	ldr r0, _0806510C  @ gUnknown_085D74C0
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08065110  @ gUnknown_087327C4
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _08065114  @ gUnknown_0873313C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _08065118  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08065126
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806511C
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _08065126
	.align 2, 0
_08065100: .4byte gUnknown_0201774C
_08065104: .4byte gUnknown_085D74A8
_08065108: .4byte gUnknown_080DE374
_0806510C: .4byte gUnknown_085D74C0
_08065110: .4byte gUnknown_087327C4
_08065114: .4byte gUnknown_0873313C
_08065118: .4byte gUnknown_0203E120
_0806511C:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_08065126:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8065130
sub_8065130: @ 0x08065130
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08065194  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065198  @ gUnknown_085D74A8
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0806519C  @ gUnknown_080DE3A6
	str r0, [r5, #0x48]
	ldr r0, _080651A0  @ gUnknown_085D74C0
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _080651A4  @ gUnknown_087327C4
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _080651A8  @ gUnknown_0873313C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _080651AC  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080651BA
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080651B0
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _080651BA
	.align 2, 0
_08065194: .4byte gUnknown_0201774C
_08065198: .4byte gUnknown_085D74A8
_0806519C: .4byte gUnknown_080DE3A6
_080651A0: .4byte gUnknown_085D74C0
_080651A4: .4byte gUnknown_087327C4
_080651A8: .4byte gUnknown_0873313C
_080651AC: .4byte gUnknown_0203E120
_080651B0:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_080651BA:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80651C4
sub_80651C4: @ 0x080651C4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _080651F2
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _08065210
_080651F2:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _08065210
	bl ClearBG1
	ldr r1, _08065218  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08065210:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08065218: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806521C
sub_806521C: @ 0x0806521C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _08065260  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065264  @ gUnknown_085D7530
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	movs r0, #5
	strh r0, [r5, #0x2e]
	ldr r0, _08065268  @ gUnknown_08725DCC
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl ClearBG1
	ldr r0, _0806526C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08065278
	ldr r0, _08065270  @ gUnknown_087270B4
	ldr r1, _08065274  @ gUnknown_02019790
	bl LZ77UnCompWram
	b _08065280
	.align 2, 0
_08065260: .4byte gUnknown_0201774C
_08065264: .4byte gUnknown_085D7530
_08065268: .4byte gUnknown_08725DCC
_0806526C: .4byte gUnknown_0203E120
_08065270: .4byte gUnknown_087270B4
_08065274: .4byte gUnknown_02019790
_08065278:
	ldr r0, _080652A0  @ gUnknown_08727510
	ldr r1, _080652A4  @ gUnknown_02019790
	bl LZ77UnCompWram
_08065280:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080652AC
	ldr r0, _080652A4  @ gUnknown_02019790
	ldr r1, _080652A8  @ gBG1TilemapBuffer
	movs r2, #1
	str r2, [sp]
	adds r2, #0xff
	str r2, [sp, #4]
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070EC4
	b _080652C0
	.align 2, 0
_080652A0: .4byte gUnknown_08727510
_080652A4: .4byte gUnknown_02019790
_080652A8: .4byte gBG1TilemapBuffer
_080652AC:
	ldr r0, _080652F4  @ gUnknown_02019790
	ldr r1, _080652F8  @ gBG1TilemapBuffer
	movs r2, #1
	str r2, [sp]
	adds r2, #0xff
	str r2, [sp, #4]
	movs r2, #0x1e
	movs r3, #0x14
	bl sub_8070E94
_080652C0:
	movs r0, #2
	bl BG_EnableSyncByMask
	bl sub_80551B0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r2, _080652FC  @ gLCDControlBuffer
	ldrb r1, [r2, #1]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080652F4: .4byte gUnknown_02019790
_080652F8: .4byte gBG1TilemapBuffer
_080652FC: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_8065300
sub_8065300: @ 0x08065300
	push {lr}
	bl ClearBG1
	ldr r1, _08065318  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	pop {r0}
	bx r0
	.align 2, 0
_08065318: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806531C
sub_806531C: @ 0x0806531C
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x2e
	ldrsh r1, [r2, r3]
	cmp r0, r1
	ble _08065338
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_08065338:
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806533C
sub_806533C: @ 0x0806533C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08065374  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065378  @ gUnknown_085D7550
	movs r1, #3
	bl Proc_Create
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	strh r0, [r1, #0x2e]
	str r0, [r1, #0x44]
	ldr r0, _0806537C  @ gUnknown_080DE3DA
	str r0, [r1, #0x48]
	ldr r0, _08065380  @ gUnknown_08726FF4
	str r0, [r1, #0x4c]
	adds r0, #0x60
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08065374: .4byte gUnknown_0201774C
_08065378: .4byte gUnknown_085D7550
_0806537C: .4byte gUnknown_080DE3DA
_08065380: .4byte gUnknown_08726FF4

	THUMB_FUNC_START sub_8065384
sub_8065384: @ 0x08065384
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _080653AA
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _080653C0
_080653AA:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080653C0
	ldr r1, _080653C8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080653C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080653C8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80653CC
sub_80653CC: @ 0x080653CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08065414  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065418  @ gUnknown_085D7570
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806541C  @ gUnknown_080DE3F8
	str r1, [r0, #0x48]
	ldr r1, _08065420  @ gUnknown_085D7588
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _08065424  @ gUnknown_085D75B8
	str r1, [r0, #0x54]
	ldr r0, _08065428  @ gUnknown_0874394C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08065414: .4byte gUnknown_0201774C
_08065418: .4byte gUnknown_085D7570
_0806541C: .4byte gUnknown_080DE3F8
_08065420: .4byte gUnknown_085D7588
_08065424: .4byte gUnknown_085D75B8
_08065428: .4byte gUnknown_0874394C

	THUMB_FUNC_START sub_806542C
sub_806542C: @ 0x0806542C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _08065468
	ldr r5, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, [r7, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r4, r5
	ldr r1, [r5]
	adds r4, r4, r6
	ldr r2, [r4]
	bl sub_8055670
	b _08065486
_08065468:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _08065486
	bl ClearBG1
	ldr r1, _0806548C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08065486:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806548C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8065490
sub_8065490: @ 0x08065490
	bx lr

	THUMB_FUNC_START nullsub_53
nullsub_53: @ 0x08065494
	bx lr

	THUMB_FUNC_START sub_8065498
sub_8065498: @ 0x08065498
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080654E0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080654E4  @ gUnknown_085D75E8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r2, #0
	strh r2, [r0, #0x2c]
	str r2, [r0, #0x44]
	ldr r1, _080654E8  @ gUnknown_080DE47E
	str r1, [r0, #0x48]
	ldr r1, _080654EC  @ gUnknown_085D7628
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _080654F0  @ gUnknown_085D7600
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	ldr r0, _080654F4  @ gUnknown_08750268
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080654E0: .4byte gUnknown_0201774C
_080654E4: .4byte gUnknown_085D75E8
_080654E8: .4byte gUnknown_080DE47E
_080654EC: .4byte gUnknown_085D7628
_080654F0: .4byte gUnknown_085D7600
_080654F4: .4byte gUnknown_08750268

	THUMB_FUNC_START sub_80654F8
sub_80654F8: @ 0x080654F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _08065594
	ldr r7, [r4, #0x4c]
	ldr r0, [r4, #0x50]
	mov r8, r0
	ldr r0, [r4, #0x54]
	lsls r5, r1, #2
	adds r6, r5, r0
	ldr r0, [r4, #0x58]
	ldr r2, [r6]
	cmp r0, r2
	beq _08065534
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r2, #0
	bl SomeImageStoringRoutine_SpellAnim2
_08065534:
	ldr r0, [r6]
	str r0, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	adds r1, r5, r7
	ldr r1, [r1]
	mov r3, r8
	adds r2, r5, r3
	ldr r2, [r2]
	bl sub_8055670
	ldr r0, _08065570  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _080655B2
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	adds r1, r0, #0
	cmp r1, #0
	bne _08065578
	ldr r0, _08065574  @ gBG1TilemapBuffer
	str r1, [sp]
	movs r1, #3
	movs r2, #0x14
	movs r3, #0
	bl FillBGRect
	b _08065588
	.align 2, 0
_08065570: .4byte gUnknown_0203E120
_08065574: .4byte gBG1TilemapBuffer
_08065578:
	ldr r0, _08065590  @ gUnknown_020234E2
	movs r1, #0
	str r1, [sp]
	movs r1, #3
	movs r2, #0x14
	movs r3, #0
	bl FillBGRect
_08065588:
	movs r0, #2
	bl BG_EnableSyncByMask
	b _080655B2
	.align 2, 0
_08065590: .4byte gUnknown_020234E2
_08065594:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080655B2
	bl ClearBG1
	ldr r1, _080655C0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080655B2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080655C0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80655C4
sub_80655C4: @ 0x080655C4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _08065610  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065614  @ gUnknown_085D7650
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	ldr r3, _08065618  @ gUnknown_08752020
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r5, #0x60]
	ldrh r1, [r4, #2]
	strh r1, [r0, #2]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	ldr r0, _0806561C  @ gUnknown_08751808
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	ldr r0, _08065620  @ gUnknown_08751DB4
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065610: .4byte gUnknown_0201774C
_08065614: .4byte gUnknown_085D7650
_08065618: .4byte gUnknown_08752020
_0806561C: .4byte gUnknown_08751808
_08065620: .4byte gUnknown_08751DB4

	THUMB_FUNC_START sub_8065624
sub_8065624: @ 0x08065624
	ldr r1, _08065630  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08065630: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8065634
sub_8065634: @ 0x08065634
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0806566C  @ gUnknown_085D7670
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #1
	str r0, [r4, #0x44]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806566C: .4byte gUnknown_085D7670

	THUMB_FUNC_START sub_8065670
sub_8065670: @ 0x08065670
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _080656A8  @ gUnknown_085D7670
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #2
	str r0, [r4, #0x44]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080656A8: .4byte gUnknown_085D7670

	THUMB_FUNC_START sub_80656AC
sub_80656AC: @ 0x080656AC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _080656E4  @ gUnknown_085D7670
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #3
	str r0, [r4, #0x44]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080656E4: .4byte gUnknown_085D7670

	THUMB_FUNC_START sub_80656E8
sub_80656E8: @ 0x080656E8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _08065720  @ gUnknown_085D7670
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #4
	str r0, [r4, #0x44]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065720: .4byte gUnknown_085D7670

	THUMB_FUNC_START sub_8065724
sub_8065724: @ 0x08065724
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	movs r7, #0
	movs r6, #0
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x19
	bne _080657A4
	ldr r1, [r5, #0x44]
	adds r0, r4, #0
	bl sub_805CA64
	ldr r1, [r5, #0x44]
	adds r0, r4, #0
	bl sub_805CB40
	adds r0, r4, #0
	movs r1, #0x82
	movs r2, #1
	bl sub_805B93C
	adds r0, r4, #0
	movs r1, #0x64
	bl sub_805B4E8
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl sub_805BA1C
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x3c
	movs r2, #0x28
	movs r3, #0x10
	bl sub_805BA1C
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #0xef
	movs r3, #1
	bl sub_80729A4
_080657A4:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0x7d
	bne _080657B6
	ldrh r0, [r4, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r4, #0x10]
	b _080657CC
_080657B6:
	cmp r0, #0xa5
	bne _080657CC
	ldrh r0, [r4, #0x10]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4, #0x10]
	bl SetSomethingSpellFxToFalse
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_080657CC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START StartSpellAnimIvaldi
StartSpellAnimIvaldi: @ 0x080657D4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806580C  @ gUnknown_085D7688
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806580C: .4byte gUnknown_085D7688

	THUMB_FUNC_START Loop6C_efxIvaldi
Loop6C_efxIvaldi: @ 0x08065810
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [r6, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r4, r0, #0
	movs r7, #0x3e
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806583E
	ldr r0, [r6, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_0806583E:
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	adds r0, r4, #1
	cmp r1, r0
	bne _0806584E
	bl PrepareSomeIvaldiParticleGraphics
	b _080659A4
_0806584E:
	adds r0, r4, #0
	adds r0, #0xb
	cmp r1, r0
	bne _08065860
	adds r0, r5, #0
	movs r1, #0x1a
	bl StartSpellOBJ_IvaldiSideWash
	b _080659A4
_08065860:
	adds r3, r4, #0
	adds r3, #0x14
	cmp r1, r3
	bne _08065888
	ldr r0, _08065884  @ 0x000003D3
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r6, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	bl StartSpellBG_IvaldiBG1
	b _080659A4
	.align 2, 0
_08065884: .4byte 0x000003D3
_08065888:
	adds r0, r4, #0
	adds r0, #0x49
	cmp r1, r0
	bne _080658AC
	movs r0, #0xf5
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r6, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	bl StartSpellBG_IvaldiBG2
	b _080659A4
_080658AC:
	adds r0, r4, #0
	adds r0, #0x76
	cmp r1, r0
	bne _080658BC
	adds r0, r5, #0
	bl StartSpellBG_IvaldiBG3
	b _080659A4
_080658BC:
	adds r0, r4, #0
	adds r0, #0x7c
	cmp r1, r0
	bne _080658CE
	adds r0, r5, #0
	movs r1, #0x46
	bl StartSpellOBJ_IvaldiFall
	b _080659A4
_080658CE:
	adds r0, r4, #0
	adds r0, #0xc6
	cmp r1, r0
	bne _08065902
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_8001ED0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl sub_8001F0C
	adds r0, r5, #0
	movs r1, #0x3c
	movs r2, #0x1e
	bl sub_8066470
	b _080659A4
_08065902:
	adds r0, r7, #0
	adds r0, #0xc4
	adds r0, r4, r0
	cmp r1, r0
	bne _0806592A
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0xa
	bl StartSpellThing_MagicQuake
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	adds r0, r5, #0
	bl StartSpellBG_IvaldiBG4
	b _080659A4
_0806592A:
	ldr r2, _0806595C  @ 0x00000107
	adds r0, r4, r2
	cmp r1, r0
	bne _08065960
	adds r0, r5, #0
	movs r1, #0x5c
	bl sub_8066060
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, r6, #0
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _080659A4
	adds r0, r5, #0
	bl sub_8072450
	b _080659A4
	.align 2, 0
_0806595C: .4byte 0x00000107
_08065960:
	movs r0, #0xc4
	adds r2, r7, r0
	adds r0, r2, r3
	cmp r1, r0
	beq _08065982
	movs r3, #0x2c
	ldrsh r1, [r6, r3]
	adds r0, r4, #0
	adds r0, #0x52
	adds r0, r2, r0
	cmp r1, r0
	beq _08065982
	adds r0, r4, #0
	adds r0, #0x5e
	adds r0, r2, r0
	cmp r1, r0
	bne _0806598C
_08065982:
	adds r0, r5, #0
	movs r1, #2
	bl StartSpellBG_FLASH
	b _080659A4
_0806598C:
	adds r0, r4, #0
	adds r0, #0x64
	adds r0, r2, r0
	cmp r1, r0
	bne _080659A4
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_080659A4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START StartSpellBG_IvaldiBG1
StartSpellBG_IvaldiBG1: @ 0x080659AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080659F8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080659FC  @ gUnknown_085D76A0
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _08065A00  @ gUnknown_080DE4E6
	str r1, [r0, #0x48]
	ldr r1, _08065A04  @ gUnknown_085D76B8
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r0, _08065A08  @ gUnknown_086937C0
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _08065A0C  @ gUnknown_086945C4
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080659F8: .4byte gUnknown_0201774C
_080659FC: .4byte gUnknown_085D76A0
_08065A00: .4byte gUnknown_080DE4E6
_08065A04: .4byte gUnknown_085D76B8
_08065A08: .4byte gUnknown_086937C0
_08065A0C: .4byte gUnknown_086945C4

	THUMB_FUNC_START Loop6C_efxIvaldiBG1
Loop6C_efxIvaldiBG1: @ 0x08065A10
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetCoreAIStruct
	adds r0, r5, #0
	adds r0, #0x2c
	adds r1, r5, #0
	adds r1, #0x44
	ldr r2, [r5, #0x48]
	bl sub_80558F4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	cmp r2, #0
	blt _08065A56
	ldr r1, [r5, #0x4c]
	ldr r3, [r5, #0x50]
	ldr r0, [r5, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _08065A74
_08065A56:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _08065A74
	bl ClearBG1
	ldr r1, _08065A7C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_08065A74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065A7C: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellBG_IvaldiBG2
StartSpellBG_IvaldiBG2: @ 0x08065A80
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08065AD4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065AD8  @ gUnknown_085D76E8
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetCoreAIStruct
	str r0, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	str r0, [r4, #0x44]
	ldr r0, _08065ADC  @ gUnknown_080DE526
	str r0, [r4, #0x48]
	ldr r0, _08065AE0  @ gUnknown_085D7700
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	ldr r0, _08065AE4  @ gUnknown_08695B10
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _08065AE8  @ gUnknown_08696840
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065AD4: .4byte gUnknown_0201774C
_08065AD8: .4byte gUnknown_085D76E8
_08065ADC: .4byte gUnknown_080DE526
_08065AE0: .4byte gUnknown_085D7700
_08065AE4: .4byte gUnknown_08695B10
_08065AE8: .4byte gUnknown_08696840

	THUMB_FUNC_START Loop6C_efxIvaldiBG2
Loop6C_efxIvaldiBG2: @ 0x08065AEC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x2c
	adds r1, r5, #0
	adds r1, #0x44
	ldr r2, [r5, #0x48]
	bl sub_80558F4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	lsls r4, r4, #0x10
	asrs r2, r4, #0x10
	cmp r2, #0
	blt _08065B2A
	ldr r1, [r5, #0x4c]
	ldr r3, [r5, #0x50]
	ldr r0, [r5, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _08065B48
_08065B2A:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _08065B48
	bl ClearBG1
	ldr r1, _08065B50  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_08065B48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065B50: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellBG_IvaldiBG3
StartSpellBG_IvaldiBG3: @ 0x08065B54
	push {r4, lr}
	adds r4, r0, #0
	bl ClearBG1
	bl sub_805526C
	ldr r1, _08065BA0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065BA4  @ gUnknown_085D7714
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _08065BA8  @ gUnknown_080DE552
	str r1, [r0, #0x48]
	ldr r1, _08065BAC  @ gUnknown_085D772C
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _08065BB0  @ gUnknown_085D7758
	str r1, [r0, #0x54]
	ldr r1, _08065BB4  @ gUnknown_085D7784
	str r1, [r0, #0x58]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08065BA0: .4byte gUnknown_0201774C
_08065BA4: .4byte gUnknown_085D7714
_08065BA8: .4byte gUnknown_080DE552
_08065BAC: .4byte gUnknown_085D772C
_08065BB0: .4byte gUnknown_085D7758
_08065BB4: .4byte gUnknown_085D7784

	THUMB_FUNC_START Loop6C_efxIvaldiBG3
Loop6C_efxIvaldiBG3: @ 0x08065BB8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	blt _08065C10
	ldr r1, [r7, #0x4c]
	ldr r2, [r7, #0x50]
	ldr r5, [r7, #0x54]
	ldr r6, [r7, #0x58]
	ldr r0, [r7, #0x5c]
	lsls r4, r4, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r5, r4, r5
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08065C2E
_08065C10:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _08065C2E
	bl ClearBG1
	ldr r1, _08065C34  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08065C2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065C34: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellBG_IvaldiBG4
StartSpellBG_IvaldiBG4: @ 0x08065C38
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08065C88  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065C8C  @ gUnknown_085D77B0
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x34]
	strh r1, [r0, #0x3c]
	str r1, [r0, #0x44]
	ldr r1, _08065C90  @ gUnknown_080DE58E
	str r1, [r0, #0x48]
	ldr r1, _08065C94  @ gUnknown_085D77C8
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r0, _08065C98  @ gUnknown_086A06A8
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _08065C9C  @ gUnknown_086A1CE0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08065C88: .4byte gUnknown_0201774C
_08065C8C: .4byte gUnknown_085D77B0
_08065C90: .4byte gUnknown_080DE58E
_08065C94: .4byte gUnknown_085D77C8
_08065C98: .4byte gUnknown_086A06A8
_08065C9C: .4byte gUnknown_086A1CE0

	THUMB_FUNC_START sub_8065CA0
sub_8065CA0: @ 0x08065CA0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrh r0, [r5, #0x3c]
	adds r0, #0x18
	movs r1, #0xff
	ands r0, r1
	strh r0, [r5, #0x3c]
	adds r0, r5, #0
	adds r0, #0x2c
	adds r1, r5, #0
	adds r1, #0x44
	ldr r2, [r5, #0x48]
	bl sub_80558F4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r1, [r5, #0x34]
	ldrh r2, [r5, #0x3c]
	movs r0, #1
	bl BG_SetPosition
	movs r0, #2
	bl BG_EnableSyncByMask
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	blt _08065D58
	ldr r2, [r5, #0x4c]
	ldr r1, [r5, #0x50]
	ldr r0, _08065CF8  @ gUnknown_0203E120
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _08065D00
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _08065CFC  @ gUnknown_02019790
	bl LZ77UnCompWram
	b _08065D0C
	.align 2, 0
_08065CF8: .4byte gUnknown_0203E120
_08065CFC: .4byte gUnknown_02019790
_08065D00:
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08065D30  @ gUnknown_02019790
	bl LZ77UnCompWram
_08065D0C:
	ldr r4, _08065D30  @ gUnknown_02019790
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08065D38
	ldr r1, _08065D34  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #0x20
	bl sub_8070EC4
	b _08065D4C
	.align 2, 0
_08065D30: .4byte gUnknown_02019790
_08065D34: .4byte gBG1TilemapBuffer
_08065D38:
	ldr r1, _08065D54  @ gBG1TilemapBuffer
	movs r0, #1
	str r0, [sp]
	adds r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	movs r3, #0x20
	bl sub_8070E94
_08065D4C:
	movs r0, #2
	bl BG_EnableSyncByMask
	b _08065D76
	.align 2, 0
_08065D54: .4byte gBG1TilemapBuffer
_08065D58:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _08065D76
	bl ClearBG1
	ldr r1, _08065D80  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_08065D76:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065D80: .4byte gUnknown_0201774C

	THUMB_FUNC_START PrepareSomeIvaldiParticleGraphics
PrepareSomeIvaldiParticleGraphics: @ 0x08065D84
	push {lr}
	ldr r0, _08065D9C  @ gUnknown_08692B10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08065DA0  @ gUnknown_086926E0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r0}
	bx r0
	.align 2, 0
_08065D9C: .4byte gUnknown_08692B10
_08065DA0: .4byte gUnknown_086926E0

	THUMB_FUNC_START StartSpellOBJ_IvaldiFall
StartSpellOBJ_IvaldiFall: @ 0x08065DA4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl GetAISSubjectId
	ldr r0, _08065DE8  @ gUnknown_08692B10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08065DEC  @ gUnknown_086926E0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	ldr r1, _08065DF0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065DF4  @ gUnknown_085D77CC
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetCoreAIStruct
	str r0, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	strh r6, [r4, #0x2e]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08065DE8: .4byte gUnknown_08692B10
_08065DEC: .4byte gUnknown_086926E0
_08065DF0: .4byte gUnknown_0201774C
_08065DF4: .4byte gUnknown_085D77CC

	THUMB_FUNC_START sub_8065DF8
sub_8065DF8: @ 0x08065DF8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bne _08065E18
	ldr r0, [r4, #0x5c]
	movs r1, #3
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x98
	b _08065E26
_08065E18:
	cmp r0, #0xd
	bne _08065E2E
	ldr r0, [r4, #0x5c]
	movs r1, #3
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x30
_08065E26:
	movs r3, #0x54
	bl sub_8066258
	b _08065EEA
_08065E2E:
	cmp r0, #0x13
	bne _08065E44
	ldr r0, [r4, #0x5c]
	movs r1, #3
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xbc
	movs r3, #0x6a
	bl sub_8066258
	b _08065EEA
_08065E44:
	cmp r0, #0x19
	bne _08065E54
	ldr r0, [r4, #0x5c]
	movs r1, #2
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x68
	b _08065EA4
_08065E54:
	cmp r0, #0x1f
	bne _08065E6A
	ldr r0, [r4, #0x5c]
	movs r1, #2
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x24
	movs r3, #0x66
	bl sub_8066258
	b _08065EEA
_08065E6A:
	cmp r0, #0x25
	bne _08065E80
	ldr r0, [r4, #0x5c]
	movs r1, #3
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xb0
	movs r3, #0x61
	bl sub_8066258
	b _08065EEA
_08065E80:
	cmp r0, #0x2b
	bne _08065E96
	ldr r0, [r4, #0x5c]
	movs r1, #3
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x38
	movs r3, #0x64
	bl sub_8066258
	b _08065EEA
_08065E96:
	cmp r0, #0x31
	bne _08065EAC
	ldr r0, [r4, #0x5c]
	movs r1, #2
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x9e
_08065EA4:
	movs r3, #0x67
	bl sub_8066258
	b _08065EEA
_08065EAC:
	cmp r0, #0x37
	bne _08065EBC
	ldr r0, [r4, #0x5c]
	movs r1, #3
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x42
	b _08065ECA
_08065EBC:
	cmp r0, #0x3d
	bne _08065ED2
	ldr r0, [r4, #0x5c]
	movs r1, #3
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xe6
_08065ECA:
	movs r3, #0x5c
	bl sub_8066258
	b _08065EEA
_08065ED2:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0x43
	bne _08065EEA
	ldr r0, [r4, #0x5c]
	movs r1, #3
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x68
	movs r3, #0x6c
	bl sub_8066258
_08065EEA:
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _08065F04
	ldr r1, _08065F0C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08065F04:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08065F0C: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellOBJ_IvaldiSideWash
StartSpellOBJ_IvaldiSideWash: @ 0x08065F10
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl GetAISSubjectId
	ldr r0, _08065F54  @ gUnknown_08692B10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08065F58  @ gUnknown_086926E0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	ldr r1, _08065F5C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08065F60  @ gUnknown_085D77E4
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetCoreAIStruct
	str r0, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	strh r6, [r4, #0x2e]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08065F54: .4byte gUnknown_08692B10
_08065F58: .4byte gUnknown_086926E0
_08065F5C: .4byte gUnknown_0201774C
_08065F60: .4byte gUnknown_085D77E4

	THUMB_FUNC_START Loop6C_efxIvaldiOBJSideWash
Loop6C_efxIvaldiOBJSideWash: @ 0x08065F64
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r2, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _08065F90
	ldr r0, [r4, #0x5c]
	str r1, [sp]
	movs r1, #0x1a
	movs r2, #0x68
	movs r3, #0xc
	bl sub_8066258
	b _08066052
_08065F90:
	cmp r1, #3
	bne _08065FA6
	ldr r0, [r4, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x1a
	movs r2, #0x68
	movs r3, #0x5f
	bl sub_8066258
	b _08066052
_08065FA6:
	cmp r1, #6
	bne _08065FBC
	ldr r0, [r4, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x1a
	movs r2, #0x78
	movs r3, #0x24
	bl sub_8066258
	b _08066052
_08065FBC:
	cmp r1, #9
	bne _08065FD2
	ldr r0, [r4, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x1a
	movs r2, #0x64
	movs r3, #0xa
	bl sub_8066258
	b _08066052
_08065FD2:
	cmp r1, #0xc
	bne _08065FE6
	ldr r0, [r4, #0x5c]
	str r2, [sp]
	movs r1, #0x1a
	movs r2, #0x5e
	movs r3, #0x36
	bl sub_8066258
	b _08066052
_08065FE6:
	cmp r1, #0xf
	bne _08065FFC
	ldr r0, [r4, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x1a
	movs r2, #0x64
	movs r3, #0x30
	bl sub_8066258
	b _08066052
_08065FFC:
	cmp r1, #0x12
	bne _08066010
	ldr r0, [r4, #0x5c]
	str r2, [sp]
	movs r1, #0x1a
	movs r2, #0x68
	movs r3, #0x66
	bl sub_8066258
	b _08066052
_08066010:
	cmp r1, #0x15
	bne _08066026
	ldr r0, [r4, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x1a
	movs r2, #0x60
	movs r3, #0x10
	bl sub_8066258
	b _08066052
_08066026:
	cmp r1, #0x18
	bne _0806603C
	ldr r0, [r4, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x1a
	movs r2, #0x80
	movs r3, #0x50
	bl sub_8066258
	b _08066052
_0806603C:
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _08066052
	ldr r1, _0806605C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08066052:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806605C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066060
sub_8066060: @ 0x08066060
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl GetAISSubjectId
	ldr r0, _080660A4  @ gUnknown_08692B10
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080660A8  @ gUnknown_086926E0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	ldr r1, _080660AC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080660B0  @ gUnknown_085D77FC
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetCoreAIStruct
	str r0, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	strh r6, [r4, #0x2e]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080660A4: .4byte gUnknown_08692B10
_080660A8: .4byte gUnknown_086926E0
_080660AC: .4byte gUnknown_0201774C
_080660B0: .4byte gUnknown_085D77FC

	THUMB_FUNC_START sub_80660B4
sub_80660B4: @ 0x080660B4
	push {lr}
	sub sp, #4
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	movs r1, #0
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _080660D6
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xc8
	b _08066218
_080660D6:
	cmp r0, #0xa
	bne _080660EC
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x43
	movs r3, #0x5b
	bl sub_8066390
	b _0806624C
_080660EC:
	cmp r0, #0xf
	bne _08066102
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xd
	movs r3, #0x59
	bl sub_8066390
	b _0806624C
_08066102:
	cmp r0, #0x14
	bne _08066118
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xcb
	movs r3, #0x4c
	bl sub_8066390
	b _0806624C
_08066118:
	cmp r0, #0x19
	bne _0806612E
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xdf
	movs r3, #2
	bl sub_8066390
	b _0806624C
_0806612E:
	cmp r0, #0x1e
	bne _08066144
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xe
	movs r3, #0x6f
	bl sub_8066390
	b _0806624C
_08066144:
	cmp r0, #0x23
	bne _0806615A
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xe0
	movs r3, #0x6c
	bl sub_8066390
	b _0806624C
_0806615A:
	cmp r0, #0x28
	bne _0806616C
	ldr r0, [r2, #0x5c]
	movs r2, #0xb8
	lsls r2, r2, #1
	movs r1, #1
	str r1, [sp]
	movs r1, #0x40
	b _08066218
_0806616C:
	cmp r0, #0x2d
	bne _08066180
	ldr r0, [r2, #0x5c]
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x3a
	movs r3, #0x2d
	bl sub_8066390
	b _0806624C
_08066180:
	cmp r0, #0x32
	bne _0806618E
	ldr r0, [r2, #0x5c]
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x7f
	b _080661E2
_0806618E:
	movs r0, #0x2c
	ldrsh r1, [r2, r0]
	cmp r1, #0x37
	bne _080661A8
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xa3
	movs r3, #0x14
	bl sub_8066390
	b _0806624C
_080661A8:
	cmp r1, #0x3c
	bne _080661BE
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xa7
	movs r3, #0x3e
	bl sub_8066390
	b _0806624C
_080661BE:
	cmp r1, #0x41
	bne _080661D4
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x38
	movs r3, #0x60
	bl sub_8066390
	b _0806624C
_080661D4:
	cmp r1, #0x46
	bne _080661EA
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x80
_080661E2:
	movs r3, #0x42
	bl sub_8066390
	b _0806624C
_080661EA:
	cmp r1, #0x4b
	bne _080661FA
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x38
	b _08066218
_080661FA:
	cmp r1, #0x50
	bne _0806620A
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xa8
	b _08066218
_0806620A:
	cmp r1, #0x55
	bne _08066220
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0xa4
_08066218:
	movs r3, #0x70
	bl sub_8066390
	b _0806624C
_08066220:
	cmp r1, #0x5a
	bne _08066236
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #0x40
	movs r2, #0x41
	movs r3, #0x78
	bl sub_8066390
	b _0806624C
_08066236:
	movs r3, #0x2e
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bne _0806624C
	ldr r1, _08066254  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_0806624C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08066254: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066258
sub_8066258: @ 0x08066258
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r4, r0, #0
	mov r8, r1
	ldr r0, [sp, #0x54]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	add r1, sp, #4
	ldr r0, _080662C8  @ gUnknown_080DE5E4
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _080662CC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080662D0  @ gUnknown_085D7814
	movs r1, #3
	bl Proc_Create
	adds r7, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r7, #0x5c]
	movs r0, #0
	strh r0, [r7, #0x2c]
	mov r0, r8
	strh r0, [r7, #0x2e]
	cmp r5, #5
	bhi _08066318
	lsls r0, r5, #2
	ldr r1, _080662D4  @ _080662D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080662C8: .4byte gUnknown_080DE5E4
_080662CC: .4byte gUnknown_0201774C
_080662D0: .4byte gUnknown_085D7814
_080662D4: .4byte _080662D8
_080662D8: @ jump table
	.4byte _08066318 @ case 0
	.4byte _080662F0 @ case 1
	.4byte _080662F8 @ case 2
	.4byte _08066300 @ case 3
	.4byte _08066308 @ case 4
	.4byte _08066310 @ case 5
_080662F0:
	lsls r1, r6, #2
	add r0, sp, #0xc
	adds r0, r0, r1
	b _0806631E
_080662F8:
	lsls r1, r6, #2
	add r0, sp, #0x14
	adds r0, r0, r1
	b _0806631E
_08066300:
	lsls r1, r6, #2
	add r0, sp, #0x1c
	adds r0, r0, r1
	b _0806631E
_08066308:
	lsls r1, r6, #2
	add r0, sp, #0x24
	adds r0, r0, r1
	b _0806631E
_08066310:
	lsls r1, r6, #2
	add r0, sp, #0x2c
	adds r0, r0, r1
	b _0806631E
_08066318:
	lsls r0, r6, #2
	add r0, sp
	adds r0, #4
_0806631E:
	ldr r3, [r0]
	ldr r0, [r7, #0x5c]
	str r3, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r7, #0x60]
	mov r1, sl
	strh r1, [r0, #2]
	mov r2, r9
	strh r2, [r0, #4]
	ldrh r2, [r0, #8]
	ldr r1, _08066358  @ 0x0000F3FF
	ands r1, r2
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066358: .4byte 0x0000F3FF

	THUMB_FUNC_START sub_806635C
sub_806635C: @ 0x0806635C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08066386
	ldr r0, _0806638C  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08066386:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806638C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066390
sub_8066390: @ 0x08066390
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov r9, r1
	ldr r0, [sp, #0x28]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _080663E8  @ gUnknown_080DE624
	ldr r6, [r0]
	ldr r7, [r0, #4]
	ldr r1, _080663EC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080663F0  @ gUnknown_085D782C
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	mov r0, r8
	bl GetCoreAIStruct
	str r0, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	mov r0, r9
	strh r0, [r5, #0x2e]
	cmp r4, #0
	beq _080663E2
	cmp r4, #1
	beq _080663F4
_080663E2:
	adds r3, r6, #0
	b _080663F6
	.align 2, 0
_080663E8: .4byte gUnknown_080DE624
_080663EC: .4byte gUnknown_0201774C
_080663F0: .4byte gUnknown_085D782C
_080663F4:
	adds r3, r7, #0
_080663F6:
	ldr r0, [r5, #0x5c]
	str r3, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r5, #0x60]
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0, #2]
	mov r2, sl
	strh r2, [r0, #4]
	ldrh r2, [r0, #8]
	ldr r1, _08066430  @ 0x0000F3FF
	ands r1, r2
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066430: .4byte 0x0000F3FF

	THUMB_FUNC_START sub_8066434
sub_8066434: @ 0x08066434
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldrh r0, [r1, #4]
	subs r0, #0x10
	strh r0, [r1, #4]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08066466
	ldr r0, _0806646C  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08066466:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806646C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066470
sub_8066470: @ 0x08066470
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r1, _080664A0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080664A4  @ gUnknown_085D7844
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	adds r0, r4, #0
	adds r1, r6, #0
	bl StartSpellBG_FLASH
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080664A0: .4byte gUnknown_0201774C
_080664A4: .4byte gUnknown_085D7844

	THUMB_FUNC_START sub_80664A8
sub_80664A8: @ 0x080664A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r6, r0]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_8012DCC
	adds r5, r0, #0
	ldr r0, _08066508  @ gPaletteBuffer
	ldr r4, _0806650C  @ gUnknown_020165C8
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	adds r3, r5, #0
	bl sub_807132C
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	cmp r0, r1
	ble _080664FE
	ldr r1, _08066510  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_080664FE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066508: .4byte gPaletteBuffer
_0806650C: .4byte gUnknown_020165C8
_08066510: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066514
sub_8066514: @ 0x08066514
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806654C  @ gUnknown_085D785C
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806654C: .4byte gUnknown_085D785C

	THUMB_FUNC_START sub_8066550
sub_8066550: @ 0x08066550
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r7, r0, #0
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	cmp r1, #0xff
	beq _080665EC
	cmp r1, #0xff
	bgt _08066580
	cmp r1, #0xb
	beq _08066594
	cmp r1, #0xb1
	beq _080665E4
	b _08066636
_08066580:
	ldr r0, _08066590  @ 0x00000109
	cmp r1, r0
	beq _0806660A
	adds r0, #0x24
	cmp r1, r0
	beq _08066624
	b _08066636
	.align 2, 0
_08066590: .4byte 0x00000109
_08066594:
	movs r0, #1
	movs r1, #0
	movs r2, #0x10
	movs r3, #0
	bl SetSpecialColorEffectsParameters
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_805BA1C
	adds r0, r4, #0
	movs r1, #0xa6
	movs r2, #1
	bl sub_805B93C
	adds r0, r4, #0
	movs r1, #0xa6
	bl sub_805B4E8
	adds r0, r4, #0
	bl sub_80666D0
	ldr r0, _080665E0  @ 0x000003B2
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r3, #1
	bl sub_80729A4
	b _08066636
	.align 2, 0
_080665E0: .4byte 0x000003B2
_080665E4:
	adds r0, r4, #0
	bl sub_8066914
	b _08066636
_080665EC:
	bl sub_8066C98
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0xad
	movs r3, #0x2c
	bl sub_8066CB8
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0x9f
	movs r3, #0x30
	bl sub_8066DB0
	b _08066636
_0806660A:
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #1
	bl sub_805B93C
	adds r0, r4, #0
	movs r1, #0x22
	bl sub_805B4E8
	adds r0, r4, #0
	bl sub_8066A0C
	b _08066636
_08066624:
	adds r0, r4, #0
	movs r1, #4
	bl StartSpellBG_FLASH
	ldr r0, [r6, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_08066636:
	movs r0, #0x2c
	ldrsh r1, [r6, r0]
	ldr r2, _08066694  @ 0x00000133
	adds r0, r7, r2
	cmp r1, r0
	bne _080666A6
	ldrh r1, [r4, #0x10]
	movs r0, #9
	orrs r0, r1
	strh r0, [r4, #0x10]
	adds r5, r6, #0
	adds r5, #0x29
	ldrb r1, [r5]
	adds r0, r4, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r5]
	cmp r0, #0
	bne _0806669C
	adds r0, r4, #0
	bl sub_8072450
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0xa
	bl StartSpellThing_MagicQuake
	adds r0, r4, #0
	bl sub_80667E0
	adds r0, r4, #0
	bl sub_8066BD4
	adds r0, r4, #0
	movs r1, #0x4a
	bl sub_80671F4
	ldr r0, _08066698  @ 0x000003B3
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r3, #1
	bl sub_80729A4
	b _080666C4
	.align 2, 0
_08066694: .4byte 0x00000133
_08066698: .4byte 0x000003B3
_0806669C:
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r0, [r6, #0x2c]
	b _080666C4
_080666A6:
	ldr r2, _080666CC  @ 0x000001C9
	adds r0, r7, r2
	cmp r1, r0
	bne _080666C4
	ldrh r1, [r4, #0x10]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #0x10]
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_080666C4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080666CC: .4byte 0x000001C9

	THUMB_FUNC_START sub_80666D0
sub_80666D0: @ 0x080666D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806670C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08066710  @ gUnknown_085D7874
	movs r1, #3
	bl Proc_Create
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	ldr r0, _08066714  @ gUnknown_080DE65C
	str r0, [r1, #0x48]
	ldr r0, _08066718  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08066728
	ldr r0, _0806671C  @ gUnknown_085D7A0C
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	ldr r0, _08066720  @ gUnknown_085D7A8C
	str r0, [r1, #0x54]
	ldr r0, _08066724  @ gUnknown_085D7B0C
	b _08066734
	.align 2, 0
_0806670C: .4byte gUnknown_0201774C
_08066710: .4byte gUnknown_085D7874
_08066714: .4byte gUnknown_080DE65C
_08066718: .4byte gUnknown_0203E120
_0806671C: .4byte gUnknown_085D7A0C
_08066720: .4byte gUnknown_085D7A8C
_08066724: .4byte gUnknown_085D7B0C
_08066728:
	ldr r0, _0806674C  @ gUnknown_085D788C
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	ldr r0, _08066750  @ gUnknown_085D790C
	str r0, [r1, #0x54]
	ldr r0, _08066754  @ gUnknown_085D798C
_08066734:
	str r0, [r1, #0x58]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806674C: .4byte gUnknown_085D788C
_08066750: .4byte gUnknown_085D790C
_08066754: .4byte gUnknown_085D798C

	THUMB_FUNC_START sub_8066758
sub_8066758: @ 0x08066758
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7, #0x5c]
	bl GetCoreAIStruct
	adds r0, r7, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	blt _080667B8
	ldr r1, [r7, #0x4c]
	ldr r2, [r7, #0x50]
	ldr r5, [r7, #0x54]
	ldr r6, [r7, #0x58]
	ldr r0, [r7, #0x5c]
	lsls r4, r4, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r5, r4, r5
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _080667D6
_080667B8:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _080667D6
	bl ClearBG1
	ldr r1, _080667DC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_080667D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080667DC: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80667E0
sub_80667E0: @ 0x080667E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08066824  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08066828  @ gUnknown_085D7B8C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806682C  @ gUnknown_080DE6F0
	str r1, [r0, #0x48]
	ldr r1, _08066830  @ gUnknown_085D7BA4
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _08066834  @ gUnknown_085D7BB0
	str r1, [r0, #0x54]
	ldr r1, _08066838  @ gUnknown_085D7BBC
	str r1, [r0, #0x58]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066824: .4byte gUnknown_0201774C
_08066828: .4byte gUnknown_085D7B8C
_0806682C: .4byte gUnknown_080DE6F0
_08066830: .4byte gUnknown_085D7BA4
_08066834: .4byte gUnknown_085D7BB0
_08066838: .4byte gUnknown_085D7BBC

	THUMB_FUNC_START sub_806683C
sub_806683C: @ 0x0806683C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _08066868  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806686C
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _08066876
	.align 2, 0
_08066868: .4byte gUnknown_0203E120
_0806686C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_08066876:
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _080668B2
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r6, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	bl sub_80668DC
	adds r5, r4, r5
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _080668D0
_080668B2:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _080668D0
	bl ClearBG1
	ldr r1, _080668D8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080668D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080668D8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80668DC
sub_80668DC: @ 0x080668DC
	push {r4, r5, lr}
	movs r1, #0
	ldr r5, _08066910  @ gBG1TilemapBuffer
_080668E2:
	movs r3, #0
	lsls r0, r1, #5
	adds r4, r1, #1
	adds r1, r0, #0
	adds r1, #0x1d
	adds r0, #0x1c
	lsls r0, r0, #1
	adds r2, r0, r5
	lsls r1, r1, #1
	adds r1, r1, r5
_080668F6:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r1, #2
	adds r3, #1
	cmp r3, #2
	ble _080668F6
	adds r1, r4, #0
	cmp r1, #0xf
	ble _080668E2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066910: .4byte gBG1TilemapBuffer

	THUMB_FUNC_START sub_8066914
sub_8066914: @ 0x08066914
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08066950  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08066954  @ gUnknown_085D7BC8
	movs r1, #3
	bl Proc_Create
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	ldr r0, _08066958  @ gUnknown_080DE710
	str r0, [r1, #0x48]
	ldr r0, _0806695C  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0806696C
	ldr r0, _08066960  @ gUnknown_085D7C1C
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	ldr r0, _08066964  @ gUnknown_085D7C30
	str r0, [r1, #0x54]
	ldr r0, _08066968  @ gUnknown_085D7C44
	b _08066978
	.align 2, 0
_08066950: .4byte gUnknown_0201774C
_08066954: .4byte gUnknown_085D7BC8
_08066958: .4byte gUnknown_080DE710
_0806695C: .4byte gUnknown_0203E120
_08066960: .4byte gUnknown_085D7C1C
_08066964: .4byte gUnknown_085D7C30
_08066968: .4byte gUnknown_085D7C44
_0806696C:
	ldr r0, _08066990  @ gUnknown_085D7BE0
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	ldr r0, _08066994  @ gUnknown_085D7BF4
	str r0, [r1, #0x54]
	ldr r0, _08066998  @ gUnknown_085D7C08
_08066978:
	str r0, [r1, #0x58]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066990: .4byte gUnknown_085D7BE0
_08066994: .4byte gUnknown_085D7BF4
_08066998: .4byte gUnknown_085D7C08

	THUMB_FUNC_START sub_806699C
sub_806699C: @ 0x0806699C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _080669E4
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r6, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r5, r4, r5
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08066A02
_080669E4:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _08066A02
	bl ClearBG1
	ldr r1, _08066A08  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08066A02:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066A08: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066A0C
sub_8066A0C: @ 0x08066A0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08066A48  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08066A4C  @ gUnknown_085D7C58
	movs r1, #3
	bl Proc_Create
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	ldr r0, _08066A50  @ gUnknown_080DE748
	str r0, [r1, #0x48]
	ldr r0, _08066A54  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08066A64
	ldr r0, _08066A58  @ gUnknown_085D7CD0
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	ldr r0, _08066A5C  @ gUnknown_085D7CF0
	str r0, [r1, #0x54]
	ldr r0, _08066A60  @ gUnknown_085D7D10
	b _08066A70
	.align 2, 0
_08066A48: .4byte gUnknown_0201774C
_08066A4C: .4byte gUnknown_085D7C58
_08066A50: .4byte gUnknown_080DE748
_08066A54: .4byte gUnknown_0203E120
_08066A58: .4byte gUnknown_085D7CD0
_08066A5C: .4byte gUnknown_085D7CF0
_08066A60: .4byte gUnknown_085D7D10
_08066A64:
	ldr r0, _08066A88  @ gUnknown_085D7C70
	str r0, [r1, #0x4c]
	str r0, [r1, #0x50]
	ldr r0, _08066A8C  @ gUnknown_085D7C90
	str r0, [r1, #0x54]
	ldr r0, _08066A90  @ gUnknown_085D7CB0
_08066A70:
	str r0, [r1, #0x58]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066A88: .4byte gUnknown_085D7C70
_08066A8C: .4byte gUnknown_085D7C90
_08066A90: .4byte gUnknown_085D7CB0

	THUMB_FUNC_START sub_8066A94
sub_8066A94: @ 0x08066A94
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0
	blt _08066AEC
	ldr r1, [r7, #0x4c]
	ldr r2, [r7, #0x50]
	ldr r5, [r7, #0x54]
	ldr r6, [r7, #0x58]
	ldr r0, [r7, #0x5c]
	lsls r4, r4, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r5, r4, r5
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08066B0A
_08066AEC:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _08066B0A
	bl ClearBG1
	ldr r1, _08066B10  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08066B0A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066B10: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066B14
sub_8066B14: @ 0x08066B14
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	ldr r1, _08066B38  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08066B3C  @ gUnknown_085D7D30
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08066B38: .4byte gUnknown_0201774C
_08066B3C: .4byte gUnknown_085D7D30

	THUMB_FUNC_START sub_8066B40
sub_8066B40: @ 0x08066B40
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_8012DCC
	adds r6, r0, #0
	ldr r0, _08066BB4  @ gPaletteBuffer
	ldr r4, _08066BB8  @ gUnknown_020165C8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_807132C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r7, r2]
	cmp r0, r1
	ble _08066BAA
	ldr r0, [r7, #0x5c]
	movs r1, #0
	movs r2, #0x20
	bl sub_8054134
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08066BAA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066BB4: .4byte gPaletteBuffer
_08066BB8: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_8066BBC
sub_8066BBC: @ 0x08066BBC
	push {lr}
	ldr r2, _08066BD0  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	bl Proc_ClearNativeCallback
	pop {r0}
	bx r0
	.align 2, 0
_08066BD0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066BD4
sub_8066BD4: @ 0x08066BD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08066C08  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08066C0C  @ gUnknown_085D7D58
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x32]
	str r1, [r0, #0x44]
	ldr r1, _08066C10  @ gUnknown_080DE792
	str r1, [r0, #0x48]
	ldr r1, _08066C14  @ gUnknown_087F3C54
	str r1, [r0, #0x4c]
	ldr r0, _08066C18  @ gUnknown_08603B50
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066C08: .4byte gUnknown_0201774C
_08066C0C: .4byte gUnknown_085D7D58
_08066C10: .4byte gUnknown_080DE792
_08066C14: .4byte gUnknown_087F3C54
_08066C18: .4byte gUnknown_08603B50

	THUMB_FUNC_START sub_8066C1C
sub_8066C1C: @ 0x08066C1C
	push {r4, lr}
	sub sp, #0x20
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _08066C50
	ldr r0, _08066C4C  @ gUnknown_087F3C54
	subs r2, #4
	mov r1, sp
	bl sub_8077FC8
	mov r0, sp
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08066C66
	.align 2, 0
_08066C4C: .4byte gUnknown_087F3C54
_08066C50:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _08066C66
	ldr r1, _08066C70  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08066C66:
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066C70: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066C74
sub_8066C74: @ 0x08066C74
	push {lr}
	adds r2, r0, #0
	ldr r0, _08066C94  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #0
	cmp r0, #0
	bne _08066C86
	movs r1, #0x18
_08066C86:
	cmp r2, #0
	bne _08066C8C
	negs r1, r1
_08066C8C:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
_08066C94: .4byte gUnknown_0203E120

	THUMB_FUNC_START sub_8066C98
sub_8066C98: @ 0x08066C98
	push {lr}
	ldr r0, _08066CB0  @ gUnknown_087A574C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08066CB4  @ gUnknown_087A5390
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r0}
	bx r0
	.align 2, 0
_08066CB0: .4byte gUnknown_087A574C
_08066CB4: .4byte gUnknown_087A5390

	THUMB_FUNC_START sub_8066CB8
sub_8066CB8: @ 0x08066CB8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	ldr r0, _08066D34  @ gUnknown_080DE8A0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08066D38  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08066D3C  @ gUnknown_085D7D78
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r6, #0x5c]
	movs r1, #0
	strh r1, [r6, #0x2c]
	strh r5, [r6, #0x2e]
	lsls r1, r7, #2
	add r1, sp
	adds r1, #4
	ldr r3, [r1]
	str r3, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r6, #0x60]
	adds r5, r4, #0
	cmp r7, #0
	beq _08066D40
	adds r0, r7, #0
	bl sub_8066C74
	adds r0, #0xf0
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	b _08066D4E
	.align 2, 0
_08066D34: .4byte gUnknown_080DE8A0
_08066D38: .4byte gUnknown_0201774C
_08066D3C: .4byte gUnknown_085D7D78
_08066D40:
	movs r0, #0
	bl sub_8066C74
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
_08066D4E:
	strh r0, [r4, #2]
	strh r0, [r5, #2]
	ldr r0, [r6, #0x60]
	mov r1, r9
	strh r1, [r4, #4]
	strh r1, [r0, #4]
	ldrh r1, [r4, #8]
	ldr r0, _08066D78  @ 0x0000F3FF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #8]
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066D78: .4byte 0x0000F3FF

	THUMB_FUNC_START sub_8066D7C
sub_8066D7C: @ 0x08066D7C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08066DA6
	ldr r0, _08066DAC  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08066DA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066DAC: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066DB0
sub_8066DB0: @ 0x08066DB0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	ldr r0, _08066E2C  @ gUnknown_080DE8C0
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08066E30  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08066E34  @ gUnknown_085D7D90
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r6, #0x5c]
	movs r1, #0
	strh r1, [r6, #0x2c]
	strh r5, [r6, #0x2e]
	lsls r1, r7, #2
	add r1, sp
	adds r1, #4
	ldr r3, [r1]
	str r3, [sp]
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r6, #0x60]
	adds r5, r4, #0
	cmp r7, #0
	beq _08066E38
	adds r0, r7, #0
	bl sub_8066C74
	adds r0, #0xf0
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	b _08066E46
	.align 2, 0
_08066E2C: .4byte gUnknown_080DE8C0
_08066E30: .4byte gUnknown_0201774C
_08066E34: .4byte gUnknown_085D7D90
_08066E38:
	movs r0, #0
	bl sub_8066C74
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
_08066E46:
	strh r0, [r4, #2]
	strh r0, [r5, #2]
	ldr r0, [r6, #0x60]
	mov r1, r9
	strh r1, [r4, #4]
	strh r1, [r0, #4]
	ldrh r1, [r4, #8]
	ldr r0, _08066E70  @ 0x0000F3FF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #8]
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066E70: .4byte 0x0000F3FF

	THUMB_FUNC_START sub_8066E74
sub_8066E74: @ 0x08066E74
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08066E9E
	ldr r0, _08066EA4  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08066E9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066EA4: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066EA8
sub_8066EA8: @ 0x08066EA8
	push {lr}
	ldr r0, _08066EC0  @ gUnknown_087A5118
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08066EC4  @ gUnknown_087A4EEC
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r0}
	bx r0
	.align 2, 0
_08066EC0: .4byte gUnknown_087A5118
_08066EC4: .4byte gUnknown_087A4EEC

	THUMB_FUNC_START sub_8066EC8
sub_8066EC8: @ 0x08066EC8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	ldr r0, _08066F48  @ gUnknown_080DE8DC
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08066F4C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08066F50  @ gUnknown_085D7DA8
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r6, #0x5c]
	movs r0, #0
	strh r0, [r6, #0x2c]
	strh r5, [r6, #0x2e]
	lsls r0, r7, #2
	add r0, sp
	adds r0, #4
	ldr r3, [r0]
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r6, #0x60]
	adds r5, r4, #0
	cmp r7, #0
	beq _08066F54
	adds r0, r7, #0
	bl sub_8066C74
	adds r0, #0xf0
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	b _08066F62
	.align 2, 0
_08066F48: .4byte gUnknown_080DE8DC
_08066F4C: .4byte gUnknown_0201774C
_08066F50: .4byte gUnknown_085D7DA8
_08066F54:
	movs r0, #0
	bl sub_8066C74
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
_08066F62:
	strh r0, [r4, #2]
	strh r0, [r5, #2]
	ldr r0, [r6, #0x60]
	mov r1, r9
	strh r1, [r4, #4]
	strh r1, [r0, #4]
	ldrh r1, [r4, #8]
	ldr r0, _08066F8C  @ 0x0000F3FF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #8]
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066F8C: .4byte 0x0000F3FF

	THUMB_FUNC_START sub_8066F90
sub_8066F90: @ 0x08066F90
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08066FBA
	ldr r0, _08066FC0  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08066FBA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066FC0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8066FC4
sub_8066FC4: @ 0x08066FC4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	ldr r0, _08067044  @ gUnknown_080DE900
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08067048  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806704C  @ gUnknown_085D7DC0
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r6, #0x5c]
	movs r0, #0
	strh r0, [r6, #0x2c]
	strh r5, [r6, #0x2e]
	lsls r0, r7, #2
	add r0, sp
	adds r0, #4
	ldr r3, [r0]
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r6, #0x60]
	adds r5, r4, #0
	cmp r7, #0
	beq _08067050
	adds r0, r7, #0
	bl sub_8066C74
	adds r0, #0xf0
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	b _0806705E
	.align 2, 0
_08067044: .4byte gUnknown_080DE900
_08067048: .4byte gUnknown_0201774C
_0806704C: .4byte gUnknown_085D7DC0
_08067050:
	movs r0, #0
	bl sub_8066C74
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
_0806705E:
	strh r0, [r4, #2]
	strh r0, [r5, #2]
	ldr r0, [r6, #0x60]
	mov r1, r9
	strh r1, [r4, #4]
	strh r1, [r0, #4]
	ldrh r1, [r4, #8]
	ldr r0, _0806709C  @ 0x0000F3FF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #8]
	ldr r0, _080670A0  @ gUnknown_087A61EC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080670A4  @ gUnknown_087A5BA4
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806709C: .4byte 0x0000F3FF
_080670A0: .4byte gUnknown_087A61EC
_080670A4: .4byte gUnknown_087A5BA4

	THUMB_FUNC_START sub_80670A8
sub_80670A8: @ 0x080670A8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _080670D2
	ldr r0, _080670D8  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080670D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080670D8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80670DC
sub_80670DC: @ 0x080670DC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	ldr r0, _0806715C  @ gUnknown_080DE924
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _08067160  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08067164  @ gUnknown_085D7DD8
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r6, #0x5c]
	movs r0, #0
	strh r0, [r6, #0x2c]
	strh r5, [r6, #0x2e]
	lsls r0, r7, #2
	add r0, sp
	adds r0, #4
	ldr r3, [r0]
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r6, #0x60]
	adds r5, r4, #0
	cmp r7, #0
	beq _08067168
	adds r0, r7, #0
	bl sub_8066C74
	adds r0, #0xf0
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	b _08067176
	.align 2, 0
_0806715C: .4byte gUnknown_080DE924
_08067160: .4byte gUnknown_0201774C
_08067164: .4byte gUnknown_085D7DD8
_08067168:
	movs r0, #0
	bl sub_8066C74
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r0
_08067176:
	strh r0, [r4, #2]
	strh r0, [r5, #2]
	ldr r0, [r6, #0x60]
	mov r1, r9
	strh r1, [r4, #4]
	strh r1, [r0, #4]
	ldrh r1, [r4, #8]
	ldr r0, _080671B4  @ 0x0000F3FF
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #8]
	ldr r0, _080671B8  @ gUnknown_087A61EC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080671BC  @ gUnknown_087A5E9C
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080671B4: .4byte 0x0000F3FF
_080671B8: .4byte gUnknown_087A61EC
_080671BC: .4byte gUnknown_087A5E9C

	THUMB_FUNC_START sub_80671C0
sub_80671C0: @ 0x080671C0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _080671EA
	ldr r0, _080671F0  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080671EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080671F0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80671F4
sub_80671F4: @ 0x080671F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, _08067234  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08067238  @ gUnknown_085D7DF0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetCoreAIStruct
	str r0, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	strh r6, [r4, #0x2e]
	ldr r0, _0806723C  @ gUnknown_087A574C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08067240  @ gUnknown_087A5390
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067234: .4byte gUnknown_0201774C
_08067238: .4byte gUnknown_085D7DF0
_0806723C: .4byte gUnknown_087A574C
_08067240: .4byte gUnknown_087A5390

	THUMB_FUNC_START sub_8067244
sub_8067244: @ 0x08067244
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	bl sub_8066C74
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08067280
	cmp r4, #0
	beq _08067278
	lsls r0, r2, #0x10
	movs r1, #0xe0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	b _08067362
_08067278:
	lsls r0, r2, #0x10
	movs r2, #0xb8
	lsls r2, r2, #0x10
	b _08067360
_08067280:
	cmp r0, #0xa
	bne _0806729A
	cmp r4, #0
	beq _08067292
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	b _0806738E
_08067292:
	lsls r0, r2, #0x10
	movs r2, #0xd0
	lsls r2, r2, #0x10
	b _0806738C
_0806729A:
	cmp r0, #0xe
	bne _080672B4
	cmp r4, #0
	beq _080672AC
	lsls r0, r2, #0x10
	movs r1, #0xe0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	b _080673C0
_080672AC:
	lsls r0, r2, #0x10
	movs r2, #0xe2
	lsls r2, r2, #0x10
	b _080673BE
_080672B4:
	cmp r0, #0x18
	bne _080672CE
	cmp r4, #0
	beq _080672C6
	lsls r0, r2, #0x10
	movs r1, #0xc4
	lsls r1, r1, #0xf
	adds r0, r0, r1
	b _08067336
_080672C6:
	lsls r0, r2, #0x10
	movs r2, #0x8e
	lsls r2, r2, #0x10
	b _08067334
_080672CE:
	cmp r0, #0x22
	bne _080672E8
	cmp r4, #0
	beq _080672E0
	lsls r0, r2, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	b _08067362
_080672E0:
	lsls r0, r2, #0x10
	movs r2, #0xc0
	lsls r2, r2, #0x10
	b _08067360
_080672E8:
	cmp r0, #0x2c
	bne _08067302
	cmp r4, #0
	beq _080672FA
	lsls r0, r2, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	b _0806738E
_080672FA:
	lsls r0, r2, #0x10
	movs r2, #0xd8
	lsls r2, r2, #0x10
	b _0806738C
_08067302:
	cmp r0, #0x30
	bne _0806731C
	cmp r4, #0
	beq _08067314
	lsls r0, r2, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xb
	adds r0, r0, r1
	b _080673C0
_08067314:
	lsls r0, r2, #0x10
	movs r2, #0xea
	lsls r2, r2, #0x10
	b _080673BE
_0806731C:
	cmp r0, #0x34
	bne _08067348
	cmp r4, #0
	beq _0806732E
	lsls r0, r2, #0x10
	movs r1, #0xd4
	lsls r1, r1, #0xf
	adds r0, r0, r1
	b _08067336
_0806732E:
	lsls r0, r2, #0x10
	movs r2, #0x86
	lsls r2, r2, #0x10
_08067334:
	adds r0, r0, r2
_08067336:
	lsrs r2, r0, #0x10
	ldr r0, [r5, #0x5c]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	movs r3, #0x62
	bl sub_8067400
	b _080673F4
_08067348:
	cmp r0, #0x38
	bne _08067374
	cmp r4, #0
	beq _0806735A
	lsls r0, r2, #0x10
	movs r1, #0xb0
	lsls r1, r1, #0xf
	adds r0, r0, r1
	b _08067362
_0806735A:
	lsls r0, r2, #0x10
	movs r2, #0x98
	lsls r2, r2, #0x10
_08067360:
	adds r0, r0, r2
_08067362:
	lsrs r2, r0, #0x10
	ldr r0, [r5, #0x5c]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	movs r3, #0x6e
	bl sub_8067400
	b _080673F4
_08067374:
	cmp r0, #0x3c
	bne _080673A0
	cmp r4, #0
	beq _08067386
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
	b _0806738E
_08067386:
	lsls r0, r2, #0x10
	movs r2, #0xe0
	lsls r2, r2, #0x10
_0806738C:
	adds r0, r0, r2
_0806738E:
	lsrs r2, r0, #0x10
	ldr r0, [r5, #0x5c]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	movs r3, #0x6c
	bl sub_8067400
	b _080673F4
_080673A0:
	movs r0, #0x2c
	ldrsh r1, [r5, r0]
	cmp r1, #0x40
	bne _080673D2
	cmp r4, #0
	beq _080673B8
	lsls r0, r2, #0x10
	ldr r1, _080673B4  @ 0xFFFE0000
	adds r0, r0, r1
	b _080673C0
	.align 2, 0
_080673B4: .4byte 0xFFFE0000
_080673B8:
	lsls r0, r2, #0x10
	movs r2, #0xf2
	lsls r2, r2, #0x10
_080673BE:
	adds r0, r0, r2
_080673C0:
	lsrs r2, r0, #0x10
	ldr r0, [r5, #0x5c]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xa
	movs r3, #0x68
	bl sub_8067400
	b _080673F4
_080673D2:
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _080673F4
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0x5c]
	movs r1, #0x5a
	movs r2, #0x2d
	bl sub_8066B14
	ldr r1, _080673FC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_080673F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080673FC: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8067400
sub_8067400: @ 0x08067400
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	mov r9, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r1, _08067488  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806748C  @ gUnknown_085D7E08
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	mov r0, r8
	bl GetCoreAIStruct
	str r0, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	mov r0, r9
	strh r0, [r4, #0x2e]
	ldr r3, _08067490  @ gUnknown_087A5B5C
	str r3, [sp]
	mov r0, r8
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	strh r5, [r0, #2]
	strh r6, [r0, #4]
	ldr r1, [r4, #0x60]
	strh r5, [r1, #2]
	ldr r1, [r4, #0x60]
	strh r6, [r1, #4]
	ldrh r2, [r0, #8]
	ldr r1, _08067494  @ 0x0000F3FF
	ands r1, r2
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r0, _08067498  @ gUnknown_087A574C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806749C  @ gUnknown_087A5390
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067488: .4byte gUnknown_0201774C
_0806748C: .4byte gUnknown_085D7E08
_08067490: .4byte gUnknown_087A5B5C
_08067494: .4byte 0x0000F3FF
_08067498: .4byte gUnknown_087A574C
_0806749C: .4byte gUnknown_087A5390

	THUMB_FUNC_START sub_80674A0
sub_80674A0: @ 0x080674A0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _080674CA
	ldr r0, _080674D0  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080674CA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080674D0: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimStone
StartSpellAnimStone: @ 0x080674D4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806750C  @ gUnknown_085D7E20
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806750C: .4byte gUnknown_085D7E20

	THUMB_FUNC_START sub_8067510
sub_8067510: @ 0x08067510
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806753C
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _080675CE
_0806753C:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0xa
	cmp r1, r0
	bne _08067564
	movs r0, #0xee
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	movs r1, #0xc8
	bl sub_80676E4
	b _080675CE
_08067564:
	adds r0, r2, #0
	adds r0, #0x48
	cmp r1, r0
	bne _080675B8
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _080675A8
	ldr r0, _080675B4  @ 0x000003B9
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	bl sub_80675D4
	adds r0, r5, #0
	bl sub_8054BD4
	cmp r0, #0
	bne _080675A8
	adds r0, r5, #0
	movs r1, #0xb
	bl sub_8054BA4
_080675A8:
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	b _080675CE
	.align 2, 0
_080675B4: .4byte 0x000003B9
_080675B8:
	adds r0, r2, #0
	adds r0, #0xec
	cmp r1, r0
	bne _080675CE
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080675CE:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80675D4
sub_80675D4: @ 0x080675D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _08067634  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08067638  @ gUnknown_085D7E38
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0806763C  @ gUnknown_080DE974
	str r0, [r5, #0x48]
	ldr r0, _08067640  @ gUnknown_085D7E9C
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08067644  @ gUnknown_085D7E50
	str r0, [r5, #0x54]
	ldr r0, _08067648  @ gUnknown_086C790C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _0806764C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806765A
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08067650
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _0806765A
	.align 2, 0
_08067634: .4byte gUnknown_0201774C
_08067638: .4byte gUnknown_085D7E38
_0806763C: .4byte gUnknown_080DE974
_08067640: .4byte gUnknown_085D7E9C
_08067644: .4byte gUnknown_085D7E50
_08067648: .4byte gUnknown_086C790C
_0806764C: .4byte gUnknown_0203E120
_08067650:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0806765A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8067660
sub_8067660: @ 0x08067660
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	cmp r6, #0
	blt _080676BC
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r0, [r4, #0x5c]
	lsls r4, r6, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	cmp r6, #0x11
	bne _080676A6
	ldr r0, _080676B4  @ gUnknown_086C792C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
_080676A6:
	cmp r6, #0x12
	bne _080676DA
	ldr r0, _080676B8  @ gUnknown_086C794C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _080676DA
	.align 2, 0
_080676B4: .4byte gUnknown_086C792C
_080676B8: .4byte gUnknown_086C794C
_080676BC:
	movs r0, #1
	negs r0, r0
	cmp r6, r0
	bne _080676DA
	bl ClearBG1
	ldr r1, _080676E0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080676DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080676E0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80676E4
sub_80676E4: @ 0x080676E4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	mov r8, r1
	ldr r1, _08067750  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08067754  @ gUnknown_085D7EE8
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetCoreAIStruct
	str r0, [r4, #0x5c]
	movs r5, #0
	strh r5, [r4, #0x2c]
	mov r0, r8
	strh r0, [r4, #0x2e]
	ldr r3, _08067758  @ gUnknown_086BDA5C
	str r3, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldrh r1, [r0, #4]
	adds r1, #0xc
	strh r1, [r0, #4]
	strh r5, [r0, #6]
	movs r1, #0x14
	strh r1, [r0, #0xa]
	bl AISArray_Sort
	ldr r0, _0806775C  @ gUnknown_086BD76C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08067760  @ gUnknown_086BD260
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067750: .4byte gUnknown_0201774C
_08067754: .4byte gUnknown_085D7EE8
_08067758: .4byte gUnknown_086BDA5C
_0806775C: .4byte gUnknown_086BD76C
_08067760: .4byte gUnknown_086BD260

	THUMB_FUNC_START sub_8067764
sub_8067764: @ 0x08067764
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0806778E
	ldr r0, _08067794  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806778E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067794: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimEvilEye
StartSpellAnimEvilEye: @ 0x08067798
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080677D0  @ gUnknown_085D7F00
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080677D0: .4byte gUnknown_085D7F00

	THUMB_FUNC_START sub_80677D4
sub_80677D4: @ 0x080677D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08067800
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _08067886
_08067800:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #2
	cmp r1, r0
	bne _08067828
	ldr r0, _08067824  @ 0x000003C6
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	adds r0, r5, #0
	movs r1, #0x3c
	bl sub_8067AA0
	b _08067886
	.align 2, 0
_08067824: .4byte 0x000003C6
_08067828:
	adds r0, r2, #0
	adds r0, #0x1a
	cmp r1, r0
	bne _08067838
	adds r0, r5, #0
	bl sub_806788C
	b _08067886
_08067838:
	adds r0, r2, #0
	adds r0, #0x58
	cmp r1, r0
	bne _08067848
	adds r0, r5, #0
	bl sub_8067984
	b _08067886
_08067848:
	adds r0, r2, #0
	adds r0, #0x5a
	cmp r1, r0
	bne _08067870
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _08067886
	adds r0, r5, #0
	bl sub_8072450
	b _08067886
_08067870:
	adds r0, r2, #0
	adds r0, #0x74
	cmp r1, r0
	bne _08067886
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08067886:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806788C
sub_806788C: @ 0x0806788C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080678E8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080678EC  @ gUnknown_085D7F18
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _080678F0  @ gUnknown_080DE9EA
	str r0, [r5, #0x48]
	ldr r0, _080678F4  @ gUnknown_085D7F80
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _080678F8  @ gUnknown_085D7F30
	str r0, [r5, #0x54]
	ldr r0, _080678FC  @ gUnknown_085D7FD0
	str r0, [r5, #0x58]
	bl sub_80551B0
	ldr r0, _08067900  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806790E
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08067904
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _0806790E
	.align 2, 0
_080678E8: .4byte gUnknown_0201774C
_080678EC: .4byte gUnknown_085D7F18
_080678F0: .4byte gUnknown_080DE9EA
_080678F4: .4byte gUnknown_085D7F80
_080678F8: .4byte gUnknown_085D7F30
_080678FC: .4byte gUnknown_085D7FD0
_08067900: .4byte gUnknown_0203E120
_08067904:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0806790E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8067914
sub_8067914: @ 0x08067914
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _0806795C
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r6, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r5, r4, r5
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _0806797A
_0806795C:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _0806797A
	bl ClearBG1
	ldr r1, _08067980  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Delete
_0806797A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067980: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8067984
sub_8067984: @ 0x08067984
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080679BC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080679C0  @ gUnknown_085D8020
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _080679C4  @ gUnknown_080DEA4A
	str r0, [r5, #0x48]
	ldr r0, _080679C8  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080679D0
	ldr r0, _080679CC  @ gUnknown_085D8068
	b _080679D2
	.align 2, 0
_080679BC: .4byte gUnknown_0201774C
_080679C0: .4byte gUnknown_085D8020
_080679C4: .4byte gUnknown_080DEA4A
_080679C8: .4byte gUnknown_0203E120
_080679CC: .4byte gUnknown_085D8068
_080679D0:
	ldr r0, _08067A0C  @ gUnknown_085D8050
_080679D2:
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08067A10  @ gUnknown_085D8038
	str r0, [r5, #0x54]
	ldr r0, _08067A14  @ gUnknown_085D8080
	str r0, [r5, #0x58]
	ldr r0, _08067A18  @ gUnknown_086D8A94
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _08067A1C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08067A2A
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08067A20
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
	b _08067A2A
	.align 2, 0
_08067A0C: .4byte gUnknown_085D8050
_08067A10: .4byte gUnknown_085D8038
_08067A14: .4byte gUnknown_085D8080
_08067A18: .4byte gUnknown_086D8A94
_08067A1C: .4byte gUnknown_0203E120
_08067A20:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_08067A2A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8067A30
sub_8067A30: @ 0x08067A30
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _08067A78
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r6, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r5, r4, r5
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08067A96
_08067A78:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _08067A96
	bl ClearBG1
	ldr r1, _08067A9C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Delete
_08067A96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067A9C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8067AA0
sub_8067AA0: @ 0x08067AA0
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #0xc
	adds r6, r0, #0
	mov r9, r1
	ldr r0, _08067B34  @ gUnknown_080DEA74
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r6, #0
	bl GetAISSubjectId
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08067B38  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08067B3C  @ gUnknown_085D8098
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	adds r0, r6, #0
	bl GetCoreAIStruct
	str r0, [r5, #0x5c]
	movs r0, #0
	mov r8, r0
	mov r1, r8
	strh r1, [r5, #0x2c]
	mov r0, r9
	strh r0, [r5, #0x2e]
	lsls r4, r4, #2
	add r4, sp
	adds r4, #4
	ldr r3, [r4]
	str r3, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r5, #0x60]
	ldrh r1, [r0, #4]
	adds r1, #0x18
	strh r1, [r0, #4]
	mov r1, r8
	strh r1, [r0, #6]
	movs r1, #0x14
	strh r1, [r0, #0xa]
	bl AISArray_Sort
	ldr r0, _08067B40  @ gUnknown_086C93FC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08067B44  @ gUnknown_086C90A4
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067B34: .4byte gUnknown_080DEA74
_08067B38: .4byte gUnknown_0201774C
_08067B3C: .4byte gUnknown_085D8098
_08067B40: .4byte gUnknown_086C93FC
_08067B44: .4byte gUnknown_086C90A4

	THUMB_FUNC_START sub_8067B48
sub_8067B48: @ 0x08067B48
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08067B72
	ldr r0, _08067B78  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08067B72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067B78: .4byte gUnknown_0201774C

	THUMB_FUNC_START StartSpellAnimNaglfar
StartSpellAnimNaglfar: @ 0x08067B7C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08067BB4  @ gUnknown_085D80B0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08067BB4: .4byte gUnknown_085D80B0

	THUMB_FUNC_START Loop6C_efxNaglfar
Loop6C_efxNaglfar: @ 0x08067BB8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [r7, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r5, r0, #0
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08067BE8
	ldr r0, [r7, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _08067DBC
_08067BE8:
	movs r0, #0x2c
	ldrsh r1, [r7, r0]
	adds r0, r5, #0
	adds r0, #0x1a
	cmp r1, r0
	bne _08067C30
	adds r0, r4, #0
	movs r1, #0x3e
	movs r2, #1
	bl sub_805B93C
	adds r0, r4, #0
	movs r1, #0x3e
	bl sub_805B4E8
	adds r0, r4, #0
	bl sub_8067DC4
	movs r0, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x1e
	movs r3, #0
	bl sub_805BA1C
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl sub_806823C
	ldr r0, _08067C2C  @ 0x000003AF
	b _08067D74
	.align 2, 0
_08067C2C: .4byte 0x000003AF
_08067C30:
	adds r0, r5, #0
	adds r0, #0x32
	cmp r1, r0
	beq _08067C62
	adds r0, r5, #0
	adds r0, #0x37
	cmp r1, r0
	beq _08067C7E
	adds r0, r5, #0
	adds r0, #0x38
	cmp r1, r0
	bne _08067C5A
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x1e
	movs r3, #0x10
	bl sub_805BA1C
	b _08067DBC
_08067C5A:
	adds r0, r5, #0
	adds r0, #0x42
	cmp r1, r0
	bne _08067C6C
_08067C62:
	adds r0, r4, #0
	movs r1, #2
	bl StartSpellBG_FLASH
	b _08067DBC
_08067C6C:
	adds r0, r5, #0
	adds r0, #0x46
	cmp r1, r0
	bne _08067C8A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x1e
	bl sub_8068614
_08067C7E:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #1
	bl sub_806823C
	b _08067DBC
_08067C8A:
	adds r0, r5, #0
	adds r0, #0x6e
	cmp r1, r0
	bne _08067CAC
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #1
	bl sub_805B93C
	adds r0, r4, #0
	movs r1, #0x68
	bl sub_805B4E8
	adds r0, r4, #0
	bl sub_8067E98
	b _08067DBC
_08067CAC:
	adds r0, r5, #0
	adds r0, #0xa6
	cmp r1, r0
	bne _08067CC0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x1e
	bl sub_8054030
	b _08067DBC
_08067CC0:
	adds r0, r5, #0
	adds r0, #0xc4
	cmp r1, r0
	bne _08067CF4
	ldr r2, _08067CF0  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #0
	bl sub_8054134
	b _08067DBC
	.align 2, 0
_08067CF0: .4byte gLCDControlBuffer
_08067CF4:
	adds r0, r5, #0
	adds r0, #0xe2
	cmp r1, r0
	bne _08067D20
	adds r0, r4, #0
	movs r1, #0x4c
	movs r2, #0xa
	bl StartSpellThing_MagicQuake
	adds r0, r4, #0
	bl sub_8067F64
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x14
	bl sub_8054134
	adds r0, r4, #0
	movs r1, #0x4c
	bl sub_8068314
	b _08067DBC
_08067D20:
	movs r0, #0x2c
	ldrsh r1, [r7, r0]
	movs r2, #0x97
	lsls r2, r2, #1
	adds r0, r5, r2
	cmp r1, r0
	bne _08067D8E
	ldrh r0, [r4, #0x10]
	movs r1, #9
	orrs r1, r0
	strh r1, [r4, #0x10]
	adds r6, r7, #0
	adds r6, #0x29
	ldrb r1, [r6]
	adds r0, r4, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r6, [r6]
	cmp r6, #0
	bne _08067D84
	adds r0, r4, #0
	movs r1, #0x42
	movs r2, #1
	bl sub_805B93C
	adds r0, r4, #0
	movs r1, #0x42
	bl sub_805B4E8
	adds r0, r4, #0
	bl sub_8068028
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #0x20
	movs r3, #0x10
	bl sub_805BA1C
	movs r0, #0xec
	lsls r0, r0, #2
_08067D74:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r3, #1
	bl sub_80729A4
	b _08067DBC
_08067D84:
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r0, [r7, #0x2c]
	b _08067DBC
_08067D8E:
	movs r2, #0x9d
	lsls r2, r2, #1
	adds r0, r5, r2
	cmp r1, r0
	bne _08067DA4
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl sub_806823C
	b _08067DBC
_08067DA4:
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r5, r3
	cmp r1, r0
	bne _08067DBC
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08067DBC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8067DC4
sub_8067DC4: @ 0x08067DC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08067E04  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08067E08  @ gUnknown_085D80C8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	strh r1, [r0, #0x32]
	ldr r1, _08067E0C  @ gUnknown_080DEA96
	str r1, [r0, #0x48]
	ldr r1, _08067E10  @ gUnknown_085D80E4
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _08067E14  @ gUnknown_085D80E0
	str r1, [r0, #0x54]
	ldr r0, _08067E18  @ gUnknown_087013A0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067E04: .4byte gUnknown_0201774C
_08067E08: .4byte gUnknown_085D80C8
_08067E0C: .4byte gUnknown_080DEA96
_08067E10: .4byte gUnknown_085D80E4
_08067E14: .4byte gUnknown_085D80E0
_08067E18: .4byte gUnknown_087013A0

	THUMB_FUNC_START Loop6C_efxNaglfarBG
Loop6C_efxNaglfarBG: @ 0x08067E1C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r0, #4
	movs r1, #0xf0
	bl __modsi3
	strh r0, [r4, #0x32]
	ldrh r1, [r4, #0x32]
	movs r0, #1
	movs r2, #0
	bl BG_SetPosition
	adds r0, r4, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	blt _08067E70
	ldr r1, [r4, #0x4c]
	ldr r5, [r4, #0x54]
	ldr r0, [r4, #0x5c]
	lsls r4, r2, #2
	adds r1, r4, r1
	ldr r1, [r1]
	movs r2, #0x20
	movs r3, #0x14
	bl sub_805576C
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	b _08067E8E
_08067E70:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _08067E8E
	bl ClearBG1
	ldr r1, _08067E94  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Delete
_08067E8E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08067E94: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8067E98
sub_8067E98: @ 0x08067E98
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08067ED0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08067ED4  @ gUnknown_085D80E8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _08067ED8  @ gUnknown_080DEAAA
	str r1, [r0, #0x48]
	ldr r1, _08067EDC  @ gUnknown_085D8140
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _08067EE0  @ gUnknown_085D8100
	str r1, [r0, #0x54]
	ldr r1, _08067EE4  @ gUnknown_085D8180
	str r1, [r0, #0x58]
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067ED0: .4byte gUnknown_0201774C
_08067ED4: .4byte gUnknown_085D80E8
_08067ED8: .4byte gUnknown_080DEAAA
_08067EDC: .4byte gUnknown_085D8140
_08067EE0: .4byte gUnknown_085D8100
_08067EE4: .4byte gUnknown_085D8180

	THUMB_FUNC_START Loop6C_efxNaglfarBG2
Loop6C_efxNaglfarBG2: @ 0x08067EE8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	adds r0, r4, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _08067F3C
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r6, [r4, #0x58]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r5, r4, r5
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r4, r6
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08067F5A
_08067F3C:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _08067F5A
	bl ClearBG1
	ldr r1, _08067F60  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Delete
_08067F5A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067F60: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8067F64
sub_8067F64: @ 0x08067F64
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08067FA0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08067FA4  @ gUnknown_085D81C0
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _08067FA8  @ gUnknown_080DEAFA
	str r1, [r0, #0x48]
	ldr r1, _08067FAC  @ gUnknown_085D81E8
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _08067FB0  @ gUnknown_085D81D8
	str r1, [r0, #0x54]
	ldr r0, _08067FB4  @ gUnknown_087197E4
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067FA0: .4byte gUnknown_0201774C
_08067FA4: .4byte gUnknown_085D81C0
_08067FA8: .4byte gUnknown_080DEAFA
_08067FAC: .4byte gUnknown_085D81E8
_08067FB0: .4byte gUnknown_085D81D8
_08067FB4: .4byte gUnknown_087197E4

	THUMB_FUNC_START sub_8067FB8
sub_8067FB8: @ 0x08067FB8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	adds r0, r4, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _08068000
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	b _0806801E
_08068000:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _0806801E
	bl ClearBG1
	ldr r1, _08068024  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Delete
_0806801E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068024: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8068028
sub_8068028: @ 0x08068028
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08068064  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08068068  @ gUnknown_085D81F8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806806C  @ gUnknown_080DEB6A
	str r1, [r0, #0x48]
	ldr r1, _08068070  @ gUnknown_085D8224
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r1, _08068074  @ gUnknown_085D8210
	str r1, [r0, #0x54]
	ldr r0, _08068078  @ gUnknown_08720D84
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068064: .4byte gUnknown_0201774C
_08068068: .4byte gUnknown_085D81F8
_0806806C: .4byte gUnknown_080DEB6A
_08068070: .4byte gUnknown_085D8224
_08068074: .4byte gUnknown_085D8210
_08068078: .4byte gUnknown_08720D84

	THUMB_FUNC_START sub_806807C
sub_806807C: @ 0x0806807C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	adds r0, r4, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	blt _080680C4
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	ldr r5, [r4, #0x54]
	ldr r0, [r4, #0x5c]
	lsls r4, r3, #2
	adds r1, r4, r1
	ldr r1, [r1]
	adds r2, r4, r2
	ldr r2, [r2]
	bl sub_8055670
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	b _080680E2
_080680C4:
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _080680E2
	bl ClearBG1
	ldr r1, _080680E8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Delete
_080680E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080680E8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80680EC
sub_80680EC: @ 0x080680EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r5, r0, #0
	str r1, [sp, #0x5c]
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x88]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0x60]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	add r1, sp, #4
	ldr r0, _08068190  @ gUnknown_080DEBC8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r0, sp, #0x34
	mov r8, r0
	ldr r1, _08068194  @ gUnknown_080DEBF8
	movs r2, #0x14
	bl memcpy
	add r6, sp, #0x48
	ldr r1, _08068198  @ gUnknown_080DEC0C
	adds r0, r6, #0
	movs r2, #0x14
	bl memcpy
	adds r0, r5, #0
	bl GetAISSubjectId
	ldr r1, _0806819C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080681A0  @ gUnknown_085D8238
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetCoreAIStruct
	str r0, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	add r1, sp, #0x5c
	ldrh r1, [r1]
	strh r1, [r4, #0x2e]
	lsls r0, r7, #3
	add r0, sp
	adds r0, #4
	ldr r3, [r0]
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r3, r0, #0
	str r3, [r4, #0x60]
	mov r2, r9
	cmp r2, #0
	beq _080681A4
	cmp r2, #1
	beq _080681BC
	b _080681DE
	.align 2, 0
_08068190: .4byte gUnknown_080DEBC8
_08068194: .4byte gUnknown_080DEBF8
_08068198: .4byte gUnknown_080DEC0C
_0806819C: .4byte gUnknown_0201774C
_080681A0: .4byte gUnknown_085D8238
_080681A4:
	lsls r2, r7, #2
	mov r4, r8
	adds r1, r4, r2
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3, #2]
	mov r1, sp
	adds r1, #0x36
	b _080681D0
_080681BC:
	lsls r2, r7, #2
	adds r1, r6, r2
	mov r4, sl
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3, #2]
	mov r1, sp
	adds r1, #0x4a
_080681D0:
	adds r1, r1, r2
	ldr r2, [sp, #0x60]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r3, #4]
_080681DE:
	ldr r0, _08068200  @ gUnknown_086FF3A4
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08068204  @ gUnknown_086FE938
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08068200: .4byte gUnknown_086FF3A4
_08068204: .4byte gUnknown_086FE938

	THUMB_FUNC_START sub_8068208
sub_8068208: @ 0x08068208
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08068232
	ldr r0, _08068238  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08068232:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068238: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806823C
sub_806823C: @ 0x0806823C
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #0x14
	mov r8, r0
	mov r9, r1
	lsls r6, r2, #0x18
	lsrs r6, r6, #0x18
	add r1, sp, #4
	ldr r0, _080682CC  @ gUnknown_080DEC30
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r0, r8
	bl GetAISSubjectId
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080682D0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080682D4  @ gUnknown_085D8250
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	mov r0, r8
	bl GetCoreAIStruct
	str r0, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	mov r0, r9
	strh r0, [r5, #0x2e]
	lsls r4, r4, #2
	lsls r6, r6, #3
	adds r4, r4, r6
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	ldr r3, [r0]
	str r3, [sp]
	mov r0, r8
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r5, #0x60]
	ldrh r1, [r0, #4]
	adds r1, #0x18
	strh r1, [r0, #4]
	ldr r0, _080682D8  @ gUnknown_086FFD3C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _080682DC  @ gUnknown_086FF5EC
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080682CC: .4byte gUnknown_080DEC30
_080682D0: .4byte gUnknown_0201774C
_080682D4: .4byte gUnknown_085D8250
_080682D8: .4byte gUnknown_086FFD3C
_080682DC: .4byte gUnknown_086FF5EC

	THUMB_FUNC_START sub_80682E0
sub_80682E0: @ 0x080682E0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0806830A
	ldr r0, _08068310  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806830A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068310: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8068314
sub_8068314: @ 0x08068314
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, _08068340  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08068344  @ gUnknown_085D8268
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetCoreAIStruct
	str r0, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	strh r6, [r4, #0x2e]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068340: .4byte gUnknown_0201774C
_08068344: .4byte gUnknown_085D8268

	THUMB_FUNC_START sub_8068348
sub_8068348: @ 0x08068348
	push {lr}
	sub sp, #8
	adds r2, r0, #0
	ldrh r0, [r2, #0x2c]
	adds r0, #1
	movs r3, #0
	strh r0, [r2, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _0806836E
	ldr r0, [r2, #0x5c]
	str r3, [sp]
	str r3, [sp, #4]
	movs r1, #2
	movs r2, #0
	bl sub_80680EC
	b _0806860A
_0806836E:
	cmp r0, #5
	bne _08068380
	ldr r0, [r2, #0x5c]
	str r3, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #2
	movs r2, #0
	b _08068596
_08068380:
	cmp r0, #7
	bne _08068390
	ldr r0, [r2, #0x5c]
	str r3, [sp]
	movs r1, #2
	str r1, [sp, #4]
	movs r2, #0
	b _08068596
_08068390:
	cmp r0, #9
	bne _080683A2
	ldr r0, [r2, #0x5c]
	str r3, [sp]
	movs r1, #3
	str r1, [sp, #4]
	movs r1, #2
	movs r2, #0
	b _08068596
_080683A2:
	cmp r0, #0xb
	bne _080683B4
	ldr r0, [r2, #0x5c]
	str r3, [sp]
	movs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	movs r2, #0
	b _08068596
_080683B4:
	cmp r0, #0xd
	bne _080683C6
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	str r3, [sp, #4]
	movs r1, #2
	movs r2, #0
	b _08068596
_080683C6:
	cmp r0, #0xf
	bne _080683D8
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #2
	movs r2, #0
	b _08068596
_080683D8:
	cmp r0, #0x11
	bne _080683EA
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	movs r2, #0
	b _08068596
_080683EA:
	cmp r0, #0x13
	bne _080683FE
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	movs r1, #2
	movs r2, #0
	b _08068596
_080683FE:
	cmp r0, #0x15
	bne _08068412
	ldr r0, [r2, #0x5c]
	movs r1, #1
	str r1, [sp]
	movs r1, #4
	str r1, [sp, #4]
	movs r1, #2
	movs r2, #0
	b _08068596
_08068412:
	movs r1, #0x2c
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #0x2c]
	cmp r0, #0x17
	bne _08068424
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	b _0806845C
_08068424:
	cmp r0, #0x19
	bne _08068432
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	b _0806845C
_08068432:
	cmp r0, #0x1b
	bne _08068442
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	b _08068460
_08068442:
	cmp r0, #0x1d
	bne _08068450
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #3
	b _0806845C
_08068450:
	cmp r0, #0x1f
	bne _0806846A
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #4
_0806845C:
	str r1, [sp, #4]
	movs r1, #2
_08068460:
	movs r2, #8
	movs r3, #8
	bl sub_80680EC
	b _0806860A
_0806846A:
	cmp r0, #0x21
	bne _08068480
	ldr r0, [r2, #0x5c]
	movs r2, #0x10
	negs r2, r2
	movs r3, #8
	negs r3, r3
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	b _080684DA
_08068480:
	cmp r0, #0x23
	bne _08068494
	ldr r0, [r2, #0x5c]
	movs r2, #0x10
	negs r2, r2
	movs r3, #8
	negs r3, r3
	movs r1, #1
	str r1, [sp]
	b _080684DA
_08068494:
	cmp r0, #0x25
	bne _080684B0
	ldr r0, [r2, #0x5c]
	movs r2, #0x10
	negs r2, r2
	movs r3, #8
	negs r3, r3
	movs r1, #1
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	bl sub_80680EC
	b _0806860A
_080684B0:
	cmp r0, #0x27
	bne _080684C6
	ldr r0, [r2, #0x5c]
	movs r2, #0x10
	negs r2, r2
	movs r3, #8
	negs r3, r3
	movs r1, #1
	str r1, [sp]
	movs r1, #3
	b _080684DA
_080684C6:
	cmp r0, #0x29
	bne _080684E4
	ldr r0, [r2, #0x5c]
	movs r2, #0x10
	negs r2, r2
	movs r3, #8
	negs r3, r3
	movs r1, #1
	str r1, [sp]
	movs r1, #4
_080684DA:
	str r1, [sp, #4]
	movs r1, #2
	bl sub_80680EC
	b _0806860A
_080684E4:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2b
	bne _080684F4
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	b _0806852C
_080684F4:
	cmp r0, #0x2d
	bne _08068502
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	b _0806852C
_08068502:
	cmp r0, #0x2f
	bne _08068512
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	b _08068530
_08068512:
	cmp r0, #0x31
	bne _08068520
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #3
	b _0806852C
_08068520:
	cmp r0, #0x33
	bne _0806853A
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #4
_0806852C:
	str r1, [sp, #4]
	movs r1, #2
_08068530:
	movs r2, #0x12
	movs r3, #0x12
	bl sub_80680EC
	b _0806860A
_0806853A:
	cmp r0, #0x35
	bne _0806854C
	ldr r0, [r2, #0x5c]
	movs r2, #0x18
	negs r2, r2
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	b _08068592
_0806854C:
	cmp r0, #0x37
	bne _0806855C
	ldr r0, [r2, #0x5c]
	movs r2, #0x18
	negs r2, r2
	movs r1, #1
	str r1, [sp]
	b _08068592
_0806855C:
	cmp r0, #0x39
	bne _08068570
	ldr r0, [r2, #0x5c]
	movs r2, #0x18
	negs r2, r2
	movs r1, #1
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	b _08068596
_08068570:
	cmp r0, #0x3b
	bne _08068582
	ldr r0, [r2, #0x5c]
	movs r2, #0x18
	negs r2, r2
	movs r1, #1
	str r1, [sp]
	movs r1, #3
	b _08068592
_08068582:
	cmp r0, #0x3d
	bne _0806859E
	ldr r0, [r2, #0x5c]
	movs r2, #0x18
	negs r2, r2
	movs r1, #1
	str r1, [sp]
	movs r1, #4
_08068592:
	str r1, [sp, #4]
	movs r1, #2
_08068596:
	movs r3, #0
	bl sub_80680EC
	b _0806860A
_0806859E:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x3f
	bne _080685AE
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	b _080685E6
_080685AE:
	cmp r1, #0x41
	bne _080685BC
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	b _080685E6
_080685BC:
	cmp r1, #0x43
	bne _080685CC
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	b _080685EA
_080685CC:
	cmp r1, #0x45
	bne _080685DA
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #3
	b _080685E6
_080685DA:
	cmp r1, #0x47
	bne _080685F4
	ldr r0, [r2, #0x5c]
	movs r1, #0
	str r1, [sp]
	movs r1, #4
_080685E6:
	str r1, [sp, #4]
	movs r1, #2
_080685EA:
	movs r2, #0xc
	movs r3, #0xc
	bl sub_80680EC
	b _0806860A
_080685F4:
	movs r3, #0x2e
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bne _0806860A
	ldr r1, _08068610  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r2, #0
	bl Proc_ClearNativeCallback
_0806860A:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08068610: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8068614
sub_8068614: @ 0x08068614
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _08068634  @ gUnknown_085D8280
	movs r1, #0
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	strh r6, [r0, #0x30]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068634: .4byte gUnknown_085D8280

	THUMB_FUNC_START sub_8068638
sub_8068638: @ 0x08068638
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08068678  @ gPaletteBuffer
	ldr r4, _0806867C  @ gUnknown_020165C8
	movs r5, #0x80
	lsls r5, r5, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	movs r3, #0
	bl sub_80712B0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	movs r0, #0
	strh r0, [r6, #0x2c]
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068678: .4byte gPaletteBuffer
_0806867C: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_8068680
sub_8068680: @ 0x08068680
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl sub_8012DCC
	adds r5, r0, #0
	ldr r0, _0806872C  @ gPaletteBuffer
	ldr r4, _08068730  @ gUnknown_020165C8
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r4, #0
	adds r2, r6, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #4
	movs r2, #2
	adds r3, r5, #0
	bl sub_80712B0
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xa
	adds r3, r5, #0
	bl sub_80712B0
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #1
	adds r3, r5, #0
	bl sub_80712B0
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #1
	adds r3, r5, #0
	bl sub_80712B0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r7, r2]
	cmp r0, r1
	ble _08068724
	movs r0, #0
	strh r0, [r7, #0x2c]
	ldr r2, _08068734  @ gLCDControlBuffer
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r1, #5
	negs r1, r1
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08068724:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806872C: .4byte gPaletteBuffer
_08068730: .4byte gUnknown_020165C8
_08068734: .4byte gLCDControlBuffer

	THUMB_FUNC_START sub_8068738
sub_8068738: @ 0x08068738
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r7, r0]
	movs r1, #0x30
	ldrsh r0, [r7, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl sub_8012DCC
	adds r5, r0, #0
	ldr r0, _080687C8  @ gPaletteBuffer
	ldr r4, _080687CC  @ gUnknown_020165C8
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r4, #0
	adds r2, r6, #0
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #4
	movs r2, #2
	movs r3, #0x10
	bl sub_80712B0
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xa
	movs r3, #0x10
	bl sub_80712B0
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #1
	adds r3, r5, #0
	bl sub_80712B0
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #1
	adds r3, r5, #0
	bl sub_80712B0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r7, r2]
	cmp r0, r1
	ble _080687C0
	movs r0, #0
	strh r0, [r7, #0x2c]
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_080687C0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080687C8: .4byte gPaletteBuffer
_080687CC: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_80687D0
sub_80687D0: @ 0x080687D0
	push {r4, lr}
	adds r4, r0, #0
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80687E4
sub_80687E4: @ 0x080687E4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _08068818  @ gUnknown_085D82B0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068818: .4byte gUnknown_085D82B0

	THUMB_FUNC_START sub_806881C
sub_806881C: @ 0x0806881C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	movs r6, #0
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08068844
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
_08068844:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #1
	bne _08068884
	ldr r0, [r4, #0x5c]
	movs r1, #0x5a
	movs r2, #0xa
	bl StartSpellThing_MagicQuake
	adds r0, r5, #0
	bl sub_80688C0
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #0xf
	movs r3, #0x10
	bl sub_805BA1C
	ldr r0, _08068880  @ 0x0000011D
	movs r1, #0x80
	lsls r1, r1, #1
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r3, #1
	bl sub_80729A4
	b _080688B6
	.align 2, 0
_08068880: .4byte 0x0000011D
_08068884:
	cmp r0, #0xf
	bne _080688A8
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _080688B6
	adds r0, r5, #0
	bl sub_8072450
	b _080688B6
_080688A8:
	cmp r0, #0x82
	bne _080688B6
	bl SetSomethingSpellFxToFalse
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080688B6:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80688C0
sub_80688C0: @ 0x080688C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _0806891C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08068920  @ gUnknown_085D82C8
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r6, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	movs r0, #0x34
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	bl GetAISSubjectId
	ldr r3, _08068924  @ gUnknown_085E35DC
	cmp r0, #0
	bne _080688F0
	ldr r3, _08068928  @ gUnknown_085E2A24
_080688F0:
	str r3, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r5, #0x60]
	ldr r0, _0806892C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08068936
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08068930
	ldrh r0, [r4, #2]
	adds r0, #0x10
	b _0806894A
	.align 2, 0
_0806891C: .4byte gUnknown_0201774C
_08068920: .4byte gUnknown_085D82C8
_08068924: .4byte gUnknown_085E35DC
_08068928: .4byte gUnknown_085E2A24
_0806892C: .4byte gUnknown_0203E120
_08068930:
	ldrh r0, [r4, #2]
	subs r0, #0x10
	b _0806894A
_08068936:
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08068946
	ldrh r0, [r4, #2]
	adds r0, #0x48
	b _0806894A
_08068946:
	ldrh r0, [r4, #2]
	subs r0, #0x48
_0806894A:
	strh r0, [r4, #2]
	ldr r0, _08068968  @ gUnknown_085DFA68
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806896C  @ gUnknown_085DDC64
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068968: .4byte gUnknown_085DFA68
_0806896C: .4byte gUnknown_085DDC64

	THUMB_FUNC_START sub_8068970
sub_8068970: @ 0x08068970
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08068994  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080689A2
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08068998
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	ldrh r0, [r0, #2]
	adds r0, #0x48
	b _080689A0
	.align 2, 0
_08068994: .4byte gUnknown_0203E120
_08068998:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	ldrh r0, [r0, #2]
	subs r0, #0x48
_080689A0:
	strh r0, [r1, #2]
_080689A2:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _080689C8
	ldr r0, [r4, #0x60]
	bl AIS_Free
	ldr r1, _080689D0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_080689C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080689D0: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80689D4
sub_80689D4: @ 0x080689D4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08068A18  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08068A1C  @ gUnknown_085D82E0
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x70
	strh r0, [r4, #0x2e]
	ldr r0, _08068A20  @ gUnknown_087246D8
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r2, _08068A24  @ gUnknown_08725AF0
	ldr r0, [r4, #0x5c]
	adds r1, r2, #0
	bl sub_8055670
	bl ClearBG1Setup
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068A18: .4byte gUnknown_0201774C
_08068A1C: .4byte gUnknown_085D82E0
_08068A20: .4byte gUnknown_087246D8
_08068A24: .4byte gUnknown_08725AF0

	THUMB_FUNC_START sub_8068A28
sub_8068A28: @ 0x08068A28
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08068A54
	bl ClearBG1
	bl sub_805526C
	ldr r1, _08068A5C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08068A54:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068A5C: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8068A60
sub_8068A60: @ 0x08068A60
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08068A8C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08068A90  @ gUnknown_085D82F8
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _08068A94  @ gUnknown_080DECBA
	str r1, [r0, #0x48]
	ldr r1, _08068A98  @ gUnknown_08725DAC
	str r1, [r0, #0x4c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068A8C: .4byte gUnknown_0201774C
_08068A90: .4byte gUnknown_085D82F8
_08068A94: .4byte gUnknown_080DECBA
_08068A98: .4byte gUnknown_08725DAC

	THUMB_FUNC_START sub_8068A9C
sub_8068A9C: @ 0x08068A9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	blt _08068ADC
	ldr r0, [r4, #0x4c]
	ldr r4, _08068AD8  @ gUnknown_020165C8
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	adds r3, r5, #0
	bl sub_807132C
	adds r0, r4, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _08068AF2
	.align 2, 0
_08068AD8: .4byte gUnknown_020165C8
_08068ADC:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _08068AF2
	ldr r1, _08068AF8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08068AF2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068AF8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8068AFC
sub_8068AFC: @ 0x08068AFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	bl sub_8055670
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08068B18
	adds r5, #1
	movs r0, #1
	ands r5, r0
_08068B18:
	cmp r5, #0
	beq _08068B4C
	ldr r0, _08068B44  @ gBG1TilemapBuffer
	adds r2, r0, #0
	adds r2, #0x3a
	adds r4, r0, #0
	ldr r5, _08068B48  @ gUnknown_0203E120
	movs r3, #0x13
_08068B28:
	ldrh r1, [r2]
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	movs r6, #0
	ldrsh r0, [r5, r6]
	cmp r0, #0
	beq _08068B38
	strh r1, [r4]
_08068B38:
	adds r2, #0x40
	adds r4, #0x40
	subs r3, #1
	cmp r3, #0
	bge _08068B28
	b _08068B70
	.align 2, 0
_08068B44: .4byte gBG1TilemapBuffer
_08068B48: .4byte gUnknown_0203E120
_08068B4C:
	ldr r2, _08068B78  @ gBG1TilemapBuffer
	adds r4, r2, #0
	adds r4, #0x3a
	ldr r5, _08068B7C  @ gUnknown_0203E120
	movs r3, #0x13
_08068B56:
	ldrh r1, [r2]
	strh r1, [r2, #0x3c]
	strh r1, [r2, #0x3e]
	movs r6, #0
	ldrsh r0, [r5, r6]
	cmp r0, #0
	beq _08068B66
	strh r1, [r4]
_08068B66:
	adds r2, #0x40
	adds r4, #0x40
	subs r3, #1
	cmp r3, #0
	bge _08068B56
_08068B70:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068B78: .4byte gBG1TilemapBuffer
_08068B7C: .4byte gUnknown_0203E120

	THUMB_FUNC_START sub_8068B80
sub_8068B80: @ 0x08068B80
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _08068BB4  @ gUnknown_085D8318
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068BB4: .4byte gUnknown_085D8318

	THUMB_FUNC_START sub_8068BB8
sub_8068BB8: @ 0x08068BB8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08068BE4
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _08068D14
_08068BE4:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #2
	cmp r1, r0
	bne _08068C08
	bl sub_806FAB0
	cmp r0, #1
	bne _08068BF8
	b _08068D14
_08068BF8:
	bl sub_806FAB0
	cmp r0, #2
	bne _08068C02
	b _08068D14
_08068C02:
	bl sub_8068D78
	b _08068D14
_08068C08:
	adds r0, r2, #0
	adds r0, #0x22
	cmp r1, r0
	bne _08068C1C
	adds r0, r5, #0
	bl sub_80692B0
	movs r0, #0xeb
	lsls r0, r0, #2
	b _08068CD4
_08068C1C:
	adds r0, r2, #0
	adds r0, #0x60
	cmp r1, r0
	bne _08068C32
	adds r0, r5, #0
	bl sub_8069488
	adds r0, r5, #0
	bl sub_8069AC4
	b _08068D14
_08068C32:
	adds r0, r2, #0
	adds r0, #0xce
	cmp r1, r0
	bne _08068C42
	adds r0, r5, #0
	bl sub_8069E88
	b _08068D14
_08068C42:
	movs r3, #0x97
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bne _08068C8C
	adds r0, r5, #0
	movs r1, #0xa
	bl StartSpellBG_FLASH
	bl sub_806FAB0
	cmp r0, #1
	beq _08068C68
	bl sub_806FAB0
	cmp r0, #2
	beq _08068C68
	bl sub_8068D9C
_08068C68:
	bl NewEfxSpellCast
	ldrh r1, [r5, #0x10]
	movs r0, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _08068D14
	adds r0, r5, #0
	bl sub_8072450
	b _08068D14
_08068C8C:
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bne _08068CB0
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _08068D14
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
	b _08068D14
_08068CB0:
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bne _08068CE8
	ldr r0, [r4, #0x5c]
	movs r1, #0xf
	movs r2, #9
	bl StartSpellThing_MagicQuake
	adds r0, r5, #0
	movs r1, #0x1e
	bl sub_8064D00
	adds r0, r5, #0
	bl sub_8064DE4
	ldr r0, _08068CE4  @ 0x000003AD
_08068CD4:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x78
	movs r3, #1
	bl sub_80729A4
	b _08068D14
	.align 2, 0
_08068CE4: .4byte 0x000003AD
_08068CE8:
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bne _08068CFE
	ldr r0, [r4, #0x5c]
	movs r1, #0xf
	movs r2, #8
	bl StartSpellThing_MagicQuake
	b _08068D14
_08068CFE:
	ldr r3, _08068D1C  @ 0x00000161
	adds r0, r2, r3
	cmp r1, r0
	bne _08068D14
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08068D14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068D1C: .4byte 0x00000161

	THUMB_FUNC_START sub_8068D20
sub_8068D20: @ 0x08068D20
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	movs r1, #4
	movs r2, #0x10
	bl sub_8012DCC
	adds r3, r0, #0
	ldr r0, _08068D70  @ gPaletteBuffer
	movs r1, #6
	movs r2, #0xa
	bl sub_80712B0
	bl EnablePaletteSync
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x11
	bne _08068D68
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r1, _08068D74  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08068D68:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068D70: .4byte gPaletteBuffer
_08068D74: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8068D78
sub_8068D78: @ 0x08068D78
	push {lr}
	ldr r1, _08068D94  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08068D98  @ gUnknown_085D8330
	movs r1, #3
	bl Proc_Create
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r0}
	bx r0
	.align 2, 0
_08068D94: .4byte gUnknown_0201774C
_08068D98: .4byte gUnknown_085D8330

	THUMB_FUNC_START sub_8068D9C
sub_8068D9C: @ 0x08068D9C
	push {lr}
	ldr r1, _08068DB0  @ gUnknown_0203E0FE
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08068DB4
	movs r0, #4
	bl sub_807168C
	b _08068DCE
	.align 2, 0
_08068DB0: .4byte gUnknown_0203E0FE
_08068DB4:
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #1
	bl sub_8075AB4
	ldr r0, _08068DD4  @ gPaletteBuffer
	movs r1, #6
	movs r2, #0xa
	movs r3, #0
	bl sub_80712B0
	bl EnablePaletteSync
_08068DCE:
	pop {r0}
	bx r0
	.align 2, 0
_08068DD4: .4byte gPaletteBuffer

	THUMB_FUNC_START sub_8068DD8
sub_8068DD8: @ 0x08068DD8
	push {r4, lr}
	ldr r0, _08068E08  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _08068E02
	ldr r4, _08068E0C  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #0xd
	bl Div
	ldr r2, _08068E10  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_08068E02:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068E08: .4byte 0x04000006
_08068E0C: .4byte gUnknown_0201FB28
_08068E10: .4byte 0x04000016

	THUMB_FUNC_START sub_8068E14
sub_8068E14: @ 0x08068E14
	push {r4, lr}
	ldr r0, _08068E44  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _08068E3E
	ldr r4, _08068E48  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #0xc
	bl Div
	ldr r2, _08068E4C  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_08068E3E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068E44: .4byte 0x04000006
_08068E48: .4byte gUnknown_0201FB28
_08068E4C: .4byte 0x04000016

	THUMB_FUNC_START sub_8068E50
sub_8068E50: @ 0x08068E50
	push {r4, lr}
	ldr r0, _08068E80  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _08068E7A
	ldr r4, _08068E84  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #0xb
	bl Div
	ldr r2, _08068E88  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_08068E7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068E80: .4byte 0x04000006
_08068E84: .4byte gUnknown_0201FB28
_08068E88: .4byte 0x04000016

	THUMB_FUNC_START sub_8068E8C
sub_8068E8C: @ 0x08068E8C
	push {r4, lr}
	ldr r0, _08068EBC  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _08068EB6
	ldr r4, _08068EC0  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #0xa
	bl Div
	ldr r2, _08068EC4  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_08068EB6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068EBC: .4byte 0x04000006
_08068EC0: .4byte gUnknown_0201FB28
_08068EC4: .4byte 0x04000016

	THUMB_FUNC_START sub_8068EC8
sub_8068EC8: @ 0x08068EC8
	push {r4, lr}
	ldr r0, _08068EF8  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _08068EF2
	ldr r4, _08068EFC  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #9
	bl Div
	ldr r2, _08068F00  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_08068EF2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068EF8: .4byte 0x04000006
_08068EFC: .4byte gUnknown_0201FB28
_08068F00: .4byte 0x04000016

	THUMB_FUNC_START sub_8068F04
sub_8068F04: @ 0x08068F04
	push {r4, lr}
	ldr r0, _08068F34  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _08068F2E
	ldr r4, _08068F38  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #8
	bl Div
	ldr r2, _08068F3C  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_08068F2E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068F34: .4byte 0x04000006
_08068F38: .4byte gUnknown_0201FB28
_08068F3C: .4byte 0x04000016

	THUMB_FUNC_START sub_8068F40
sub_8068F40: @ 0x08068F40
	push {r4, lr}
	ldr r0, _08068F70  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _08068F6A
	ldr r4, _08068F74  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #7
	bl Div
	ldr r2, _08068F78  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_08068F6A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068F70: .4byte 0x04000006
_08068F74: .4byte gUnknown_0201FB28
_08068F78: .4byte 0x04000016

	THUMB_FUNC_START sub_8068F7C
sub_8068F7C: @ 0x08068F7C
	push {r4, lr}
	ldr r0, _08068FAC  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _08068FA6
	ldr r4, _08068FB0  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #6
	bl Div
	ldr r2, _08068FB4  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_08068FA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068FAC: .4byte 0x04000006
_08068FB0: .4byte gUnknown_0201FB28
_08068FB4: .4byte 0x04000016

	THUMB_FUNC_START sub_8068FB8
sub_8068FB8: @ 0x08068FB8
	push {r4, lr}
	ldr r0, _08068FE8  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _08068FE2
	ldr r4, _08068FEC  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #5
	bl Div
	ldr r2, _08068FF0  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_08068FE2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068FE8: .4byte 0x04000006
_08068FEC: .4byte gUnknown_0201FB28
_08068FF0: .4byte 0x04000016

	THUMB_FUNC_START sub_8068FF4
sub_8068FF4: @ 0x08068FF4
	push {r4, lr}
	ldr r0, _08069024  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _0806901E
	ldr r4, _08069028  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #4
	bl Div
	ldr r2, _0806902C  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_0806901E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069024: .4byte 0x04000006
_08069028: .4byte gUnknown_0201FB28
_0806902C: .4byte 0x04000016

	THUMB_FUNC_START sub_8069030
sub_8069030: @ 0x08069030
	push {r4, lr}
	ldr r0, _08069060  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _0806905A
	ldr r4, _08069064  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #3
	bl Div
	ldr r2, _08069068  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_0806905A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069060: .4byte 0x04000006
_08069064: .4byte gUnknown_0201FB28
_08069068: .4byte 0x04000016

	THUMB_FUNC_START sub_806906C
sub_806906C: @ 0x0806906C
	push {r4, lr}
	ldr r0, _0806909C  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _08069096
	ldr r4, _080690A0  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #2
	bl Div
	ldr r2, _080690A4  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_08069096:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806909C: .4byte 0x04000006
_080690A0: .4byte gUnknown_0201FB28
_080690A4: .4byte 0x04000016

	THUMB_FUNC_START sub_80690A8
sub_80690A8: @ 0x080690A8
	push {r4, lr}
	ldr r0, _080690D8  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x9f
	bhi _080690D2
	ldr r4, _080690DC  @ gUnknown_0201FB28
	adds r1, r0, #0
	subs r1, #0x3f
	ldr r0, [r4]
	subs r0, r0, r1
	movs r1, #1
	bl Div
	ldr r2, _080690E0  @ 0x04000016
	ldr r1, [r4]
	negs r1, r1
	subs r1, r1, r0
	strh r1, [r2]
_080690D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080690D8: .4byte 0x04000006
_080690DC: .4byte gUnknown_0201FB28
_080690E0: .4byte 0x04000016

	THUMB_FUNC_START sub_80690E4
sub_80690E4: @ 0x080690E4
	ldr r0, _080690F4  @ 0x04000006
	ldrh r0, [r0]
	ldr r1, _080690F8  @ 0x04000016
	ldr r0, _080690FC  @ gUnknown_0201FB28
	ldr r0, [r0]
	negs r0, r0
	strh r0, [r1]
	bx lr
	.align 2, 0
_080690F4: .4byte 0x04000006
_080690F8: .4byte 0x04000016
_080690FC: .4byte gUnknown_0201FB28

	THUMB_FUNC_START sub_8069100
sub_8069100: @ 0x08069100
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r7, #0x44]
	subs r0, #1
	cmp r0, #4
	bls _08069124
	b _08069240
_08069124:
	lsls r0, r0, #2
	ldr r1, _08069130  @ _08069134
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08069130: .4byte _08069134
_08069134: @ jump table
	.4byte _08069148 @ case 0
	.4byte _08069164 @ case 1
	.4byte _08069198 @ case 2
	.4byte _080691CC @ case 3
	.4byte _08069200 @ case 4
_08069148:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _0806918C
	cmp r0, #1
	beq _08069156
	b _08069246
_08069156:
	ldr r0, _08069160  @ sub_8068DD8
	bl SetPrimaryHBlankHandler
	b _08069246
	.align 2, 0
_08069160: .4byte sub_8068DD8
_08069164:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	cmp r0, #1
	beq _0806918C
	cmp r0, #1
	bgt _08069176
	cmp r0, #0
	beq _080691B4
	b _08069246
_08069176:
	cmp r0, #2
	beq _0806921C
	cmp r0, #3
	bne _08069246
	ldr r0, _08069188  @ sub_8068F40
	bl SetPrimaryHBlankHandler
	b _08069246
	.align 2, 0
_08069188: .4byte sub_8068F40
_0806918C:
	ldr r0, _08069194  @ sub_8068E8C
	bl SetPrimaryHBlankHandler
	b _08069246
	.align 2, 0
_08069194: .4byte sub_8068E8C
_08069198:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	cmp r0, #1
	beq _080691B4
	cmp r0, #1
	bgt _080691AA
	cmp r0, #0
	beq _080691C0
	b _08069246
_080691AA:
	cmp r0, #2
	beq _0806921C
	cmp r0, #3
	bne _08069246
	b _080691C0
_080691B4:
	ldr r0, _080691BC  @ sub_8068F04
	bl SetPrimaryHBlankHandler
	b _08069246
	.align 2, 0
_080691BC: .4byte sub_8068F04
_080691C0:
	ldr r0, _080691C8  @ sub_8068F7C
	bl SetPrimaryHBlankHandler
	b _08069246
	.align 2, 0
_080691C8: .4byte sub_8068F7C
_080691CC:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	cmp r0, #1
	beq _080691E8
	cmp r0, #1
	bgt _080691DE
	cmp r0, #0
	beq _080691F4
	b _08069246
_080691DE:
	cmp r0, #2
	beq _0806921C
	cmp r0, #3
	bne _08069246
	b _080691F4
_080691E8:
	ldr r0, _080691F0  @ sub_8068FB8
	bl SetPrimaryHBlankHandler
	b _08069246
	.align 2, 0
_080691F0: .4byte sub_8068FB8
_080691F4:
	ldr r0, _080691FC  @ sub_8068FF4
	bl SetPrimaryHBlankHandler
	b _08069246
	.align 2, 0
_080691FC: .4byte sub_8068FF4
_08069200:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	cmp r0, #1
	beq _08069228
	cmp r0, #1
	bgt _08069212
	cmp r0, #0
	beq _08069234
	b _08069246
_08069212:
	cmp r0, #2
	beq _0806921C
	cmp r0, #3
	bne _08069246
	b _08069228
_0806921C:
	ldr r0, _08069224  @ sub_80690E4
	bl SetPrimaryHBlankHandler
	b _08069246
	.align 2, 0
_08069224: .4byte sub_80690E4
_08069228:
	ldr r0, _08069230  @ sub_8069030
	bl SetPrimaryHBlankHandler
	b _08069246
	.align 2, 0
_08069230: .4byte sub_8069030
_08069234:
	ldr r0, _0806923C  @ sub_806906C
	bl SetPrimaryHBlankHandler
	b _08069246
	.align 2, 0
_0806923C: .4byte sub_806906C
_08069240:
	ldr r0, _08069278  @ sub_80690E4
	bl SetPrimaryHBlankHandler
_08069246:
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0806927C
	ldr r5, [r7, #0x4c]
	ldr r6, [r7, #0x50]
	ldr r0, [r7, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r4, r5
	ldr r1, [r5]
	adds r4, r4, r6
	ldr r2, [r4]
	bl sub_8055670
	mov r0, r8
	strh r0, [r7, #0x2e]
	b _080692A0
	.align 2, 0
_08069278: .4byte sub_80690E4
_0806927C:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _080692A0
	bl ClearBG1
	movs r0, #0
	bl SetPrimaryHBlankHandler
	ldr r1, _080692AC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_080692A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080692AC: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_80692B0
sub_80692B0: @ 0x080692B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0806930C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08069310  @ gUnknown_0201FB28
	movs r0, #0x10
	str r0, [r1]
	ldr r0, _08069314  @ gUnknown_085D83A0
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _08069318  @ gUnknown_080DEDBC
	str r0, [r5, #0x48]
	ldr r0, _0806931C  @ gUnknown_085D8348
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _08069320  @ gUnknown_085D8374
	str r0, [r5, #0x54]
	ldr r0, _08069324  @ gUnknown_086A66D8
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _08069328  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _08069344
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08069330
	ldr r2, _0806932C  @ 0x0000FFF0
	movs r0, #1
	movs r1, #0x18
	bl BG_SetPosition
	b _0806934E
	.align 2, 0
_0806930C: .4byte gUnknown_0201774C
_08069310: .4byte gUnknown_0201FB28
_08069314: .4byte gUnknown_085D83A0
_08069318: .4byte gUnknown_080DEDBC
_0806931C: .4byte gUnknown_085D8348
_08069320: .4byte gUnknown_085D8374
_08069324: .4byte gUnknown_086A66D8
_08069328: .4byte gUnknown_0203E120
_0806932C: .4byte 0x0000FFF0
_08069330:
	ldr r1, _0806933C  @ 0x0000FFE8
	ldr r2, _08069340  @ 0x0000FFF0
	movs r0, #1
	bl BG_SetPosition
	b _0806934E
	.align 2, 0
_0806933C: .4byte 0x0000FFE8
_08069340: .4byte 0x0000FFF0
_08069344:
	ldr r2, _08069358  @ 0x0000FFF0
	movs r0, #1
	movs r1, #0
	bl BG_SetPosition
_0806934E:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069358: .4byte 0x0000FFF0

	THUMB_FUNC_START sub_806935C
sub_806935C: @ 0x0806935C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0x2c
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, [r7, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	blt _080693A2
	ldr r6, [r7, #0x4c]
	ldr r0, [r7, #0x54]
	ldr r4, [r7, #0x58]
	lsls r5, r5, #2
	adds r0, r5, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	adds r4, r5, r4
	ldr r0, [r4]
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, [r7, #0x5c]
	adds r5, r5, r6
	ldr r1, [r5]
	movs r2, #0x20
	movs r3, #0x14
	bl sub_805576C
	b _080693C4
_080693A2:
	movs r0, #6
	negs r0, r0
	cmp r5, r0
	bne _080693B6
	bl sub_80696F0
	ldr r0, [r7, #0x44]
	adds r0, #1
	str r0, [r7, #0x44]
	b _080693C4
_080693B6:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _080693C4
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_080693C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80693CC
sub_80693CC: @ 0x080693CC
	push {lr}
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	ldr r1, _080693F0  @ gUnknown_080DEE40
	str r1, [r0, #0x48]
	ldr r1, _080693F4  @ gUnknown_085D8478
	str r1, [r0, #0x4c]
	ldr r1, _080693F8  @ gUnknown_085D847C
	str r1, [r0, #0x54]
	ldr r0, _080693FC  @ gUnknown_086B52CC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r0}
	bx r0
	.align 2, 0
_080693F0: .4byte gUnknown_080DEE40
_080693F4: .4byte gUnknown_085D8478
_080693F8: .4byte gUnknown_085D847C
_080693FC: .4byte gUnknown_086B52CC

	THUMB_FUNC_START sub_8069400
sub_8069400: @ 0x08069400
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #0x2e]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x11
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	beq _08069416
	negs r4, r4
_08069416:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0
	bl BG_SetPosition
	ldrh r0, [r6, #0x2e]
	adds r0, #1
	strh r0, [r6, #0x2e]
	adds r0, r6, #0
	adds r0, #0x2c
	adds r1, r6, #0
	adds r1, #0x44
	ldr r2, [r6, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _08069460
	ldr r5, [r6, #0x4c]
	ldr r0, [r6, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r6, #0x5c]
	adds r4, r4, r5
	ldr r1, [r4]
	movs r2, #0x20
	movs r3, #0x14
	bl sub_805576C
	b _0806947E
_08069460:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0806947E
	bl ClearBG1
	ldr r1, _08069484  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_0806947E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08069484: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8069488
sub_8069488: @ 0x08069488
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080694D0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080694D4  @ gUnknown_085D8484
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _080694D8  @ gUnknown_080DEDFA
	str r1, [r0, #0x48]
	ldr r1, _080694DC  @ gUnknown_085D83B8
	str r1, [r0, #0x4c]
	ldr r1, _080694E0  @ gUnknown_085D83F8
	str r1, [r0, #0x54]
	ldr r1, _080694E4  @ gUnknown_085D8438
	str r1, [r0, #0x58]
	ldr r0, _080694E8  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _080694F8
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _080694EC
	movs r0, #1
	movs r1, #0x28
	b _08069506
	.align 2, 0
_080694D0: .4byte gUnknown_0201774C
_080694D4: .4byte gUnknown_085D8484
_080694D8: .4byte gUnknown_080DEDFA
_080694DC: .4byte gUnknown_085D83B8
_080694E0: .4byte gUnknown_085D83F8
_080694E4: .4byte gUnknown_085D8438
_080694E8: .4byte gUnknown_0203E120
_080694EC:
	ldr r1, _080694F4  @ 0x0000FFE8
	movs r0, #1
	b _08069506
	.align 2, 0
_080694F4: .4byte 0x0000FFE8
_080694F8:
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806950E
	movs r0, #1
	movs r1, #0x10
_08069506:
	movs r2, #0
	bl BG_SetPosition
	b _08069518
_0806950E:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_08069518:
	bl sub_80551B0
	movs r0, #0
	bl sub_8001F64
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8069528
sub_8069528: @ 0x08069528
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	bx lr

	THUMB_FUNC_START sub_8069530
sub_8069530: @ 0x08069530
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #4]
	ldr r0, _08069564  @ gPaletteBuffer
	mov r9, r0
	ldr r1, _08069568  @ gUnknown_020165C8
	mov r8, r1
	ldr r0, [sp, #4]
	adds r0, #0x4c
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0x28
	ble _0806956C
	adds r3, r1, #0
	subs r3, #0x28
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	b _08069582
	.align 2, 0
_08069564: .4byte gPaletteBuffer
_08069568: .4byte gUnknown_020165C8
_0806956C:
	cmp r1, #0x18
	ble _08069574
	movs r6, #0x10
	b _08069588
_08069574:
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
_08069582:
	bl sub_8012DCC
	adds r6, r0, #0
_08069588:
	mov r2, r9
	ldrh r0, [r2]
	mov r7, r8
	strh r0, [r7]
	movs r2, #0
	ldr r0, [sp, #4]
	adds r0, #0x4c
	str r0, [sp, #8]
_08069598:
	subs r0, r2, #1
	cmp r0, #0x1d
	bhi _0806962C
	lsls r0, r0, #2
	ldr r1, _080695A8  @ _080695AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080695A8: .4byte _080695AC
_080695AC: @ jump table
	.4byte _08069624 @ case 0
	.4byte _08069624 @ case 1
	.4byte _08069624 @ case 2
	.4byte _0806962C @ case 3
	.4byte _0806962C @ case 4
	.4byte _0806962C @ case 5
	.4byte _0806962C @ case 6
	.4byte _0806962C @ case 7
	.4byte _0806962C @ case 8
	.4byte _0806962C @ case 9
	.4byte _0806962C @ case 10
	.4byte _0806962C @ case 11
	.4byte _0806962C @ case 12
	.4byte _0806962C @ case 13
	.4byte _0806962C @ case 14
	.4byte _08069624 @ case 15
	.4byte _0806962C @ case 16
	.4byte _0806962C @ case 17
	.4byte _0806962C @ case 18
	.4byte _0806962C @ case 19
	.4byte _08069624 @ case 20
	.4byte _08069624 @ case 21
	.4byte _0806962C @ case 22
	.4byte _0806962C @ case 23
	.4byte _0806962C @ case 24
	.4byte _0806962C @ case 25
	.4byte _08069624 @ case 26
	.4byte _08069624 @ case 27
	.4byte _08069624 @ case 28
	.4byte _08069624 @ case 29
_08069624:
	ldr r1, _08069628  @ 0x00007C1F
	b _0806962E
	.align 2, 0
_08069628: .4byte 0x00007C1F
_0806962C:
	movs r1, #0
_0806962E:
	movs r7, #2
	add r9, r7
	movs r0, #2
	add r8, r0
	lsrs r7, r1, #5
	str r7, [sp, #0x10]
	lsrs r0, r1, #0xa
	str r0, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0xc]
	movs r2, #0x1f
	mov ip, r2
	movs r5, #0x1f
	movs r0, #0x10
	subs r4, r0, r6
	movs r7, #0xe
	str r7, [sp, #0x18]
	ands r1, r5
	adds r0, r1, #0
	muls r0, r6, r0
	mov sl, r0
_08069658:
	mov r2, r9
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	adds r3, r0, #0
	muls r3, r4, r3
	add r3, sl
	asrs r3, r3, #4
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	mov r7, ip
	ands r0, r7
	adds r2, r0, #0
	muls r2, r4, r2
	asrs r2, r2, #4
	lsrs r1, r1, #0x1a
	mov r0, ip
	ands r1, r0
	muls r1, r4, r1
	ldr r0, [sp, #0x14]
	ands r0, r7
	muls r0, r6, r0
	adds r1, r1, r0
	asrs r1, r1, #4
	ands r1, r5
	lsls r1, r1, #0xa
	ands r2, r5
	lsls r2, r2, #5
	orrs r1, r2
	ands r3, r5
	orrs r3, r1
	mov r0, r8
	strh r3, [r0]
	movs r1, #2
	add r9, r1
	add r8, r1
	ldr r2, [sp, #0x18]
	subs r2, #1
	str r2, [sp, #0x18]
	cmp r2, #0
	bge _08069658
	ldr r2, [sp, #0xc]
	cmp r2, #0x1f
	bgt _080696B2
	b _08069598
_080696B2:
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, _080696EC  @ gUnknown_020165C8
	bl CpuFastSet
	bl DisablePaletteSync
	ldr r7, [sp, #8]
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0x40
	bne _080696D4
	ldr r0, [sp, #4]
	bl Proc_ClearNativeCallback
_080696D4:
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080696EC: .4byte gUnknown_020165C8

	THUMB_FUNC_START sub_80696F0
sub_80696F0: @ 0x080696F0
	push {lr}
	ldr r0, _08069700  @ gUnknown_085D84B4
	movs r1, #0
	bl Proc_Create
	pop {r0}
	bx r0
	.align 2, 0
_08069700: .4byte gUnknown_085D84B4

	THUMB_FUNC_START sub_8069704
sub_8069704: @ 0x08069704
	push {lr}
	adds r3, r0, #0
	cmp r1, #5
	bhi _08069764
	lsls r0, r1, #2
	ldr r1, _08069718  @ _0806971C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08069718: .4byte _0806971C
_0806971C: @ jump table
	.4byte _08069734 @ case 0
	.4byte _0806973C @ case 1
	.4byte _08069744 @ case 2
	.4byte _0806974C @ case 3
	.4byte _08069754 @ case 4
	.4byte _0806975C @ case 5
_08069734:
	ldr r1, _08069738  @ gUnknown_085D84D4
	b _08069766
	.align 2, 0
_08069738: .4byte gUnknown_085D84D4
_0806973C:
	ldr r1, _08069740  @ gUnknown_085D8524
	b _08069766
	.align 2, 0
_08069740: .4byte gUnknown_085D8524
_08069744:
	ldr r1, _08069748  @ gUnknown_085D8574
	b _08069766
	.align 2, 0
_08069748: .4byte gUnknown_085D8574
_0806974C:
	ldr r1, _08069750  @ gUnknown_085D85C4
	b _08069766
	.align 2, 0
_08069750: .4byte gUnknown_085D85C4
_08069754:
	ldr r1, _08069758  @ gUnknown_085D8614
	b _08069766
	.align 2, 0
_08069758: .4byte gUnknown_085D8614
_0806975C:
	ldr r1, _08069760  @ gUnknown_085D8664
	b _08069766
	.align 2, 0
_08069760: .4byte gUnknown_085D8664
_08069764:
	ldr r1, _08069778  @ gUnknown_085D86B4
_08069766:
	lsls r0, r3, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #8
	pop {r1}
	bx r1
	.align 2, 0
_08069778: .4byte gUnknown_085D86B4

	THUMB_FUNC_START sub_806977C
sub_806977C: @ 0x0806977C
	push {lr}
	adds r3, r0, #0
	cmp r1, #5
	bhi _080697DC
	lsls r0, r1, #2
	ldr r1, _08069790  @ _08069794
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08069790: .4byte _08069794
_08069794: @ jump table
	.4byte _080697AC @ case 0
	.4byte _080697B4 @ case 1
	.4byte _080697BC @ case 2
	.4byte _080697C4 @ case 3
	.4byte _080697CC @ case 4
	.4byte _080697D4 @ case 5
_080697AC:
	ldr r1, _080697B0  @ gUnknown_085D84D4
	b _080697DE
	.align 2, 0
_080697B0: .4byte gUnknown_085D84D4
_080697B4:
	ldr r1, _080697B8  @ gUnknown_085D8524
	b _080697DE
	.align 2, 0
_080697B8: .4byte gUnknown_085D8524
_080697BC:
	ldr r1, _080697C0  @ gUnknown_085D8574
	b _080697DE
	.align 2, 0
_080697C0: .4byte gUnknown_085D8574
_080697C4:
	ldr r1, _080697C8  @ gUnknown_085D85C4
	b _080697DE
	.align 2, 0
_080697C8: .4byte gUnknown_085D85C4
_080697CC:
	ldr r1, _080697D0  @ gUnknown_085D8614
	b _080697DE
	.align 2, 0
_080697D0: .4byte gUnknown_085D8614
_080697D4:
	ldr r1, _080697D8  @ gUnknown_085D8664
	b _080697DE
	.align 2, 0
_080697D8: .4byte gUnknown_085D8664
_080697DC:
	ldr r1, _080697F0  @ gUnknown_085D86B4
_080697DE:
	lsls r0, r3, #2
	adds r0, r0, r1
	movs r1, #2
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #8
	pop {r1}
	bx r1
	.align 2, 0
_080697F0: .4byte gUnknown_085D86B4

	THUMB_FUNC_START sub_80697F4
sub_80697F4: @ 0x080697F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08069816
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x48]
	bl sub_8069704
	ldr r2, [r4, #0x60]
	ldrh r1, [r4, #0x32]
	adds r1, r1, r0
	b _08069828
_08069816:
	movs r2, #0x2c
	ldrsh r0, [r4, r2]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x48]
	bl sub_8069704
	ldr r2, [r4, #0x60]
	ldrh r1, [r4, #0x32]
	subs r1, r1, r0
_08069828:
	strh r1, [r2, #2]
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0x44]
	ldr r2, [r4, #0x48]
	bl sub_806977C
	ldr r2, [r4, #0x60]
	ldrh r1, [r4, #0x3a]
	adds r1, r1, r0
	strh r1, [r2, #4]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _0806985A
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x4c]
	cmp r1, r0
	bne _0806986E
_0806985A:
	ldr r0, _08069874  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806986E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069874: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8069878
sub_8069878: @ 0x08069878
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, [sp, #0x20]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r1, _080698CC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _080698D0  @ gUnknown_085D8704
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r6, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	movs r0, #0x14
	strh r0, [r5, #0x2e]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #1
	beq _080698E4
	cmp r4, #1
	bgt _080698D4
	cmp r4, #0
	beq _080698DA
	b _080698F4
	.align 2, 0
_080698CC: .4byte gUnknown_0201774C
_080698D0: .4byte gUnknown_085D8704
_080698D4:
	cmp r4, #2
	beq _080698EC
	b _080698F4
_080698DA:
	ldr r3, _080698E0  @ gUnknown_086A2724
	b _080698F6
	.align 2, 0
_080698E0: .4byte gUnknown_086A2724
_080698E4:
	ldr r3, _080698E8  @ gUnknown_086A2844
	b _080698F6
	.align 2, 0
_080698E8: .4byte gUnknown_086A2844
_080698EC:
	ldr r3, _080698F0  @ gUnknown_086A273C
	b _080698F6
	.align 2, 0
_080698F0: .4byte gUnknown_086A273C
_080698F4:
	ldr r3, _08069928  @ gUnknown_086A285C
_080698F6:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #0x44]
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [r5, #0x48]
	mov r0, r9
	str r0, [r5, #0x4c]
	str r3, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r5, #0x60]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806992C
	movs r0, #0x58
	b _0806992E
	.align 2, 0
_08069928: .4byte gUnknown_086A285C
_0806992C:
	movs r0, #0x98
_0806992E:
	strh r0, [r5, #0x32]
	movs r0, #0x50
	strh r0, [r5, #0x3a]
	ldr r0, _08069950  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806995A
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08069954
	ldrh r0, [r5, #0x32]
	subs r0, #0x18
	b _08069958
	.align 2, 0
_08069950: .4byte gUnknown_0203E120
_08069954:
	ldrh r0, [r5, #0x32]
	adds r0, #0x18
_08069958:
	strh r0, [r5, #0x32]
_0806995A:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08069976
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x48]
	bl sub_8069704
	ldrh r1, [r5, #0x32]
	adds r1, r1, r0
	b _08069986
_08069976:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x48]
	bl sub_8069704
	ldrh r1, [r5, #0x32]
	subs r1, r1, r0
_08069986:
	strh r1, [r4, #2]
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x48]
	bl sub_806977C
	ldrh r1, [r5, #0x3a]
	adds r1, r1, r0
	strh r1, [r4, #4]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_80699A8
sub_80699A8: @ 0x080699A8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	movs r1, #0xc
	bl DivRem
	cmp r0, #0
	bne _08069AAE
	ldrh r1, [r7, #0x2e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08069A2C
	ldr r0, [r7, #0x5c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	movs r5, #3
	ands r1, r5
	movs r6, #0x80
	lsls r6, r6, #1
	ldrh r2, [r7, #0x2c]
	movs r4, #0x62
	subs r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #0
	adds r3, r6, #0
	bl sub_8069878
	ldr r0, [r7, #0x5c]
	ldrh r1, [r7, #0x2e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #2
	ands r1, r5
	ldrh r2, [r7, #0x2c]
	subs r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #1
	adds r3, r6, #0
	bl sub_8069878
	ldr r0, [r7, #0x5c]
	ldrh r1, [r7, #0x2e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #1
	ands r1, r5
	ldrh r2, [r7, #0x2c]
	subs r4, r4, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp]
	movs r2, #2
	adds r3, r6, #0
	bl sub_8069878
	b _08069AA8
_08069A2C:
	ldr r0, [r7, #0x5c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	movs r5, #3
	ands r1, r5
	movs r6, #0x80
	lsls r6, r6, #1
	ldrh r2, [r7, #0x2c]
	movs r4, #0x62
	subs r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #3
	adds r3, r6, #0
	bl sub_8069878
	ldr r0, [r7, #0x5c]
	ldrh r1, [r7, #0x2e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #2
	ands r1, r5
	ldrh r2, [r7, #0x2c]
	subs r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #4
	adds r3, r6, #0
	bl sub_8069878
	ldr r0, [r7, #0x5c]
	ldrh r1, [r7, #0x2e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #1
	ands r1, r5
	ldrh r2, [r7, #0x2c]
	subs r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #5
	adds r3, r6, #0
	bl sub_8069878
	ldr r0, [r7, #0x5c]
	ldrh r1, [r7, #0x2e]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	adds r1, #3
	ands r1, r5
	ldrh r2, [r7, #0x2c]
	subs r4, r4, r2
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp]
	movs r2, #6
	adds r3, r6, #0
	bl sub_8069878
_08069AA8:
	ldrh r0, [r7, #0x2e]
	adds r0, #1
	strh r0, [r7, #0x2e]
_08069AAE:
	movs r1, #0x2c
	ldrsh r0, [r7, r1]
	cmp r0, #0x61
	bne _08069ABC
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_08069ABC:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8069AC4
sub_8069AC4: @ 0x08069AC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08069AF0  @ gUnknown_085D871C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	ldr r0, _08069AF4  @ gUnknown_086A2614
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08069AF8  @ gUnknown_086A21F4
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069AF0: .4byte gUnknown_085D871C
_08069AF4: .4byte gUnknown_086A2614
_08069AF8: .4byte gUnknown_086A21F4

	THUMB_FUNC_START sub_8069AFC
sub_8069AFC: @ 0x08069AFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08069B20
	ldr r2, [r4, #0x60]
	ldr r1, [r4, #0x48]
	asrs r1, r1, #8
	ldrh r0, [r4, #0x32]
	subs r0, r0, r1
	strh r0, [r2, #2]
	b _08069B2C
_08069B20:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	ldrh r2, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #2]
_08069B2C:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x48]
	asrs r0, r0, #8
	ldrh r2, [r4, #0x3a]
	adds r0, r0, r2
	strh r0, [r1, #4]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08069B5E
	ldr r0, _08069B64  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08069B5E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069B64: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_8069B68
sub_8069B68: @ 0x08069B68
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r9, r1
	mov r8, r2
	adds r5, r3, #0
	ldr r4, [sp, #0x20]
	ldr r1, _08069BC8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08069BCC  @ gUnknown_085D8734
	movs r1, #3
	bl Proc_Create
	adds r7, r0, #0
	str r6, [r7, #0x5c]
	movs r0, #0
	strh r0, [r7, #0x2c]
	strh r4, [r7, #0x2e]
	str r5, [r7, #0x44]
	str r0, [r7, #0x48]
	ldr r3, _08069BD0  @ gUnknown_086A2E98
	ldr r2, _08069BD4  @ gUnknown_086A2DBC
	str r2, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r7, #0x60]
	movs r0, #0x68
	strh r0, [r4, #2]
	mov r0, r8
	strh r0, [r4, #4]
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08069BD8
	ldrh r0, [r4, #2]
	mov r1, r9
	subs r0, r0, r1
	b _08069BDC
	.align 2, 0
_08069BC8: .4byte gUnknown_0201774C
_08069BCC: .4byte gUnknown_085D8734
_08069BD0: .4byte gUnknown_086A2E98
_08069BD4: .4byte gUnknown_086A2DBC
_08069BD8:
	ldrh r0, [r4, #2]
	add r0, r9
_08069BDC:
	strh r0, [r4, #2]
	ldr r0, _08069BF8  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _08069C02
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08069BFC
	ldrh r0, [r4, #2]
	subs r0, #0x18
	b _08069C00
	.align 2, 0
_08069BF8: .4byte gUnknown_0203E120
_08069BFC:
	ldrh r0, [r4, #2]
	adds r0, #0x18
_08069C00:
	strh r0, [r4, #2]
_08069C02:
	ldrh r0, [r4, #2]
	strh r0, [r7, #0x32]
	ldrh r0, [r4, #4]
	strh r0, [r7, #0x3a]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8069C18
sub_8069C18: @ 0x08069C18
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r9, r1
	mov r8, r2
	adds r5, r3, #0
	ldr r4, [sp, #0x20]
	ldr r1, _08069C78  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08069C7C  @ gUnknown_085D8734
	movs r1, #3
	bl Proc_Create
	adds r7, r0, #0
	str r6, [r7, #0x5c]
	movs r0, #0
	strh r0, [r7, #0x2c]
	strh r4, [r7, #0x2e]
	str r5, [r7, #0x44]
	str r0, [r7, #0x48]
	ldr r3, _08069C80  @ gUnknown_086A2EAC
	ldr r2, _08069C84  @ gUnknown_086A2DD0
	str r2, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r7, #0x60]
	movs r0, #0x78
	strh r0, [r4, #2]
	mov r0, r8
	strh r0, [r4, #4]
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08069C88
	ldrh r0, [r4, #2]
	mov r1, r9
	subs r0, r0, r1
	b _08069C8C
	.align 2, 0
_08069C78: .4byte gUnknown_0201774C
_08069C7C: .4byte gUnknown_085D8734
_08069C80: .4byte gUnknown_086A2EAC
_08069C84: .4byte gUnknown_086A2DD0
_08069C88:
	ldrh r0, [r4, #2]
	add r0, r9
_08069C8C:
	strh r0, [r4, #2]
	ldr r0, _08069CA8  @ gUnknown_0203E120
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #1
	bne _08069CB2
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08069CAC
	ldrh r0, [r4, #2]
	subs r0, #0x18
	b _08069CB0
	.align 2, 0
_08069CA8: .4byte gUnknown_0203E120
_08069CAC:
	ldrh r0, [r4, #2]
	adds r0, #0x18
_08069CB0:
	strh r0, [r4, #2]
_08069CB2:
	ldrh r0, [r4, #2]
	strh r0, [r7, #0x32]
	ldrh r0, [r4, #4]
	strh r0, [r7, #0x3a]
	movs r0, #0x14
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #8]
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #8]
	bl AISArray_Sort
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8069CDC
sub_8069CDC: @ 0x08069CDC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x57
	ble _08069CF2
	b _08069E70
_08069CF2:
	movs r1, #0x2c
	ldrsh r0, [r6, r1]
	subs r0, #3
	cmp r0, #0
	ble _08069DBE
	movs r1, #6
	bl DivRem
	cmp r0, #0
	bne _08069DBE
	ldr r0, [r6, #0x44]
	cmp r0, #5
	bhi _08069DB0
	lsls r0, r0, #2
	ldr r1, _08069D18  @ _08069D1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08069D18: .4byte _08069D1C
_08069D1C: @ jump table
	.4byte _08069D34 @ case 0
	.4byte _08069D3C @ case 1
	.4byte _08069D4C @ case 2
	.4byte _08069D68 @ case 3
	.4byte _08069D78 @ case 4
	.4byte _08069D96 @ case 5
_08069D34:
	ldr r0, [r6, #0x5c]
	movs r1, #0x40
	negs r1, r1
	b _08069D7E
_08069D3C:
	ldr r0, [r6, #0x5c]
	movs r1, #0x80
	negs r1, r1
	movs r2, #0x10
	negs r2, r2
	movs r3, #0xf0
	lsls r3, r3, #3
	b _08069D86
_08069D4C:
	ldr r0, [r6, #0x5c]
	movs r2, #0x10
	negs r2, r2
	movs r3, #0x90
	lsls r3, r3, #4
	movs r1, #0x2c
	ldrsh r4, [r6, r1]
	movs r1, #0x62
	subs r1, r1, r4
	str r1, [sp]
	movs r1, #0
	bl sub_8069B68
	b _08069DB0
_08069D68:
	ldr r0, [r6, #0x5c]
	movs r1, #0x40
	negs r1, r1
	movs r2, #0x10
	negs r2, r2
	movs r3, #0x90
	lsls r3, r3, #4
	b _08069D86
_08069D78:
	ldr r0, [r6, #0x5c]
	movs r1, #0x80
	negs r1, r1
_08069D7E:
	movs r2, #0x10
	negs r2, r2
	movs r3, #0xa8
	lsls r3, r3, #4
_08069D86:
	movs r4, #0x2c
	ldrsh r5, [r6, r4]
	movs r4, #0x62
	subs r4, r4, r5
	str r4, [sp]
	bl sub_8069B68
	b _08069DB0
_08069D96:
	ldr r0, [r6, #0x5c]
	movs r2, #0x10
	negs r2, r2
	movs r3, #0xf0
	lsls r3, r3, #3
	movs r1, #0x2c
	ldrsh r4, [r6, r1]
	movs r1, #0x62
	subs r1, r1, r4
	str r1, [sp]
	movs r1, #0
	bl sub_8069B68
_08069DB0:
	ldr r0, [r6, #0x44]
	adds r0, #1
	str r0, [r6, #0x44]
	cmp r0, #6
	bne _08069DBE
	movs r0, #0
	str r0, [r6, #0x44]
_08069DBE:
	movs r2, #0x2c
	ldrsh r0, [r6, r2]
	subs r0, #1
	cmp r0, #0
	ble _08069E70
	movs r1, #6
	bl DivRem
	cmp r0, #0
	bne _08069E70
	ldr r0, [r6, #0x48]
	cmp r0, #5
	bhi _08069E62
	lsls r0, r0, #2
	ldr r1, _08069DE4  @ _08069DE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08069DE4: .4byte _08069DE8
_08069DE8: @ jump table
	.4byte _08069E00 @ case 0
	.4byte _08069E08 @ case 1
	.4byte _08069E14 @ case 2
	.4byte _08069E20 @ case 3
	.4byte _08069E2C @ case 4
	.4byte _08069E48 @ case 5
_08069E00:
	ldr r0, [r6, #0x5c]
	movs r1, #0x18
	negs r1, r1
	b _08069E32
_08069E08:
	ldr r0, [r6, #0x5c]
	movs r1, #0x38
	negs r1, r1
	movs r3, #0xf0
	lsls r3, r3, #2
	b _08069E36
_08069E14:
	ldr r0, [r6, #0x5c]
	movs r1, #0x58
	negs r1, r1
	movs r3, #0x90
	lsls r3, r3, #3
	b _08069E36
_08069E20:
	ldr r0, [r6, #0x5c]
	movs r1, #0x18
	negs r1, r1
	movs r3, #0x90
	lsls r3, r3, #3
	b _08069E36
_08069E2C:
	ldr r0, [r6, #0x5c]
	movs r1, #0x38
	negs r1, r1
_08069E32:
	movs r3, #0xa8
	lsls r3, r3, #3
_08069E36:
	movs r2, #0x2c
	ldrsh r4, [r6, r2]
	movs r2, #0x62
	subs r2, r2, r4
	str r2, [sp]
	movs r2, #0
	bl sub_8069C18
	b _08069E62
_08069E48:
	ldr r0, [r6, #0x5c]
	movs r1, #0x58
	negs r1, r1
	movs r3, #0xf0
	lsls r3, r3, #2
	movs r2, #0x2c
	ldrsh r4, [r6, r2]
	movs r2, #0x62
	subs r2, r2, r4
	str r2, [sp]
	movs r2, #0
	bl sub_8069C18
_08069E62:
	ldr r0, [r6, #0x48]
	adds r0, #1
	str r0, [r6, #0x48]
	cmp r0, #6
	bne _08069E70
	movs r0, #0
	str r0, [r6, #0x48]
_08069E70:
	movs r4, #0x2c
	ldrsh r0, [r6, r4]
	cmp r0, #0x60
	bne _08069E7E
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_08069E7E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_8069E88
sub_8069E88: @ 0x08069E88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08069EB8  @ gUnknown_085D874C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	str r1, [r0, #0x48]
	ldr r0, _08069EBC  @ gUnknown_086A2CE8
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _08069EC0  @ gUnknown_086A2874
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069EB8: .4byte gUnknown_085D874C
_08069EBC: .4byte gUnknown_086A2CE8
_08069EC0: .4byte gUnknown_086A2874

	THUMB_FUNC_START StartSpellAnimCrimsonEye
StartSpellAnimCrimsonEye: @ 0x08069EC4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08069EFC  @ gUnknown_085D8764
	movs r1, #3
	bl Proc_Create
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	adds r0, r5, #0
	bl GetSomeAISRelatedIndexMaybe
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl GetSomeBoolean
	adds r4, #0x29
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08069EFC: .4byte gUnknown_085D8764

	THUMB_FUNC_START sub_8069F00
sub_8069F00: @ 0x08069F00
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r5, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08069F2C
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl sub_80533D0
	b _08069FFE
_08069F2C:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0xb
	cmp r1, r0
	bne _08069F54
	adds r0, r5, #0
	bl sub_806ABCC
	ldr r0, _08069F50  @ 0x000003C7
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0xc0
	movs r3, #1
	bl sub_80729A4
	b _08069FFE
	.align 2, 0
_08069F50: .4byte 0x000003C7
_08069F54:
	adds r0, r2, #0
	adds r0, #0x91
	cmp r1, r0
	bne _08069F64
	adds r0, r5, #0
	bl sub_806A4CC
	b _08069FFE
_08069F64:
	adds r0, r2, #0
	adds r0, #0xd1
	cmp r1, r0
	bne _08069F76
	adds r0, r5, #0
	movs r1, #0xa
	bl StartSpellBG_FLASH
	b _08069FFE
_08069F76:
	adds r0, r2, #0
	adds r0, #0xd9
	cmp r1, r0
	bne _08069F96
	adds r0, r5, #0
	bl sub_806A068
	adds r0, r5, #0
	bl sub_806A3CC
	ldr r0, [r4, #0x5c]
	movs r1, #0x4a
	movs r2, #2
	bl StartSpellThing_MagicQuake
	b _08069FFE
_08069F96:
	ldr r3, _08069FA4  @ 0x00000101
	adds r0, r2, r3
	cmp r1, r0
	bne _08069FA8
	bl sub_806C608
	b _08069FFE
	.align 2, 0
_08069FA4: .4byte 0x00000101
_08069FA8:
	ldr r3, _08069FB8  @ 0x00000109
	adds r0, r2, r3
	cmp r1, r0
	bne _08069FBC
	adds r0, r5, #0
	bl sub_806A3F4
	b _08069FFE
	.align 2, 0
_08069FB8: .4byte 0x00000109
_08069FBC:
	ldr r3, _08069FE4  @ 0x00000123
	adds r0, r2, r3
	cmp r1, r0
	bne _08069FE8
	ldrh r0, [r5, #0x10]
	movs r1, #9
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r4, #0x29
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ThisMakesTheHPInSpellAnimGoAway
	ldrb r0, [r4]
	cmp r0, #0
	bne _08069FFE
	adds r0, r5, #0
	bl sub_8072450
	b _08069FFE
	.align 2, 0
_08069FE4: .4byte 0x00000123
_08069FE8:
	ldr r3, _0806A004  @ 0x00000137
	adds r0, r2, r3
	cmp r1, r0
	bne _08069FFE
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_08069FFE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806A004: .4byte 0x00000137

	THUMB_FUNC_START sub_806A008
sub_806A008: @ 0x0806A008
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x2c
	adds r1, r6, #0
	adds r1, #0x44
	ldr r2, [r6, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0806A03E
	ldr r1, [r6, #0x4c]
	ldr r5, [r6, #0x54]
	ldr r0, [r6, #0x5c]
	lsls r4, r4, #2
	adds r1, r4, r1
	ldr r2, [r1]
	adds r1, r2, #0
	bl sub_8055670
	adds r4, r4, r5
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
_0806A03E:
	ldrh r0, [r6, #0x2e]
	adds r0, #1
	strh r0, [r6, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	bne _0806A05E
	bl ClearBG1
	ldr r1, _0806A064  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_0806A05E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806A064: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806A068
sub_806A068: @ 0x0806A068
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806A0B0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806A0B4  @ gUnknown_085D87AC
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	ldr r1, _0806A0B8  @ gUnknown_080DEEC2
	str r1, [r0, #0x48]
	ldr r1, _0806A0BC  @ gUnknown_085D877C
	str r1, [r0, #0x4c]
	ldr r1, _0806A0C0  @ gUnknown_085D878C
	str r1, [r0, #0x54]
	ldr r0, _0806A0C4  @ gUnknown_086BC824
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _0806A0C8  @ sub_806B088
	bl SetPrimaryHBlankHandler
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A0B0: .4byte gUnknown_0201774C
_0806A0B4: .4byte gUnknown_085D87AC
_0806A0B8: .4byte gUnknown_080DEEC2
_0806A0BC: .4byte gUnknown_085D877C
_0806A0C0: .4byte gUnknown_085D878C
_0806A0C4: .4byte gUnknown_086BC824
_0806A0C8: .4byte sub_806B088

	THUMB_FUNC_START sub_806A0CC
sub_806A0CC: @ 0x0806A0CC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x32
	ldrsh r2, [r4, r0]
	movs r1, #0x2c
	ldrsh r3, [r4, r1]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x78
	bl sub_8012DCC
	ldr r1, [r4, #0x60]
	strh r0, [r1, #2]
	movs r0, #0x3a
	ldrsh r2, [r4, r0]
	movs r1, #0x2c
	ldrsh r3, [r4, r1]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x40
	bl sub_8012DCC
	ldr r1, [r4, #0x60]
	strh r0, [r1, #4]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0806A12C
	ldr r0, _0806A134  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AIS_Free
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806A12C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A134: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806A138
sub_806A138: @ 0x0806A138
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r3, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0806A1D8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806A1DC  @ gUnknown_085D87C4
	movs r1, #3
	bl Proc_Create
	adds r6, r0, #0
	str r7, [r6, #0x5c]
	movs r0, #1
	strh r0, [r6, #0x2c]
	adds r5, #1
	strh r5, [r6, #0x2e]
	ldr r3, _0806A1E0  @ gUnknown_086B598C
	cmp r4, #0
	beq _0806A174
	ldr r3, _0806A1E4  @ gUnknown_086B5984
_0806A174:
	str r3, [sp]
	adds r0, r7, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r6, #0x60]
	ldr r1, _0806A1E8  @ gUnknown_085D87DC
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6, #0x32]
	lsls r0, r2, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6, #0x3a]
	movs r0, #0x32
	ldrsh r2, [r6, r0]
	movs r1, #0x2c
	ldrsh r3, [r6, r1]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x78
	bl sub_8012DCC
	strh r0, [r4, #2]
	movs r0, #0x3a
	ldrsh r2, [r6, r0]
	movs r1, #0x2c
	ldrsh r3, [r6, r1]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x40
	bl sub_8012DCC
	strh r0, [r4, #4]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A1D8: .4byte gUnknown_0201774C
_0806A1DC: .4byte gUnknown_085D87C4
_0806A1E0: .4byte gUnknown_086B598C
_0806A1E4: .4byte gUnknown_086B5984
_0806A1E8: .4byte gUnknown_085D87DC

	THUMB_FUNC_START sub_806A1EC
sub_806A1EC: @ 0x0806A1EC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2c]
	movs r2, #0x2c
	ldrsh r0, [r4, r2]
	cmp r0, #0x2b
	ble _0806A1FC
	b _0806A3A4
_0806A1FC:
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x1f
	bls _0806A206
	b _0806A3A4
_0806A206:
	lsls r0, r0, #2
	ldr r1, _0806A210  @ _0806A214
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806A210: .4byte _0806A214
_0806A214: @ jump table
	.4byte _0806A294 @ case 0
	.4byte _0806A314 @ case 1
	.4byte _0806A2D4 @ case 2
	.4byte _0806A354 @ case 3
	.4byte _0806A29C @ case 4
	.4byte _0806A31C @ case 5
	.4byte _0806A2DC @ case 6
	.4byte _0806A35C @ case 7
	.4byte _0806A2A4 @ case 8
	.4byte _0806A324 @ case 9
	.4byte _0806A2E4 @ case 10
	.4byte _0806A364 @ case 11
	.4byte _0806A2AC @ case 12
	.4byte _0806A32C @ case 13
	.4byte _0806A2EC @ case 14
	.4byte _0806A36C @ case 15
	.4byte _0806A2B4 @ case 16
	.4byte _0806A334 @ case 17
	.4byte _0806A2F4 @ case 18
	.4byte _0806A374 @ case 19
	.4byte _0806A2BC @ case 20
	.4byte _0806A33C @ case 21
	.4byte _0806A2FC @ case 22
	.4byte _0806A37C @ case 23
	.4byte _0806A2C4 @ case 24
	.4byte _0806A344 @ case 25
	.4byte _0806A304 @ case 26
	.4byte _0806A38A @ case 27
	.4byte _0806A2CC @ case 28
	.4byte _0806A34C @ case 29
	.4byte _0806A30C @ case 30
	.4byte _0806A398 @ case 31
_0806A294:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0
	b _0806A390
_0806A29C:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #4
	b _0806A382
_0806A2A4:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #1
	b _0806A390
_0806A2AC:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #5
	b _0806A382
_0806A2B4:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #2
	b _0806A390
_0806A2BC:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #6
	b _0806A382
_0806A2C4:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #3
	b _0806A390
_0806A2CC:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #7
	b _0806A382
_0806A2D4:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #8
	b _0806A390
_0806A2DC:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0xc
	b _0806A382
_0806A2E4:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #9
	b _0806A390
_0806A2EC:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0xd
	b _0806A382
_0806A2F4:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0xa
	b _0806A390
_0806A2FC:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0xe
	b _0806A382
_0806A304:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0xb
	b _0806A390
_0806A30C:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0xf
	b _0806A382
_0806A314:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x10
	b _0806A390
_0806A31C:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x14
	b _0806A382
_0806A324:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x11
	b _0806A390
_0806A32C:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x15
	b _0806A382
_0806A334:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x12
	b _0806A390
_0806A33C:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x16
	b _0806A382
_0806A344:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x13
	b _0806A390
_0806A34C:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x17
	b _0806A382
_0806A354:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x18
	b _0806A390
_0806A35C:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x1c
	b _0806A382
_0806A364:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x19
	b _0806A390
_0806A36C:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x1d
	b _0806A382
_0806A374:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x1a
	b _0806A390
_0806A37C:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x1e
_0806A382:
	movs r3, #1
	bl sub_806A138
	b _0806A3A4
_0806A38A:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x1b
_0806A390:
	movs r3, #0
	bl sub_806A138
	b _0806A3A4
_0806A398:
	ldr r0, [r4, #0x5c]
	movs r1, #6
	movs r2, #0x1f
	movs r3, #1
	bl sub_806A138
_0806A3A4:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	bne _0806A3C0
	ldr r1, _0806A3C8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806A3C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A3C8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806A3CC
sub_806A3CC: @ 0x0806A3CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806A3EC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806A3F0  @ gUnknown_085D885C
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A3EC: .4byte gUnknown_0201774C
_0806A3F0: .4byte gUnknown_085D885C

	THUMB_FUNC_START sub_806A3F4
sub_806A3F4: @ 0x0806A3F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806A438  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806A43C  @ gUnknown_085D8CC4
	movs r1, #3
	bl Proc_Create
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806A440  @ gUnknown_080DF0E0
	str r1, [r0, #0x48]
	ldr r1, _0806A444  @ gUnknown_085D8C7C
	str r1, [r0, #0x4c]
	ldr r1, _0806A448  @ gUnknown_085D8CA0
	str r1, [r0, #0x54]
	ldr r0, _0806A44C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806A460
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806A450
	movs r0, #1
	movs r1, #0x18
	b _0806A454
	.align 2, 0
_0806A438: .4byte gUnknown_0201774C
_0806A43C: .4byte gUnknown_085D8CC4
_0806A440: .4byte gUnknown_080DF0E0
_0806A444: .4byte gUnknown_085D8C7C
_0806A448: .4byte gUnknown_085D8CA0
_0806A44C: .4byte gUnknown_0203E120
_0806A450:
	ldr r1, _0806A45C  @ 0x0000FFE8
	movs r0, #1
_0806A454:
	movs r2, #0
	bl BG_SetPosition
	b _0806A46A
	.align 2, 0
_0806A45C: .4byte 0x0000FFE8
_0806A460:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_0806A46A:
	ldr r0, _0806A478  @ gUnknown_086B5A2C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A478: .4byte gUnknown_086B5A2C

	THUMB_FUNC_START sub_806A47C
sub_806A47C: @ 0x0806A47C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0806A4A6
	ldr r2, [r4, #0x4c]
	ldr r0, [r4, #0x5c]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	adds r1, r2, #0
	bl sub_8055670
	b _0806A4C0
_0806A4A6:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0806A4C0
	bl ClearBG1
	ldr r1, _0806A4C8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_ClearNativeCallback
_0806A4C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A4C8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806A4CC
sub_806A4CC: @ 0x0806A4CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0806A520  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806A524  @ gUnknown_085D8894
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0806A528  @ gUnknown_080DEF20
	str r0, [r5, #0x48]
	ldr r0, _0806A52C  @ gUnknown_085D8874
	str r0, [r5, #0x4c]
	ldr r0, _0806A530  @ gUnknown_086B5A4C
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _0806A534  @ gUnknown_086B5EAC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _0806A538  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806A54C
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806A53C
	movs r0, #1
	movs r1, #0x18
	b _0806A540
	.align 2, 0
_0806A520: .4byte gUnknown_0201774C
_0806A524: .4byte gUnknown_085D8894
_0806A528: .4byte gUnknown_080DEF20
_0806A52C: .4byte gUnknown_085D8874
_0806A530: .4byte gUnknown_086B5A4C
_0806A534: .4byte gUnknown_086B5EAC
_0806A538: .4byte gUnknown_0203E120
_0806A53C:
	ldr r1, _0806A548  @ 0x0000FFE8
	movs r0, #1
_0806A540:
	movs r2, #0
	bl BG_SetPosition
	b _0806A556
	.align 2, 0
_0806A548: .4byte 0x0000FFE8
_0806A54C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_0806A556:
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806A560
sub_806A560: @ 0x0806A560
	push {lr}
	cmp r0, #0
	bge _0806A570
_0806A566:
	adds r0, #0x5a
	cmp r0, #0
	blt _0806A566
	b _0806A570
_0806A56E:
	subs r0, #0x5a
_0806A570:
	cmp r0, #0x59
	bgt _0806A56E
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_806A578
sub_806A578: @ 0x0806A578
	push {lr}
	adds r2, r0, #0
	subs r1, #0x16
	cmp r1, #0x2c
	bls _0806A586
	movs r0, #0x78
	b _0806A588
_0806A586:
	movs r0, #0x14
_0806A588:
	strh r0, [r2, #0xa]
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806A590
sub_806A590: @ 0x0806A590
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r9, r0
	adds r7, r1, #0
	adds r3, r2, #0
	cmp r3, #0x2d
	ble _0806A5A8
	movs r0, #0x5a
	subs r3, r0, r3
_0806A5A8:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0x2d
	str r0, [sp]
	movs r0, #0
	movs r2, #0x80
	bl sub_8012DCC
	muls r0, r7, r0
	asrs r7, r0, #8
	cmp r7, #1
	bgt _0806A5C2
	movs r7, #2
_0806A5C2:
	ldr r4, _0806A630  @ gSinLookup
	movs r0, #0x80
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	negs r0, r0
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	mov r0, r9
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A630: .4byte gSinLookup

	THUMB_FUNC_START sub_806A634
sub_806A634: @ 0x0806A634
	ldr r2, _0806A648  @ gUnknown_085D88AC
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r1, r0
	asrs r0, r0, #8
	bx lr
	.align 2, 0
_0806A648: .4byte gUnknown_085D88AC

	THUMB_FUNC_START sub_806A64C
sub_806A64C: @ 0x0806A64C
	ldr r2, _0806A660  @ gUnknown_085D88AC
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r1, r0
	asrs r0, r0, #0xa
	bx lr
	.align 2, 0
_0806A660: .4byte gUnknown_085D88AC

	THUMB_FUNC_START sub_806A664
sub_806A664: @ 0x0806A664
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_806A634
	adds r6, r0, #0
	cmp r4, #0
	beq _0806A680
	cmp r4, #0x2d
	bne _0806A684
_0806A680:
	adds r0, r6, #0
	b _0806A6BC
_0806A684:
	cmp r4, #0x15
	bgt _0806A68C
	adds r3, r4, #0
	b _0806A6A2
_0806A68C:
	cmp r4, #0x2c
	bgt _0806A694
	movs r0, #0x2d
	b _0806A6A0
_0806A694:
	cmp r4, #0x41
	bgt _0806A69E
	adds r3, r4, #0
	subs r3, #0x2d
	b _0806A6A2
_0806A69E:
	movs r0, #0x5a
_0806A6A0:
	subs r3, r0, r4
_0806A6A2:
	asrs r1, r5, #1
	movs r0, #0x16
	str r0, [sp]
	movs r0, #0
	adds r2, r5, #0
	bl sub_8012DCC
	adds r5, r0, #0
	cmp r4, #0x2c
	ble _0806A6BA
	adds r0, r6, r5
	b _0806A6BC
_0806A6BA:
	subs r0, r6, r5
_0806A6BC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_806A6C4
sub_806A6C4: @ 0x0806A6C4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_806A64C
	adds r6, r0, #0
	cmp r4, #0x2d
	ble _0806A6E0
	movs r0, #0x5a
	subs r4, r0, r4
_0806A6E0:
	asrs r2, r5, #1
	movs r0, #0x2d
	str r0, [sp]
	movs r0, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl sub_8012DCC
	adds r5, r0, #0
	subs r0, r6, r5
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_START sub_806A6FC
sub_806A6FC: @ 0x0806A6FC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r9, r0
	adds r7, r1, #0
	adds r6, r2, #0
	cmp r6, #0x2d
	ble _0806A714
	movs r0, #0x5a
	subs r6, r0, r6
_0806A714:
	movs r4, #0x18
	str r4, [sp]
	movs r0, #0
	movs r1, #0x80
	movs r2, #0x20
	adds r3, r7, #0
	bl sub_8012DCC
	adds r5, r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0xc0
	lsls r2, r2, #1
	str r4, [sp]
	movs r0, #0
	adds r3, r7, #0
	bl sub_8012DCC
	adds r1, r0, #0
	movs r0, #0x2d
	str r0, [sp]
	movs r0, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_8012DCC
	adds r7, r0, #0
	cmp r7, #1
	bgt _0806A750
	movs r7, #2
_0806A750:
	ldr r4, _0806A7C0  @ gSinLookup
	movs r0, #0x80
	adds r0, r0, r4
	mov r8, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	negs r0, r0
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	adds r1, r7, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	mov r0, r9
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806A7C0: .4byte gSinLookup

	THUMB_FUNC_START sub_806A7C4
sub_806A7C4: @ 0x0806A7C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r0, #0
	mov sl, r0
_0806A7D6:
	mov r1, sl
	cmp r1, #4
	bhi _0806A822
	lsls r0, r1, #2
	ldr r1, _0806A7E8  @ _0806A7EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806A7E8: .4byte _0806A7EC
_0806A7EC: @ jump table
	.4byte _0806A800 @ case 0
	.4byte _0806A806 @ case 1
	.4byte _0806A80E @ case 2
	.4byte _0806A814 @ case 3
	.4byte _0806A81C @ case 4
_0806A800:
	ldr r6, [r7, #0x60]
	movs r0, #0x1f
	b _0806A820
_0806A806:
	ldr r6, [r7, #0x64]
	movs r1, #0x1e
	str r1, [sp, #4]
	b _0806A822
_0806A80E:
	ldr r6, [r7, #0x68]
	movs r0, #0x1d
	b _0806A820
_0806A814:
	ldr r6, [r7, #0x44]
	movs r1, #0x1c
	str r1, [sp, #4]
	b _0806A822
_0806A81C:
	ldr r6, [r7, #0x48]
	movs r0, #0x1b
_0806A820:
	str r0, [sp, #4]
_0806A822:
	mov r1, sl
	lsls r0, r1, #3
	add r0, sl
	lsls r0, r0, #1
	bl sub_806A560
	adds r5, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_806A578
	adds r0, r5, #0
	movs r1, #0
	bl sub_806A634
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r5, #0
	mov r1, r8
	bl sub_806A634
	adds r2, r0, #0
	movs r1, #0x2c
	ldrsh r3, [r7, r1]
	movs r0, #0x10
	mov r9, r0
	str r0, [sp]
	movs r0, #4
	adds r1, r4, #0
	bl sub_8012DCC
	ldrh r1, [r7, #0x32]
	adds r1, r1, r0
	strh r1, [r6, #2]
	adds r0, r5, #0
	movs r1, #0
	bl sub_806A64C
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r8
	bl sub_806A64C
	adds r2, r0, #0
	movs r1, #0x2c
	ldrsh r3, [r7, r1]
	mov r0, r9
	str r0, [sp]
	movs r0, #4
	adds r1, r4, #0
	bl sub_8012DCC
	ldrh r1, [r7, #0x3a]
	adds r1, r1, r0
	strh r1, [r6, #4]
	movs r1, #0x2c
	ldrsh r3, [r7, r1]
	mov r0, r9
	str r0, [sp]
	movs r0, #4
	movs r1, #2
	mov r2, r8
	bl sub_8012DCC
	adds r1, r0, #0
	ldr r0, [sp, #4]
	adds r2, r5, #0
	bl sub_806A590
	movs r1, #1
	add sl, r1
	mov r0, sl
	cmp r0, #4
	ble _0806A7D6
	bl AISArray_Sort
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0806A8D6
	movs r0, #0
	strh r0, [r7, #0x2c]
	adds r0, r7, #0
	bl Proc_ClearNativeCallback
_0806A8D6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806A8E8
sub_806A8E8: @ 0x0806A8E8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
_0806A8F6:
	mov r1, r8
	cmp r1, #4
	bhi _0806A944
	lsls r0, r1, #2
	ldr r1, _0806A908  @ _0806A90C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806A908: .4byte _0806A90C
_0806A90C: @ jump table
	.4byte _0806A920 @ case 0
	.4byte _0806A928 @ case 1
	.4byte _0806A92E @ case 2
	.4byte _0806A936 @ case 3
	.4byte _0806A93E @ case 4
_0806A920:
	ldr r7, [r6, #0x60]
	movs r2, #0x1f
	mov r9, r2
	b _0806A944
_0806A928:
	ldr r7, [r6, #0x64]
	movs r0, #0x1e
	b _0806A942
_0806A92E:
	ldr r7, [r6, #0x68]
	movs r1, #0x1d
	mov r9, r1
	b _0806A944
_0806A936:
	ldr r7, [r6, #0x44]
	movs r2, #0x1c
	mov r9, r2
	b _0806A944
_0806A93E:
	ldr r7, [r6, #0x48]
	movs r0, #0x1b
_0806A942:
	mov r9, r0
_0806A944:
	mov r1, r8
	lsls r0, r1, #3
	add r0, r8
	lsls r0, r0, #1
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	adds r5, r0, r1
	adds r0, r5, #0
	bl sub_806A560
	adds r5, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_806A578
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_806A634
	ldrh r1, [r6, #0x32]
	adds r1, r1, r0
	strh r1, [r7, #2]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_806A64C
	ldrh r1, [r6, #0x3a]
	adds r1, r1, r0
	strh r1, [r7, #4]
	mov r0, r9
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_806A590
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #4
	ble _0806A8F6
	bl AISArray_Sort
	ldrh r0, [r6, #0x2e]
	adds r0, #1
	strh r0, [r6, #0x2e]
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x7e
	bne _0806A9B8
	movs r0, #0
	strh r0, [r6, #0x2c]
	adds r0, r6, #0
	bl Proc_ClearNativeCallback
_0806A9B8:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806A9C4
sub_806A9C4: @ 0x0806A9C4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #4
	movs r1, #0
	movs r2, #0x18
	bl sub_8012DCC
	mov r9, r0
	movs r7, #0
_0806A9E6:
	cmp r7, #4
	bhi _0806AA2E
	lsls r0, r7, #2
	ldr r1, _0806A9F4  @ _0806A9F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806A9F4: .4byte _0806A9F8
_0806A9F8: @ jump table
	.4byte _0806AA0C @ case 0
	.4byte _0806AA12 @ case 1
	.4byte _0806AA1A @ case 2
	.4byte _0806AA20 @ case 3
	.4byte _0806AA28 @ case 4
_0806AA0C:
	ldr r6, [r5, #0x60]
	movs r2, #0x1f
	b _0806AA2C
_0806AA12:
	ldr r6, [r5, #0x64]
	movs r0, #0x1e
	mov r8, r0
	b _0806AA2E
_0806AA1A:
	ldr r6, [r5, #0x68]
	movs r2, #0x1d
	b _0806AA2C
_0806AA20:
	ldr r6, [r5, #0x44]
	movs r0, #0x1c
	mov r8, r0
	b _0806AA2E
_0806AA28:
	ldr r6, [r5, #0x48]
	movs r2, #0x1b
_0806AA2C:
	mov r8, r2
_0806AA2E:
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #1
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	adds r4, r0, r1
	adds r0, r4, #0
	bl sub_806A560
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_806A578
	mov r0, r9
	adds r1, r4, #0
	bl sub_806A664
	ldrh r1, [r5, #0x32]
	adds r1, r1, r0
	strh r1, [r6, #2]
	mov r0, r9
	adds r1, r4, #0
	bl sub_806A6C4
	ldrh r1, [r5, #0x3a]
	adds r1, r1, r0
	strh r1, [r6, #4]
	mov r0, r8
	mov r1, r9
	adds r2, r4, #0
	bl sub_806A6FC
	adds r7, #1
	cmp r7, #4
	ble _0806A9E6
	bl AISArray_Sort
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0806AA92
	movs r0, #0
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0806AA92:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_START sub_806AAA0
sub_806AAA0: @ 0x0806AAA0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	mov r8, r0
_0806AAB0:
	mov r1, r8
	cmp r1, #4
	bhi _0806AAFC
	lsls r0, r1, #2
	ldr r1, _0806AAC0  @ _0806AAC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806AAC0: .4byte _0806AAC4
_0806AAC4: @ jump table
	.4byte _0806AAD8 @ case 0
	.4byte _0806AAE0 @ case 1
	.4byte _0806AAE6 @ case 2
	.4byte _0806AAEE @ case 3
	.4byte _0806AAF6 @ case 4
_0806AAD8:
	ldr r7, [r5, #0x60]
	movs r2, #0x1f
	mov r9, r2
	b _0806AAFC
_0806AAE0:
	ldr r7, [r5, #0x64]
	movs r0, #0x1e
	b _0806AAFA
_0806AAE6:
	ldr r7, [r5, #0x68]
	movs r1, #0x1d
	mov r9, r1
	b _0806AAFC
_0806AAEE:
	ldr r7, [r5, #0x44]
	movs r2, #0x1c
	mov r9, r2
	b _0806AAFC
_0806AAF6:
	ldr r7, [r5, #0x48]
	movs r0, #0x1b
_0806AAFA:
	mov r9, r0
_0806AAFC:
	mov r1, r8
	lsls r0, r1, #3
	add r0, r8
	lsls r0, r0, #1
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	adds r6, r0, r1
	adds r0, r6, #0
	bl sub_806A560
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_806A578
	movs r0, #0x18
	adds r1, r6, #0
	bl sub_806A664
	adds r1, r0, #0
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	movs r4, #8
	str r4, [sp]
	movs r0, #1
	movs r2, #0
	bl sub_8012DCC
	ldrh r1, [r5, #0x32]
	adds r1, r1, r0
	strh r1, [r7, #2]
	movs r0, #0x18
	adds r1, r6, #0
	bl sub_806A6C4
	adds r1, r0, #0
	movs r2, #0x2c
	ldrsh r3, [r5, r2]
	str r4, [sp]
	movs r0, #1
	movs r2, #0
	bl sub_8012DCC
	ldrh r1, [r5, #0x3a]
	adds r1, r1, r0
	strh r1, [r7, #4]
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	str r4, [sp]
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl sub_8012DCC
	adds r1, r0, #0
	mov r0, r9
	adds r2, r6, #0
	bl sub_806A6FC
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #4
	ble _0806AAB0
	bl AISArray_Sort
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _0806ABBA
	ldr r1, _0806ABC8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldr r0, [r5, #0x60]
	bl AIS_Free
	ldr r0, [r5, #0x64]
	bl AIS_Free
	ldr r0, [r5, #0x68]
	bl AIS_Free
	ldr r0, [r5, #0x44]
	bl AIS_Free
	ldr r0, [r5, #0x48]
	bl AIS_Free
	adds r0, r5, #0
	bl Proc_ClearNativeCallback
_0806ABBA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806ABC8: .4byte gUnknown_0201774C

	THUMB_FUNC_START sub_806ABCC
sub_806ABCC: @ 0x0806ABCC
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _0806AC00  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806AC04  @ gUnknown_085D8960
	movs r1, #3
	bl Proc_Create
	adds r5, r0, #0
	str r6, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	strh r0, [r5, #0x2e]
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806AC08
	movs r0, #0x58
	b _0806AC0A
	.align 2, 0
_0806AC00: .4byte gUnknown_0201774C
_0806AC04: .4byte gUnknown_085D8960
_0806AC08:
	movs r0, #0x98
_0806AC0A:
	strh r0, [r5, #0x32]
	movs r0, #0x48
	strh r0, [r5, #0x3a]
	ldr r0, _0806AC2C  @ gUnknown_0203E120
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806AC36
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806AC30
	ldrh r0, [r5, #0x32]
	subs r0, #0x18
	b _0806AC34
	.align 2, 0
_0806AC2C: .4byte gUnknown_0203E120
_0806AC30:
	ldrh r0, [r5, #0x32]
	adds r0, #0x18
_0806AC34:
	strh r0, [r5, #0x32]
_0806AC36:
	ldrh r0, [r5, #0x32]
	subs r0, #0x10
	strh r0, [r5, #0x32]
	ldrh r0, [r5, #0x3a]
	subs r0, #0x10
	strh r0, [r5, #0x3a]
	ldr r4, _0806AED0  @ gUnknown_086B5974
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	adds r3, r4, #0
	bl sub_8055554
	str r0, [r5, #0x60]
	ldrh r1, [r5, #0x32]
	strh r1, [r0, #2]
	ldrh r1, [r5, #0x3a]
	strh r1, [r0, #4]
	ldr r1, _0806AED4  @ 0x3E000300
	str r1, [r0, #0x1c]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	adds r3, r4, #0
	bl sub_8055554
	str r0, [r5, #0x64]
	ldrh r1, [r5, #0x32]
	strh r1, [r0, #2]
	ldrh r1, [r5, #0x3a]
	strh r1, [r0, #4]
	ldr r1, _0806AED8  @ 0x3C000300
	str r1, [r0, #0x1c]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	adds r3, r4, #0
	bl sub_8055554
	str r0, [r5, #0x68]
	ldrh r1, [r5, #0x32]
	strh r1, [r0, #2]
	ldrh r1, [r5, #0x3a]
	strh r1, [r0, #4]
	ldr r1, _0806AEDC  @ 0x3A000300
	str r1, [r0, #0x1c]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	adds r3, r4, #0
	bl sub_8055554
	str r0, [r5, #0x44]
	ldrh r1, [r5, #0x32]
	strh r1, [r0, #2]
	ldrh r1, [r5, #0x3a]
	strh r1, [r0, #4]
	ldr r1, _0806AEE0  @ 0x38000300
	str r1, [r0, #0x1c]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r4, #0
	adds r3, r4, #0
	bl sub_8055554
	str r0, [r5, #0x48]
	ldrh r1, [r5, #0x32]
	strh r1, [r0, #2]
	ldrh r1, [r5, #0x3a]
	strh r1, [r0, #4]
	ldr r1, _0806AEE4  @ 0x36000300
	str r1, [r0, #0x1c]
	ldr r2, _0806AEE8  @ gSinLookup
	bl Div