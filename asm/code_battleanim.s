	.INCLUDE "macro.inc"

	.SYNTAX UNIFIED

	@ Everything related to (non-map) battle animations
	@ Needs further splitting

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
	ldr r0, _0805AED4  @ gEkrPos2Maybe
	ldr r0, [r0]
	movs r5, #4
	negs r5, r5
_0805AECE:
	cmp r0, #1
	bne _0805AF0E
	b _0805AF0C
	.align 2, 0
_0805AED4: .4byte gEkrPos2Maybe
_0805AED8:
	movs r4, #3
	movs r1, #0x30
	mov sl, r1
	ldr r0, _0805AEE8  @ gEkrPos2Maybe
	ldr r0, [r0]
	movs r5, #0x1e
	negs r5, r5
	b _0805AECE
	.align 2, 0
_0805AEE8: .4byte gEkrPos2Maybe
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

	THUMB_FUNC_END sub_805AE58

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

	THUMB_FUNC_END sub_805AFA0

	THUMB_FUNC_START SetBanimArenaFlag
SetBanimArenaFlag: @ 0x0805B01C
	ldr r1, _0805B024  @ gBaArenaFlag
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B024: .4byte gBaArenaFlag

	THUMB_FUNC_END SetBanimArenaFlag

	THUMB_FUNC_START GetBattleAnimArenaFlag
GetBattleAnimArenaFlag: @ 0x0805B028
	ldr r0, _0805B030  @ gBaArenaFlag
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0805B030: .4byte gBaArenaFlag

	THUMB_FUNC_END GetBattleAnimArenaFlag

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

	THUMB_FUNC_END sub_805B034

	THUMB_FUNC_START PlaySound8FForArenaMaybe
PlaySound8FForArenaMaybe: @ 0x0805B07C
	push {lr}
	bl GetBattleAnimArenaFlag
	cmp r0, #0
	beq _0805B090
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0x8f
	bl SomePlaySound_8071990
_0805B090:
	pop {r0}
	bx r0

	THUMB_FUNC_END PlaySound8FForArenaMaybe

	THUMB_FUNC_START sub_805B094
sub_805B094: @ 0x0805B094
	push {lr}
	bl GetBattleAnimArenaFlag
	cmp r0, #0
	beq _0805B0A4
	movs r0, #0x8e
	bl sub_8071A44
_0805B0A4:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805B094

	THUMB_FUNC_START BeginAnimsOnBattle_Arena
BeginAnimsOnBattle_Arena: @ 0x0805B0A8
	push {lr}
	bl NewEkrBattleDeamon
	bl AnimClearAll
	bl GetEkrSomePosMaybe
	ldr r1, _0805B0C8  @ gEkrPos2Maybe
	str r0, [r1]
	bl NewEkrTogiInitPROC
	movs r0, #0
	bl SetPrimaryHBlankHandler
	pop {r0}
	bx r0
	.align 2, 0
_0805B0C8: .4byte gEkrPos2Maybe

	THUMB_FUNC_END BeginAnimsOnBattle_Arena

	THUMB_FUNC_START sub_805B0CC
sub_805B0CC: @ 0x0805B0CC
	push {lr}
	bl AnimClearAll
	bl NewEkrTogiEndPROC
	ldr r0, _0805B0E8  @ MainUpdate_8055C68
	bl SetMainUpdateRoutine
	ldr r0, _0805B0EC  @ gProc_efxStatusUnit
	bl Proc_EndEach
	pop {r0}
	bx r0
	.align 2, 0
_0805B0E8: .4byte MainUpdate_8055C68
_0805B0EC: .4byte gProc_efxStatusUnit

	THUMB_FUNC_END sub_805B0CC

	THUMB_FUNC_START NewEkrTogiInitPROC
NewEkrTogiInitPROC: @ 0x0805B0F0
	push {lr}
	ldr r0, _0805B100  @ gProc_ekrTogiInit
	movs r1, #3
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_0805B100: .4byte gProc_ekrTogiInit

	THUMB_FUNC_END NewEkrTogiInitPROC

	THUMB_FUNC_START sub_805B104
sub_805B104: @ 0x0805B104
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	movs r0, #0
	bl SetupOAMBufferSplice
	ldr r1, _0805B178  @ gEkrPos2Maybe
	ldr r0, _0805B17C  @ gEkrInitialHitSide
	movs r2, #0
	ldrsh r0, [r0, r2]
	str r0, [r1]
	bl EfxClearScreenFx
	bl sub_80599E8
	bl NewEkrGauge
	bl NewEkrDispUP
	bl NewEkrBattle
	ldr r0, _0805B180  @ gUnknown_085BEF94
	ldr r4, _0805B184  @ pPalette6Buffer
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
	bl EkrMaybePalFadeWithVal
	bl EnablePaletteSync
	mov r0, r8
	bl Proc_Break
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B178: .4byte gEkrPos2Maybe
_0805B17C: .4byte gEkrInitialHitSide
_0805B180: .4byte gUnknown_085BEF94
_0805B184: .4byte pPalette6Buffer
_0805B188: .4byte gUnknown_020165C8

	THUMB_FUNC_END sub_805B104

	THUMB_FUNC_START sub_805B18C
sub_805B18C: @ 0x0805B18C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _0805B1EC  @ gUnknown_085BC188
	ldr r1, _0805B1F0  @ 0x06008000
	bl LZ77UnCompVram
	ldr r0, _0805B1F4  @ gUnknown_085BE7F4
	ldr r6, _0805B1F8  @ gEkrTsaBuffer
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
	bl Proc_Break
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B1EC: .4byte gUnknown_085BC188
_0805B1F0: .4byte 0x06008000
_0805B1F4: .4byte gUnknown_085BE7F4
_0805B1F8: .4byte gEkrTsaBuffer
_0805B1FC: .4byte gUnknown_0201D428

	THUMB_FUNC_END sub_805B18C

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
	bl Interpolate
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
	bl EkrMaybePalFadeWithVal
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
	bl Proc_Break
_0805B254:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B25C: .4byte gUnknown_020165C8
_0805B260: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_805B200

	THUMB_FUNC_START sub_805B264
sub_805B264: @ 0x0805B264
	push {r4, lr}
	adds r4, r0, #0
	bl NewEkrTogiColor
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805B264

	THUMB_FUNC_START NewEkrTogiEndPROC
NewEkrTogiEndPROC: @ 0x0805B278
	push {lr}
	ldr r0, _0805B28C  @ gProc_ekrTogiEnd
	movs r1, #3
	bl Proc_Start
	bl EndEkrTogiColor
	pop {r0}
	bx r0
	.align 2, 0
_0805B28C: .4byte gProc_ekrTogiEnd

	THUMB_FUNC_END NewEkrTogiEndPROC

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B2B4: .4byte gPaletteBuffer
_0805B2B8: .4byte gUnknown_020165C8

	THUMB_FUNC_END sub_805B290

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
	bl Interpolate
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
	bl EkrMaybePalFadeWithVal
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
	bl Proc_Break
_0805B310:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805B318: .4byte gUnknown_020165C8
_0805B31C: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_805B2BC

	THUMB_FUNC_START sub_805B320
sub_805B320: @ 0x0805B320
	push {r4, lr}
	adds r4, r0, #0
	bl EndEkrBattleDeamon
	bl EndEkrGauge
	ldr r0, _0805B344  @ OnGameLoopMain
	bl SetMainUpdateRoutine
	ldr r0, _0805B348  @ OnVBlank
	bl SetInterrupt_LCDVBlank
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B344: .4byte OnGameLoopMain
_0805B348: .4byte OnVBlank

	THUMB_FUNC_END sub_805B320

	THUMB_FUNC_START NewEkrTogiColor
NewEkrTogiColor: @ 0x0805B34C
	push {r4, lr}
	ldr r4, _0805B370  @ gUnknown_0201FB24
	ldr r0, _0805B374  @ gProc_ekrTogiColor
	movs r1, #3
	bl Proc_Start
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
_0805B374: .4byte gProc_ekrTogiColor
_0805B378: .4byte gUnknown_080DB026
_0805B37C: .4byte gUnknown_085B9E4C

	THUMB_FUNC_END NewEkrTogiColor

	THUMB_FUNC_START EndEkrTogiColor
EndEkrTogiColor: @ 0x0805B380
	push {lr}
	ldr r0, _0805B390  @ gUnknown_0201FB24
	ldr r0, [r0]
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0
_0805B390: .4byte gUnknown_0201FB24

	THUMB_FUNC_END EndEkrTogiColor

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
	ldr r1, _0805B3C8  @ pPalette6Buffer
	movs r2, #0x20
	bl CpuFastSet
	bl EnablePaletteSync
_0805B3C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B3C8: .4byte pPalette6Buffer

	THUMB_FUNC_END sub_805B394

	THUMB_FUNC_START StartSpellAnimation
StartSpellAnimation: @ 0x0805B3CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0805B3F4  @ gEkrSpellAnimIndexLutMaybe
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	ldr r1, _0805B3F8  @ gEkrSpellAnimLut
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
_0805B3F4: .4byte gEkrSpellAnimIndexLutMaybe
_0805B3F8: .4byte gEkrSpellAnimLut

	THUMB_FUNC_END StartSpellAnimation

	THUMB_FUNC_START sub_805B3FC
sub_805B3FC: @ 0x0805B3FC
	bx lr

	THUMB_FUNC_END sub_805B3FC

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
	ldr r0, _0805B440  @ ProcScr_efxResetRST
	movs r1, #3
	bl Proc_Start
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
_0805B440: .4byte ProcScr_efxResetRST

	THUMB_FUNC_END sub_805B400

	THUMB_FUNC_START sub_805B444
sub_805B444: @ 0x0805B444
	ldr r1, _0805B450  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B450: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805B444

	THUMB_FUNC_START EfxResetRSTMain
EfxResetRSTMain: @ 0x0805B454
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
	bl Proc_End
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

	THUMB_FUNC_END EfxResetRSTMain

	THUMB_FUNC_START sub_805B4E8
sub_805B4E8: @ 0x0805B4E8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0805B528  @ ProcScr_efxTwoBaiRST
	movs r1, #3
	bl Proc_Start
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
_0805B528: .4byte ProcScr_efxTwoBaiRST
_0805B52C: .4byte gUnknown_0201FDC4
_0805B530: .4byte gUnknown_0201FF04

	THUMB_FUNC_END sub_805B4E8

	THUMB_FUNC_START EfxTwoBaiRSTMain
EfxTwoBaiRSTMain: @ 0x0805B534
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
	bl Proc_Break
_0805B54E:
	pop {r0}
	bx r0

	THUMB_FUNC_END EfxTwoBaiRSTMain

	THUMB_FUNC_START sub_805B554
sub_805B554: @ 0x0805B554
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0805B57C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805B580  @ ProcScr_DummvRST
	movs r1, #3
	bl Proc_Start
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
_0805B580: .4byte ProcScr_DummvRST

	THUMB_FUNC_END sub_805B554

	THUMB_FUNC_START sub_805B584
sub_805B584: @ 0x0805B584
	ldr r1, _0805B590  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_0805B590: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805B584

	THUMB_FUNC_START DummvRSTMain
DummvRSTMain: @ 0x0805B594
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
	bl Proc_End
_0805B5CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805B5D0: .4byte gUnknown_0201FDB8
_0805B5D4: .4byte gUnknown_0201FDC4
_0805B5D8: .4byte gUnknown_0201FF04
_0805B5DC: .4byte gLCDControlBuffer

	THUMB_FUNC_END DummvRSTMain

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
	ldr r0, _0805B62C  @ ProcScr_EfxRestWIN
	movs r1, #3
	bl Proc_Start
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
_0805B62C: .4byte ProcScr_EfxRestWIN
_0805B630: .4byte 0x0000FFB8
_0805B634:
	ldr r0, _0805B654  @ 0x0000FFF8
_0805B636:
	strh r0, [r7, #0x32]
	ldr r0, _0805B658  @ gEkrDistanceType
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
_0805B658: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_805B5E0

	THUMB_FUNC_START EfxRestWINMain
EfxRestWINMain: @ 0x0805B670
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
	bl Proc_Break
_0805B718:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B720: .4byte gUnknown_0201774C

	THUMB_FUNC_END EfxRestWINMain

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

	THUMB_FUNC_END sub_805B724

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

	THUMB_FUNC_END sub_805B750

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

	THUMB_FUNC_END sub_805B77C

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

	THUMB_FUNC_END sub_805B7BC

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

	THUMB_FUNC_END sub_805B7FC

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
	ldr r0, _0805B938  @ ProcScr_EfxRestWINH
	movs r1, #0
	bl Proc_Start
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
_0805B938: .4byte ProcScr_EfxRestWINH

	THUMB_FUNC_END sub_805B828

	THUMB_FUNC_START sub_805B93C
sub_805B93C: @ 0x0805B93C
	push {lr}
	adds r3, r2, #0
	movs r2, #0
	bl sub_805B828
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805B93C

	THUMB_FUNC_START sub_805B94C
sub_805B94C: @ 0x0805B94C
	push {lr}
	bl Proc_Break
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805B94C

	THUMB_FUNC_START sub_805B958
sub_805B958: @ 0x0805B958
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805B984  @ gBmSt
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
_0805B984: .4byte gBmSt
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
	bl Proc_Break
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

	THUMB_FUNC_END sub_805B958

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
	ldr r0, _0805BA60  @ ProcScr_efxALPHA
	movs r1, #3
	bl Proc_Start
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
_0805BA60: .4byte ProcScr_efxALPHA

	THUMB_FUNC_END sub_805BA1C

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
	bl Interpolate
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
	bl Interpolate
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
	bl Proc_Break
_0805BB18:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805BB20: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805BA64

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
	ldr r0, _0805BB80  @ ProcScr_efxCircleWIN
	movs r1, #3
	bl Proc_Start
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
_0805BB80: .4byte ProcScr_efxCircleWIN

	THUMB_FUNC_END sub_805BB24

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
	bl Proc_Break
_0805BC6E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BC7C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805BB84

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
	ldr r0, _0805BCC0  @ ProcScr_efxMagicQUAKE
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r6, [r4, #0x5c]
	adds r0, r5, #0
	movs r1, #0
	bl NewEfxQuakePure
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
_0805BCC0: .4byte ProcScr_efxMagicQUAKE

	THUMB_FUNC_END StartSpellThing_MagicQuake

	THUMB_FUNC_START Loop6C_efxMagicQUAKE
Loop6C_efxMagicQUAKE: @ 0x0805BCC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r5, _0805BD54  @ gEkrBg2QuakeVec
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	movs r0, #2
	bl BG_SetPosition
	ldr r4, _0805BD58  @ gEkrBg0QuakeVec
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
	bl EkrGauge_Setxy323A
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
	bl GetBanimDragonStatusType
	cmp r0, #0
	beq _0805BD42
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	movs r0, #3
	bl BG_SetPosition
_0805BD42:
	bl GetBanimDragonStatusType
	cmp r0, #0
	beq _0805BD60
	ldr r4, _0805BD5C  @ gEkrXPosBase
	ldrh r0, [r4]
	ldrh r1, [r5]
	subs r0, r0, r1
	b _0805BD68
	.align 2, 0
_0805BD54: .4byte gEkrBg2QuakeVec
_0805BD58: .4byte gEkrBg0QuakeVec
_0805BD5C: .4byte gEkrXPosBase
_0805BD60:
	ldr r4, _0805BE78  @ gEkrXPosBase
	ldrh r0, [r5]
	ldrh r3, [r4]
	adds r0, r0, r3
_0805BD68:
	ldr r3, _0805BE7C  @ gEkrBgXOffset
	ldr r1, [r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r2, _0805BE80  @ gEkrYPosBase
	ldrh r0, [r2]
	ldrh r1, [r5, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r9, r4
	mov sl, r2
	ldr r2, _0805BE84  @ gEkrBg2QuakeVec
	ldrh r0, [r2]
	mov r1, r9
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	ldr r3, _0805BE7C  @ gEkrBgXOffset
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
	bl SetEkrFrontAnimPostion
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl SetEkrFrontAnimPostion
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
	ldr r4, _0805BE8C  @ gEkrBg0QuakeVec
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
	bl EkrGauge_Setxy323A
	ldrh r0, [r4]
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #2]
	negs r1, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_8051B5C
	bl GetBanimDragonStatusType
	cmp r0, #0
	beq _0805BE2A
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_0805BE2A:
	ldr r0, _0805BE7C  @ gEkrBgXOffset
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
	bl SetEkrFrontAnimPostion
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	movs r0, #1
	bl SetEkrFrontAnimPostion
	mov r1, r8
	ldr r0, [r1, #0x60]
	bl Proc_End
	mov r0, r8
	bl Proc_Break
_0805BE6A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BE78: .4byte gEkrXPosBase
_0805BE7C: .4byte gEkrBgXOffset
_0805BE80: .4byte gEkrYPosBase
_0805BE84: .4byte gEkrBg2QuakeVec
_0805BE88: .4byte gUnknown_0201774C
_0805BE8C: .4byte gEkrBg0QuakeVec

	THUMB_FUNC_END Loop6C_efxMagicQUAKE

	THUMB_FUNC_START StartSpellAnimDummy
StartSpellAnimDummy: @ 0x0805BE90
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805BEB0  @ ProcScr_efxDummymagic
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805BEB0: .4byte ProcScr_efxDummymagic

	THUMB_FUNC_END StartSpellAnimDummy

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
	bl Proc_Break
_0805BF02:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END Loop6C_efxDummymagic

	THUMB_FUNC_START StartSpellAnimHandAxe
StartSpellAnimHandAxe: @ 0x0805BF08
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805BF3C  @ ProcScr_efxTeono
	movs r1, #3
	bl Proc_Start
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
_0805BF3C: .4byte ProcScr_efxTeono

	THUMB_FUNC_END StartSpellAnimHandAxe

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
	bl NewEfxFarAttackWithDistance
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
	bl Proc_Break
_0805BFD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805BF40

	THUMB_FUNC_START sub_805BFDC
sub_805BFDC: @ 0x0805BFDC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0805C020  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805C024  @ ProcScr_efxTeonoOBJ
	movs r1, #3
	bl Proc_Start
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
_0805C024: .4byte ProcScr_efxTeonoOBJ
_0805C028: .4byte gUnknown_085DA6FC
_0805C02C: .4byte gUnknown_085DA364
_0805C030: .4byte gUnknown_085DA758
_0805C034: .4byte gUnknown_085DA3C0
_0805C038:
	ldrh r0, [r5, #2]
	subs r0, #0x48
_0805C03C:
	strh r0, [r5, #2]
	ldr r0, _0805C04C  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805C050
	movs r0, #0x23
	b _0805C052
	.align 2, 0
_0805C04C: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_805BFDC

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
	bl AnimDelete
	ldr r0, _0805C0C8  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805C0D0
	ldr r0, _0805C0CC  @ gUnknown_02017758
	movs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x64]
	bl Proc_End
	adds r0, r4, #0
	bl Proc_End
	b _0805C0D6
	.align 2, 0
_0805C0C4: .4byte gUnknown_0201774C
_0805C0C8: .4byte gEkrDistanceType
_0805C0CC: .4byte gUnknown_02017758
_0805C0D0:
	adds r0, r4, #0
	bl Proc_Break
_0805C0D6:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805C080

	THUMB_FUNC_START sub_805C0DC
sub_805C0DC: @ 0x0805C0DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805C100  @ gUnknown_02017754
	movs r0, #0
	str r0, [r1]
	ldr r0, [r4, #0x64]
	bl Proc_End
	ldr r0, [r4, #0x5c]
	bl sub_805C104
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C100: .4byte gUnknown_02017754

	THUMB_FUNC_END sub_805C0DC

	THUMB_FUNC_START sub_805C104
sub_805C104: @ 0x0805C104
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0805C144  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805C148  @ ProcScr_efxTeonoOBJ2
	movs r1, #3
	bl Proc_Start
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
_0805C148: .4byte ProcScr_efxTeonoOBJ2
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

	THUMB_FUNC_END sub_805C104

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
	bl Proc_End
	ldr r0, [r4, #0x60]
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0805C1BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C1C0: .4byte gUnknown_0201774C
_0805C1C4: .4byte gUnknown_02017758

	THUMB_FUNC_END sub_805C188

	THUMB_FUNC_START sub_805C1C8
sub_805C1C8: @ 0x0805C1C8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _0805C204  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805C208  @ ProcScr_efxTeonoSE
	movs r1, #3
	bl Proc_Start
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
	bl EkrSoundSomeBark
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805C204: .4byte gUnknown_0201774C
_0805C208: .4byte ProcScr_efxTeonoSE

	THUMB_FUNC_END sub_805C1C8

	THUMB_FUNC_START sub_805C20C
sub_805C20C: @ 0x0805C20C
	ldr r1, _0805C218  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_0805C218: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805C20C

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
	bl EkrSoundSomeBark
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

	THUMB_FUNC_END sub_805C21C

	THUMB_FUNC_START StartSpellAnimArrow
StartSpellAnimArrow: @ 0x0805C264
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C298  @ ProcScr_efxArrow
	movs r1, #3
	bl Proc_Start
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
_0805C298: .4byte ProcScr_efxArrow

	THUMB_FUNC_END StartSpellAnimArrow

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
	bl NewEfxFarAttackWithDistance
	ldr r0, [r5, #0x5c]
	bl sub_805C358
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r5, #0x5c]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0xcc
	movs r3, #1
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805C350:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805C29C

	THUMB_FUNC_START sub_805C358
sub_805C358: @ 0x0805C358
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805C3A0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805C3A4  @ ProcScr_efxArrowOBJ
	movs r1, #3
	bl Proc_Start
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
_0805C3A4: .4byte ProcScr_efxArrowOBJ
_0805C3A8: .4byte gUnknown_085DA8E0
_0805C3AC: .4byte gUnknown_085DA854
_0805C3B0: .4byte gUnknown_085DA8F0
_0805C3B4: .4byte gUnknown_085DA864
_0805C3B8: .4byte gUnknown_085DA05C
_0805C3BC: .4byte gUnknown_085DA7AC

	THUMB_FUNC_END sub_805C358

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0805C3E6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C3EC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805C3C0

	THUMB_FUNC_START StartSpellAnimJavelin
StartSpellAnimJavelin: @ 0x0805C3F0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C440  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C440: .4byte ProcScr_efxTeyari
_0805C444: .4byte gUnknown_085DAB30
_0805C448: .4byte gUnknown_085DA900

	THUMB_FUNC_END StartSpellAnimJavelin

	THUMB_FUNC_START sub_805C44C
sub_805C44C: @ 0x0805C44C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C49C  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C49C: .4byte ProcScr_efxTeyari
_0805C4A0: .4byte gUnknown_085DAD6C
_0805C4A4: .4byte gUnknown_085DAB50

	THUMB_FUNC_END sub_805C44C

	THUMB_FUNC_START sub_805C4A8
sub_805C4A8: @ 0x0805C4A8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C4F8  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C4F8: .4byte ProcScr_efxTeyari
_0805C4FC: .4byte gUnknown_085DAFA4
_0805C500: .4byte gUnknown_085DAD8C

	THUMB_FUNC_END sub_805C4A8

	THUMB_FUNC_START sub_805C504
sub_805C504: @ 0x0805C504
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C554  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C554: .4byte ProcScr_efxTeyari
_0805C558: .4byte gUnknown_085DB1E0
_0805C55C: .4byte gUnknown_085DAFC4

	THUMB_FUNC_END sub_805C504

	THUMB_FUNC_START sub_805C560
sub_805C560: @ 0x0805C560
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C5B0  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C5B0: .4byte ProcScr_efxTeyari
_0805C5B4: .4byte gUnknown_085DB42C
_0805C5B8: .4byte gUnknown_085DB200

	THUMB_FUNC_END sub_805C560

	THUMB_FUNC_START sub_805C5BC
sub_805C5BC: @ 0x0805C5BC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C60C  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C60C: .4byte ProcScr_efxTeyari
_0805C610: .4byte gUnknown_085DB694
_0805C614: .4byte gUnknown_085DB44C

	THUMB_FUNC_END sub_805C5BC

	THUMB_FUNC_START sub_805C618
sub_805C618: @ 0x0805C618
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C668  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C668: .4byte ProcScr_efxTeyari
_0805C66C: .4byte gUnknown_085DB8EC
_0805C670: .4byte gUnknown_085DB6B4

	THUMB_FUNC_END sub_805C618

	THUMB_FUNC_START sub_805C674
sub_805C674: @ 0x0805C674
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C6C4  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C6C4: .4byte ProcScr_efxTeyari
_0805C6C8: .4byte gUnknown_085DBB70
_0805C6CC: .4byte gUnknown_085DB90C

	THUMB_FUNC_END sub_805C674

	THUMB_FUNC_START sub_805C6D0
sub_805C6D0: @ 0x0805C6D0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C720  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C720: .4byte ProcScr_efxTeyari
_0805C724: .4byte gUnknown_085DBE00
_0805C728: .4byte gUnknown_085DBB90

	THUMB_FUNC_END sub_805C6D0

	THUMB_FUNC_START sub_805C72C
sub_805C72C: @ 0x0805C72C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C77C  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C77C: .4byte ProcScr_efxTeyari
_0805C780: .4byte gUnknown_085DC050
_0805C784: .4byte gUnknown_085DBE20

	THUMB_FUNC_END sub_805C72C

	THUMB_FUNC_START sub_805C788
sub_805C788: @ 0x0805C788
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C7D8  @ ProcScr_efxTeyari
	movs r1, #3
	bl Proc_Start
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
_0805C7D8: .4byte ProcScr_efxTeyari
_0805C7DC: .4byte gUnknown_085DB1E0
_0805C7E0: .4byte gUnknown_085DAFC4

	THUMB_FUNC_END sub_805C788

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
	bl NewEfxFarAttackWithDistance
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r5, #0x5c]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0xca
	movs r3, #1
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805C886:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805C7E4

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
	ldr r0, _0805C8BC  @ ProcScr_efxTeyariOBJ
	movs r1, #3
	bl Proc_Start
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
_0805C8BC: .4byte ProcScr_efxTeyariOBJ
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

	THUMB_FUNC_END sub_805C88C

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0805C92A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805C930: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805C904

	THUMB_FUNC_START StartSpellAnimSong
StartSpellAnimSong: @ 0x0805C934
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805C968  @ ProcScr_efxSong
	movs r1, #3
	bl Proc_Start
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
_0805C968: .4byte ProcScr_efxSong

	THUMB_FUNC_END StartSpellAnimSong

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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805CA5A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805C96C

	THUMB_FUNC_START sub_805CA64
sub_805CA64: @ 0x0805CA64
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _0805CAAC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805CAB0  @ ProcScr_efxSongBG
	movs r1, #3
	bl Proc_Start
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
_0805CAB0: .4byte ProcScr_efxSongBG
_0805CAB4: .4byte gUnknown_080DC956
_0805CAB8: .4byte gUnknown_085D5188
_0805CABC: .4byte gUnknown_085D51F4
_0805CAC0: .4byte gUnknown_08754870

	THUMB_FUNC_END sub_805CA64

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
	bl Proc_Break
_0805CB32:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CB3C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805CAC4

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
	ldr r0, _0805CB98  @ ProcScr_efxSongOBJ
	movs r1, #3
	bl Proc_Start
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
_0805CB98: .4byte ProcScr_efxSongOBJ
_0805CB9C: .4byte gUnknown_08758134
_0805CBA0: .4byte gUnknown_08754870
_0805CBA4: .4byte gUnknown_08755FD4

	THUMB_FUNC_END sub_805CB40

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
	bl AnimDelete
	ldr r1, _0805CBD8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0805CBD2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805CBD8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805CBA8

	THUMB_FUNC_START StartSpellAnimDance
StartSpellAnimDance: @ 0x0805CBDC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805CC10  @ ProcScr_efxDance
	movs r1, #3
	bl Proc_Start
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
_0805CC10: .4byte ProcScr_efxDance

	THUMB_FUNC_END StartSpellAnimDance

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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805CD02:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805CC14

	THUMB_FUNC_START sub_805CD0C
sub_805CD0C: @ 0x0805CD0C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805CD58  @ ProcScr_efxShooter
	movs r1, #3
	bl Proc_Start
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
	bl EkrSoundSomeBark
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805CD58: .4byte ProcScr_efxShooter

	THUMB_FUNC_END sub_805CD0C

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805CE14:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805CD5C

	THUMB_FUNC_START sub_805CE1C
sub_805CE1C: @ 0x0805CE1C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805CE70  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805CE74  @ ProcScr_efxShooterOBJ
	movs r1, #3
	bl Proc_Start
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
_0805CE74: .4byte ProcScr_efxShooterOBJ
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

	THUMB_FUNC_END sub_805CE1C

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
	bl AnimDelete
	ldr r1, _0805CEC0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0805CEBA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805CEC0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805CE94

	THUMB_FUNC_START nullsub_42
nullsub_42: @ 0x0805CEC4
	bx lr

	THUMB_FUNC_END nullsub_42

	THUMB_FUNC_START sub_805CEC8
sub_805CEC8: @ 0x0805CEC8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805CF00  @ ProcScr_efxHurtmut
	movs r1, #3
	bl Proc_Start
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
_0805CF00: .4byte ProcScr_efxHurtmut

	THUMB_FUNC_END sub_805CEC8

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805CFB6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805CF04

	THUMB_FUNC_START sub_805CFC0
sub_805CFC0: @ 0x0805CFC0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0805D018  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D01C  @ ProcScr_efxHurtmutOBJ
	movs r1, #3
	bl Proc_Start
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
_0805D01C: .4byte ProcScr_efxHurtmutOBJ
_0805D020: .4byte gUnknown_085E12DC
_0805D024: .4byte gUnknown_085E067C
_0805D028: .4byte gUnknown_085DE964
_0805D02C: .4byte gUnknown_085DDC64

	THUMB_FUNC_END sub_805CFC0

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
	bl AnimDelete
	ldr r1, _0805D060  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0805D05A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D060: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805D030

	THUMB_FUNC_START StartSpellAnimFireBreath
StartSpellAnimFireBreath: @ 0x0805D064
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805D098  @ ProcScr_efxFirebreath
	movs r1, #3
	bl Proc_Start
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
_0805D098: .4byte ProcScr_efxFirebreath

	THUMB_FUNC_END StartSpellAnimFireBreath

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805D142:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805D09C

	THUMB_FUNC_START sub_805D14C
sub_805D14C: @ 0x0805D14C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _0805D1A8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D1AC  @ ProcScr_efxFirebreathOBJ
	movs r1, #3
	bl Proc_Start
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
	ldr r0, _0805D1B8  @ gEkrDistanceType
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
_0805D1AC: .4byte ProcScr_efxFirebreathOBJ
_0805D1B0: .4byte gUnknown_085E35DC
_0805D1B4: .4byte gUnknown_085E2A24
_0805D1B8: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_805D14C

	THUMB_FUNC_START sub_805D1FC
sub_805D1FC: @ 0x0805D1FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805D220  @ gEkrDistanceType
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
_0805D220: .4byte gEkrDistanceType
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
	bl AnimDelete
	ldr r1, _0805D25C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0805D254:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D25C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805D1FC

	THUMB_FUNC_START sub_805D260
sub_805D260: @ 0x0805D260
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _0805D2A4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D2A8  @ ProcScr_efxFirebreathBG
	movs r1, #3
	bl Proc_Start
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
_0805D2A8: .4byte ProcScr_efxFirebreathBG
_0805D2AC: .4byte gUnknown_087246D8
_0805D2B0: .4byte gUnknown_08725AF0

	THUMB_FUNC_END sub_805D260

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
	bl Proc_Break
_0805D2E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D2E8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805D2B4

	THUMB_FUNC_START sub_805D2EC
sub_805D2EC: @ 0x0805D2EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805D318  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805D31C  @ ProcScr_efxFirebreathBGCOL
	movs r1, #3
	bl Proc_Start
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
_0805D31C: .4byte ProcScr_efxFirebreathBGCOL
_0805D320: .4byte gUnknown_080DCA5C
_0805D324: .4byte gUnknown_08725AD0

	THUMB_FUNC_END sub_805D2EC

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
	bl Proc_Break
_0805D37E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805D384: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805D328

	THUMB_FUNC_START StartSpellAnimIceBreath
StartSpellAnimIceBreath: @ 0x0805D388
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805D3C0  @ gUnknown_085D5358
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimIceBreath

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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805D43E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805D3C4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805D444

	THUMB_FUNC_START sub_805D4B8
sub_805D4B8: @ 0x0805D4B8
	push {lr}
	ldr r2, _0805D4CC  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r0, [r0, #0x60]
	bl AnimDelete
	pop {r0}
	bx r0
	.align 2, 0
_0805D4CC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805D4B8

	THUMB_FUNC_START StartSpellAnimDarkBreath
StartSpellAnimDarkBreath: @ 0x0805D4D0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0805D504  @ gUnknown_085D5390
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimDarkBreath

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805D596:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END Loop6C_efxDarkbreath

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805D59C

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
	bl Proc_Break
_0805D638:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D640: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805D5EC

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805D644

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
	bl Proc_Break
_0805D6C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D6C8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805D680

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
	bl Proc_Start
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
	ldr r0, _0805D73C  @ gEkrDistanceType
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
_0805D73C: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_805D6CC

	THUMB_FUNC_START sub_805D774
sub_805D774: @ 0x0805D774
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805D798  @ gEkrDistanceType
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
_0805D798: .4byte gEkrDistanceType
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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0805D7CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805D7D4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805D774

	THUMB_FUNC_START StartSpellAnimThunder
StartSpellAnimThunder: @ 0x0805D7D8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805D810  @ gUnknown_085D5428
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimThunder

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805D8AE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END Loop6C_efxThunder

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
	bl Proc_Start
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
	ldr r0, _0805D924  @ gEkrDistanceType
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
_0805D924: .4byte gEkrDistanceType
_0805D928:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805D932:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805D8B4

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
	bl Proc_Break
_0805D9AE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D9B8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805D938

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805D9BC

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
	bl Proc_Break
_0805DA38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DA40: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805D9F8

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805DA44

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
	bl AnimDelete
	ldr r1, _0805DAD0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0805DACA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DAD0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805DAA4

	THUMB_FUNC_START StartSpellAnimFire
StartSpellAnimFire: @ 0x0805DAD4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805DB14  @ gUnknown_085D54A0
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimFire

	THUMB_FUNC_START StartSpellAnimElfire
StartSpellAnimElfire: @ 0x0805DB18
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805DB58  @ gUnknown_085D54A0
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimElfire

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
	ldr r0, _0805DB88  @ gEkrDistanceType
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
_0805DB88: .4byte gEkrDistanceType
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
	bl EkrSoundSomeBark
_0805DBC4:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, r5
	bne _0805DBD8
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805DC58:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END Loop6C_efxFire

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805DC64

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
	bl Proc_Break
_0805DD10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DD18: .4byte gUnknown_0201774C

	THUMB_FUNC_END Loop6C_efxFireBG

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805DD1C

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
	bl EkrSoundSomeBark
	b _0805DDE6
_0805DDCE:
	cmp r0, #0x32
	ble _0805DDE6
	ldr r0, [r4, #0x60]
	bl AnimDelete
	ldr r1, _0805DDEC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0805DDE6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DDEC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805DDA8

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
	bl Proc_Start
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
	ldr r0, _0805DE60  @ gEkrDistanceType
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
_0805DE60: .4byte gEkrDistanceType
_0805DE64:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805DE6E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END StartSubSpell_efxFireHITBG

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
	bl Proc_End
_0805DECE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805DED4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805DE74

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
	bl Proc_Start
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
	ldr r0, _0805DF44  @ gEkrDistanceType
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
_0805DF44: .4byte gEkrDistanceType
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

	THUMB_FUNC_END StartSubSpell_efxElfireBG

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
	bl Proc_Break
_0805DF98:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DFA0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805DF70

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
	bl Proc_Start
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

	THUMB_FUNC_END StartSubSpell_efxElfireBGCOL

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
	bl Proc_Break
_0805E024:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E02C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805DFE8

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
	bl Proc_Start
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

	THUMB_FUNC_END StartSubSpell_efxElfireOBJ

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
	bl AnimDelete
	ldr r1, _0805E0E0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0805E0DA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E0E0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805E0B4

	THUMB_FUNC_START StartSpellAnimFimbulvetr
StartSpellAnimFimbulvetr: @ 0x0805E0E4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805E11C  @ gUnknown_085D5658
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimFimbulvetr

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805E228:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805E120

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
	bl Proc_Start
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
	ldr r0, _0805E29C  @ gEkrDistanceType
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
_0805E29C: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_805E230

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
	bl Proc_Break
_0805E30E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E314: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805E2B4

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
	bl Proc_Start
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
	ldr r0, _0805E384  @ gEkrDistanceType
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
_0805E384: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_805E318

	THUMB_FUNC_START sub_805E39C
sub_805E39C: @ 0x0805E39C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0805E3C0  @ gEkrDistanceType
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
_0805E3C0: .4byte gEkrDistanceType
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
	bl Proc_Break
_0805E426:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E42C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805E39C

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805E430

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
	bl AnimDelete
	ldr r1, _0805E4C0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0805E4BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E4C0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805E494

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805E4C4

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
	bl Proc_Break
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E538: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805E510

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
	bl Proc_Start
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
	bl AnimCreate
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

	THUMB_FUNC_END sub_805E53C

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
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

	THUMB_FUNC_END sub_805E694

	THUMB_FUNC_START sub_805E754
sub_805E754: @ 0x0805E754
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805E78C  @ gUnknown_085D5770
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_805E754

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805E848:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805E790

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805E850

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
	bl Proc_End
_0805E8F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E8FC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805E8A4

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
	bl Proc_Start
	str r4, [r0, #0x5c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E91C: .4byte gUnknown_0201774C
_0805E920: .4byte gUnknown_085D57F8

	THUMB_FUNC_END sub_805E900

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
	bl Proc_Break
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E95C: .4byte gUnknown_0860A5D4
_0805E960: .4byte gUnknown_085F3F40
_0805E964: .4byte gUnknown_085F3AA8

	THUMB_FUNC_END sub_805E924

	THUMB_FUNC_START sub_805E968
sub_805E968: @ 0x0805E968
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x60]
	bl AnimDelete
	ldr r1, _0805E988  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E988: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805E968

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
	bl Proc_Start
	str r4, [r0, #0x5c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805E9A8: .4byte gUnknown_0201774C
_0805E9AC: .4byte gUnknown_085D5820

	THUMB_FUNC_END sub_805E98C

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
	bl EkrSoundSomeBark
	ldr r0, [r4, #0x5c]
	movs r1, #0x26
	bl StartSpellBG_FLASH
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #5
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805E9B0

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
	bl Interpolate
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
	bl Proc_Break
_0805EA3A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EA44: .4byte gPaletteBuffer
_0805EA48: .4byte gUnknown_020165C8

	THUMB_FUNC_END sub_805E9E4

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
	bl Interpolate
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
	bl Proc_Break
_0805EA9E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EAA8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805EA4C

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805EAAC

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
	bl Interpolate
	adds r3, r0, #0
	ldr r4, _0805EB50  @ gUnknown_020165C8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl EkrMaybePalFadeWithVal
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
	bl Proc_Break
_0805EB46:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805EB50: .4byte gUnknown_020165C8

	THUMB_FUNC_END sub_805EAF0

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
	bl Proc_Break
_0805EB8A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EB90: .4byte gUnknown_020165C8
_0805EB94: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805EB54

	THUMB_FUNC_START sub_805EB98
sub_805EB98: @ 0x0805EB98
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805EBD0  @ gUnknown_085D5880
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_805EB98

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
	ldr r0, _0805EC2C  @ gEkrDistanceType
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
	bl EkrSoundSomeBark
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl NewEfxFarAttackWithDistance
	b _0805ECCC
	.align 2, 0
_0805EC2C: .4byte gEkrDistanceType
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805ECCC:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805EBD4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805ECD4

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
	bl Proc_Break
_0805ED8E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805ED94: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805ED44

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805ED98

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
	bl Proc_Break
_0805EE18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EE20: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805EDDC

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805EE24

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
	bl Proc_Break
_0805EED0:
	pop {r0}
	bx r0
	.align 2, 0
_0805EED4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805EEAC

	THUMB_FUNC_START sub_805EED8
sub_805EED8: @ 0x0805EED8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805EF10  @ gUnknown_085D58F0
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_805EED8

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
	bl EkrSoundSomeBark
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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_End
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
	bl Proc_Break
_0805EFFE:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805EF14

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
	bl Proc_Start
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
	ldr r0, _0805F074  @ gEkrDistanceType
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
_0805F074: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_805F004

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
	bl Proc_Start
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
	ldr r0, _0805F12C  @ gEkrDistanceType
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
_0805F12C: .4byte gEkrDistanceType
_0805F130:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0805F13A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805F0B0

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
	bl Proc_End
_0805F19A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F1A0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805F140

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805F1A4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805F1E8

	THUMB_FUNC_START sub_805F234
sub_805F234: @ 0x0805F234
	push {lr}
	ldr r2, _0805F248  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r0, [r0, #0x60]
	bl AnimDelete
	pop {r0}
	bx r0
	.align 2, 0
_0805F248: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805F234

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F27C: .4byte gUnknown_0862D6A8
_0805F280: .4byte gUnknown_0862D424
_0805F284: .4byte gUnknown_0862C82C

	THUMB_FUNC_END sub_805F24C

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F2B8: .4byte gUnknown_0862D82C
_0805F2BC: .4byte gUnknown_0862D424
_0805F2C0: .4byte gUnknown_0862CC2C

	THUMB_FUNC_END sub_805F288

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F2F4: .4byte gUnknown_0862DCE0
_0805F2F8: .4byte gUnknown_0862D424
_0805F2FC: .4byte gUnknown_0862D06C

	THUMB_FUNC_END sub_805F2C4

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
	bl AnimSort
	movs r0, #0x27
	strh r0, [r4, #0x2c]
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F328: .4byte gUnknown_0862DC24

	THUMB_FUNC_END sub_805F300

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

	THUMB_FUNC_END sub_805F32C

	THUMB_FUNC_START StartSpellAnimNosferatu
StartSpellAnimNosferatu: @ 0x0805F354
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805F38C  @ ProcScr_efxResire
	movs r1, #3
	bl Proc_Start
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
_0805F38C: .4byte ProcScr_efxResire

	THUMB_FUNC_END StartSpellAnimNosferatu

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805F4A8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END Loop6C_efxResire

	THUMB_FUNC_START sub_805F4B0
sub_805F4B0: @ 0x0805F4B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0805F510  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805F514  @ ProcScr_efxResireBG
	movs r1, #3
	bl Proc_Start
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
	ldr r0, _0805F528  @ gEkrDistanceType
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
_0805F514: .4byte ProcScr_efxResireBG
_0805F518: .4byte gUnknown_080DD186
_0805F51C: .4byte gUnknown_085D5C0C
_0805F520: .4byte gUnknown_085D5B40
_0805F524: .4byte gUnknown_08636640
_0805F528: .4byte gEkrDistanceType
_0805F52C:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805F536:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805F4B0

	THUMB_FUNC_START sub_805F53C
sub_805F53C: @ 0x0805F53C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0805F5AC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0805F5B0  @ ProcScr_efxResireBG2
	movs r1, #3
	bl Proc_Start
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
	ldr r0, _0805F5C8  @ gEkrDistanceType
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
_0805F5B0: .4byte ProcScr_efxResireBG2
_0805F5B4: .4byte gUnknown_080DD252
_0805F5B8: .4byte gUnknown_085D5C0C
_0805F5BC: .4byte gUnknown_085D5B40
_0805F5C0: .4byte gUnknown_08636640
_0805F5C4: .4byte gLCDControlBuffer
_0805F5C8: .4byte gEkrDistanceType
_0805F5CC:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805F5D6:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805F53C

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
	bl Proc_End
	b _0805F65A
	.align 2, 0
_0805F648: .4byte gUnknown_0201774C
_0805F64C:
	movs r0, #0
	strh r0, [r7, #0x2c]
	movs r0, #1
	strh r0, [r7, #0x2e]
	adds r0, r7, #0
	bl Proc_Break
_0805F65A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805F5DC

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
	bl Proc_End
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
	ldr r0, _0805F6F8  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805F6E0
	bl GetAnimationStartFrameMaybe
	strh r0, [r4, #0x2e]
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl NewEfxFarAttackWithDistance
_0805F6E0:
	adds r0, r4, #0
	bl Proc_Break
_0805F6E6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F6EC: .4byte gUnknown_080DD1F4
_0805F6F0: .4byte gUnknown_085D5C0C
_0805F6F4: .4byte gUnknown_085D5B40
_0805F6F8: .4byte gEkrDistanceType

	THUMB_FUNC_END sub_805F660

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
	ldr r0, _0805F73C  @ gEkrDistanceType
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
_0805F73C: .4byte gEkrDistanceType
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
	bl EkrSoundSomeBark
	adds r0, r4, #0
	bl Proc_Break
_0805F766:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805F6FC

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
	bl Proc_Break
_0805F7CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F7D0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805F76C

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
	bl Proc_Break
_0805F82E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F834: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805F7D4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805F838

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
	bl Interpolate
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
	bl Proc_Break
_0805F8A6:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805F8B0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805F868

	THUMB_FUNC_START sub_805F8B4
sub_805F8B4: @ 0x0805F8B4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805F8EC  @ gUnknown_085D5CF0
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_805F8B4

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805F9A0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805F8F0

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
	bl Proc_Start
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
	ldr r0, _0805FA14  @ gEkrDistanceType
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
_0805FA14: .4byte gEkrDistanceType
_0805FA18:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0805FA22:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805F9A8

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
	ldr r0, _0805FA90  @ gEkrDistanceType
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
_0805FA90: .4byte gEkrDistanceType
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
	bl Proc_End
_0805FACE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FADC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805FA28

	THUMB_FUNC_START StartSpellAnimPurge
StartSpellAnimPurge: @ 0x0805FAE0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805FB1C  @ gUnknown_085D5EAC
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimPurge

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
	bl EkrSoundSomeBark
	b _0805FB4E
	.align 2, 0
_0805FB40: .4byte gUnknown_02020044
_0805FB44:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0xff
	bl EkrSoundSomeBark
_0805FB4E:
	ldr r1, _0805FB5C  @ gUnknown_02020044
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0805FB5C: .4byte gUnknown_02020044

	THUMB_FUNC_END sub_805FB24

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805FC88:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805FB60

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805FC90

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
	bl Proc_End
_0805FD4C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805FD58: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805FCE0

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805FD5C

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
	bl Proc_Break
_0805FDEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805FDF4: .4byte gUnknown_085D62A4
_0805FDF8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805FD90

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_805FDFC

	THUMB_FUNC_START sub_805FE68
sub_805FE68: @ 0x0805FE68
	push {lr}
	ldr r0, [r0, #0x60]
	bl AnimDelete
	ldr r1, _0805FE7C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0805FE7C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_805FE68

	THUMB_FUNC_START nullsub_41
nullsub_41: @ 0x0805FE80
	bx lr

	THUMB_FUNC_END nullsub_41

	THUMB_FUNC_START StartSpellAnimDivine
StartSpellAnimDivine: @ 0x0805FE84
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0805FEBC  @ gUnknown_085D62FC
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimDivine

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
	bl EkrSoundSomeBark
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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_0805FFAA:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END DivineSfxLoop

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
	bl Proc_Start
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
	ldr r0, _0806001C  @ gEkrDistanceType
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
_0806001C: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_805FFB0

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
	bl Proc_Start
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
	ldr r0, _080600A0  @ gEkrDistanceType
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
_080600A0: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8060034

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
	bl Proc_Start
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
	ldr r0, _08060124  @ gEkrDistanceType
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
_08060124: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_80600B8

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
	ldr r0, _08060194  @ gEkrDistanceType
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
_08060194: .4byte gEkrDistanceType
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
	bl Proc_Break
_080601D2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080601DC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806013C

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80601E0

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
	bl AnimDelete
	ldr r1, _08060280  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0806027A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060280: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8060254

	THUMB_FUNC_START sub_8060284
sub_8060284: @ 0x08060284
	bx lr

	THUMB_FUNC_END sub_8060284

	THUMB_FUNC_START nullsub_40
nullsub_40: @ 0x08060288
	bx lr

	THUMB_FUNC_END nullsub_40

	THUMB_FUNC_START sub_806028C
sub_806028C: @ 0x0806028C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080602C4  @ gUnknown_085D64A4
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_806028C

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08060438:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80602C8

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8060440

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80604B0

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8060514

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
	bl Proc_Break
_080605DA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080605E4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806056C

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80605E8

	THUMB_FUNC_START sub_8060664
sub_8060664: @ 0x08060664
	push {lr}
	ldr r2, _08060678  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r0, [r0, #0x60]
	bl AnimDelete
	pop {r0}
	bx r0
	.align 2, 0
_08060678: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8060664

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
	bl Proc_Break
_080606D0:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806067C

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
	bl Proc_Break
_0806072C:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80606D8

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
	bl Proc_Break
_08060788:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8060734

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8060790

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
	bl Proc_Break
_0806082A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060830: .4byte gUnknown_085D660C
_08060834: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80607D8

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8060838

	THUMB_FUNC_START sub_806088C
sub_806088C: @ 0x0806088C
	push {lr}
	ldr r2, _080608A0  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r0, [r0, #0x60]
	bl AnimDelete
	pop {r0}
	bx r0
	.align 2, 0
_080608A0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806088C

	THUMB_FUNC_START StartSpellAnimFenrir
StartSpellAnimFenrir: @ 0x080608A4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080608DC  @ gUnknown_085D6644
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimFenrir

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08060A94:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80608E0

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
	bl Proc_Start
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
	ldr r4, _08060B20  @ gEkrTsaBuffer
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
_08060B20: .4byte gEkrTsaBuffer
_08060B24: .4byte gBG1TilemapBuffer
_08060B28: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_8060A9C

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

	THUMB_FUNC_END sub_8060B2C

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
	bl Proc_Break
_08060B72:
	pop {r0}
	bx r0
	.align 2, 0
_08060B78: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_8060B48

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8060B7C

	THUMB_FUNC_START sub_8060BC4
sub_8060BC4: @ 0x08060BC4
	ldr r1, _08060BD0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08060BD0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8060BC4

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
	bl Proc_Break
_08060C10:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8060BD4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8060C18

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08060CA2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060CA8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8060C78

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
	bl Proc_Start
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
	ldr r0, _08060D28  @ gEkrDistanceType
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
_08060D28: .4byte gEkrDistanceType
_08060D2C:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_08060D36:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8060CAC

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
	bl Proc_Start
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
	ldr r0, _08060DB0  @ gEkrDistanceType
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
_08060DB0: .4byte gEkrDistanceType
_08060DB4:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_08060DBE:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8060D3C

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
	ldr r0, _08060E3C  @ gEkrDistanceType
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
_08060E3C: .4byte gEkrDistanceType
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
	bl Proc_Break
_08060E7E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08060E8C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8060DC4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8060E90

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
	bl Proc_Break
_08060F18:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08060F20: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8060ED8

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
	bl Proc_Start
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
	bl AnimCreate
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

	THUMB_FUNC_END sub_8060F24

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
	bl Interpolate
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
	bl AnimDelete
	adds r0, r6, #0
	bl Proc_Break
_08061014:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806101C: .4byte gSinLookup
_08061020: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8060FA4

	THUMB_FUNC_START StartSpellAnimHeal
StartSpellAnimHeal: @ 0x08061024
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08061048  @ gUnknown_085D68BC
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061048: .4byte gUnknown_085D68BC

	THUMB_FUNC_END StartSpellAnimHeal

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
	bl EkrSoundSomeBark
	b _08061150
	.align 2, 0
_08061114: .4byte 0x0000010F
_08061118:
	cmp r0, #0xa6
	bne _08061124
	adds r0, r5, #0
	bl NewEfxHPBarLive
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
	bl Proc_Break
_08061150:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806104C

	THUMB_FUNC_START StartSpellAnimMend
StartSpellAnimMend: @ 0x08061158
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806117C  @ gUnknown_085D68D4
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806117C: .4byte gUnknown_085D68D4

	THUMB_FUNC_END StartSpellAnimMend

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
	b _080612B4
	.align 2, 0
_08061270: .4byte 0x00000111
_08061274:
	adds r0, r2, #0
	adds r0, #0xa6
	cmp r1, r0
	bne _08061284
	adds r0, r5, #0
	bl NewEfxHPBarLive
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
	bl Proc_Break
_080612B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8061180

	THUMB_FUNC_START StartSpellAnimRecover
StartSpellAnimRecover: @ 0x080612BC
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080612E0  @ gUnknown_085D68EC
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080612E0: .4byte gUnknown_085D68EC

	THUMB_FUNC_END StartSpellAnimRecover

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
	b _08061418
	.align 2, 0
_080613D4: .4byte 0x00000113
_080613D8:
	adds r0, r2, #0
	adds r0, #0xa6
	cmp r1, r0
	bne _080613E8
	adds r0, r5, #0
	bl NewEfxHPBarLive
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
	bl Proc_Break
_08061418:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80612E4

	THUMB_FUNC_START sub_8061420
sub_8061420: @ 0x08061420
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08061444  @ gUnknown_085D6904
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061444: .4byte gUnknown_085D6904

	THUMB_FUNC_END sub_8061420

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
	b _0806158C
	.align 2, 0
_08061548: .4byte 0x0000010F
_0806154C:
	adds r0, r2, #0
	adds r0, #0xd3
	cmp r1, r0
	bne _0806155C
	adds r0, r5, #0
	bl NewEfxHPBarLive
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
	bl Proc_Break
_0806158C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8061448

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
	bl Proc_Start
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
	ldr r0, _08061638  @ gEkrDistanceType
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
_08061638: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8061594

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
	bl Proc_Start
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
	ldr r0, _080616EC  @ gEkrDistanceType
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
_080616EC: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8061650

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
	bl Proc_Break
_08061768:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061770: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8061704

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8061774

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80617E4

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
	bl Proc_Break
_08061890:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061898: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8061854

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_806189C

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
	bl Proc_Break
_080618EE:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80618D8

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
	bl Proc_Break
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
	bl Interpolate
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
	bl Interpolate
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

	THUMB_FUNC_END sub_80618F4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_806196C

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80619CC

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08061A5A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061A60: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8061A30

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
	bl Proc_Break
_08061A8E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08061A94: .4byte gUnknown_086751A4

	THUMB_FUNC_END sub_8061A64

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08061AC2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061AC8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8061A98

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8061ACC

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
	ldr r0, _08061B68  @ gEkrDistanceType
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
_08061B68: .4byte gEkrDistanceType
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
	ldr r0, _08061BA8  @ gEkrDistanceType
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
_08061BA8: .4byte gEkrDistanceType
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
	bl Proc_Break
_08061BD6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8061B14

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08061C0E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061C14: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8061BE4

	THUMB_FUNC_START sub_8061C18
sub_8061C18: @ 0x08061C18
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08061C44  @ gUnknown_085D69CC
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8061C18

	THUMB_FUNC_START sub_8061C48
sub_8061C48: @ 0x08061C48
	push {r4, lr}
	adds r4, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08061C74  @ gUnknown_085D69CC
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8061C48

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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08061D1E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061D24: .4byte 0x000001C5

	THUMB_FUNC_END sub_8061C78

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8061D28

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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08061DEE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08061DF4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8061D78

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8061DF8

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
	bl Proc_Break
_08061E80:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08061E88: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8061E44

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
	bl Proc_Start
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
	bl SetBlendTargetA
	mov r1, r8
	str r1, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl SetBlendTargetB
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

	THUMB_FUNC_END sub_8061E8C

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
	bl Proc_Break
_08062046:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806204C: .4byte gUnknown_0201774C
_08062050: .4byte gLCDControlBuffer
_08062054: .4byte 0x0000F3FF

	THUMB_FUNC_END sub_8061F78

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8062058

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
	bl Proc_Break
_080620E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080620E8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80620A4

	THUMB_FUNC_START sub_80620EC
sub_80620EC: @ 0x080620EC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08062124  @ gUnknown_085D6A68
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_80620EC

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	ldr r0, _08062224  @ gpEkrBattleUnitLeft
	b _0806222A
	.align 2, 0
_08062224: .4byte gpEkrBattleUnitLeft
_08062228:
	ldr r0, _0806226C  @ gpEkrBattleUnitRight
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
	bl GetUnit
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, _08062270  @ 0xFFFFFBBD
	ands r0, r1
	str r0, [r4, #0xc]
	bl RefreshEntityBmMaps
	bl RefreshUnitSprites
	bl MU_EndAll
_08062260:
	adds r0, r6, #0
	movs r1, #0
	bl sub_8054BA4
	b _08062294
	.align 2, 0
_0806226C: .4byte gpEkrBattleUnitRight
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
	bl Proc_Break
_08062294:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8062128

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80622A0

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
	bl Proc_Break
_0806234E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062354: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80622F4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8062358

	THUMB_FUNC_START sub_80623D0
sub_80623D0: @ 0x080623D0
	ldr r1, _080623DC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_080623DC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80623D0

	THUMB_FUNC_START StartSpellAnimSilence
StartSpellAnimSilence: @ 0x080623E0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08062418  @ gUnknown_085D6B20
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimSilence

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
	bl EkrSoundSomeBark
_08062460:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0x29
	bne _08062474
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
	bl StopBGM1
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
	bl Proc_Break
_08062518:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806241C

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
	bl Proc_Start
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
	ldr r0, _0806259C  @ gEkrDistanceType
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
_0806259C: .4byte gEkrDistanceType
_080625A0:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_080625AA:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8062524

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
	bl Proc_Break
_080625FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062604: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80625B0

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8062608

	THUMB_FUNC_START sub_8062660
sub_8062660: @ 0x08062660
	push {lr}
	ldr r0, [r0, #0x60]
	bl AnimDelete
	ldr r1, _08062674  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08062674: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8062660

	THUMB_FUNC_START StartSpellAnimSleep
StartSpellAnimSleep: @ 0x08062678
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080626B0  @ gUnknown_085D6BB8
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimSleep

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
	bl EkrSoundSomeBark
_080626F8:
	movs r1, #0x2c
	ldrsh r0, [r4, r1]
	cmp r0, #0x64
	bne _0806270A
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl NewEfxFarAttackWithDistance
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
	bl Proc_Break
_080627A6:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80626B4

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
	bl Proc_Start
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
	ldr r0, _0806282C  @ gEkrDistanceType
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
_0806282C: .4byte gEkrDistanceType
_08062830:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0806283A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80627B4

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
	bl Proc_Break
_0806288C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062894: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8062840

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8062898

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80628F0

	THUMB_FUNC_START sub_8062934
sub_8062934: @ 0x08062934
	ldr r1, _08062940  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08062940: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8062934

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
	bl Proc_Start
	str r4, [r0, #0x5c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062960: .4byte gUnknown_0201774C
_08062964: .4byte gUnknown_085D6C68

	THUMB_FUNC_END sub_8062944

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
	bl EkrSoundSomeBark
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8062968

	THUMB_FUNC_START sub_8062988
sub_8062988: @ 0x08062988
	ldr r1, _08062994  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08062994: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8062988

	THUMB_FUNC_START StartSpellAnimHammerne
StartSpellAnimHammerne: @ 0x08062998
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080629D0  @ gUnknown_085D6CB0
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimHammerne

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08062AE8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80629D4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8062AF4

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
	bl Proc_Break
_08062BA2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062BA8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8062B48

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8062BAC

	THUMB_FUNC_START sub_8062C04
sub_8062C04: @ 0x08062C04
	ldr r1, _08062C10  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08062C10: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8062C04

	THUMB_FUNC_START StartSpellAnimBerserk
StartSpellAnimBerserk: @ 0x08062C14
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08062C4C  @ gUnknown_085D6D68
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimBerserk

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08062D26:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8062C50

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
	ldr r0, _08062E28  @ ProcScr_efxBerserkBG
	movs r1, #3
	bl Proc_Start
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
	bl SetBlendTargetA
	mov r1, r8
	str r1, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
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
_08062E28: .4byte ProcScr_efxBerserkBG
_08062E2C: .4byte gUnknown_0868C338
_08062E30: .4byte gUnknown_086849B8
_08062E34: .4byte gUnknown_08684AB8
_08062E38: .4byte gBG1TilemapBuffer
_08062E3C: .4byte gLCDControlBuffer
_08062E40: .4byte 0x0000F3FF

	THUMB_FUNC_END sub_8062D30

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
	bl Proc_Break
_08062E96:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062E9C: .4byte gLCDControlBuffer
_08062EA0: .4byte 0xFFFFF7FF
_08062EA4: .4byte 0x0000F3FF
_08062EA8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8062E44

	THUMB_FUNC_START sub_8062EAC
sub_8062EAC: @ 0x08062EAC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _08062ED0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062ED4  @ ProcScr_efxBerserkCLONE
	movs r1, #4
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r5, [r0, #0x2e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08062ED0: .4byte gUnknown_0201774C
_08062ED4: .4byte ProcScr_efxBerserkCLONE

	THUMB_FUNC_END sub_8062EAC

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
	bl AnimDisplay
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
	bl Proc_Break
_08062F2C:
	add sp, #0x48
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062F34: .4byte 0xFFFFF7FF
_08062F38: .4byte 0x0000F3FF

	THUMB_FUNC_END sub_8062ED8

	THUMB_FUNC_START sub_8062F3C
sub_8062F3C: @ 0x08062F3C
	ldr r1, _08062F48  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08062F48: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8062F3C

	THUMB_FUNC_START sub_8062F4C
sub_8062F4C: @ 0x08062F4C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08062F94  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08062F98  @ ProcScr_efxBerserkOBJ
	movs r1, #3
	bl Proc_Start
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
_08062F98: .4byte ProcScr_efxBerserkOBJ
_08062F9C: .4byte gUnknown_085D4F90
_08062FA0: .4byte 0x0000F3FF

	THUMB_FUNC_END sub_8062F4C

	THUMB_FUNC_START sub_8062FA4
sub_8062FA4: @ 0x08062FA4
	push {lr}
	ldr r2, _08062FB8  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	ldr r0, [r0, #0x60]
	bl AnimDelete
	pop {r0}
	bx r0
	.align 2, 0
_08062FB8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8062FA4

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08062FEC: .4byte gUnknown_0868D2B4
_08062FF0: .4byte gUnknown_0868CC10
_08062FF4: .4byte gUnknown_0868C358

	THUMB_FUNC_END sub_8062FBC

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063028: .4byte gUnknown_0868D2C8
_0806302C: .4byte gUnknown_0868CC10
_08063030: .4byte gUnknown_0868C358

	THUMB_FUNC_END sub_8062FF8

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063064: .4byte gUnknown_0868D2DC
_08063068: .4byte gUnknown_0868CC10
_0806306C: .4byte gUnknown_0868C358

	THUMB_FUNC_END sub_8063034

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080630A0: .4byte gUnknown_0868D2F0
_080630A4: .4byte gUnknown_0868CC10
_080630A8: .4byte gUnknown_0868C358

	THUMB_FUNC_END sub_8063070

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080630DC: .4byte gUnknown_0868D304
_080630E0: .4byte gUnknown_0868CC10
_080630E4: .4byte gUnknown_0868C358

	THUMB_FUNC_END sub_80630AC

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063118: .4byte gUnknown_0868D678
_0806311C: .4byte gUnknown_0868CC10
_08063120: .4byte gUnknown_0868C7F0

	THUMB_FUNC_END sub_80630E8

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063154: .4byte gUnknown_0868D684
_08063158: .4byte gUnknown_0868CC10
_0806315C: .4byte gUnknown_0868C7F0

	THUMB_FUNC_END sub_8063124

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063190: .4byte gUnknown_0868D690
_08063194: .4byte gUnknown_0868CC10
_08063198: .4byte gUnknown_0868C7F0

	THUMB_FUNC_END sub_8063160

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080631CC: .4byte gUnknown_0868D69C
_080631D0: .4byte gUnknown_0868CC10
_080631D4: .4byte gUnknown_0868C7F0

	THUMB_FUNC_END sub_806319C

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
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063208: .4byte gUnknown_0868D6A8
_0806320C: .4byte gUnknown_0868CC10
_08063210: .4byte gUnknown_0868C7F0

	THUMB_FUNC_END sub_80631D8

	THUMB_FUNC_START sub_8063214
sub_8063214: @ 0x08063214
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806324C  @ ProcScr_efxMshield
	movs r1, #3
	bl Proc_Start
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
_0806324C: .4byte ProcScr_efxMshield

	THUMB_FUNC_END sub_8063214

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08063316:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8063250

	THUMB_FUNC_START sub_806331C
sub_806331C: @ 0x0806331C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08063360  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063364  @ ProcScr_efxMshieldBG
	movs r1, #3
	bl Proc_Start
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
_08063364: .4byte ProcScr_efxMshieldBG
_08063368: .4byte gUnknown_080DDF3A
_0806336C: .4byte gUnknown_085D6EA0
_08063370: .4byte gUnknown_0868DF5C
_08063374: .4byte gUnknown_0868D6D0

	THUMB_FUNC_END sub_806331C

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
	bl Proc_Break
_080633C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080633CC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8063378

	THUMB_FUNC_START sub_80633D0
sub_80633D0: @ 0x080633D0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _08063414  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063418  @ ProcScr_efxMshieldBGOBJ
	movs r1, #3
	bl Proc_Start
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
_08063418: .4byte ProcScr_efxMshieldBGOBJ
_0806341C: .4byte gUnknown_08692524
_08063420: .4byte gUnknown_0868E46C
_08063424: .4byte gUnknown_08686F84

	THUMB_FUNC_END sub_80633D0

	THUMB_FUNC_START sub_8063428
sub_8063428: @ 0x08063428
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0806345C  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08063460  @ ProcScr_efxMshieldBGOBJ2
	movs r1, #3
	bl Proc_Start
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
_08063460: .4byte ProcScr_efxMshieldBGOBJ2
_08063464: .4byte gUnknown_08692674

	THUMB_FUNC_END sub_8063428

	THUMB_FUNC_START sub_8063468
sub_8063468: @ 0x08063468
	push {lr}
	ldr r0, [r0, #0x60]
	bl AnimDelete
	ldr r1, _0806347C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0806347C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8063468

	THUMB_FUNC_START StartSpellAnimShine
StartSpellAnimShine: @ 0x08063480
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080634B8  @ gUnknown_085D6EF4
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimShine

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08063588:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80634BC

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8063590

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
	bl Proc_Break
_08063642:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08063648: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80635E8

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
	bl Proc_Start
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
	ldr r0, _080636C0  @ gEkrDistanceType
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
_080636C0: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_806364C

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
	ldr r0, _08063720  @ gEkrDistanceType
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
_08063720: .4byte gEkrDistanceType
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
	bl Proc_Break
_0806375E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063768: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80636D8

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_806376C

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
	bl Proc_Break
_080637EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080637F4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80637B0

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80637F8

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
	bl Proc_Break
_080638E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080638E8: .4byte gUnknown_085D6FA4
_080638EC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8063840

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80638F0

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
	bl Proc_Break
_0806396C:
	pop {r0}
	bx r0
	.align 2, 0
_08063970: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8063948

	THUMB_FUNC_START StartSpellAnimLuna
StartSpellAnimLuna: @ 0x08063974
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080639AC  @ gUnknown_085D6FCC
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimLuna

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08063B62:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80639B0

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8063B6C

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
	bl Proc_Break
_08063C14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08063C1C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8063BC8

	THUMB_FUNC_START sub_8063C20
sub_8063C20: @ 0x08063C20
	push {lr}
	ldr r0, _08063C3C  @ gUnknown_085D7000
	movs r1, #3
	bl Proc_Start
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	bl sub_8063CFC
	pop {r0}
	bx r0
	.align 2, 0
_08063C3C: .4byte gUnknown_085D7000

	THUMB_FUNC_END sub_8063C20

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

	THUMB_FUNC_END sub_8063C40

	THUMB_FUNC_START sub_8063CFC
sub_8063CFC: @ 0x08063CFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08063D18  @ gUnknown_085D7018
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8063CFC

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
	bl Interpolate
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
	bl Proc_End
	adds r0, r4, #0
	bl Proc_Break
_08063D5A:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8063D1C

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
	bl Proc_Start
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
	ldr r4, _08063DDC  @ gEkrTsaBuffer
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
_08063DDC: .4byte gEkrTsaBuffer
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
	ldr r0, _08063E28  @ gEkrDistanceType
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
_08063E28: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8063D64

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

	THUMB_FUNC_END sub_8063E58

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
	bl Proc_Break
_08063E98:
	pop {r0}
	bx r0
	.align 2, 0
_08063E9C: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_8063E74

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8063EA0

	THUMB_FUNC_START sub_8063EE8
sub_8063EE8: @ 0x08063EE8
	ldr r1, _08063EF4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08063EF4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8063EE8

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
	bl Proc_Break
_08063F34:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8063EF8

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
	bl Proc_Start
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
	ldr r0, _08063FAC  @ gEkrDistanceType
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
_08063FAC: .4byte gEkrDistanceType
_08063FB0:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_08063FBA:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8063F3C

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
	bl Proc_Break
_0806401A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064020: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8063FC0

	THUMB_FUNC_START sub_8064024
sub_8064024: @ 0x08064024
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0806402A:
	ldr r0, _08064054  @ gUnknown_085D71B0
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8064024

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
	bl Proc_Break
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080640C0: .4byte gUnknown_0201774C
_080640C4: .4byte 0x00002AAA
_080640C8: .4byte gUnknown_0872DFEC
_080640CC: .4byte 0x0000F3FF

	THUMB_FUNC_END sub_8064060

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
	bl Interpolate
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
	bl Proc_Break
_0806415C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08064164: .4byte gSinLookup
_08064168: .4byte gUnknown_0872E24C

	THUMB_FUNC_END sub_80640D0

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
	bl Proc_Break
_080641E0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080641E8: .4byte gSinLookup
_080641EC: .4byte gUnknown_0872E024

	THUMB_FUNC_END sub_806416C

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
	bl Interpolate
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
	bl AnimDelete
	adds r0, r5, #0
	bl Proc_Break
_0806427C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08064284: .4byte gSinLookup
_08064288: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80641F0

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_806428C

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
	bl Interpolate
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
	bl Proc_Break
_080642FA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064304: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80642BC

	THUMB_FUNC_START sub_8064308
sub_8064308: @ 0x08064308
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08064340  @ gUnknown_085D71F8
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8064308

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
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
	bl Proc_Break
_080644D8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8064344

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
	bl Proc_Start
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
	ldr r1, _08064544  @ gEkrTsaBuffer
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
_08064544: .4byte gEkrTsaBuffer
_08064548: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80644E0

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

	THUMB_FUNC_END sub_806454C

	THUMB_FUNC_START sub_8064568
sub_8064568: @ 0x08064568
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08064598
	ldr r0, _08064590  @ gEkrTsaBuffer
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
_08064590: .4byte gEkrTsaBuffer
_08064594: .4byte gBG1TilemapBuffer
_08064598:
	ldr r0, _080645DC  @ gEkrTsaBuffer
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
_080645DC: .4byte gEkrTsaBuffer
_080645E0: .4byte gBG1TilemapBuffer
_080645E4:
	ldr r0, _080645F8  @ 0x0000FF80
_080645E6:
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	bl Proc_Break
_080645EE:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080645F8: .4byte 0x0000FF80

	THUMB_FUNC_END sub_8064568

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
	bl Interpolate
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
	bl Proc_Break
_0806463E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064648: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80645FC

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
	bl Proc_Break
_08064668:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806464C

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_806466C

	THUMB_FUNC_START sub_80646B0
sub_80646B0: @ 0x080646B0
	ldr r1, _080646BC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_080646BC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80646B0

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
	bl Proc_Break
_080646F4:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80646C0

	THUMB_FUNC_START sub_80646FC
sub_80646FC: @ 0x080646FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806471C  @ gUnknown_085D7268
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_80646FC

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

	THUMB_FUNC_END sub_8064720

	THUMB_FUNC_START sub_80647D0
sub_80647D0: @ 0x080647D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080647EC  @ gUnknown_085D7280
	movs r1, #3
	bl Proc_Start
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r4, [r0, #0x2e]
	str r5, [r0, #0x5c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080647EC: .4byte gUnknown_085D7280

	THUMB_FUNC_END sub_80647D0

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
	bl Interpolate
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
	bl Proc_End
	adds r0, r4, #0
	bl Proc_Break
_0806482E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80647F0

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
	bl Proc_Start
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
	ldr r0, _08064888  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08064894
	ldr r0, _0806488C  @ gUnknown_0872FA84
	ldr r1, _08064890  @ gEkrTsaBuffer
	bl LZ77UnCompWram
	b _0806489C
	.align 2, 0
_0806487C: .4byte gUnknown_0201774C
_08064880: .4byte gUnknown_085D7398
_08064884: .4byte gUnknown_0872E998
_08064888: .4byte gEkrDistanceType
_0806488C: .4byte gUnknown_0872FA84
_08064890: .4byte gEkrTsaBuffer
_08064894:
	ldr r0, _080648BC  @ gUnknown_0872FEB8
	ldr r1, _080648C0  @ gEkrTsaBuffer
	bl LZ77UnCompWram
_0806489C:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080648C8
	ldr r0, _080648C0  @ gEkrTsaBuffer
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
_080648C0: .4byte gEkrTsaBuffer
_080648C4: .4byte gBG1TilemapBuffer
_080648C8:
	ldr r0, _08064910  @ gEkrTsaBuffer
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
_08064910: .4byte gEkrTsaBuffer
_08064914: .4byte gBG1TilemapBuffer
_08064918: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_8064838

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

	THUMB_FUNC_END sub_806491C

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
	bl Proc_Break
_08064954:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8064938

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8064958

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
	bl Proc_Break
_080649D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080649E0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806499C

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
	bl Proc_Start
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
	ldr r0, _08064A34  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08064A40
	ldr r0, _08064A38  @ gUnknown_087270B4
	ldr r1, _08064A3C  @ gEkrTsaBuffer
	bl LZ77UnCompWram
	b _08064A48
	.align 2, 0
_08064A28: .4byte gUnknown_0201774C
_08064A2C: .4byte gUnknown_085D73D8
_08064A30: .4byte gUnknown_08725DCC
_08064A34: .4byte gEkrDistanceType
_08064A38: .4byte gUnknown_087270B4
_08064A3C: .4byte gEkrTsaBuffer
_08064A40:
	ldr r0, _08064A68  @ gUnknown_08727510
	ldr r1, _08064A6C  @ gEkrTsaBuffer
	bl LZ77UnCompWram
_08064A48:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _08064A74
	ldr r0, _08064A6C  @ gEkrTsaBuffer
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
_08064A6C: .4byte gEkrTsaBuffer
_08064A70: .4byte gBG1TilemapBuffer
_08064A74:
	ldr r0, _08064ABC  @ gEkrTsaBuffer
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
_08064ABC: .4byte gEkrTsaBuffer
_08064AC0: .4byte gBG1TilemapBuffer
_08064AC4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_80649E4

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

	THUMB_FUNC_END sub_8064AC8

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
	bl Proc_Break
_08064B00:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8064AE4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8064B04

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
	bl Proc_Break
_08064B84:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064B8C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8064B48

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8064B90

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
	bl Proc_Break
_08064C20:
	pop {r0}
	bx r0
	.align 2, 0
_08064C24: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8064BFC

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8064C28

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
	bl Proc_End
_08064CF2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08064CF8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8064C80

	THUMB_FUNC_START nullsub_51
nullsub_51: @ 0x08064CFC
	bx lr

	THUMB_FUNC_END nullsub_51

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
	bl Proc_Start
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
	ldr r4, _08064D9C  @ gEkrTsaBuffer
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
_08064D9C: .4byte gEkrTsaBuffer
_08064DA0: .4byte gBG1TilemapBuffer
_08064DA4: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_8064D00

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

	THUMB_FUNC_END sub_8064DA8

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
	bl Proc_Break
_08064DE0:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8064DC4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8064DE4

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
	bl Proc_Break
_08064E68:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08064E70: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8064E2C

	THUMB_FUNC_START StartSpellAnimAura
StartSpellAnimAura: @ 0x08064E74
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08064EAC  @ gUnknown_085D7490
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimAura

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08064FFE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8064EB0

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
	bl Proc_Start
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
	ldr r0, _08065084  @ gEkrDistanceType
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
_08065084: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8065008

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
	bl Proc_Start
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
	ldr r0, _08065118  @ gEkrDistanceType
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
_08065118: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_806509C

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
	bl Proc_Start
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
	ldr r0, _080651AC  @ gEkrDistanceType
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
_080651AC: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8065130

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
	bl Proc_Break
_08065210:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08065218: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80651C4

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
	bl Proc_Start
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
	ldr r0, _0806526C  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08065278
	ldr r0, _08065270  @ gUnknown_087270B4
	ldr r1, _08065274  @ gEkrTsaBuffer
	bl LZ77UnCompWram
	b _08065280
	.align 2, 0
_08065260: .4byte gUnknown_0201774C
_08065264: .4byte gUnknown_085D7530
_08065268: .4byte gUnknown_08725DCC
_0806526C: .4byte gEkrDistanceType
_08065270: .4byte gUnknown_087270B4
_08065274: .4byte gEkrTsaBuffer
_08065278:
	ldr r0, _080652A0  @ gUnknown_08727510
	ldr r1, _080652A4  @ gEkrTsaBuffer
	bl LZ77UnCompWram
_08065280:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _080652AC
	ldr r0, _080652A4  @ gEkrTsaBuffer
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
_080652A4: .4byte gEkrTsaBuffer
_080652A8: .4byte gBG1TilemapBuffer
_080652AC:
	ldr r0, _080652F4  @ gEkrTsaBuffer
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
_080652F4: .4byte gEkrTsaBuffer
_080652F8: .4byte gBG1TilemapBuffer
_080652FC: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_806521C

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

	THUMB_FUNC_END sub_8065300

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
	bl Proc_Break
_08065338:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806531C

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_806533C

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
	bl Proc_Break
_080653C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080653C8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8065384

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80653CC

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
	bl Proc_Break
_08065486:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806548C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806542C

	THUMB_FUNC_START sub_8065490
sub_8065490: @ 0x08065490
	bx lr

	THUMB_FUNC_END sub_8065490

	THUMB_FUNC_START nullsub_53
nullsub_53: @ 0x08065494
	bx lr

	THUMB_FUNC_END nullsub_53

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8065498

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
	ldr r0, _08065570  @ gEkrDistanceType
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
_08065570: .4byte gEkrDistanceType
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
	bl Proc_Break
_080655B2:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080655C0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80654F8

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80655C4

	THUMB_FUNC_START sub_8065624
sub_8065624: @ 0x08065624
	ldr r1, _08065630  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08065630: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8065624

	THUMB_FUNC_START sub_8065634
sub_8065634: @ 0x08065634
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _0806566C  @ gUnknown_085D7670
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8065634

	THUMB_FUNC_START sub_8065670
sub_8065670: @ 0x08065670
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _080656A8  @ gUnknown_085D7670
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8065670

	THUMB_FUNC_START sub_80656AC
sub_80656AC: @ 0x080656AC
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _080656E4  @ gUnknown_085D7670
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_80656AC

	THUMB_FUNC_START sub_80656E8
sub_80656E8: @ 0x080656E8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _08065720  @ gUnknown_085D7670
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_80656E8

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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_080657CC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8065724

	THUMB_FUNC_START StartSpellAnimIvaldi
StartSpellAnimIvaldi: @ 0x080657D4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806580C  @ gUnknown_085D7688
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimIvaldi

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
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
	bl Proc_Break
_080659A4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END Loop6C_efxIvaldi

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
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellBG_IvaldiBG1

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
	bl Proc_Break
_08065A74:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065A7C: .4byte gUnknown_0201774C

	THUMB_FUNC_END Loop6C_efxIvaldiBG1

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
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellBG_IvaldiBG2

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
	bl Proc_Break
_08065B48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065B50: .4byte gUnknown_0201774C

	THUMB_FUNC_END Loop6C_efxIvaldiBG2

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
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellBG_IvaldiBG3

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
	bl Proc_Break
_08065C2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08065C34: .4byte gUnknown_0201774C

	THUMB_FUNC_END Loop6C_efxIvaldiBG3

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
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellBG_IvaldiBG4

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
	ldr r0, _08065CF8  @ gEkrDistanceType
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _08065D00
	lsls r0, r4, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _08065CFC  @ gEkrTsaBuffer
	bl LZ77UnCompWram
	b _08065D0C
	.align 2, 0
_08065CF8: .4byte gEkrDistanceType
_08065CFC: .4byte gEkrTsaBuffer
_08065D00:
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08065D30  @ gEkrTsaBuffer
	bl LZ77UnCompWram
_08065D0C:
	ldr r4, _08065D30  @ gEkrTsaBuffer
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
_08065D30: .4byte gEkrTsaBuffer
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
	bl Proc_Break
_08065D76:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08065D80: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8065CA0

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

	THUMB_FUNC_END PrepareSomeIvaldiParticleGraphics

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
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellOBJ_IvaldiFall

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
	bl Proc_Break
_08065F04:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08065F0C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8065DF8

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
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellOBJ_IvaldiSideWash

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
	bl Proc_Break
_08066052:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806605C: .4byte gUnknown_0201774C

	THUMB_FUNC_END Loop6C_efxIvaldiOBJSideWash

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066060

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
	bl Proc_Break
_0806624C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08066254: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80660B4

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066258

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08066386:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806638C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806635C

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066390

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08066466:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806646C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8066434

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066470

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
	bl Interpolate
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
	bl Proc_Break
_080664FE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066508: .4byte gPaletteBuffer
_0806650C: .4byte gUnknown_020165C8
_08066510: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80664A8

	THUMB_FUNC_START sub_8066514
sub_8066514: @ 0x08066514
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806654C  @ gUnknown_085D785C
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066514

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
	bl EkrSoundSomeBark
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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_080666C4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080666CC: .4byte 0x000001C9

	THUMB_FUNC_END sub_8066550

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
	bl Proc_Start
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	ldr r0, _08066714  @ gUnknown_080DE65C
	str r0, [r1, #0x48]
	ldr r0, _08066718  @ gEkrDistanceType
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
_08066718: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_80666D0

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
	bl Proc_Break
_080667D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080667DC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8066758

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80667E0

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
	ldr r0, _08066868  @ gEkrDistanceType
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
_08066868: .4byte gEkrDistanceType
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
	bl Proc_Break
_080668D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080668D8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806683C

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

	THUMB_FUNC_END sub_80668DC

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
	bl Proc_Start
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	ldr r0, _08066958  @ gUnknown_080DE710
	str r0, [r1, #0x48]
	ldr r0, _0806695C  @ gEkrDistanceType
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
_0806695C: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8066914

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
	bl Proc_Break
_08066A02:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08066A08: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806699C

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
	bl Proc_Start
	adds r1, r0, #0
	str r4, [r1, #0x5c]
	movs r0, #0
	strh r0, [r1, #0x2c]
	str r0, [r1, #0x44]
	ldr r0, _08066A50  @ gUnknown_080DE748
	str r0, [r1, #0x48]
	ldr r0, _08066A54  @ gEkrDistanceType
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
_08066A54: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8066A0C

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
	bl Proc_Break
_08066B0A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066B10: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8066A94

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066B14

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
	bl Interpolate
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
	bl Proc_Break
_08066BAA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08066BB4: .4byte gPaletteBuffer
_08066BB8: .4byte gUnknown_020165C8

	THUMB_FUNC_END sub_8066B40

	THUMB_FUNC_START sub_8066BBC
sub_8066BBC: @ 0x08066BBC
	push {lr}
	ldr r2, _08066BD0  @ gUnknown_0201774C
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	bl Proc_Break
	pop {r0}
	bx r0
	.align 2, 0
_08066BD0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8066BBC

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066BD4

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
	bl Proc_Break
_08066C66:
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066C70: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8066C1C

	THUMB_FUNC_START sub_8066C74
sub_8066C74: @ 0x08066C74
	push {lr}
	adds r2, r0, #0
	ldr r0, _08066C94  @ gEkrDistanceType
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
_08066C94: .4byte gEkrDistanceType

	THUMB_FUNC_END sub_8066C74

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

	THUMB_FUNC_END sub_8066C98

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066CB8

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08066DA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066DAC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8066D7C

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066DB0

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08066E9E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066EA4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8066E74

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

	THUMB_FUNC_END sub_8066EA8

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066EC8

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08066FBA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08066FC0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8066F90

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8066FC4

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_080670D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080670D8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80670A8

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80670DC

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_080671EA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080671F0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80671C0

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80671F4

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
	bl Proc_Break
_080673F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080673FC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8067244

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8067400

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_080674CA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080674D0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80674A0

	THUMB_FUNC_START StartSpellAnimStone
StartSpellAnimStone: @ 0x080674D4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806750C  @ gUnknown_085D7E20
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimStone

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_080675CE:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8067510

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
	bl Proc_Start
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
	ldr r0, _0806764C  @ gEkrDistanceType
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
_0806764C: .4byte gEkrDistanceType
_08067650:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0806765A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80675D4

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
	bl Proc_Break
_080676DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080676E0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8067660

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
	bl Proc_Start
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
	bl AnimSort
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

	THUMB_FUNC_END sub_80676E4

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0806778E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067794: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8067764

	THUMB_FUNC_START StartSpellAnimEvilEye
StartSpellAnimEvilEye: @ 0x08067798
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _080677D0  @ gUnknown_085D7F00
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimEvilEye

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08067886:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80677D4

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
	bl Proc_Start
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
	ldr r0, _08067900  @ gEkrDistanceType
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
_08067900: .4byte gEkrDistanceType
_08067904:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_0806790E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806788C

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
	bl Proc_End
_0806797A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067980: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8067914

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
	bl Proc_Start
	adds r5, r0, #0
	adds r0, r4, #0
	bl GetCoreAIStruct
	str r0, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _080679C4  @ gUnknown_080DEA4A
	str r0, [r5, #0x48]
	ldr r0, _080679C8  @ gEkrDistanceType
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
_080679C8: .4byte gEkrDistanceType
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
	ldr r0, _08067A1C  @ gEkrDistanceType
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
_08067A1C: .4byte gEkrDistanceType
_08067A20:
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
_08067A2A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8067984

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
	bl Proc_End
_08067A96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067A9C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8067A30

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
	bl Proc_Start
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
	bl AnimSort
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

	THUMB_FUNC_END sub_8067AA0

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08067B72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08067B78: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8067B48

	THUMB_FUNC_START StartSpellAnimNaglfar
StartSpellAnimNaglfar: @ 0x08067B7C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08067BB4  @ gUnknown_085D80B0
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimNaglfar

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08067DBC:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END Loop6C_efxNaglfar

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8067DC4

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
	bl Proc_End
_08067E8E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08067E94: .4byte gUnknown_0201774C

	THUMB_FUNC_END Loop6C_efxNaglfarBG

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8067E98

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
	bl Proc_End
_08067F5A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08067F60: .4byte gUnknown_0201774C

	THUMB_FUNC_END Loop6C_efxNaglfarBG2

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8067F64

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
	bl Proc_End
_0806801E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068024: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8067FB8

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8068028

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
	bl Proc_End
_080680E2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080680E8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806807C

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80680EC

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08068232:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068238: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8068208

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_806823C

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0806830A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068310: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80682E0

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8068314

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
	bl Proc_Break
_0806860A:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08068610: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8068348

	THUMB_FUNC_START sub_8068614
sub_8068614: @ 0x08068614
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _08068634  @ gUnknown_085D8280
	movs r1, #0
	bl Proc_Start
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

	THUMB_FUNC_END sub_8068614

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
	bl EkrMaybePalFadeWithVal
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	bl DisablePaletteSync
	movs r0, #0
	strh r0, [r6, #0x2c]
	adds r0, r6, #0
	bl Proc_Break
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08068678: .4byte gPaletteBuffer
_0806867C: .4byte gUnknown_020165C8

	THUMB_FUNC_END sub_8068638

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
	bl Interpolate
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
	bl EkrMaybePalFadeWithVal
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xa
	adds r3, r5, #0
	bl EkrMaybePalFadeWithVal
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #1
	adds r3, r5, #0
	bl EkrMaybePalFadeWithVal
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #1
	adds r3, r5, #0
	bl EkrMaybePalFadeWithVal
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
	bl Proc_Break
_08068724:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806872C: .4byte gPaletteBuffer
_08068730: .4byte gUnknown_020165C8
_08068734: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_8068680

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
	bl Interpolate
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
	bl EkrMaybePalFadeWithVal
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xa
	movs r3, #0x10
	bl EkrMaybePalFadeWithVal
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #1
	adds r3, r5, #0
	bl EkrMaybePalFadeWithVal
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #1
	adds r3, r5, #0
	bl EkrMaybePalFadeWithVal
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
	bl Proc_Break
_080687C0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080687C8: .4byte gPaletteBuffer
_080687CC: .4byte gUnknown_020165C8

	THUMB_FUNC_END sub_8068738

	THUMB_FUNC_START sub_80687D0
sub_80687D0: @ 0x080687D0
	push {r4, lr}
	adds r4, r0, #0
	bl EnablePaletteSync
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80687D0

	THUMB_FUNC_START sub_80687E4
sub_80687E4: @ 0x080687E4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _08068818  @ gUnknown_085D82B0
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_80687E4

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_080688B6:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806881C

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
	bl Proc_Start
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
	ldr r0, _0806892C  @ gEkrDistanceType
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
_0806892C: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_80688C0

	THUMB_FUNC_START sub_8068970
sub_8068970: @ 0x08068970
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08068994  @ gEkrDistanceType
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
_08068994: .4byte gEkrDistanceType
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
	bl AnimDelete
	ldr r1, _080689D0  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_080689C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080689D0: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8068970

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_80689D4

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
	bl Proc_Break
_08068A54:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068A5C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8068A28

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_8068A60

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
	bl Proc_Break
_08068AF2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068AF8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8068A9C

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
	ldr r5, _08068B48  @ gEkrDistanceType
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
_08068B48: .4byte gEkrDistanceType
_08068B4C:
	ldr r2, _08068B78  @ gBG1TilemapBuffer
	adds r4, r2, #0
	adds r4, #0x3a
	ldr r5, _08068B7C  @ gEkrDistanceType
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
_08068B7C: .4byte gEkrDistanceType

	THUMB_FUNC_END sub_8068AFC

	THUMB_FUNC_START sub_8068B80
sub_8068B80: @ 0x08068B80
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl ClearBG1Setup
	ldr r0, _08068BB4  @ gUnknown_085D8318
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8068B80

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
	bl NewEfxFarAttackWithDistance
	b _08068D14
_08068BE4:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #2
	cmp r1, r0
	bne _08068C08
	bl GetBanimDragonStatusType
	cmp r0, #1
	bne _08068BF8
	b _08068D14
_08068BF8:
	bl GetBanimDragonStatusType
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
	bl GetBanimDragonStatusType
	cmp r0, #1
	beq _08068C68
	bl GetBanimDragonStatusType
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
	bl Proc_Break
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08068D14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08068D1C: .4byte 0x00000161

	THUMB_FUNC_END sub_8068BB8

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
	bl Interpolate
	adds r3, r0, #0
	ldr r0, _08068D70  @ gPaletteBuffer
	movs r1, #6
	movs r2, #0xa
	bl EkrMaybePalFadeWithVal
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
	bl Proc_Break
_08068D68:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08068D70: .4byte gPaletteBuffer
_08068D74: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8068D20

	THUMB_FUNC_START sub_8068D78
sub_8068D78: @ 0x08068D78
	push {lr}
	ldr r1, _08068D94  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _08068D98  @ gUnknown_085D8330
	movs r1, #3
	bl Proc_Start
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r0}
	bx r0
	.align 2, 0
_08068D94: .4byte gUnknown_0201774C
_08068D98: .4byte gUnknown_085D8330

	THUMB_FUNC_END sub_8068D78

	THUMB_FUNC_START sub_8068D9C
sub_8068D9C: @ 0x08068D9C
	push {lr}
	ldr r1, _08068DB0  @ gEkrPairSomeTile
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08068DB4
	movs r0, #4
	bl EkrUpdateSomePalMaybe
	b _08068DCE
	.align 2, 0
_08068DB0: .4byte gEkrPairSomeTile
_08068DB4:
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #1
	bl sub_8075AB4
	ldr r0, _08068DD4  @ gPaletteBuffer
	movs r1, #6
	movs r2, #0xa
	movs r3, #0
	bl EkrMaybePalFadeWithVal
	bl EnablePaletteSync
_08068DCE:
	pop {r0}
	bx r0
	.align 2, 0
_08068DD4: .4byte gPaletteBuffer

	THUMB_FUNC_END sub_8068D9C

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

	THUMB_FUNC_END sub_8068DD8

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

	THUMB_FUNC_END sub_8068E14

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

	THUMB_FUNC_END sub_8068E50

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

	THUMB_FUNC_END sub_8068E8C

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

	THUMB_FUNC_END sub_8068EC8

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

	THUMB_FUNC_END sub_8068F04

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

	THUMB_FUNC_END sub_8068F40

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

	THUMB_FUNC_END sub_8068F7C

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

	THUMB_FUNC_END sub_8068FB8

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

	THUMB_FUNC_END sub_8068FF4

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

	THUMB_FUNC_END sub_8069030

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

	THUMB_FUNC_END sub_806906C

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

	THUMB_FUNC_END sub_80690A8

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

	THUMB_FUNC_END sub_80690E4

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
	bl Proc_Break
_080692A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080692AC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8069100

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
	bl Proc_Start
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
	ldr r0, _08069328  @ gEkrDistanceType
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
_08069328: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_80692B0

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
	bl Proc_Break
_080693C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806935C

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

	THUMB_FUNC_END sub_80693CC

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
	bl Proc_Break
_0806947E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08069484: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8069400

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
	bl Proc_Start
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
	ldr r0, _080694E8  @ gEkrDistanceType
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
_080694E8: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8069488

	THUMB_FUNC_START sub_8069528
sub_8069528: @ 0x08069528
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	bx lr

	THUMB_FUNC_END sub_8069528

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
	bl Interpolate
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
	bl Proc_Break
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

	THUMB_FUNC_END sub_8069530

	THUMB_FUNC_START sub_80696F0
sub_80696F0: @ 0x080696F0
	push {lr}
	ldr r0, _08069700  @ gUnknown_085D84B4
	movs r1, #0
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_08069700: .4byte gUnknown_085D84B4

	THUMB_FUNC_END sub_80696F0

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

	THUMB_FUNC_END sub_8069704

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

	THUMB_FUNC_END sub_806977C

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0806986E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069874: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_80697F4

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
	bl Proc_Start
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
	ldr r0, _08069950  @ gEkrDistanceType
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
_08069950: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8069878

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
	bl Proc_Break
_08069ABC:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_80699A8

	THUMB_FUNC_START sub_8069AC4
sub_8069AC4: @ 0x08069AC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08069AF0  @ gUnknown_085D871C
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8069AC4

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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_08069B5E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08069B64: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_8069AFC

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
	bl Proc_Start
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
	ldr r0, _08069BF8  @ gEkrDistanceType
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
_08069BF8: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_8069B68

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
	bl Proc_Start
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
	ldr r0, _08069CA8  @ gEkrDistanceType
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
_08069CA8: .4byte gEkrDistanceType
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
	bl AnimSort
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8069C18

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
	bl Proc_Break
_08069E7E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8069CDC

	THUMB_FUNC_START sub_8069E88
sub_8069E88: @ 0x08069E88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08069EB8  @ gUnknown_085D874C
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END sub_8069E88

	THUMB_FUNC_START StartSpellAnimCrimsonEye
StartSpellAnimCrimsonEye: @ 0x08069EC4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _08069EFC  @ gUnknown_085D8764
	movs r1, #3
	bl Proc_Start
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

	THUMB_FUNC_END StartSpellAnimCrimsonEye

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
	bl NewEfxFarAttackWithDistance
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
	bl EkrSoundSomeBark
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
	bl Proc_Break
_08069FFE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806A004: .4byte 0x00000137

	THUMB_FUNC_END sub_8069F00

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
	bl Proc_Break
_0806A05E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806A064: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806A008

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
	bl Proc_Start
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

	THUMB_FUNC_END sub_806A068

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
	bl Interpolate
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
	bl Interpolate
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
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0806A12C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A134: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806A0CC

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
	bl Proc_Start
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
	bl Interpolate
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
	bl Interpolate
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

	THUMB_FUNC_END sub_806A138

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
	bl Proc_Break
_0806A3C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A3C8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806A1EC

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
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A3EC: .4byte gUnknown_0201774C
_0806A3F0: .4byte gUnknown_085D885C

	THUMB_FUNC_END sub_806A3CC

	THUMB_FUNC_START sub_806A3F4
sub_806A3F4: @ 0x0806A3F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806A438  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806A43C  @ ProcScr_efxGorgonBGFinish
	movs r1, #3
	bl Proc_Start
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
	ldr r0, _0806A44C  @ gEkrDistanceType
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
_0806A43C: .4byte ProcScr_efxGorgonBGFinish
_0806A440: .4byte gUnknown_080DF0E0
_0806A444: .4byte gUnknown_085D8C7C
_0806A448: .4byte gUnknown_085D8CA0
_0806A44C: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_806A3F4

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
	bl Proc_Break
_0806A4C0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806A4C8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806A47C

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
	bl Proc_Start
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
	ldr r0, _0806A538  @ gEkrDistanceType
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
_0806A538: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_806A4CC

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

	THUMB_FUNC_END sub_806A560

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

	THUMB_FUNC_END sub_806A578

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
	bl Interpolate
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

	THUMB_FUNC_END sub_806A590

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

	THUMB_FUNC_END sub_806A634

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

	THUMB_FUNC_END sub_806A64C

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
	bl Interpolate
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

	THUMB_FUNC_END sub_806A664

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
	bl Interpolate
	adds r5, r0, #0
	subs r0, r6, r5
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_806A6C4

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
	bl Interpolate
	adds r5, r0, #0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0xc0
	lsls r2, r2, #1
	str r4, [sp]
	movs r0, #0
	adds r3, r7, #0
	bl Interpolate
	adds r1, r0, #0
	movs r0, #0x2d
	str r0, [sp]
	movs r0, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl Interpolate
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

	THUMB_FUNC_END sub_806A6FC

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
	bl Interpolate
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
	bl Interpolate
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
	bl Interpolate
	adds r1, r0, #0
	ldr r0, [sp, #4]
	adds r2, r5, #0
	bl sub_806A590
	movs r1, #1
	add sl, r1
	mov r0, sl
	cmp r0, #4
	ble _0806A7D6
	bl AnimSort
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
	bl Proc_Break
_0806A8D6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806A7C4

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
	bl AnimSort
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
	bl Proc_Break
_0806A9B8:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806A8E8

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
	bl Interpolate
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
	bl AnimSort
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
	bl Proc_Break
_0806AA92:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806A9C4

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
	bl Interpolate
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
	bl Interpolate
	ldrh r1, [r5, #0x3a]
	adds r1, r1, r0
	strh r1, [r7, #4]
	movs r0, #0x2c
	ldrsh r3, [r5, r0]
	str r4, [sp]
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl Interpolate
	adds r1, r0, #0
	mov r0, r9
	adds r2, r6, #0
	bl sub_806A6FC
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #4
	ble _0806AAB0
	bl AnimSort
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
	bl AnimDelete
	ldr r0, [r5, #0x64]
	bl AnimDelete
	ldr r0, [r5, #0x68]
	bl AnimDelete
	ldr r0, [r5, #0x44]
	bl AnimDelete
	ldr r0, [r5, #0x48]
	bl AnimDelete
	adds r0, r5, #0
	bl Proc_Break
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

	THUMB_FUNC_END sub_806AAA0

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
	bl Proc_Start
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
	ldr r0, _0806AC2C  @ gEkrDistanceType
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
_0806AC2C: .4byte gEkrDistanceType
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
	mov r8, r2
	movs r0, #0x80
	add r0, r8
	mov r9, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	negs r0, r0
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x1f
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	negs r0, r0
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x1e
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	negs r0, r0
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x1d
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	negs r0, r0
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x1c
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	negs r0, r0
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #2
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x1b
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	ldr r0, _0806AEEC  @ gUnknown_086B58DC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806AEF0  @ gUnknown_086B5580
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
_0806AED0: .4byte gUnknown_086B5974
_0806AED4: .4byte 0x3E000300
_0806AED8: .4byte 0x3C000300
_0806AEDC: .4byte 0x3A000300
_0806AEE0: .4byte 0x38000300
_0806AEE4: .4byte 0x36000300
_0806AEE8: .4byte gSinLookup
_0806AEEC: .4byte gUnknown_086B58DC
_0806AEF0: .4byte gUnknown_086B5580

	THUMB_FUNC_END sub_806ABCC

	THUMB_FUNC_START sub_806AEF4
sub_806AEF4: @ 0x0806AEF4
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806AF2C  @ gUnknown_085D89A0
	movs r1, #3
	bl Proc_Start
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
_0806AF2C: .4byte gUnknown_085D89A0

	THUMB_FUNC_END sub_806AEF4

	THUMB_FUNC_START sub_806AF30
sub_806AF30: @ 0x0806AF30
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
	bne _0806AF60
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl NewEfxFarAttackWithDistance
	b _0806B07A
_0806AF60:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0xb
	cmp r1, r0
	bne _0806AF80
	adds r0, r5, #0
	bl sub_806B2C0
	ldr r0, _0806AF7C  @ 0x000003D5
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x10
	b _0806B04C
	.align 2, 0
_0806AF7C: .4byte 0x000003D5
_0806AF80:
	adds r0, r2, #0
	adds r0, #0x2b
	cmp r1, r0
	bne _0806AF90
	adds r0, r5, #0
	bl sub_806B1E8
	b _0806B07A
_0806AF90:
	adds r0, r2, #0
	adds r0, #0x97
	cmp r1, r0
	bne _0806AF9E
	bl sub_806B4E4
	b _0806B07A
_0806AF9E:
	adds r0, r2, #0
	adds r0, #0xa7
	cmp r1, r0
	bne _0806AFAE
	adds r0, r5, #0
	bl sub_806B134
	b _0806B07A
_0806AFAE:
	adds r0, r2, #0
	adds r0, #0xeb
	cmp r1, r0
	bne _0806AFD6
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
	bne _0806B07A
	adds r0, r5, #0
	bl sub_8072450
	b _0806B07A
_0806AFD6:
	adds r0, r2, #0
	adds r0, #0xec
	cmp r1, r0
	bne _0806AFF8
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806B07A
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_Break
	b _0806B07A
_0806AFF8:
	adds r0, r2, #0
	adds r0, #0xed
	cmp r1, r0
	bne _0806B014
	ldr r0, [r4, #0x5c]
	movs r1, #0x3e
	movs r2, #9
	bl StartSpellThing_MagicQuake
	ldr r0, [r4, #0x5c]
	movs r1, #0xa
	bl StartSpellBG_FLASH
	b _0806B07A
_0806B014:
	adds r0, r2, #0
	adds r0, #0xf7
	cmp r1, r0
	bne _0806B058
	ldr r0, [r4, #0x5c]
	movs r1, #0x46
	movs r2, #1
	bl sub_805B93C
	ldr r0, [r4, #0x5c]
	movs r1, #0x32
	bl sub_805B4E8
	ldr r0, [r4, #0x5c]
	bl sub_8065498
	str r6, [sp]
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0xa
	movs r3, #0x10
	bl sub_805BA1C
	ldr r0, _0806B054  @ 0x000003D6
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0xc0
_0806B04C:
	movs r3, #1
	bl EkrSoundSomeBark
	b _0806B07A
	.align 2, 0
_0806B054: .4byte 0x000003D6
_0806B058:
	movs r3, #0x88
	lsls r3, r3, #1
	adds r0, r2, r3
	cmp r1, r0
	bne _0806B068
	bl sub_8055000
	b _0806B07A
_0806B068:
	ldr r3, _0806B084  @ 0x0000012B
	adds r0, r2, r3
	cmp r1, r0
	bne _0806B07A
	bl SetSomethingSpellFxToFalse
	adds r0, r4, #0
	bl Proc_Break
_0806B07A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B084: .4byte 0x0000012B

	THUMB_FUNC_END sub_806AF30

	THUMB_FUNC_START sub_806B088
sub_806B088: @ 0x0806B088
	push {lr}
	ldr r0, _0806B0A4  @ 0x04000006
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x9f
	bhi _0806B0A0
	ldr r1, _0806B0A8  @ 0x04000016
	lsrs r0, r0, #0x11
	subs r0, r0, r2
	strh r0, [r1]
_0806B0A0:
	pop {r0}
	bx r0
	.align 2, 0
_0806B0A4: .4byte 0x04000006
_0806B0A8: .4byte 0x04000016

	THUMB_FUNC_END sub_806B088

	THUMB_FUNC_START sub_806B0AC
sub_806B0AC: @ 0x0806B0AC
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
	blt _0806B0F4
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
	bl GetCoreAIStruct
	adds r5, r5, r6
	ldr r2, [r5]
	adds r1, r2, #0
	bl sub_8055670
	b _0806B112
_0806B0F4:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _0806B112
	bl ClearBG1
	ldr r1, _0806B118  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_Break
_0806B112:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B118: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806B0AC

	THUMB_FUNC_START sub_806B11C
sub_806B11C: @ 0x0806B11C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl SetPrimaryHBlankHandler
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806B11C

	THUMB_FUNC_START sub_806B134
sub_806B134: @ 0x0806B134
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806B178  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806B17C  @ gUnknown_085D8A78
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806B180  @ gUnknown_080DEF78
	str r1, [r0, #0x48]
	ldr r1, _0806B184  @ gUnknown_085D89B8
	str r1, [r0, #0x4c]
	ldr r1, _0806B188  @ gUnknown_085D89F8
	str r1, [r0, #0x54]
	ldr r1, _0806B18C  @ gUnknown_085D8A38
	str r1, [r0, #0x58]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	ldr r0, _0806B190  @ sub_806B088
	bl SetPrimaryHBlankHandler
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806B178: .4byte gUnknown_0201774C
_0806B17C: .4byte gUnknown_085D8A78
_0806B180: .4byte gUnknown_080DEF78
_0806B184: .4byte gUnknown_085D89B8
_0806B188: .4byte gUnknown_085D89F8
_0806B18C: .4byte gUnknown_085D8A38
_0806B190: .4byte sub_806B088

	THUMB_FUNC_END sub_806B134

	THUMB_FUNC_START sub_806B194
sub_806B194: @ 0x0806B194
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x2c
	adds r1, r6, #0
	adds r1, #0x44
	ldr r2, [r6, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	blt _0806B1C2
	ldr r4, [r6, #0x4c]
	ldr r0, [r6, #0x5c]
	bl GetCoreAIStruct
	lsls r1, r5, #2
	adds r1, r1, r4
	ldr r2, [r1]
	adds r1, r2, #0
	bl sub_8055670
	b _0806B1DC
_0806B1C2:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _0806B1DC
	bl ClearBG1
	ldr r1, _0806B1E4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r6, #0
	bl Proc_Break
_0806B1DC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806B1E4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806B194

	THUMB_FUNC_START sub_806B1E8
sub_806B1E8: @ 0x0806B1E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806B234  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806B238  @ gUnknown_085D8ABC
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806B23C  @ gUnknown_080DEFD0
	str r1, [r0, #0x48]
	ldr r1, _0806B240  @ gUnknown_085D8A98
	str r1, [r0, #0x4c]
	ldr r0, _0806B244  @ gUnknown_086E7EB0
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _0806B248  @ gUnknown_086E91B8
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
_0806B234: .4byte gUnknown_0201774C
_0806B238: .4byte gUnknown_085D8ABC
_0806B23C: .4byte gUnknown_080DEFD0
_0806B240: .4byte gUnknown_085D8A98
_0806B244: .4byte gUnknown_086E7EB0
_0806B248: .4byte gUnknown_086E91B8

	THUMB_FUNC_END sub_806B1E8

	THUMB_FUNC_START sub_806B24C
sub_806B24C: @ 0x0806B24C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _0806B27C
	ldr r0, _0806B278  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
	b _0806B2B8
	.align 2, 0
_0806B278: .4byte gUnknown_0201774C
_0806B27C:
	cmp r1, #0xf
	bgt _0806B286
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	b _0806B29A
_0806B286:
	movs r2, #0x2c
	ldrsh r3, [r4, r2]
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	adds r0, r2, #0
	subs r0, #0x10
	movs r1, #0
	cmp r3, r0
	blt _0806B29A
	subs r1, r2, r3
_0806B29A:
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0806B2B8
	asrs r0, r1, #1
	ands r0, r2
	cmp r0, #0
	beq _0806B2B2
	ldr r1, [r4, #0x60]
	movs r0, #0xe0
	b _0806B2B6
_0806B2B2:
	ldr r1, [r4, #0x60]
	movs r0, #0x20
_0806B2B6:
	strh r0, [r1, #4]
_0806B2B8:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806B24C

	THUMB_FUNC_START sub_806B2C0
sub_806B2C0: @ 0x0806B2C0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0806B304  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806B308  @ gUnknown_085D8AD4
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0xbc
	strh r0, [r4, #0x2e]
	ldr r3, _0806B30C  @ gUnknown_086DA920
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r5, r0, #0
	str r5, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806B310
	movs r0, #0xc8
	b _0806B312
	.align 2, 0
_0806B304: .4byte gUnknown_0201774C
_0806B308: .4byte gUnknown_085D8AD4
_0806B30C: .4byte gUnknown_086DA920
_0806B310:
	movs r0, #0x28
_0806B312:
	strh r0, [r5, #2]
	movs r0, #0x20
	strh r0, [r5, #4]
	ldr r0, _0806B334  @ gUnknown_086DA33C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806B338  @ gUnknown_086D9C40
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B334: .4byte gUnknown_086DA33C
_0806B338: .4byte gUnknown_086D9C40

	THUMB_FUNC_END sub_806B2C0

	THUMB_FUNC_START sub_806B33C
sub_806B33C: @ 0x0806B33C
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	bx lr

	THUMB_FUNC_END sub_806B33C

	THUMB_FUNC_START sub_806B344
sub_806B344: @ 0x0806B344
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r7, _0806B370  @ gPaletteBuffer
	ldr r6, _0806B374  @ gUnknown_020165C8
	adds r0, #0x4c
	movs r2, #0
	ldrsh r1, [r0, r2]
	cmp r1, #0x14
	ble _0806B378
	adds r3, r1, #0
	subs r3, #0x14
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	b _0806B390
	.align 2, 0
_0806B370: .4byte gPaletteBuffer
_0806B374: .4byte gUnknown_020165C8
_0806B378:
	cmp r1, #0xc
	ble _0806B382
	movs r2, #0x10
	mov sl, r2
	b _0806B396
_0806B382:
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
_0806B390:
	bl Interpolate
	mov sl, r0
_0806B396:
	ldrh r0, [r7]
	strh r0, [r6]
	movs r4, #0
	ldr r2, [sp, #4]
	adds r2, #0x4c
	str r2, [sp, #8]
_0806B3A2:
	subs r0, r4, #2
	cmp r0, #0x1c
	bhi _0806B440
	lsls r0, r0, #2
	ldr r1, _0806B3B4  @ _0806B3B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806B3B4: .4byte _0806B3B8
_0806B3B8: @ jump table
	.4byte _0806B42C @ case 0
	.4byte _0806B42C @ case 1
	.4byte _0806B440 @ case 2
	.4byte _0806B440 @ case 3
	.4byte _0806B440 @ case 4
	.4byte _0806B440 @ case 5
	.4byte _0806B440 @ case 6
	.4byte _0806B440 @ case 7
	.4byte _0806B440 @ case 8
	.4byte _0806B440 @ case 9
	.4byte _0806B440 @ case 10
	.4byte _0806B440 @ case 11
	.4byte _0806B440 @ case 12
	.4byte _0806B440 @ case 13
	.4byte _0806B42C @ case 14
	.4byte _0806B440 @ case 15
	.4byte _0806B440 @ case 16
	.4byte _0806B440 @ case 17
	.4byte _0806B440 @ case 18
	.4byte _0806B42C @ case 19
	.4byte _0806B42C @ case 20
	.4byte _0806B440 @ case 21
	.4byte _0806B440 @ case 22
	.4byte _0806B440 @ case 23
	.4byte _0806B440 @ case 24
	.4byte _0806B42C @ case 25
	.4byte _0806B42C @ case 26
	.4byte _0806B42C @ case 27
	.4byte _0806B42C @ case 28
_0806B42C:
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #8
	bl CpuFastSet
	adds r7, #0x20
	adds r6, #0x20
	adds r4, #1
	mov r9, r4
	b _0806B49E
_0806B440:
	adds r7, #2
	adds r6, #2
	adds r4, #1
	mov r9, r4
	movs r0, #0x1f
	mov r8, r0
	movs r5, #0x1f
	movs r0, #0x10
	mov r1, sl
	subs r4, r0, r1
	movs r2, #0xe
	mov ip, r2
_0806B458:
	ldrh r1, [r7]
	adds r0, r5, #0
	ands r0, r1
	adds r3, r0, #0
	muls r3, r4, r3
	asrs r3, r3, #4
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	mov r2, r8
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	asrs r2, r2, #4
	lsrs r1, r1, #0x1a
	mov r0, r8
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #4
	ands r0, r5
	lsls r0, r0, #0xa
	ands r2, r5
	lsls r2, r2, #5
	orrs r0, r2
	ands r3, r5
	orrs r3, r0
	strh r3, [r6]
	adds r7, #2
	adds r6, #2
	movs r1, #1
	negs r1, r1
	add ip, r1
	mov r2, ip
	cmp r2, #0
	bge _0806B458
_0806B49E:
	mov r4, r9
	cmp r4, #0x1f
	bgt _0806B4A6
	b _0806B3A2
_0806B4A6:
	ldr r0, _0806B4E0  @ gUnknown_020165C8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	bl DisablePaletteSync
	ldr r1, [sp, #8]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x20
	bne _0806B4C8
	ldr r0, [sp, #4]
	bl Proc_Break
_0806B4C8:
	ldr r1, [sp, #8]
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B4E0: .4byte gUnknown_020165C8

	THUMB_FUNC_END sub_806B344

	THUMB_FUNC_START sub_806B4E4
sub_806B4E4: @ 0x0806B4E4
	push {lr}
	ldr r0, _0806B4F4  @ gUnknown_085D8AEC
	movs r1, #0
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_0806B4F4: .4byte gUnknown_085D8AEC

	THUMB_FUNC_END sub_806B4E4

	THUMB_FUNC_START sub_806B4F8
sub_806B4F8: @ 0x0806B4F8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl SetSomethingSpellFxToTrue
	bl NewEfxSpellCast
	bl ClearBG1Setup
	ldr r0, _0806B530  @ gUnknown_085D8B0C
	movs r1, #3
	bl Proc_Start
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
_0806B530: .4byte gUnknown_085D8B0C

	THUMB_FUNC_END sub_806B4F8

	THUMB_FUNC_START sub_806B534
sub_806B534: @ 0x0806B534
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
	bne _0806B560
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl NewEfxFarAttackWithDistance
	b _0806B646
_0806B560:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0xb
	cmp r1, r0
	bne _0806B588
	adds r0, r5, #0
	bl sub_806B680
	ldr r0, _0806B584  @ 0x000003B6
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0xc0
	movs r3, #1
	bl EkrSoundSomeBark
	b _0806B646
	.align 2, 0
_0806B584: .4byte 0x000003B6
_0806B588:
	adds r0, r2, #0
	adds r0, #0x25
	cmp r1, r0
	bne _0806B598
	adds r0, r5, #0
	bl sub_806B7A8
	b _0806B646
_0806B598:
	adds r0, r2, #0
	adds r0, #0x54
	cmp r1, r0
	bne _0806B5A6
	bl sub_806BBDC
	b _0806B646
_0806B5A6:
	adds r0, r2, #0
	adds r0, #0x60
	cmp r1, r0
	bne _0806B5B6
	adds r0, r5, #0
	bl sub_80655C4
	b _0806B646
_0806B5B6:
	adds r0, r2, #0
	adds r0, #0x6f
	cmp r1, r0
	bne _0806B5D0
	ldr r0, [r4, #0x5c]
	movs r1, #0xc
	movs r2, #4
	bl StartSpellThing_MagicQuake
	adds r0, r5, #0
	bl sub_806B89C
	b _0806B646
_0806B5D0:
	adds r0, r2, #0
	adds r0, #0x70
	cmp r1, r0
	bne _0806B5E0
	adds r0, r5, #0
	bl sub_806BEEC
	b _0806B646
_0806B5E0:
	adds r0, r2, #0
	adds r0, #0x7a
	cmp r1, r0
	bne _0806B5EE
	bl sub_806C464
	b _0806B646
_0806B5EE:
	adds r0, r2, #0
	adds r0, #0x7b
	cmp r1, r0
	bne _0806B608
	adds r0, r5, #0
	bl sub_806C0B8
	ldr r0, [r4, #0x5c]
	movs r1, #0x1a
	movs r2, #2
	bl StartSpellThing_MagicQuake
	b _0806B646
_0806B608:
	adds r0, r2, #0
	adds r0, #0x95
	cmp r1, r0
	bne _0806B630
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
	bne _0806B646
	adds r0, r5, #0
	bl sub_8072450
	b _0806B646
_0806B630:
	adds r0, r2, #0
	adds r0, #0xa9
	cmp r1, r0
	bne _0806B646
	bl SetSomethingSpellFxToFalse
	bl sub_8055000
	adds r0, r4, #0
	bl Proc_Break
_0806B646:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806B534

	THUMB_FUNC_START sub_806B64C
sub_806B64C: @ 0x0806B64C
	push {lr}
	ldr r0, [r0, #0x60]
	bl AnimDelete
	ldr r1, _0806B660  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0806B660: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806B64C

	THUMB_FUNC_START sub_806B664
sub_806B664: @ 0x0806B664
	push {lr}
	ldr r2, [r0, #0x60]
	ldr r1, _0806B67C  @ gUnknown_086EAE14
	str r1, [r2, #0x24]
	str r1, [r2, #0x20]
	movs r1, #0
	strh r1, [r2, #6]
	bl Proc_Break
	pop {r0}
	bx r0
	.align 2, 0
_0806B67C: .4byte gUnknown_086EAE14

	THUMB_FUNC_END sub_806B664

	THUMB_FUNC_START sub_806B680
sub_806B680: @ 0x0806B680
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0806B6BC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806B6C0  @ gUnknown_085D8B24
	movs r1, #3
	bl Proc_Start
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	ldr r3, _0806B6C4  @ gUnknown_086EAE24
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r5, #0x60]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806B6C8
	movs r0, #0x58
	b _0806B6CA
	.align 2, 0
_0806B6BC: .4byte gUnknown_0201774C
_0806B6C0: .4byte gUnknown_085D8B24
_0806B6C4: .4byte gUnknown_086EAE24
_0806B6C8:
	movs r0, #0x98
_0806B6CA:
	strh r0, [r4, #2]
	movs r0, #0x54
	strh r0, [r4, #4]
	ldr r0, _0806B6EC  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806B6F6
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806B6F0
	ldrh r0, [r4, #2]
	subs r0, #0x18
	b _0806B6F4
	.align 2, 0
_0806B6EC: .4byte gEkrDistanceType
_0806B6F0:
	ldrh r0, [r4, #2]
	adds r0, #0x18
_0806B6F4:
	strh r0, [r4, #2]
_0806B6F6:
	bl GetBanimDragonStatusType
	cmp r0, #1
	beq _0806B706
	bl GetBanimDragonStatusType
	cmp r0, #2
	bne _0806B712
_0806B706:
	ldrh r1, [r4, #8]
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #8]
_0806B712:
	movs r0, #0x14
	strh r0, [r4, #0xa]
	bl AnimSort
	ldr r0, _0806B734  @ gUnknown_086E9D40
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	ldr r0, _0806B738  @ gUnknown_086EA3EC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806B734: .4byte gUnknown_086E9D40
_0806B738: .4byte gUnknown_086EA3EC

	THUMB_FUNC_END sub_806B680

	THUMB_FUNC_START sub_806B73C
sub_806B73C: @ 0x0806B73C
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
	blt _0806B780
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
	ldr r2, [r5]
	adds r1, r2, #0
	bl sub_8055670
	b _0806B79E
_0806B780:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _0806B79E
	bl ClearBG1
	ldr r1, _0806B7A4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r7, #0
	bl Proc_Break
_0806B79E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B7A4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806B73C

	THUMB_FUNC_START sub_806B7A8
sub_806B7A8: @ 0x0806B7A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806B7F0  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806B7F4  @ gUnknown_085D8BD0
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806B7F8  @ gUnknown_080DF042
	str r1, [r0, #0x48]
	ldr r1, _0806B7FC  @ gUnknown_085D8B4C
	str r1, [r0, #0x4c]
	ldr r1, _0806B800  @ gUnknown_085D8B78
	str r1, [r0, #0x54]
	ldr r1, _0806B804  @ gUnknown_085D8BA4
	str r1, [r0, #0x58]
	ldr r0, _0806B808  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806B81C
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806B80C
	movs r0, #1
	movs r1, #0x18
	b _0806B810
	.align 2, 0
_0806B7F0: .4byte gUnknown_0201774C
_0806B7F4: .4byte gUnknown_085D8BD0
_0806B7F8: .4byte gUnknown_080DF042
_0806B7FC: .4byte gUnknown_085D8B4C
_0806B800: .4byte gUnknown_085D8B78
_0806B804: .4byte gUnknown_085D8BA4
_0806B808: .4byte gEkrDistanceType
_0806B80C:
	ldr r1, _0806B818  @ 0x0000FFE8
	movs r0, #1
_0806B810:
	movs r2, #0
	bl BG_SetPosition
	b _0806B826
	.align 2, 0
_0806B818: .4byte 0x0000FFE8
_0806B81C:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_0806B826:
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806B7A8

	THUMB_FUNC_START sub_806B830
sub_806B830: @ 0x0806B830
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
	blt _0806B876
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
	b _0806B890
_0806B876:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	bne _0806B890
	bl ClearBG1
	ldr r1, _0806B898  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r7, #0
	bl Proc_Break
_0806B890:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806B898: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806B830

	THUMB_FUNC_START sub_806B89C
sub_806B89C: @ 0x0806B89C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806B8E4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806B8E8  @ gUnknown_085D8C0C
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806B8EC  @ gUnknown_080DF080
	str r1, [r0, #0x48]
	ldr r1, _0806B8F0  @ gUnknown_085D8BE8
	str r1, [r0, #0x4c]
	ldr r1, _0806B8F4  @ gUnknown_085D8BF4
	str r1, [r0, #0x54]
	ldr r1, _0806B8F8  @ gUnknown_085D8C00
	str r1, [r0, #0x58]
	ldr r0, _0806B8FC  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806B90C
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806B900
	movs r0, #1
	movs r1, #0x28
	b _0806B91A
	.align 2, 0
_0806B8E4: .4byte gUnknown_0201774C
_0806B8E8: .4byte gUnknown_085D8C0C
_0806B8EC: .4byte gUnknown_080DF080
_0806B8F0: .4byte gUnknown_085D8BE8
_0806B8F4: .4byte gUnknown_085D8BF4
_0806B8F8: .4byte gUnknown_085D8C00
_0806B8FC: .4byte gEkrDistanceType
_0806B900:
	ldr r1, _0806B908  @ 0x0000FFE8
	movs r0, #1
	b _0806B91A
	.align 2, 0
_0806B908: .4byte 0x0000FFE8
_0806B90C:
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806B922
	movs r0, #1
	movs r1, #0x10
_0806B91A:
	movs r2, #0
	bl BG_SetPosition
	b _0806B92C
_0806B922:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_0806B92C:
	bl sub_80551B0
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806B89C

	THUMB_FUNC_START sub_806B938
sub_806B938: @ 0x0806B938
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	bx lr

	THUMB_FUNC_END sub_806B938

	THUMB_FUNC_START sub_806B940
sub_806B940: @ 0x0806B940
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r6, _0806B980  @ gPaletteBuffer
	ldr r5, _0806B984  @ gUnknown_020165C8
	adds r0, #0x4c
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl Interpolate
	str r0, [sp, #8]
	ldrh r0, [r6]
	strh r0, [r5]
	movs r4, #0
_0806B96E:
	subs r0, r4, #2
	cmp r0, #0x1c
	bhi _0806BA1A
	lsls r0, r0, #2
	ldr r1, _0806B988  @ _0806B98C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806B980: .4byte gPaletteBuffer
_0806B984: .4byte gUnknown_020165C8
_0806B988: .4byte _0806B98C
_0806B98C: @ jump table
	.4byte _0806BA00 @ case 0
	.4byte _0806BA00 @ case 1
	.4byte _0806BA1A @ case 2
	.4byte _0806BA1A @ case 3
	.4byte _0806BA1A @ case 4
	.4byte _0806BA1A @ case 5
	.4byte _0806BA1A @ case 6
	.4byte _0806BA1A @ case 7
	.4byte _0806BA1A @ case 8
	.4byte _0806BA1A @ case 9
	.4byte _0806BA1A @ case 10
	.4byte _0806BA1A @ case 11
	.4byte _0806BA1A @ case 12
	.4byte _0806BA1A @ case 13
	.4byte _0806BA00 @ case 14
	.4byte _0806BA1A @ case 15
	.4byte _0806BA1A @ case 16
	.4byte _0806BA1A @ case 17
	.4byte _0806BA1A @ case 18
	.4byte _0806BA00 @ case 19
	.4byte _0806BA00 @ case 20
	.4byte _0806BA1A @ case 21
	.4byte _0806BA1A @ case 22
	.4byte _0806BA1A @ case 23
	.4byte _0806BA1A @ case 24
	.4byte _0806BA00 @ case 25
	.4byte _0806BA00 @ case 26
	.4byte _0806BA00 @ case 27
	.4byte _0806BA00 @ case 28
_0806BA00:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r6, #0x20
	adds r5, #0x20
	ldr r2, [sp, #4]
	adds r2, #0x4c
	mov r8, r2
	adds r4, #1
	mov sl, r4
	b _0806BA7E
_0806BA1A:
	adds r6, #2
	adds r5, #2
	ldr r3, [sp, #4]
	adds r3, #0x4c
	mov r8, r3
	adds r4, #1
	mov sl, r4
	movs r0, #0x1f
	mov r9, r0
	movs r7, #0x1f
	movs r0, #0x10
	ldr r1, [sp, #8]
	subs r4, r0, r1
	movs r2, #0xe
	mov ip, r2
_0806BA38:
	ldrh r1, [r6]
	adds r0, r7, #0
	ands r0, r1
	adds r3, r0, #0
	muls r3, r4, r3
	asrs r3, r3, #4
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	mov r2, r9
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	asrs r2, r2, #4
	lsrs r1, r1, #0x1a
	mov r0, r9
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #4
	ands r0, r7
	lsls r0, r0, #0xa
	ands r2, r7
	lsls r2, r2, #5
	orrs r0, r2
	ands r3, r7
	orrs r3, r0
	strh r3, [r5]
	adds r6, #2
	adds r5, #2
	movs r1, #1
	negs r1, r1
	add ip, r1
	mov r2, ip
	cmp r2, #0
	bge _0806BA38
_0806BA7E:
	mov r4, sl
	cmp r4, #0x1f
	bgt _0806BA86
	b _0806B96E
_0806BA86:
	ldr r0, _0806BAB0  @ gUnknown_020165C8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	bl DisablePaletteSync
	mov r3, r8
	ldrh r1, [r3]
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0xc
	bne _0806BAB4
	movs r0, #0
	strh r0, [r3]
	ldr r0, [sp, #4]
	bl Proc_Break
	b _0806BABA
	.align 2, 0
_0806BAB0: .4byte gUnknown_020165C8
_0806BAB4:
	adds r0, r1, #1
	mov r3, r8
	strh r0, [r3]
_0806BABA:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806B940

	THUMB_FUNC_START sub_806BACC
sub_806BACC: @ 0x0806BACC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r5, _0806BAF0  @ gPaletteBuffer
	ldr r4, _0806BAF4  @ gUnknown_020165C8
	ldrh r0, [r5]
	strh r0, [r4]
	movs r6, #0
_0806BADE:
	subs r0, r6, #2
	cmp r0, #0x1c
	bhi _0806BB86
	lsls r0, r0, #2
	ldr r1, _0806BAF8  @ _0806BAFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806BAF0: .4byte gPaletteBuffer
_0806BAF4: .4byte gUnknown_020165C8
_0806BAF8: .4byte _0806BAFC
_0806BAFC: @ jump table
	.4byte _0806BB70 @ case 0
	.4byte _0806BB70 @ case 1
	.4byte _0806BB86 @ case 2
	.4byte _0806BB86 @ case 3
	.4byte _0806BB86 @ case 4
	.4byte _0806BB86 @ case 5
	.4byte _0806BB86 @ case 6
	.4byte _0806BB86 @ case 7
	.4byte _0806BB86 @ case 8
	.4byte _0806BB86 @ case 9
	.4byte _0806BB86 @ case 10
	.4byte _0806BB86 @ case 11
	.4byte _0806BB86 @ case 12
	.4byte _0806BB86 @ case 13
	.4byte _0806BB70 @ case 14
	.4byte _0806BB86 @ case 15
	.4byte _0806BB70 @ case 16
	.4byte _0806BB86 @ case 17
	.4byte _0806BB86 @ case 18
	.4byte _0806BB70 @ case 19
	.4byte _0806BB70 @ case 20
	.4byte _0806BB86 @ case 21
	.4byte _0806BB86 @ case 22
	.4byte _0806BB86 @ case 23
	.4byte _0806BB86 @ case 24
	.4byte _0806BB70 @ case 25
	.4byte _0806BB70 @ case 26
	.4byte _0806BB70 @ case 27
	.4byte _0806BB70 @ case 28
_0806BB70:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	adds r5, #0x20
	adds r4, #0x20
	adds r1, r6, #1
	mov r7, r8
	adds r7, #0x4c
	b _0806BBA0
_0806BB86:
	adds r5, #2
	adds r4, #2
	adds r1, r6, #1
	mov r7, r8
	adds r7, #0x4c
	movs r2, #0
	movs r0, #0xe
_0806BB94:
	strh r2, [r4]
	adds r5, #2
	adds r4, #2
	subs r0, #1
	cmp r0, #0
	bge _0806BB94
_0806BBA0:
	adds r6, r1, #0
	cmp r6, #0x1f
	ble _0806BADE
	ldr r0, _0806BBD8  @ gUnknown_020165C8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	bl DisablePaletteSync
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0x10
	bne _0806BBC6
	mov r0, r8
	bl Proc_Break
_0806BBC6:
	ldrh r0, [r7]
	adds r0, #1
	strh r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BBD8: .4byte gUnknown_020165C8

	THUMB_FUNC_END sub_806BACC

	THUMB_FUNC_START sub_806BBDC
sub_806BBDC: @ 0x0806BBDC
	push {lr}
	ldr r0, _0806BBEC  @ gUnknown_085D8C24
	movs r1, #0
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_0806BBEC: .4byte gUnknown_085D8C24

	THUMB_FUNC_END sub_806BBDC

	THUMB_FUNC_START sub_806BBF0
sub_806BBF0: @ 0x0806BBF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	cmp r0, #5
	bhi _0806BC50
	lsls r0, r0, #2
	ldr r1, _0806BC04  @ _0806BC08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806BC04: .4byte _0806BC08
_0806BC08: @ jump table
	.4byte _0806BC20 @ case 0
	.4byte _0806BC28 @ case 1
	.4byte _0806BC30 @ case 2
	.4byte _0806BC38 @ case 3
	.4byte _0806BC40 @ case 4
	.4byte _0806BC48 @ case 5
_0806BC20:
	ldr r1, [r4, #0x60]
	ldrh r0, [r1, #2]
	subs r0, #2
	b _0806BC4E
_0806BC28:
	ldr r1, [r4, #0x60]
	ldrh r0, [r1, #2]
	subs r0, #3
	b _0806BC4E
_0806BC30:
	ldr r1, [r4, #0x60]
	ldrh r0, [r1, #2]
	subs r0, #4
	b _0806BC4E
_0806BC38:
	ldr r1, [r4, #0x60]
	ldrh r0, [r1, #2]
	adds r0, #2
	b _0806BC4E
_0806BC40:
	ldr r1, [r4, #0x60]
	ldrh r0, [r1, #2]
	adds r0, #3
	b _0806BC4E
_0806BC48:
	ldr r1, [r4, #0x60]
	ldrh r0, [r1, #2]
	adds r0, #4
_0806BC4E:
	strh r0, [r1, #2]
_0806BC50:
	ldr r1, [r4, #0x60]
	ldrh r0, [r1, #4]
	subs r0, #6
	strh r0, [r1, #4]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _0806BC78
	ldr r0, [r4, #0x60]
	movs r2, #2
	ldrsh r1, [r0, r2]
	movs r0, #0x10
	negs r0, r0
	cmp r1, r0
	bge _0806BC8C
_0806BC78:
	ldr r0, _0806BC94  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0806BC8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806BC94: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806BBF0

	THUMB_FUNC_START sub_806BC98
sub_806BC98: @ 0x0806BC98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r4, r3, #0
	ldr r1, _0806BCE4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806BCE8  @ gUnknown_085D8C4C
	movs r1, #3
	bl Proc_Start
	adds r7, r0, #0
	str r5, [r7, #0x5c]
	movs r0, #0
	strh r0, [r7, #0x2c]
	strh r4, [r7, #0x2e]
	str r6, [r7, #0x44]
	ldr r3, _0806BCEC  @ gUnknown_086B5974
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r7, #0x60]
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806BCF0
	movs r0, #0x58
	b _0806BCF2
	.align 2, 0
_0806BCE4: .4byte gUnknown_0201774C
_0806BCE8: .4byte gUnknown_085D8C4C
_0806BCEC: .4byte gUnknown_086B5974
_0806BCF0:
	movs r0, #0x98
_0806BCF2:
	strh r0, [r4, #2]
	movs r0, #0x58
	strh r0, [r4, #4]
	ldr r0, _0806BD14  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806BD1E
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806BD18
	ldrh r0, [r4, #2]
	subs r0, #0x18
	b _0806BD1C
	.align 2, 0
_0806BD14: .4byte gEkrDistanceType
_0806BD18:
	ldrh r0, [r4, #2]
	adds r0, #0x18
_0806BD1C:
	strh r0, [r4, #2]
_0806BD1E:
	ldr r0, [r7, #0x44]
	cmp r0, #5
	bhi _0806BD70
	lsls r0, r0, #2
	ldr r1, _0806BD30  @ _0806BD34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806BD30: .4byte _0806BD34
_0806BD34: @ jump table
	.4byte _0806BD4C @ case 0
	.4byte _0806BD52 @ case 1
	.4byte _0806BD58 @ case 2
	.4byte _0806BD5E @ case 3
	.4byte _0806BD64 @ case 4
	.4byte _0806BD6A @ case 5
_0806BD4C:
	ldrh r0, [r4, #2]
	subs r0, #0xc
	b _0806BD6E
_0806BD52:
	ldrh r0, [r4, #2]
	subs r0, #0x18
	b _0806BD6E
_0806BD58:
	ldrh r0, [r4, #2]
	subs r0, #0x24
	b _0806BD6E
_0806BD5E:
	ldrh r0, [r4, #2]
	adds r0, #0xc
	b _0806BD6E
_0806BD64:
	ldrh r0, [r4, #2]
	adds r0, #0x18
	b _0806BD6E
_0806BD6A:
	ldrh r0, [r4, #2]
	adds r0, #0x24
_0806BD6E:
	strh r0, [r4, #2]
_0806BD70:
	mov r0, r8
	cmp r0, #0
	bne _0806BD80
	ldr r0, _0806BD7C  @ 0x3E000100
	b _0806BD82
	.align 2, 0
_0806BD7C: .4byte 0x3E000100
_0806BD80:
	ldr r0, _0806BD90  @ 0x3C000100
_0806BD82:
	str r0, [r4, #0x1c]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806BD90: .4byte 0x3C000100

	THUMB_FUNC_END sub_806BC98

	THUMB_FUNC_START sub_806BD94
sub_806BD94: @ 0x0806BD94
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0x1c
	bls _0806BDA4
	b _0806BEC6
_0806BDA4:
	lsls r0, r1, #2
	ldr r1, _0806BDB0  @ _0806BDB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806BDB0: .4byte _0806BDB4
_0806BDB4: @ jump table
	.4byte _0806BE28 @ case 0
	.4byte _0806BEC6 @ case 1
	.4byte _0806BEC6 @ case 2
	.4byte _0806BEC6 @ case 3
	.4byte _0806BE3C @ case 4
	.4byte _0806BEC6 @ case 5
	.4byte _0806BEC6 @ case 6
	.4byte _0806BEC6 @ case 7
	.4byte _0806BE50 @ case 8
	.4byte _0806BEC6 @ case 9
	.4byte _0806BEC6 @ case 10
	.4byte _0806BEC6 @ case 11
	.4byte _0806BE64 @ case 12
	.4byte _0806BEC6 @ case 13
	.4byte _0806BEC6 @ case 14
	.4byte _0806BEC6 @ case 15
	.4byte _0806BE78 @ case 16
	.4byte _0806BEC6 @ case 17
	.4byte _0806BEC6 @ case 18
	.4byte _0806BEC6 @ case 19
	.4byte _0806BE8C @ case 20
	.4byte _0806BEC6 @ case 21
	.4byte _0806BEC6 @ case 22
	.4byte _0806BEC6 @ case 23
	.4byte _0806BEA0 @ case 24
	.4byte _0806BEC6 @ case 25
	.4byte _0806BEC6 @ case 26
	.4byte _0806BEC6 @ case 27
	.4byte _0806BEB4 @ case 28
_0806BE28:
	ldr r0, [r4, #0x5c]
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r3, #0xc
	subs r3, r3, r1
	movs r1, #0
	movs r2, #0
	bl sub_806BC98
	b _0806BEC6
_0806BE3C:
	ldr r0, [r4, #0x5c]
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r3, #0xc
	subs r3, r3, r1
	movs r1, #1
	movs r2, #5
	bl sub_806BC98
	b _0806BEC6
_0806BE50:
	ldr r0, [r4, #0x5c]
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r3, #0xc
	subs r3, r3, r1
	movs r1, #0
	movs r2, #6
	bl sub_806BC98
	b _0806BEC6
_0806BE64:
	ldr r0, [r4, #0x5c]
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r3, #0xc
	subs r3, r3, r1
	movs r1, #1
	movs r2, #4
	bl sub_806BC98
	b _0806BEC6
_0806BE78:
	ldr r0, [r4, #0x5c]
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r3, #0xc
	subs r3, r3, r1
	movs r1, #0
	movs r2, #2
	bl sub_806BC98
	b _0806BEC6
_0806BE8C:
	ldr r0, [r4, #0x5c]
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r3, #0xc
	subs r3, r3, r1
	movs r1, #1
	movs r2, #1
	bl sub_806BC98
	b _0806BEC6
_0806BEA0:
	ldr r0, [r4, #0x5c]
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r3, #0xc
	subs r3, r3, r1
	movs r1, #0
	movs r2, #3
	bl sub_806BC98
	b _0806BEC6
_0806BEB4:
	ldr r0, [r4, #0x5c]
	movs r2, #0x2c
	ldrsh r1, [r4, r2]
	movs r3, #0xc
	subs r3, r3, r1
	movs r1, #1
	movs r2, #7
	bl sub_806BC98
_0806BEC6:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	bne _0806BEE2
	ldr r1, _0806BEE8  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0806BEE2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806BEE8: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806BD94

	THUMB_FUNC_START sub_806BEEC
sub_806BEEC: @ 0x0806BEEC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0806BF20  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806BF24  @ gUnknown_085D8C64
	movs r1, #3
	bl Proc_Start
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806BF28
	movs r0, #0x58
	b _0806BF2A
	.align 2, 0
_0806BF20: .4byte gUnknown_0201774C
_0806BF24: .4byte gUnknown_085D8C64
_0806BF28:
	movs r0, #0x98
_0806BF2A:
	strh r0, [r5, #0x32]
	movs r0, #0x48
	strh r0, [r5, #0x3a]
	ldr r0, _0806BF4C  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806BF56
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806BF50
	ldrh r0, [r5, #0x32]
	subs r0, #0x18
	b _0806BF54
	.align 2, 0
_0806BF4C: .4byte gEkrDistanceType
_0806BF50:
	ldrh r0, [r5, #0x32]
	adds r0, #0x18
_0806BF54:
	strh r0, [r5, #0x32]
_0806BF56:
	ldr r2, _0806C044  @ gSinLookup
	mov r9, r2
	movs r0, #0x80
	add r0, r9
	mov sl, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0x80
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	negs r0, r0
	lsls r0, r0, #4
	movs r1, #0x80
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #0x80
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r1, #0x80
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x1f
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	mov r2, sl
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	mov r1, r8
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	negs r0, r0
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #4
	mov r1, r8
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x1e
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl WriteOAMRotScaleData
	ldr r0, _0806C048  @ gUnknown_086B58DC
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806C04C  @ gUnknown_086B5580
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C044: .4byte gSinLookup
_0806C048: .4byte gUnknown_086B58DC
_0806C04C: .4byte gUnknown_086B5580

	THUMB_FUNC_END sub_806BEEC

	THUMB_FUNC_START sub_806C050
sub_806C050: @ 0x0806C050
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
	blt _0806C08E
	ldr r5, [r6, #0x4c]
	ldr r0, [r6, #0x54]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, [r6, #0x5c]
	bl GetCoreAIStruct
	adds r4, r4, r5
	ldr r2, [r4]
	adds r1, r2, #0
	movs r3, #1
	bl sub_8068AFC
	b _0806C0AC
_0806C08E:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0806C0AC
	bl ClearBG1
	ldr r1, _0806C0B4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r6, #0
	bl Proc_Break
_0806C0AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C0B4: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806C050

	THUMB_FUNC_START sub_806C0B8
sub_806C0B8: @ 0x0806C0B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806C0FC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806C100  @ ProcScr_efxGorgonBGFinish
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806C104  @ gUnknown_080DF0E0
	str r1, [r0, #0x48]
	ldr r1, _0806C108  @ gUnknown_085D8C7C
	str r1, [r0, #0x4c]
	ldr r1, _0806C10C  @ gUnknown_085D8CA0
	str r1, [r0, #0x54]
	ldr r0, _0806C110  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0806C124
	adds r0, r4, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806C114
	movs r0, #1
	movs r1, #0x18
	b _0806C118
	.align 2, 0
_0806C0FC: .4byte gUnknown_0201774C
_0806C100: .4byte ProcScr_efxGorgonBGFinish
_0806C104: .4byte gUnknown_080DF0E0
_0806C108: .4byte gUnknown_085D8C7C
_0806C10C: .4byte gUnknown_085D8CA0
_0806C110: .4byte gEkrDistanceType
_0806C114:
	ldr r1, _0806C120  @ 0x0000FFE8
	movs r0, #1
_0806C118:
	movs r2, #0
	bl BG_SetPosition
	b _0806C12E
	.align 2, 0
_0806C120: .4byte 0x0000FFE8
_0806C124:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
_0806C12E:
	ldr r0, _0806C144  @ gUnknown_086FDA44
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _0806C148  @ sub_806B088
	bl SetPrimaryHBlankHandler
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C144: .4byte gUnknown_086FDA44
_0806C148: .4byte sub_806B088

	THUMB_FUNC_END sub_806C0B8

	THUMB_FUNC_START sub_806C14C
sub_806C14C: @ 0x0806C14C
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	bx lr

	THUMB_FUNC_END sub_806C14C

	THUMB_FUNC_START sub_806C154
sub_806C154: @ 0x0806C154
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, _0806C1A4  @ gUnknown_020165C8
	movs r1, #0
	adds r6, r2, #0
	adds r4, r5, #0
	adds r4, #0x4c
	ldr r3, _0806C1A8  @ 0x00007FFF
	adds r0, r3, #0
_0806C166:
	adds r2, #2
	adds r3, r1, #1
	movs r1, #0xe
_0806C16C:
	strh r0, [r2]
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bge _0806C16C
	adds r1, r3, #0
	cmp r1, #0x1f
	ble _0806C166
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r6, #0
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #8
	bne _0806C1AC
	movs r0, #0
	strh r0, [r4]
	adds r0, r5, #0
	bl Proc_Break
	b _0806C1B0
	.align 2, 0
_0806C1A4: .4byte gUnknown_020165C8
_0806C1A8: .4byte 0x00007FFF
_0806C1AC:
	adds r0, r1, #1
	strh r0, [r4]
_0806C1B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806C154

	THUMB_FUNC_START sub_806C1B8
sub_806C1B8: @ 0x0806C1B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r5, _0806C1DC  @ gPaletteBuffer
	ldr r4, _0806C1E0  @ gUnknown_020165C8
	ldrh r0, [r5]
	strh r0, [r4]
	movs r7, #0
_0806C1CA:
	subs r0, r7, #1
	cmp r0, #0x1d
	bhi _0806C276
	lsls r0, r0, #2
	ldr r1, _0806C1E4  @ _0806C1E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806C1DC: .4byte gPaletteBuffer
_0806C1E0: .4byte gUnknown_020165C8
_0806C1E4: .4byte _0806C1E8
_0806C1E8: @ jump table
	.4byte _0806C260 @ case 0
	.4byte _0806C260 @ case 1
	.4byte _0806C260 @ case 2
	.4byte _0806C276 @ case 3
	.4byte _0806C276 @ case 4
	.4byte _0806C276 @ case 5
	.4byte _0806C276 @ case 6
	.4byte _0806C276 @ case 7
	.4byte _0806C276 @ case 8
	.4byte _0806C276 @ case 9
	.4byte _0806C276 @ case 10
	.4byte _0806C276 @ case 11
	.4byte _0806C276 @ case 12
	.4byte _0806C276 @ case 13
	.4byte _0806C276 @ case 14
	.4byte _0806C260 @ case 15
	.4byte _0806C276 @ case 16
	.4byte _0806C276 @ case 17
	.4byte _0806C276 @ case 18
	.4byte _0806C276 @ case 19
	.4byte _0806C260 @ case 20
	.4byte _0806C260 @ case 21
	.4byte _0806C276 @ case 22
	.4byte _0806C276 @ case 23
	.4byte _0806C276 @ case 24
	.4byte _0806C276 @ case 25
	.4byte _0806C260 @ case 26
	.4byte _0806C260 @ case 27
	.4byte _0806C260 @ case 28
	.4byte _0806C260 @ case 29
_0806C260:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	adds r5, #0x20
	adds r4, #0x20
	adds r1, r7, #1
	mov r6, r8
	adds r6, #0x4c
	b _0806C290
_0806C276:
	adds r5, #2
	adds r4, #2
	adds r1, r7, #1
	mov r6, r8
	adds r6, #0x4c
	movs r2, #0
	movs r0, #0xe
_0806C284:
	strh r2, [r4]
	adds r5, #2
	adds r4, #2
	subs r0, #1
	cmp r0, #0
	bge _0806C284
_0806C290:
	adds r7, r1, #0
	cmp r7, #0x1f
	ble _0806C1CA
	ldr r0, _0806C2C0  @ gUnknown_020165C8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	bl DisablePaletteSync
	ldrh r1, [r6]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0x12
	bne _0806C2C4
	movs r0, #0
	strh r0, [r6]
	mov r0, r8
	bl Proc_Break
	b _0806C2C8
	.align 2, 0
_0806C2C0: .4byte gUnknown_020165C8
_0806C2C4:
	adds r0, r1, #1
	strh r0, [r6]
_0806C2C8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806C1B8

	THUMB_FUNC_START sub_806C2D4
sub_806C2D4: @ 0x0806C2D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r6, _0806C314  @ gPaletteBuffer
	ldr r5, _0806C318  @ gUnknown_020165C8
	adds r0, #0x4c
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #0x12
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	movs r2, #0
	bl Interpolate
	str r0, [sp, #8]
	ldrh r0, [r6]
	strh r0, [r5]
	movs r4, #0
_0806C302:
	subs r0, r4, #1
	cmp r0, #0x1d
	bhi _0806C3B2
	lsls r0, r0, #2
	ldr r1, _0806C31C  @ _0806C320
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806C314: .4byte gPaletteBuffer
_0806C318: .4byte gUnknown_020165C8
_0806C31C: .4byte _0806C320
_0806C320: @ jump table
	.4byte _0806C398 @ case 0
	.4byte _0806C398 @ case 1
	.4byte _0806C398 @ case 2
	.4byte _0806C3B2 @ case 3
	.4byte _0806C3B2 @ case 4
	.4byte _0806C3B2 @ case 5
	.4byte _0806C3B2 @ case 6
	.4byte _0806C3B2 @ case 7
	.4byte _0806C3B2 @ case 8
	.4byte _0806C3B2 @ case 9
	.4byte _0806C3B2 @ case 10
	.4byte _0806C3B2 @ case 11
	.4byte _0806C3B2 @ case 12
	.4byte _0806C3B2 @ case 13
	.4byte _0806C3B2 @ case 14
	.4byte _0806C398 @ case 15
	.4byte _0806C3B2 @ case 16
	.4byte _0806C3B2 @ case 17
	.4byte _0806C3B2 @ case 18
	.4byte _0806C3B2 @ case 19
	.4byte _0806C398 @ case 20
	.4byte _0806C398 @ case 21
	.4byte _0806C3B2 @ case 22
	.4byte _0806C3B2 @ case 23
	.4byte _0806C3B2 @ case 24
	.4byte _0806C3B2 @ case 25
	.4byte _0806C398 @ case 26
	.4byte _0806C398 @ case 27
	.4byte _0806C398 @ case 28
	.4byte _0806C398 @ case 29
_0806C398:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r6, #0x20
	adds r5, #0x20
	ldr r2, [sp, #4]
	adds r2, #0x4c
	mov r8, r2
	adds r4, #1
	mov sl, r4
	b _0806C416
_0806C3B2:
	adds r6, #2
	adds r5, #2
	ldr r3, [sp, #4]
	adds r3, #0x4c
	mov r8, r3
	adds r4, #1
	mov sl, r4
	movs r0, #0x1f
	mov r9, r0
	movs r7, #0x1f
	movs r0, #0x10
	ldr r1, [sp, #8]
	subs r4, r0, r1
	movs r2, #0xe
	mov ip, r2
_0806C3D0:
	ldrh r1, [r6]
	adds r0, r7, #0
	ands r0, r1
	adds r3, r0, #0
	muls r3, r4, r3
	asrs r3, r3, #4
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	mov r2, r9
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	asrs r2, r2, #4
	lsrs r1, r1, #0x1a
	mov r0, r9
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #4
	ands r0, r7
	lsls r0, r0, #0xa
	ands r2, r7
	lsls r2, r2, #5
	orrs r0, r2
	ands r3, r7
	orrs r3, r0
	strh r3, [r5]
	adds r6, #2
	adds r5, #2
	movs r1, #1
	negs r1, r1
	add ip, r1
	mov r2, ip
	cmp r2, #0
	bge _0806C3D0
_0806C416:
	mov r4, sl
	cmp r4, #0x1f
	bgt _0806C41E
	b _0806C302
_0806C41E:
	ldr r0, _0806C448  @ gUnknown_020165C8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	bl DisablePaletteSync
	mov r3, r8
	ldrh r1, [r3]
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0x12
	bne _0806C44C
	movs r0, #0
	strh r0, [r3]
	ldr r0, [sp, #4]
	bl Proc_Break
	b _0806C452
	.align 2, 0
_0806C448: .4byte gUnknown_020165C8
_0806C44C:
	adds r0, r1, #1
	mov r3, r8
	strh r0, [r3]
_0806C452:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806C2D4

	THUMB_FUNC_START sub_806C464
sub_806C464: @ 0x0806C464
	push {lr}
	ldr r0, _0806C474  @ gUnknown_085D8CE4
	movs r1, #0
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_0806C474: .4byte gUnknown_085D8CE4

	THUMB_FUNC_END sub_806C464

	THUMB_FUNC_START sub_806C478
sub_806C478: @ 0x0806C478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r6, _0806C4B8  @ gPaletteBuffer
	ldr r5, _0806C4BC  @ gUnknown_020165C8
	adds r0, #0x4c
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x10
	bl Interpolate
	str r0, [sp, #8]
	ldrh r0, [r6]
	strh r0, [r5]
	movs r4, #0
_0806C4A6:
	subs r0, r4, #1
	cmp r0, #0x1d
	bhi _0806C556
	lsls r0, r0, #2
	ldr r1, _0806C4C0  @ _0806C4C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806C4B8: .4byte gPaletteBuffer
_0806C4BC: .4byte gUnknown_020165C8
_0806C4C0: .4byte _0806C4C4
_0806C4C4: @ jump table
	.4byte _0806C53C @ case 0
	.4byte _0806C53C @ case 1
	.4byte _0806C53C @ case 2
	.4byte _0806C556 @ case 3
	.4byte _0806C556 @ case 4
	.4byte _0806C556 @ case 5
	.4byte _0806C556 @ case 6
	.4byte _0806C556 @ case 7
	.4byte _0806C556 @ case 8
	.4byte _0806C556 @ case 9
	.4byte _0806C556 @ case 10
	.4byte _0806C556 @ case 11
	.4byte _0806C556 @ case 12
	.4byte _0806C556 @ case 13
	.4byte _0806C556 @ case 14
	.4byte _0806C53C @ case 15
	.4byte _0806C556 @ case 16
	.4byte _0806C556 @ case 17
	.4byte _0806C556 @ case 18
	.4byte _0806C556 @ case 19
	.4byte _0806C53C @ case 20
	.4byte _0806C53C @ case 21
	.4byte _0806C556 @ case 22
	.4byte _0806C556 @ case 23
	.4byte _0806C556 @ case 24
	.4byte _0806C556 @ case 25
	.4byte _0806C53C @ case 26
	.4byte _0806C53C @ case 27
	.4byte _0806C53C @ case 28
	.4byte _0806C53C @ case 29
_0806C53C:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r6, #0x20
	adds r5, #0x20
	ldr r2, [sp, #4]
	adds r2, #0x4c
	mov r8, r2
	adds r4, #1
	mov sl, r4
	b _0806C5BA
_0806C556:
	adds r6, #2
	adds r5, #2
	ldr r3, [sp, #4]
	adds r3, #0x4c
	mov r8, r3
	adds r4, #1
	mov sl, r4
	movs r0, #0x1f
	mov r9, r0
	movs r7, #0x1f
	movs r0, #0x10
	ldr r1, [sp, #8]
	subs r4, r0, r1
	movs r2, #0xe
	mov ip, r2
_0806C574:
	ldrh r1, [r6]
	adds r0, r7, #0
	ands r0, r1
	adds r3, r0, #0
	muls r3, r4, r3
	asrs r3, r3, #4
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x15
	mov r2, r9
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	asrs r2, r2, #4
	lsrs r1, r1, #0x1a
	mov r0, r9
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #4
	ands r0, r7
	lsls r0, r0, #0xa
	ands r2, r7
	lsls r2, r2, #5
	orrs r0, r2
	ands r3, r7
	orrs r3, r0
	strh r3, [r5]
	adds r6, #2
	adds r5, #2
	movs r1, #1
	negs r1, r1
	add ip, r1
	mov r2, ip
	cmp r2, #0
	bge _0806C574
_0806C5BA:
	mov r4, sl
	cmp r4, #0x1f
	bgt _0806C5C2
	b _0806C4A6
_0806C5C2:
	ldr r0, _0806C5EC  @ gUnknown_020165C8
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	bl DisablePaletteSync
	mov r3, r8
	ldrh r1, [r3]
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #8
	bne _0806C5F0
	movs r0, #0
	strh r0, [r3]
	ldr r0, [sp, #4]
	bl Proc_Break
	b _0806C5F6
	.align 2, 0
_0806C5EC: .4byte gUnknown_020165C8
_0806C5F0:
	adds r0, r1, #1
	mov r3, r8
	strh r0, [r3]
_0806C5F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806C478

	THUMB_FUNC_START sub_806C608
sub_806C608: @ 0x0806C608
	push {lr}
	ldr r0, _0806C618  @ gUnknown_085D8D14
	movs r1, #0
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_0806C618: .4byte gUnknown_085D8D14

	THUMB_FUNC_END sub_806C608

	THUMB_FUNC_START NewEfxDamageMojiEffect
NewEfxDamageMojiEffect: @ 0x0806C61C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806C644  @ ProcScr_efxDamageMojiEffect
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	adds r0, #0x29
	strb r5, [r0]
	ldr r0, _0806C648  @ gUnknown_085BA0B8
	ldr r1, _0806C64C  @ 0x06012000
	bl LZ77UnCompVram
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C644: .4byte ProcScr_efxDamageMojiEffect
_0806C648: .4byte gUnknown_085BA0B8
_0806C64C: .4byte 0x06012000

	THUMB_FUNC_END NewEfxDamageMojiEffect

	THUMB_FUNC_START efxDamageMojiEffectMain
efxDamageMojiEffectMain: @ 0x0806C650
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806C66E
	ldr r0, [r1, #0x5c]
	adds r1, #0x29
	ldrb r1, [r1]
	bl sub_806C67C
	b _0806C678
_0806C66E:
	cmp r0, #0xa
	bne _0806C678
	adds r0, r1, #0
	bl Proc_Break
_0806C678:
	pop {r0}
	bx r0

	THUMB_FUNC_END efxDamageMojiEffectMain

	THUMB_FUNC_START sub_806C67C
sub_806C67C: @ 0x0806C67C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _0806C6A0  @ ProcScr_efxDamageMojiEffectOBJ
	movs r1, #3
	bl Proc_Start
	adds r6, r0, #0
	str r5, [r6, #0x5c]
	movs r0, #0
	strh r0, [r6, #0x2c]
	cmp r4, #0
	bne _0806C6A8
	movs r0, #0x32
	strh r0, [r6, #0x2e]
	ldr r4, _0806C6A4  @ gUnknown_085C81A4
	b _0806C6AE
	.align 2, 0
_0806C6A0: .4byte ProcScr_efxDamageMojiEffectOBJ
_0806C6A4: .4byte gUnknown_085C81A4
_0806C6A8:
	movs r0, #0x32
	strh r0, [r6, #0x2e]
	ldr r4, _0806C6E8  @ gUnknown_085C8218
_0806C6AE:
	adds r0, r5, #0
	bl GetAISSubjectId
	movs r2, #0xa2
	lsls r2, r2, #7
	cmp r0, #0
	bne _0806C6C0
	movs r2, #0xc2
	lsls r2, r2, #7
_0806C6C0:
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r3, #4
	ldrsh r1, [r5, r3]
	subs r1, #0x28
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r2, #3
	str r2, [sp, #8]
	adds r2, r4, #0
	movs r3, #2
	bl NewEkrsubAnimeEmulator
	str r0, [r6, #0x60]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806C6E8: .4byte gUnknown_085C8218

	THUMB_FUNC_END sub_806C67C

	THUMB_FUNC_START efxDamageMojiEffectOBJMain
efxDamageMojiEffectOBJMain: @ 0x0806C6EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	ldrh r0, [r0, #2]
	strh r0, [r1, #0x32]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0806C716
	ldr r0, [r4, #0x60]
	bl Proc_End
	adds r0, r4, #0
	bl Proc_Break
_0806C716:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END efxDamageMojiEffectOBJMain

	THUMB_FUNC_START sub_806C71C
sub_806C71C: @ 0x0806C71C
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetCoreAIStruct
	adds r4, r0, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r4, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl GetAnimRoundType
	movs r1, #0x80
	lsls r1, r1, #2
	ands r1, r0
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	cmp r4, #0
	beq _0806C74E
	adds r0, r5, #0
	bl sub_806C9E8
	b _0806C75E
_0806C74E:
	bl ClearBG1Setup
	ldr r0, _0806C764  @ ProcScr_efxCriricalEffect
	movs r1, #3
	bl Proc_Start
	str r5, [r0, #0x5c]
	strh r4, [r0, #0x2c]
_0806C75E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C764: .4byte ProcScr_efxCriricalEffect

	THUMB_FUNC_END sub_806C71C

	THUMB_FUNC_START efxCriricalEffectMain
efxCriricalEffectMain: @ 0x0806C768
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806C788
	ldr r0, [r4, #0x5c]
	bl sub_806C798
	ldr r0, [r4, #0x5c]
	bl sub_806C810
	b _0806C792
_0806C788:
	cmp r0, #0x11
	bne _0806C792
	adds r0, r4, #0
	bl Proc_Break
_0806C792:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END efxCriricalEffectMain

	THUMB_FUNC_START sub_806C798
sub_806C798: @ 0x0806C798
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0806C7D4  @ ProcScr_efxCriricalEffectBG
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r0, _0806C7D8  @ gUnknown_085E7028
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _0806C7DC  @ gUnknown_085E8108
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, [r4, #0x5c]
	ldr r1, _0806C7E0  @ gUnknown_085E8308
	ldr r2, _0806C7E4  @ gUnknown_085E87A8
	bl sub_8055670
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C7D4: .4byte ProcScr_efxCriricalEffectBG
_0806C7D8: .4byte gUnknown_085E7028
_0806C7DC: .4byte gUnknown_085E8108
_0806C7E0: .4byte gUnknown_085E8308
_0806C7E4: .4byte gUnknown_085E87A8

	THUMB_FUNC_END sub_806C798

	THUMB_FUNC_START efxCriricalEffectBGMain
efxCriricalEffectBGMain: @ 0x0806C7E8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x11
	bne _0806C808
	bl ClearBG1
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Break
_0806C808:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END efxCriricalEffectBGMain

	THUMB_FUNC_START sub_806C810
sub_806C810: @ 0x0806C810
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806C834  @ ProcScr_efxCriricalEffectBGCOL
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806C838  @ gUnknown_080DF188
	str r1, [r0, #0x48]
	ldr r1, _0806C83C  @ gUnknown_085E8108
	str r1, [r0, #0x4c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C834: .4byte ProcScr_efxCriricalEffectBGCOL
_0806C838: .4byte gUnknown_080DF188
_0806C83C: .4byte gUnknown_085E8108

	THUMB_FUNC_END sub_806C810

	THUMB_FUNC_START efxCriricalEffectBGCOLMain
efxCriricalEffectBGCOLMain: @ 0x0806C840
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
	blt _0806C866
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _0806C874
_0806C866:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0806C874
	adds r0, r4, #0
	bl Proc_Break
_0806C874:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END efxCriricalEffectBGCOLMain

	THUMB_FUNC_START sub_806C87C
sub_806C87C: @ 0x0806C87C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl ClearBG1Setup
	adds r0, r4, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r4, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl GetAnimRoundType
	movs r1, #0x80
	lsls r1, r1, #2
	ands r1, r0
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	cmp r5, #0
	beq _0806C8AE
	adds r0, r4, #0
	bl sub_806CB1C
	b _0806C8BA
_0806C8AE:
	ldr r0, _0806C8C0  @ ProcScr_efxNormalEffect
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	strh r5, [r0, #0x2c]
_0806C8BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806C8C0: .4byte ProcScr_efxNormalEffect

	THUMB_FUNC_END sub_806C87C

	THUMB_FUNC_START efxNormalEffectMain
efxNormalEffectMain: @ 0x0806C8C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r1, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806C8E8
	ldr r0, [r4, #0x5c]
	movs r1, #4
	bl StartSpellBG_FLASH
	b _0806C8FE
_0806C8E8:
	cmp r0, #4
	bne _0806C8F4
	adds r0, r1, #0
	bl sub_806C904
	b _0806C8FE
_0806C8F4:
	cmp r0, #0x18
	bne _0806C8FE
	adds r0, r4, #0
	bl Proc_Break
_0806C8FE:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END efxNormalEffectMain

	THUMB_FUNC_START sub_806C904
sub_806C904: @ 0x0806C904
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0806C964  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806C968  @ ProcScr_efxNormalEffectBG
	movs r1, #3
	bl Proc_Start
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0806C96C  @ gUnknown_080DF1EE
	str r0, [r5, #0x48]
	ldr r0, _0806C970  @ gUnknown_085D8DF4
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0806C974  @ gUnknown_085E9150
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _0806C978  @ gUnknown_085E8D88
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _0806C97C  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806C98A
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806C980
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0806C98A
	.align 2, 0
_0806C964: .4byte gUnknown_0201774C
_0806C968: .4byte ProcScr_efxNormalEffectBG
_0806C96C: .4byte gUnknown_080DF1EE
_0806C970: .4byte gUnknown_085D8DF4
_0806C974: .4byte gUnknown_085E9150
_0806C978: .4byte gUnknown_085E8D88
_0806C97C: .4byte gEkrDistanceType
_0806C980:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0806C98A:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806C904

	THUMB_FUNC_START efxNormalEffectBGMain
efxNormalEffectBGMain: @ 0x0806C990
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
	blt _0806C9BE
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _0806C9DC
_0806C9BE:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _0806C9DC
	bl ClearBG1
	ldr r1, _0806C9E4  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Break
_0806C9DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806C9E4: .4byte gUnknown_0201774C

	THUMB_FUNC_END efxNormalEffectBGMain

	THUMB_FUNC_START sub_806C9E8
sub_806C9E8: @ 0x0806C9E8
	push {r4, lr}
	adds r4, r0, #0
	bl ClearBG1Setup
	ldr r0, _0806CA04  @ ProcScr_efxPierceCriticalEffect
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CA04: .4byte ProcScr_efxPierceCriticalEffect

	THUMB_FUNC_END sub_806C9E8

	THUMB_FUNC_START efxPierceCriticalEffectMain
efxPierceCriticalEffectMain: @ 0x0806CA08
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806CA28
	ldr r0, [r4, #0x5c]
	bl sub_806CA38
	ldr r0, [r4, #0x5c]
	bl sub_806CAB0
	b _0806CA32
_0806CA28:
	cmp r0, #0x11
	bne _0806CA32
	adds r0, r4, #0
	bl Proc_Break
_0806CA32:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END efxPierceCriticalEffectMain

	THUMB_FUNC_START sub_806CA38
sub_806CA38: @ 0x0806CA38
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0806CA74  @ ProcScr_efxPierceCriticalEffectBG
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r0, _0806CA78  @ gUnknown_085CFB70
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _0806CA7C  @ gUnknown_085D0820
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, [r4, #0x5c]
	ldr r1, _0806CA80  @ gUnknown_085D0A20
	ldr r2, _0806CA84  @ gUnknown_085D0CE0
	bl sub_8055670
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CA74: .4byte ProcScr_efxPierceCriticalEffectBG
_0806CA78: .4byte gUnknown_085CFB70
_0806CA7C: .4byte gUnknown_085D0820
_0806CA80: .4byte gUnknown_085D0A20
_0806CA84: .4byte gUnknown_085D0CE0

	THUMB_FUNC_END sub_806CA38

	THUMB_FUNC_START efxPierceCriticalEffectBGMain
efxPierceCriticalEffectBGMain: @ 0x0806CA88
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x11
	bne _0806CAA8
	bl ClearBG1
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Break
_0806CAA8:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END efxPierceCriticalEffectBGMain

	THUMB_FUNC_START sub_806CAB0
sub_806CAB0: @ 0x0806CAB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806CAD4  @ ProcScr_efxPierceCriticalEffectBGCOL
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806CAD8  @ gUnknown_080DF26A
	str r1, [r0, #0x48]
	ldr r1, _0806CADC  @ gUnknown_085D0820
	str r1, [r0, #0x4c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CAD4: .4byte ProcScr_efxPierceCriticalEffectBGCOL
_0806CAD8: .4byte gUnknown_080DF26A
_0806CADC: .4byte gUnknown_085D0820

	THUMB_FUNC_END sub_806CAB0

	THUMB_FUNC_START efxPierceCriticalEffectBGCOLMain
efxPierceCriticalEffectBGCOLMain: @ 0x0806CAE0
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
	blt _0806CB06
	ldr r0, [r4, #0x4c]
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _0806CB14
_0806CB06:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0806CB14
	adds r0, r4, #0
	bl Proc_Break
_0806CB14:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END efxPierceCriticalEffectBGCOLMain

	THUMB_FUNC_START sub_806CB1C
sub_806CB1C: @ 0x0806CB1C
	push {r4, lr}
	adds r4, r0, #0
	bl ClearBG1Setup
	ldr r0, _0806CB38  @ ProcScr_efxPierceNormalEffect
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CB38: .4byte ProcScr_efxPierceNormalEffect

	THUMB_FUNC_END sub_806CB1C

	THUMB_FUNC_START efxPierceNormalEffectMain
efxPierceNormalEffectMain: @ 0x0806CB3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r1, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806CB60
	ldr r0, [r4, #0x5c]
	movs r1, #4
	bl StartSpellBG_FLASH
	b _0806CB76
_0806CB60:
	cmp r0, #4
	bne _0806CB6C
	adds r0, r1, #0
	bl sub_806CB7C
	b _0806CB76
_0806CB6C:
	cmp r0, #0x18
	bne _0806CB76
	adds r0, r4, #0
	bl Proc_Break
_0806CB76:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END efxPierceNormalEffectMain

	THUMB_FUNC_START sub_806CB7C
sub_806CB7C: @ 0x0806CB7C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _0806CBDC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806CBE0  @ ProcScr_efxPierceNormalEffectBG
	movs r1, #3
	bl Proc_Start
	adds r5, r0, #0
	str r4, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r0, [r5, #0x44]
	ldr r0, _0806CBE4  @ gUnknown_080DF2DC
	str r0, [r5, #0x48]
	ldr r0, _0806CBE8  @ gUnknown_085D8E9C
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	ldr r0, _0806CBEC  @ gUnknown_085D1470
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _0806CBF0  @ gUnknown_085D0FD0
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _0806CBF4  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806CC02
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806CBF8
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0806CC02
	.align 2, 0
_0806CBDC: .4byte gUnknown_0201774C
_0806CBE0: .4byte ProcScr_efxPierceNormalEffectBG
_0806CBE4: .4byte gUnknown_080DF2DC
_0806CBE8: .4byte gUnknown_085D8E9C
_0806CBEC: .4byte gUnknown_085D1470
_0806CBF0: .4byte gUnknown_085D0FD0
_0806CBF4: .4byte gEkrDistanceType
_0806CBF8:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0806CC02:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806CB7C

	THUMB_FUNC_START efxPierceNormalEffectBGMain
efxPierceNormalEffectBGMain: @ 0x0806CC08
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
	blt _0806CC36
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _0806CC54
_0806CC36:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _0806CC54
	bl ClearBG1
	ldr r1, _0806CC5C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Break
_0806CC54:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CC5C: .4byte gUnknown_0201774C

	THUMB_FUNC_END efxPierceNormalEffectBGMain

	THUMB_FUNC_START sub_806CC60
sub_806CC60: @ 0x0806CC60
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0806CC84  @ ProcScr_efxYushaSpinShield
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_806CC94
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CC84: .4byte ProcScr_efxYushaSpinShield

	THUMB_FUNC_END sub_806CC60

	THUMB_FUNC_START EfxYushaSpinShieldMain
EfxYushaSpinShieldMain: @ 0x0806CC88
	push {lr}
	bl Proc_Break
	pop {r0}
	bx r0

	THUMB_FUNC_END EfxYushaSpinShieldMain

	THUMB_FUNC_START sub_806CC94
sub_806CC94: @ 0x0806CC94
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, _0806CCBC  @ ProcScr_efxYushaSpinShieldOBJ
	movs r1, #3
	bl Proc_Start
	adds r5, r0, #0
	str r6, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	adds r0, #0x29
	strb r4, [r0]
	cmp r4, #0
	bne _0806CCC8
	ldr r2, _0806CCC0  @ gUnknown_085EAB58
	ldr r3, _0806CCC4  @ gUnknown_085EBDF8
	b _0806CCCC
	.align 2, 0
_0806CCBC: .4byte ProcScr_efxYushaSpinShieldOBJ
_0806CCC0: .4byte gUnknown_085EAB58
_0806CCC4: .4byte gUnknown_085EBDF8
_0806CCC8:
	ldr r2, _0806CCF8  @ gUnknown_085ED0C8
	ldr r3, _0806CCFC  @ gUnknown_085EE398
_0806CCCC:
	str r2, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r5, #0x60]
	ldrh r0, [r4, #8]
	movs r1, #0xc0
	lsls r1, r1, #4
	ands r1, r0
	movs r5, #0
	strh r1, [r4, #8]
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806CD00
	ldrh r0, [r4, #8]
	movs r2, #0xe4
	lsls r2, r2, #7
	b _0806CD06
	.align 2, 0
_0806CCF8: .4byte gUnknown_085ED0C8
_0806CCFC: .4byte gUnknown_085EE398
_0806CD00:
	ldrh r0, [r4, #8]
	movs r2, #0x93
	lsls r2, r2, #8
_0806CD06:
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806CC94

	THUMB_FUNC_START efxYushaSpinShieldOBJ_806CD14
efxYushaSpinShieldOBJ_806CD14: @ 0x0806CD14
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x60]
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x45
	bne _0806CD72
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806CD4C
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806CD44
	ldr r0, _0806CD40  @ gUnknown_085EBEFC
	b _0806CD62
	.align 2, 0
_0806CD40: .4byte gUnknown_085EBEFC
_0806CD44:
	ldr r0, _0806CD48  @ gUnknown_085EAC5C
	b _0806CD62
	.align 2, 0
_0806CD48: .4byte gUnknown_085EAC5C
_0806CD4C:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806CD60
	ldr r0, _0806CD5C  @ gUnknown_085EE49C
	b _0806CD62
	.align 2, 0
_0806CD5C: .4byte gUnknown_085EE49C
_0806CD60:
	ldr r0, _0806CD78  @ gUnknown_085ED1CC
_0806CD62:
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	movs r0, #0
	strh r0, [r4, #6]
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	bl Proc_Break
_0806CD72:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CD78: .4byte gUnknown_085ED1CC

	THUMB_FUNC_END efxYushaSpinShieldOBJ_806CD14

	THUMB_FUNC_START efxYushaSpinShieldOBJ_806CD7C
efxYushaSpinShieldOBJ_806CD7C: @ 0x0806CD7C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0x5c]
	ldrh r2, [r0, #0x10]
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0806CD9E
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0806CD9E
	movs r0, #0
	strh r0, [r1, #0x2c]
	adds r0, r1, #0
	bl Proc_Break
_0806CD9E:
	pop {r0}
	bx r0

	THUMB_FUNC_END efxYushaSpinShieldOBJ_806CD7C

	THUMB_FUNC_START efxYushaSpinShieldOBJ_806CDA4
efxYushaSpinShieldOBJ_806CDA4: @ 0x0806CDA4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x60]
	bl sub_80522CC
	cmp r0, #1
	bne _0806CDFE
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _0806CDD8
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806CDD0
	ldr r0, _0806CDCC  @ gUnknown_085EBF24
	b _0806CDEE
	.align 2, 0
_0806CDCC: .4byte gUnknown_085EBF24
_0806CDD0:
	ldr r0, _0806CDD4  @ gUnknown_085EAC84
	b _0806CDEE
	.align 2, 0
_0806CDD4: .4byte gUnknown_085EAC84
_0806CDD8:
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806CDEC
	ldr r0, _0806CDE8  @ gUnknown_085EE4C4
	b _0806CDEE
	.align 2, 0
_0806CDE8: .4byte gUnknown_085EE4C4
_0806CDEC:
	ldr r0, _0806CE04  @ gUnknown_085ED1F4
_0806CDEE:
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	movs r0, #0
	strh r0, [r4, #6]
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	bl Proc_Break
_0806CDFE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE04: .4byte gUnknown_085ED1F4

	THUMB_FUNC_END efxYushaSpinShieldOBJ_806CDA4

	THUMB_FUNC_START efxYushaSpinShieldOBJ_806CE08
efxYushaSpinShieldOBJ_806CE08: @ 0x0806CE08
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	bne _0806CE2A
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x60]
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0806CE2A:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END efxYushaSpinShieldOBJ_806CE08

	THUMB_FUNC_START sub_806CE30
sub_806CE30: @ 0x0806CE30
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0806CE5C  @ gUnknown_0201774C
	ldr r5, [r0]
	cmp r5, #0
	bne _0806CE6E
	ldr r0, _0806CE60  @ ProcScr_efxHurtmutEff00
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	strh r5, [r0, #0x2c]
	ldr r0, _0806CE64  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806CE68
	adds r0, r4, #0
	bl sub_806CE80
	b _0806CE6E
	.align 2, 0
_0806CE5C: .4byte gUnknown_0201774C
_0806CE60: .4byte ProcScr_efxHurtmutEff00
_0806CE64: .4byte gEkrDistanceType
_0806CE68:
	adds r0, r4, #0
	bl sub_806CF80
_0806CE6E:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806CE30

	THUMB_FUNC_START EfxHurtmutEff00Main
EfxHurtmutEff00Main: @ 0x0806CE74
	push {lr}
	bl Proc_Break
	pop {r0}
	bx r0

	THUMB_FUNC_END EfxHurtmutEff00Main

	THUMB_FUNC_START sub_806CE80
sub_806CE80: @ 0x0806CE80
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0806CEB8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806CEBC  @ ProcScr_efxHurtmutEff00OBJ
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r3, _0806CEC0  @ gUnknown_085D4F90
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
_0806CEB8: .4byte gUnknown_0201774C
_0806CEBC: .4byte ProcScr_efxHurtmutEff00OBJ
_0806CEC0: .4byte gUnknown_085D4F90

	THUMB_FUNC_END sub_806CE80

	THUMB_FUNC_START efxHurtmutEff00OBJ_806CEC4
efxHurtmutEff00OBJ_806CEC4: @ 0x0806CEC4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x60]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #1
	bne _0806CEDC
	ldr r0, _0806CED8  @ gUnknown_085E15F4
	b _0806CEDE
	.align 2, 0
_0806CED8: .4byte gUnknown_085E15F4
_0806CEDC:
	ldr r0, _0806CF04  @ gUnknown_085E1960
_0806CEDE:
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	movs r0, #0
	strh r0, [r4, #6]
	ldr r0, _0806CF08  @ gUnknown_085DFA08
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806CF0C  @ gUnknown_085DE984
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r5, #0
	bl Proc_Break
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CF04: .4byte gUnknown_085E1960
_0806CF08: .4byte gUnknown_085DFA08
_0806CF0C: .4byte gUnknown_085DE984

	THUMB_FUNC_END efxHurtmutEff00OBJ_806CEC4

	THUMB_FUNC_START efxHurtmutEff00OBJ_806CF10
efxHurtmutEff00OBJ_806CF10: @ 0x0806CF10
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x60]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #1
	bne _0806CF28
	ldr r0, _0806CF24  @ gUnknown_085E1C48
	b _0806CF2A
	.align 2, 0
_0806CF24: .4byte gUnknown_085E1C48
_0806CF28:
	ldr r0, _0806CF50  @ gUnknown_085E1EA4
_0806CF2A:
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	movs r0, #0
	strh r0, [r4, #6]
	ldr r0, _0806CF54  @ gUnknown_085DFA08
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806CF58  @ gUnknown_085DF224
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r5, #0
	bl Proc_Break
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806CF50: .4byte gUnknown_085E1EA4
_0806CF54: .4byte gUnknown_085DFA08
_0806CF58: .4byte gUnknown_085DF224

	THUMB_FUNC_END efxHurtmutEff00OBJ_806CF10

	THUMB_FUNC_START efxHurtmutEff00OBJ_806CF5C
efxHurtmutEff00OBJ_806CF5C: @ 0x0806CF5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806CF7C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldr r0, [r4, #0x60]
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CF7C: .4byte gUnknown_0201774C

	THUMB_FUNC_END efxHurtmutEff00OBJ_806CF5C

	THUMB_FUNC_START sub_806CF80
sub_806CF80: @ 0x0806CF80
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0806CFB8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806CFBC  @ ProcScr_efxHurtmutEff01OBJ
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r3, _0806CFC0  @ gUnknown_085D4F90
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
_0806CFB8: .4byte gUnknown_0201774C
_0806CFBC: .4byte ProcScr_efxHurtmutEff01OBJ
_0806CFC0: .4byte gUnknown_085D4F90

	THUMB_FUNC_END sub_806CF80

	THUMB_FUNC_START efxHurtmutEff01OBJ_806CFC4
efxHurtmutEff01OBJ_806CFC4: @ 0x0806CFC4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x60]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #1
	bne _0806CFDC
	ldr r0, _0806CFD8  @ gUnknown_085E163C
	b _0806CFDE
	.align 2, 0
_0806CFD8: .4byte gUnknown_085E163C
_0806CFDC:
	ldr r0, _0806D004  @ gUnknown_085E19A8
_0806CFDE:
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	movs r0, #0
	strh r0, [r4, #6]
	ldr r0, _0806D008  @ gUnknown_085DFA08
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806D00C  @ gUnknown_085DE984
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r5, #0
	bl Proc_Break
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D004: .4byte gUnknown_085E19A8
_0806D008: .4byte gUnknown_085DFA08
_0806D00C: .4byte gUnknown_085DE984

	THUMB_FUNC_END efxHurtmutEff01OBJ_806CFC4

	THUMB_FUNC_START efxHurtmutEff01OBJ_806D010
efxHurtmutEff01OBJ_806D010: @ 0x0806D010
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x60]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	cmp r0, #1
	bne _0806D028
	ldr r0, _0806D024  @ gUnknown_085E1C58
	b _0806D02A
	.align 2, 0
_0806D024: .4byte gUnknown_085E1C58
_0806D028:
	ldr r0, _0806D050  @ gUnknown_085E1EB4
_0806D02A:
	str r0, [r4, #0x24]
	str r0, [r4, #0x20]
	movs r0, #0
	strh r0, [r4, #6]
	ldr r0, _0806D054  @ gUnknown_085DFA08
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806D058  @ gUnknown_085DF224
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	adds r0, r5, #0
	bl Proc_Break
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D050: .4byte gUnknown_085E1EB4
_0806D054: .4byte gUnknown_085DFA08
_0806D058: .4byte gUnknown_085DF224

	THUMB_FUNC_END efxHurtmutEff01OBJ_806D010

	THUMB_FUNC_START efxHurtmutEff01OBJ_806D05C
efxHurtmutEff01OBJ_806D05C: @ 0x0806D05C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806D07C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldr r0, [r4, #0x60]
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D07C: .4byte gUnknown_0201774C

	THUMB_FUNC_END efxHurtmutEff01OBJ_806D05C

	THUMB_FUNC_START sub_806D080
sub_806D080: @ 0x0806D080
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _0806D0C4  @ gUnknown_0201774C
	ldr r5, [r0]
	cmp r5, #0
	beq _0806D090
	b _0806D192
_0806D090:
	bl ClearBG1Setup
	ldr r0, _0806D0C8  @ ProcScr_efxMagfcast
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r6, [r4, #0x5c]
	strh r5, [r4, #0x2c]
	adds r0, r6, #0
	bl GetAISSubjectId
	ldr r1, _0806D0CC  @ gEkrPairBanimID2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #0x6a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2a
	bhi _0806D18A
	lsls r0, r0, #2
	ldr r1, _0806D0D0  @ _0806D0D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806D0C4: .4byte gUnknown_0201774C
_0806D0C8: .4byte ProcScr_efxMagfcast
_0806D0CC: .4byte gEkrPairBanimID2
_0806D0D0: .4byte _0806D0D4
_0806D0D4: @ jump table
	.4byte _0806D180 @ case 0
	.4byte _0806D180 @ case 1
	.4byte _0806D18A @ case 2
	.4byte _0806D18A @ case 3
	.4byte _0806D18A @ case 4
	.4byte _0806D18A @ case 5
	.4byte _0806D18A @ case 6
	.4byte _0806D18A @ case 7
	.4byte _0806D18A @ case 8
	.4byte _0806D18A @ case 9
	.4byte _0806D18A @ case 10
	.4byte _0806D18A @ case 11
	.4byte _0806D18A @ case 12
	.4byte _0806D18A @ case 13
	.4byte _0806D18A @ case 14
	.4byte _0806D18A @ case 15
	.4byte _0806D18A @ case 16
	.4byte _0806D18A @ case 17
	.4byte _0806D18A @ case 18
	.4byte _0806D18A @ case 19
	.4byte _0806D18A @ case 20
	.4byte _0806D18A @ case 21
	.4byte _0806D18A @ case 22
	.4byte _0806D18A @ case 23
	.4byte _0806D18A @ case 24
	.4byte _0806D18A @ case 25
	.4byte _0806D18A @ case 26
	.4byte _0806D18A @ case 27
	.4byte _0806D18A @ case 28
	.4byte _0806D18A @ case 29
	.4byte _0806D18A @ case 30
	.4byte _0806D18A @ case 31
	.4byte _0806D18A @ case 32
	.4byte _0806D18A @ case 33
	.4byte _0806D18A @ case 34
	.4byte _0806D18A @ case 35
	.4byte _0806D18A @ case 36
	.4byte _0806D18A @ case 37
	.4byte _0806D18A @ case 38
	.4byte _0806D18A @ case 39
	.4byte _0806D18A @ case 40
	.4byte _0806D18A @ case 41
	.4byte _0806D180 @ case 42
_0806D180:
	ldr r0, [r4, #0x5c]
	adds r1, r7, #0
	bl sub_806D1B4
	b _0806D192
_0806D18A:
	ldr r0, [r4, #0x5c]
	adds r1, r7, #2
	bl sub_806D1B4
_0806D192:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806D080

	THUMB_FUNC_START EfxMagfcastMain
EfxMagfcastMain: @ 0x0806D198
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	bne _0806D1B0
	adds r0, r1, #0
	bl Proc_Break
_0806D1B0:
	pop {r0}
	bx r0

	THUMB_FUNC_END EfxMagfcastMain

	THUMB_FUNC_START sub_806D1B4
sub_806D1B4: @ 0x0806D1B4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _0806D1E8  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806D1EC  @ ProcScr_efxMagfcastBG
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r6, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	str r0, [r4, #0x44]
	cmp r5, #1
	beq _0806D200
	cmp r5, #1
	bcc _0806D1F0
	cmp r5, #2
	beq _0806D210
	cmp r5, #3
	beq _0806D224
	b _0806D23A
	.align 2, 0
_0806D1E8: .4byte gUnknown_0201774C
_0806D1EC: .4byte ProcScr_efxMagfcastBG
_0806D1F0:
	ldr r0, _0806D1F8  @ gUnknown_080DF386
	str r0, [r4, #0x48]
	ldr r0, _0806D1FC  @ gUnknown_085D8FC4
	b _0806D216
	.align 2, 0
_0806D1F8: .4byte gUnknown_080DF386
_0806D1FC: .4byte gUnknown_085D8FC4
_0806D200:
	ldr r0, _0806D208  @ gUnknown_080DF39C
	str r0, [r4, #0x48]
	ldr r0, _0806D20C  @ gUnknown_085D8FC4
	b _0806D216
	.align 2, 0
_0806D208: .4byte gUnknown_080DF39C
_0806D20C: .4byte gUnknown_085D8FC4
_0806D210:
	ldr r0, _0806D21C  @ gUnknown_080DF3A2
	str r0, [r4, #0x48]
	ldr r0, _0806D220  @ gUnknown_085D8FDC
_0806D216:
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	b _0806D23A
	.align 2, 0
_0806D21C: .4byte gUnknown_080DF3A2
_0806D220: .4byte gUnknown_085D8FDC
_0806D224:
	ldr r0, _0806D270  @ gUnknown_080DF3C4
	str r0, [r4, #0x48]
	ldr r0, _0806D274  @ gUnknown_085D8FDC
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	ldrb r0, [r6, #0x14]
	adds r0, r6, r0
	ldrb r1, [r0, #0x14]
	adds r0, r6, #0
	bl sub_8071B6C
_0806D23A:
	ldr r0, _0806D278  @ gUnknown_085EE4F8
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _0806D27C  @ gUnknown_085EF24C
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r0, _0806D280  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806D28E
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806D284
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0806D28E
	.align 2, 0
_0806D270: .4byte gUnknown_080DF3C4
_0806D274: .4byte gUnknown_085D8FDC
_0806D278: .4byte gUnknown_085EE4F8
_0806D27C: .4byte gUnknown_085EF24C
_0806D280: .4byte gEkrDistanceType
_0806D284:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0806D28E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806D1B4

	THUMB_FUNC_START EfxMagfcastBGMain
EfxMagfcastBGMain: @ 0x0806D294
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0806D2F6
	ldr r0, _0806D2D0  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806D2DE
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806D2D4
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0806D2DE
	.align 2, 0
_0806D2D0: .4byte gEkrDistanceType
_0806D2D4:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0806D2DE:
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r5, #0x10
	asrs r2, r2, #0xe
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _0806D314
_0806D2F6:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0806D314
	bl ClearBG1
	ldr r1, _0806D31C  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_End
_0806D314:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D31C: .4byte gUnknown_0201774C

	THUMB_FUNC_END EfxMagfcastBGMain

	THUMB_FUNC_START sub_806D320
sub_806D320: @ 0x0806D320
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _0806D348  @ gUnknown_0201774C
	ldr r4, [r0]
	cmp r4, #0
	bne _0806D342
	ldr r0, _0806D34C  @ gUnknown_085D901C
	movs r1, #3
	bl Proc_Start
	str r5, [r0, #0x5c]
	strh r4, [r0, #0x2c]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_806D35C
_0806D342:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D348: .4byte gUnknown_0201774C
_0806D34C: .4byte gUnknown_085D901C

	THUMB_FUNC_END sub_806D320

	THUMB_FUNC_START sub_806D350
sub_806D350: @ 0x0806D350
	push {lr}
	bl Proc_Break
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806D350

	THUMB_FUNC_START sub_806D35C
sub_806D35C: @ 0x0806D35C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, _0806D3C4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806D3C8  @ gUnknown_085D9034
	movs r1, #3
	bl Proc_Start
	adds r5, r0, #0
	str r6, [r5, #0x5c]
	movs r0, #0
	strh r0, [r5, #0x2c]
	ldr r2, _0806D3CC  @ gUnknown_085F1710
	cmp r4, #0
	beq _0806D38A
	ldr r2, _0806D3D0  @ gUnknown_085F19A0
	cmp r4, #1
	bne _0806D38A
	ldr r2, _0806D3D4  @ gUnknown_085F1858
_0806D38A:
	ldr r3, _0806D3D8  @ gUnknown_085F17B4
	cmp r4, #0
	beq _0806D398
	ldr r3, _0806D3DC  @ gUnknown_085F1A44
	cmp r4, #1
	bne _0806D398
	ldr r3, _0806D3E0  @ gUnknown_085F18FC
_0806D398:
	str r2, [sp]
	adds r0, r6, #0
	adds r1, r3, #0
	bl sub_8055554
	str r0, [r5, #0x60]
	ldr r4, _0806D3E4  @ gEkrPairTerrainID
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x40
	bls _0806D3BA
	b _0806D524
_0806D3BA:
	lsls r0, r0, #2
	ldr r1, _0806D3E8  @ _0806D3EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806D3C4: .4byte gUnknown_0201774C
_0806D3C8: .4byte gUnknown_085D9034
_0806D3CC: .4byte gUnknown_085F1710
_0806D3D0: .4byte gUnknown_085F19A0
_0806D3D4: .4byte gUnknown_085F1858
_0806D3D8: .4byte gUnknown_085F17B4
_0806D3DC: .4byte gUnknown_085F1A44
_0806D3E0: .4byte gUnknown_085F18FC
_0806D3E4: .4byte gEkrPairTerrainID
_0806D3E8: .4byte _0806D3EC
_0806D3EC: @ jump table
	.4byte _0806D524 @ case 0
	.4byte _0806D4F0 @ case 1
	.4byte _0806D4F0 @ case 2
	.4byte _0806D4F0 @ case 3
	.4byte _0806D4F0 @ case 4
	.4byte _0806D4F0 @ case 5
	.4byte _0806D51C @ case 6
	.4byte _0806D51C @ case 7
	.4byte _0806D51C @ case 8
	.4byte _0806D51C @ case 9
	.4byte _0806D4F0 @ case 10
	.4byte _0806D51C @ case 11
	.4byte _0806D4F0 @ case 12
	.4byte _0806D4F0 @ case 13
	.4byte _0806D4F0 @ case 14
	.4byte _0806D4F0 @ case 15
	.4byte _0806D50C @ case 16
	.4byte _0806D4F0 @ case 17
	.4byte _0806D4F0 @ case 18
	.4byte _0806D4F0 @ case 19
	.4byte _0806D4F8 @ case 20
	.4byte _0806D50C @ case 21
	.4byte _0806D50C @ case 22
	.4byte _0806D51C @ case 23
	.4byte _0806D51C @ case 24
	.4byte _0806D4F0 @ case 25
	.4byte _0806D4F0 @ case 26
	.4byte _0806D4F0 @ case 27
	.4byte _0806D4F0 @ case 28
	.4byte _0806D51C @ case 29
	.4byte _0806D51C @ case 30
	.4byte _0806D51C @ case 31
	.4byte _0806D51C @ case 32
	.4byte _0806D51C @ case 33
	.4byte _0806D4F0 @ case 34
	.4byte _0806D4F0 @ case 35
	.4byte _0806D51C @ case 36
	.4byte _0806D4F0 @ case 37
	.4byte _0806D4F0 @ case 38
	.4byte _0806D4F0 @ case 39
	.4byte _0806D4F0 @ case 40
	.4byte _0806D4F0 @ case 41
	.4byte _0806D4F0 @ case 42
	.4byte _0806D4F0 @ case 43
	.4byte _0806D524 @ case 44
	.4byte _0806D51C @ case 45
	.4byte _0806D524 @ case 46
	.4byte _0806D4F0 @ case 47
	.4byte _0806D51C @ case 48
	.4byte _0806D51C @ case 49
	.4byte _0806D51C @ case 50
	.4byte _0806D4F0 @ case 51
	.4byte _0806D524 @ case 52
	.4byte _0806D524 @ case 53
	.4byte _0806D50C @ case 54
	.4byte _0806D51C @ case 55
	.4byte _0806D4F0 @ case 56
	.4byte _0806D4F0 @ case 57
	.4byte _0806D4F0 @ case 58
	.4byte _0806D4F0 @ case 59
	.4byte _0806D50C @ case 60
	.4byte _0806D4F0 @ case 61
	.4byte _0806D51C @ case 62
	.4byte _0806D4F0 @ case 63
	.4byte _0806D4F0 @ case 64
_0806D4F0:
	ldr r0, _0806D4F4  @ gUnknown_085F1620
	b _0806D50E
	.align 2, 0
_0806D4F4: .4byte gUnknown_085F1620
_0806D4F8:
	ldr r0, [r5, #0x5c]
	bl sub_80723A4
	cmp r0, #0
	beq _0806D50C
	ldr r0, _0806D508  @ gUnknown_085F1620
	b _0806D50E
	.align 2, 0
_0806D508: .4byte gUnknown_085F1620
_0806D50C:
	ldr r0, _0806D518  @ gUnknown_085F1640
_0806D50E:
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	b _0806D524
	.align 2, 0
_0806D518: .4byte gUnknown_085F1640
_0806D51C:
	ldr r0, _0806D538  @ gUnknown_085F1660
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
_0806D524:
	ldr r0, _0806D53C  @ gUnknown_085F11B0
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D538: .4byte gUnknown_085F1660
_0806D53C: .4byte gUnknown_085F11B0

	THUMB_FUNC_END sub_806D35C

	THUMB_FUNC_START sub_806D540
sub_806D540: @ 0x0806D540
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bne _0806D566
	ldr r0, _0806D56C  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0806D566:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D56C: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806D540

	THUMB_FUNC_START sub_806D570
sub_806D570: @ 0x0806D570
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0806D594  @ gUnknown_0201774C
	ldr r4, [r0]
	cmp r4, #0
	bne _0806D58E
	ldr r0, _0806D598  @ gUnknown_085D904C
	movs r1, #3
	bl Proc_Start
	str r5, [r0, #0x5c]
	strh r4, [r0, #0x2c]
	adds r0, r5, #0
	bl sub_806D5A8
_0806D58E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D594: .4byte gUnknown_0201774C
_0806D598: .4byte gUnknown_085D904C

	THUMB_FUNC_END sub_806D570

	THUMB_FUNC_START sub_806D59C
sub_806D59C: @ 0x0806D59C
	push {lr}
	bl Proc_Break
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806D59C

	THUMB_FUNC_START sub_806D5A8
sub_806D5A8: @ 0x0806D5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0806D5F4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806D5F8  @ gUnknown_085D9064
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r7, #0
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r2, _0806D5FC  @ gUnknown_087584B8
	ldr r3, _0806D600  @ gUnknown_087585DC
	str r2, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_8055554
	adds r6, r0, #0
	str r6, [r4, #0x60]
	ldrh r1, [r6, #8]
	ldr r0, _0806D604  @ 0x00000FFF
	ands r0, r1
	strh r0, [r6, #8]
	adds r0, r5, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806D608
	ldrh r0, [r6, #8]
	movs r2, #0xe0
	lsls r2, r2, #7
	b _0806D60E
	.align 2, 0
_0806D5F4: .4byte gUnknown_0201774C
_0806D5F8: .4byte gUnknown_085D9064
_0806D5FC: .4byte gUnknown_087584B8
_0806D600: .4byte gUnknown_087585DC
_0806D604: .4byte 0x00000FFF
_0806D608:
	ldrh r0, [r6, #8]
	movs r2, #0x90
	lsls r2, r2, #8
_0806D60E:
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #8]
	ldr r0, _0806D628  @ gUnknown_08758218
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D628: .4byte gUnknown_08758218

	THUMB_FUNC_END sub_806D5A8

	THUMB_FUNC_START sub_806D62C
sub_806D62C: @ 0x0806D62C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bne _0806D652
	ldr r0, _0806D658  @ gUnknown_0201774C
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	ldr r0, [r4, #0x60]
	bl AnimDelete
	adds r0, r4, #0
	bl Proc_Break
_0806D652:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D658: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806D62C

	THUMB_FUNC_START sub_806D65C
sub_806D65C: @ 0x0806D65C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806D674  @ gUnknown_085D907C
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D674: .4byte gUnknown_085D907C

	THUMB_FUNC_END sub_806D65C

	THUMB_FUNC_START sub_806D678
sub_806D678: @ 0x0806D678
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r6, [r7, #0x5c]
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806D69A
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0x28
	movs r3, #0
	bl sub_80547DC
	b _0806D6DE
_0806D69A:
	cmp r0, #0xa
	bne _0806D6A8
	adds r0, r6, #0
	movs r1, #0x14
	bl StartSpellBG_FLASH
	b _0806D6DE
_0806D6A8:
	cmp r0, #0x2d
	bne _0806D6DE
	ldr r5, _0806D6E4  @ gAnims
	adds r0, r6, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r4, [r0]
	adds r0, r6, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrh r0, [r4, #0x10]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4, #0x10]
	ldrh r0, [r2, #0x10]
	orrs r0, r1
	strh r0, [r2, #0x10]
	adds r0, r7, #0
	bl Proc_Break
_0806D6DE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D6E4: .4byte gAnims

	THUMB_FUNC_END sub_806D678

	THUMB_FUNC_START sub_806D6E8
sub_806D6E8: @ 0x0806D6E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806D700  @ gUnknown_085D9094
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D700: .4byte gUnknown_085D9094

	THUMB_FUNC_END sub_806D6E8

	THUMB_FUNC_START sub_806D704
sub_806D704: @ 0x0806D704
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r6, [r7, #0x5c]
	ldrh r0, [r7, #0x2c]
	adds r0, #1
	strh r0, [r7, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806D722
	adds r0, r6, #0
	movs r1, #5
	bl StartSpellBG_FLASH
	b _0806D758
_0806D722:
	cmp r0, #6
	bne _0806D758
	ldr r5, _0806D760  @ gAnims
	adds r0, r6, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r4, [r0]
	adds r0, r6, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrh r0, [r4, #0x10]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4, #0x10]
	ldrh r0, [r2, #0x10]
	orrs r0, r1
	strh r0, [r2, #0x10]
	adds r0, r7, #0
	bl Proc_Break
_0806D758:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806D760: .4byte gAnims

	THUMB_FUNC_END sub_806D704

	THUMB_FUNC_START sub_806D764
sub_806D764: @ 0x0806D764
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0806D7C4  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806D7C8  @ gUnknown_085D90AC
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x28
	strh r0, [r4, #0x2e]
	ldr r3, _0806D7CC  @ gUnknown_085DD4B4
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _0806D7D0  @ gUnknown_085DCC84
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806D7D4  @ gUnknown_085DCB10
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0xee
	movs r3, #1
	bl EkrSoundSomeBark
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D7C4: .4byte gUnknown_0201774C
_0806D7C8: .4byte gUnknown_085D90AC
_0806D7CC: .4byte gUnknown_085DD4B4
_0806D7D0: .4byte gUnknown_085DCC84
_0806D7D4: .4byte gUnknown_085DCB10

	THUMB_FUNC_END sub_806D764

	THUMB_FUNC_START sub_806D7D8
sub_806D7D8: @ 0x0806D7D8
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	bne _0806D7FC
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0xee
	movs r3, #1
	bl EkrSoundSomeBark
_0806D7FC:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	ble _0806D81C
	ldr r0, [r4, #0x60]
	bl AnimDelete
	ldr r1, _0806D824  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0806D81C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D824: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806D7D8

	THUMB_FUNC_START sub_806D828
sub_806D828: @ 0x0806D828
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0806D888  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806D88C  @ gUnknown_085D90C4
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	movs r0, #0x19
	strh r0, [r4, #0x2e]
	ldr r3, _0806D890  @ gUnknown_085DD484
	str r3, [sp]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r2, r3, #0
	bl sub_8055554
	str r0, [r4, #0x60]
	ldr r0, _0806D894  @ gUnknown_085DCC84
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim
	ldr r0, _0806D898  @ gUnknown_085DCB10
	movs r1, #0x80
	lsls r1, r1, #5
	bl SomeImageStoringRoutine_SpellAnim
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0xe1
	movs r3, #1
	bl EkrSoundSomeBark
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806D888: .4byte gUnknown_0201774C
_0806D88C: .4byte gUnknown_085D90C4
_0806D890: .4byte gUnknown_085DD484
_0806D894: .4byte gUnknown_085DCC84
_0806D898: .4byte gUnknown_085DCB10

	THUMB_FUNC_END sub_806D828

	THUMB_FUNC_START sub_806D89C
sub_806D89C: @ 0x0806D89C
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
	ble _0806D8C6
	ldr r0, [r4, #0x60]
	bl AnimDelete
	ldr r1, _0806D8CC  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_Break
_0806D8C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D8CC: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806D89C

	THUMB_FUNC_START sub_806D8D0
sub_806D8D0: @ 0x0806D8D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0806D904  @ gUnknown_02017768
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0806D91E
	adds r0, r5, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #1
	strh r1, [r0]
	adds r0, r5, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806D90C
	ldr r0, _0806D908  @ gpEkrBattleUnitLeft
	b _0806D90E
	.align 2, 0
_0806D904: .4byte gUnknown_02017768
_0806D908: .4byte gpEkrBattleUnitLeft
_0806D90C:
	ldr r0, _0806D94C  @ gpEkrBattleUnitRight
_0806D90E:
	ldr r0, [r0]
	adds r0, #0x4a
	ldrh r0, [r0]
	bl sub_8058AC8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0806D954
_0806D91E:
	ldr r4, _0806D950  @ gAnims
	adds r0, r5, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r6, [r0]
	adds r0, r5, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldrh r1, [r6, #0x10]
	movs r0, #0x40
	orrs r1, r0
	strh r1, [r6, #0x10]
	ldrh r1, [r2, #0x10]
	orrs r0, r1
	strh r0, [r2, #0x10]
	b _0806D976
	.align 2, 0
_0806D94C: .4byte gpEkrBattleUnitRight
_0806D950: .4byte gAnims
_0806D954:
	ldr r0, _0806D97C  @ gUnknown_085D90DC
	movs r1, #3
	bl Proc_Start
	str r5, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0xf0
	movs r2, #0x78
	movs r3, #0
	bl EkrSoundSomeBark
	adds r0, r5, #0
	bl sub_806D98C
_0806D976:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806D97C: .4byte gUnknown_085D90DC

	THUMB_FUNC_END sub_806D8D0

	THUMB_FUNC_START sub_806D980
sub_806D980: @ 0x0806D980
	push {lr}
	bl Proc_Break
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806D980

	THUMB_FUNC_START sub_806D98C
sub_806D98C: @ 0x0806D98C
	push {r4, lr}
	adds r4, r0, #0
	bl ClearBG1Setup
	ldr r0, _0806D9A8  @ gUnknown_085D90F4
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806D9A8: .4byte gUnknown_085D90F4

	THUMB_FUNC_END sub_806D98C

	THUMB_FUNC_START sub_806D9AC
sub_806D9AC: @ 0x0806D9AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806D9C6
	ldr r0, [r6, #0x5c]
	bl sub_806DA1C
	b _0806DA10
_0806D9C6:
	cmp r0, #0x15
	bne _0806D9DA
	ldr r0, [r6, #0x5c]
	movs r1, #0x2d
	movs r2, #1
	bl sub_805B93C
	bl sub_806DA90
	b _0806DA10
_0806D9DA:
	cmp r0, #0x46
	bne _0806DA10
	ldr r5, _0806DA18  @ gAnims
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r4, [r0]
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrh r0, [r4, #0x10]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4, #0x10]
	ldrh r0, [r2, #0x10]
	orrs r0, r1
	strh r0, [r2, #0x10]
	adds r0, r6, #0
	bl Proc_Break
_0806DA10:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806DA18: .4byte gAnims

	THUMB_FUNC_END sub_806D9AC

	THUMB_FUNC_START sub_806DA1C
sub_806DA1C: @ 0x0806DA1C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0806DA58  @ gUnknown_085D910C
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r5, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	ldr r0, _0806DA5C  @ gUnknown_085E8C04
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	ldr r0, _0806DA60  @ gUnknown_085E8CC4
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, [r4, #0x5c]
	ldr r2, _0806DA64  @ gUnknown_085E8CE4
	adds r1, r2, #0
	bl sub_8055670
	bl sub_80551B0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806DA58: .4byte gUnknown_085D910C
_0806DA5C: .4byte gUnknown_085E8C04
_0806DA60: .4byte gUnknown_085E8CC4
_0806DA64: .4byte gUnknown_085E8CE4

	THUMB_FUNC_END sub_806DA1C

	THUMB_FUNC_START sub_806DA68
sub_806DA68: @ 0x0806DA68
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	bne _0806DA88
	bl ClearBG1
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Break
_0806DA88:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806DA68

	THUMB_FUNC_START sub_806DA90
sub_806DA90: @ 0x0806DA90
	push {lr}
	ldr r0, _0806DAAC  @ gUnknown_085D9124
	movs r1, #3
	bl Proc_Start
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	bl sub_806DB34
	pop {r0}
	bx r0
	.align 2, 0
_0806DAAC: .4byte gUnknown_085D9124

	THUMB_FUNC_END sub_806DA90

	THUMB_FUNC_START sub_806DAB0
sub_806DAB0: @ 0x0806DAB0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r0, _0806DAF8  @ gUnknown_0201FDB8
	ldr r0, [r0]
	ldr r4, _0806DAFC  @ gUnknown_0201FDC4
	cmp r0, #0
	bne _0806DAC0
	ldr r4, _0806DB00  @ gUnknown_0201FF04
_0806DAC0:
	movs r3, #0
	movs r7, #0x88
	lsls r7, r7, #0x10
	movs r6, #0x88
	ldr r5, _0806DB04  @ gUnknown_085D9154
_0806DACA:
	cmp r3, #0x77
	bhi _0806DB16
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r2, ip
	ldr r0, [r2, #0x44]
	muls r0, r1, r0
	lsls r0, r0, #4
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _0806DB12
	cmp r3, #0x3b
	bhi _0806DB0C
	adds r0, r3, #0
	subs r0, #0x88
	cmp r1, r0
	bcs _0806DB12
	ldr r1, _0806DB08  @ 0x0000FF78
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _0806DB12
	.align 2, 0
_0806DAF8: .4byte gUnknown_0201FDB8
_0806DAFC: .4byte gUnknown_0201FDC4
_0806DB00: .4byte gUnknown_0201FF04
_0806DB04: .4byte gUnknown_085D9154
_0806DB08: .4byte 0x0000FF78
_0806DB0C:
	cmp r1, r6
	bls _0806DB12
	lsrs r2, r7, #0x10
_0806DB12:
	strh r2, [r4]
	b _0806DB1A
_0806DB16:
	movs r0, #0
	strh r0, [r4]
_0806DB1A:
	adds r4, #2
	ldr r2, _0806DB30  @ 0xFFFF0000
	adds r7, r7, r2
	subs r6, #1
	adds r5, #2
	adds r3, #1
	cmp r3, #0x9f
	bls _0806DACA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806DB30: .4byte 0xFFFF0000

	THUMB_FUNC_END sub_806DAB0

	THUMB_FUNC_START sub_806DB34
sub_806DB34: @ 0x0806DB34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806DB50  @ gUnknown_085D913C
	movs r1, #3
	bl Proc_Start
	movs r1, #0
	strh r1, [r0, #0x2c]
	movs r1, #0x28
	strh r1, [r0, #0x2e]
	str r4, [r0, #0x5c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806DB50: .4byte gUnknown_085D913C

	THUMB_FUNC_END sub_806DB34

	THUMB_FUNC_START sub_806DB54
sub_806DB54: @ 0x0806DB54
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r5, [r4, #0x5c]
	movs r2, #0x80
	lsls r2, r2, #0xb
	movs r0, #0x2c
	ldrsh r3, [r4, r0]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	bl Interpolate
	str r0, [r5, #0x44]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	ble _0806DB92
	adds r0, r5, #0
	bl Proc_End
	adds r0, r4, #0
	bl Proc_Break
_0806DB92:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806DB54

	THUMB_FUNC_START sub_806DB9C
sub_806DB9C: @ 0x0806DB9C
	push {r4, lr}
	adds r4, r0, #0
	bl ClearBG1Setup
	ldr r0, _0806DBB8  @ gUnknown_085D9244
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806DBB8: .4byte gUnknown_085D9244

	THUMB_FUNC_END sub_806DB9C

	THUMB_FUNC_START sub_806DBBC
sub_806DBBC: @ 0x0806DBBC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x11
	bne _0806DBF2
	ldr r0, [r5, #0x5c]
	movs r1, #0x49
	bl sub_806DC08
	movs r4, #0xa0
	lsls r4, r4, #1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	bl SomePlaySound_8071990
	ldr r0, [r5, #0x5c]
	movs r2, #2
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	movs r2, #1
	bl M4aPlayWithPostionCtrl
_0806DBF2:
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	cmp r0, #0x64
	bne _0806DC00
	adds r0, r5, #0
	bl Proc_Break
_0806DC00:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806DBBC

	THUMB_FUNC_START sub_806DC08
sub_806DC08: @ 0x0806DC08
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0806DC88  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806DC8C  @ gUnknown_085D925C
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	strh r5, [r0, #0x30]
	str r1, [r0, #0x44]
	ldr r1, _0806DC90  @ gUnknown_080DF4F4
	str r1, [r0, #0x48]
	ldr r1, _0806DC94  @ gUnknown_085D9274
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r0, _0806DC98  @ gUnknown_085F0E04
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	ldr r0, _0806DC9C  @ gUnknown_085F0190
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	bl sub_80551B0
	ldr r3, _0806DCA0  @ gLCDControlBuffer
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
	movs r0, #1
	movs r1, #0x10
	movs r2, #0
	bl BG_SetPosition
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0806DC88: .4byte gUnknown_0201774C
_0806DC8C: .4byte gUnknown_085D925C
_0806DC90: .4byte gUnknown_080DF4F4
_0806DC94: .4byte gUnknown_085D9274
_0806DC98: .4byte gUnknown_085F0E04
_0806DC9C: .4byte gUnknown_085F0190
_0806DCA0: .4byte gLCDControlBuffer

	THUMB_FUNC_END sub_806DC08

	THUMB_FUNC_START sub_806DCA4
sub_806DCA4: @ 0x0806DCA4
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
	blt _0806DCD0
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
_0806DCD0:
	ldrh r0, [r4, #0x2e]
	adds r0, #1
	strh r0, [r4, #0x2e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x30
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0806DD24
	ldr r3, _0806DD2C  @ gLCDControlBuffer
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
	bl ClearBG1
	ldr r1, _0806DD30  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Break
_0806DD24:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806DD2C: .4byte gLCDControlBuffer
_0806DD30: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806DCA4

	THUMB_FUNC_START sub_806DD34
sub_806DD34: @ 0x0806DD34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	bl GetAISSubjectId
	ldr r1, _0806DD60  @ gEkrPairBanimID2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	subs r0, #0x6a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x51
	bls _0806DD56
	b _0806DF10
_0806DD56:
	lsls r0, r0, #2
	ldr r1, _0806DD64  @ _0806DD68
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806DD60: .4byte gEkrPairBanimID2
_0806DD64: .4byte _0806DD68
_0806DD68: @ jump table
	.4byte _0806DF10 @ case 0
	.4byte _0806DF10 @ case 1
	.4byte _0806DEB0 @ case 2
	.4byte _0806DF10 @ case 3
	.4byte _0806DEB0 @ case 4
	.4byte _0806DF10 @ case 5
	.4byte _0806DF10 @ case 6
	.4byte _0806DF10 @ case 7
	.4byte _0806DF10 @ case 8
	.4byte _0806DF10 @ case 9
	.4byte _0806DEC0 @ case 10
	.4byte _0806DEC0 @ case 11
	.4byte _0806DF10 @ case 12
	.4byte _0806DF10 @ case 13
	.4byte _0806DF10 @ case 14
	.4byte _0806DF10 @ case 15
	.4byte _0806DF10 @ case 16
	.4byte _0806DF10 @ case 17
	.4byte _0806DF10 @ case 18
	.4byte _0806DF10 @ case 19
	.4byte _0806DF10 @ case 20
	.4byte _0806DF10 @ case 21
	.4byte _0806DF10 @ case 22
	.4byte _0806DF10 @ case 23
	.4byte _0806DF10 @ case 24
	.4byte _0806DF10 @ case 25
	.4byte _0806DF10 @ case 26
	.4byte _0806DF10 @ case 27
	.4byte _0806DF10 @ case 28
	.4byte _0806DF10 @ case 29
	.4byte _0806DF10 @ case 30
	.4byte _0806DF10 @ case 31
	.4byte _0806DF10 @ case 32
	.4byte _0806DF10 @ case 33
	.4byte _0806DF10 @ case 34
	.4byte _0806DF10 @ case 35
	.4byte _0806DF10 @ case 36
	.4byte _0806DF10 @ case 37
	.4byte _0806DF10 @ case 38
	.4byte _0806DF10 @ case 39
	.4byte _0806DF10 @ case 40
	.4byte _0806DF10 @ case 41
	.4byte _0806DED0 @ case 42
	.4byte _0806DF10 @ case 43
	.4byte _0806DF10 @ case 44
	.4byte _0806DF10 @ case 45
	.4byte _0806DF10 @ case 46
	.4byte _0806DF10 @ case 47
	.4byte _0806DF10 @ case 48
	.4byte _0806DF10 @ case 49
	.4byte _0806DEE0 @ case 50
	.4byte _0806DEE0 @ case 51
	.4byte _0806DF10 @ case 52
	.4byte _0806DF10 @ case 53
	.4byte _0806DF10 @ case 54
	.4byte _0806DF10 @ case 55
	.4byte _0806DF10 @ case 56
	.4byte _0806DF10 @ case 57
	.4byte _0806DF10 @ case 58
	.4byte _0806DF10 @ case 59
	.4byte _0806DF10 @ case 60
	.4byte _0806DF10 @ case 61
	.4byte _0806DF10 @ case 62
	.4byte _0806DF10 @ case 63
	.4byte _0806DF10 @ case 64
	.4byte _0806DF10 @ case 65
	.4byte _0806DF10 @ case 66
	.4byte _0806DF10 @ case 67
	.4byte _0806DF10 @ case 68
	.4byte _0806DF10 @ case 69
	.4byte _0806DF10 @ case 70
	.4byte _0806DF10 @ case 71
	.4byte _0806DF10 @ case 72
	.4byte _0806DF10 @ case 73
	.4byte _0806DF10 @ case 74
	.4byte _0806DF10 @ case 75
	.4byte _0806DF10 @ case 76
	.4byte _0806DF10 @ case 77
	.4byte _0806DF10 @ case 78
	.4byte _0806DEF0 @ case 79
	.4byte _0806DEF0 @ case 80
	.4byte _0806DF00 @ case 81
_0806DEB0:
	ldr r5, _0806DEB8  @ gUnknown_085F1F18
	ldr r4, _0806DEBC  @ gUnknown_085F20C4
	b _0806DF14
	.align 2, 0
_0806DEB8: .4byte gUnknown_085F1F18
_0806DEBC: .4byte gUnknown_085F20C4
_0806DEC0:
	ldr r5, _0806DEC8  @ gUnknown_085F2270
	ldr r4, _0806DECC  @ gUnknown_085F2418
	b _0806DF14
	.align 2, 0
_0806DEC8: .4byte gUnknown_085F2270
_0806DECC: .4byte gUnknown_085F2418
_0806DED0:
	ldr r5, _0806DED8  @ gUnknown_085F24F4
	ldr r4, _0806DEDC  @ gUnknown_085F25D8
	b _0806DF14
	.align 2, 0
_0806DED8: .4byte gUnknown_085F24F4
_0806DEDC: .4byte gUnknown_085F25D8
_0806DEE0:
	ldr r5, _0806DEE8  @ gUnknown_085F26E0
	ldr r4, _0806DEEC  @ gUnknown_085F27E4
	b _0806DF14
	.align 2, 0
_0806DEE8: .4byte gUnknown_085F26E0
_0806DEEC: .4byte gUnknown_085F27E4
_0806DEF0:
	ldr r5, _0806DEF8  @ gUnknown_085F29C0
	ldr r4, _0806DEFC  @ gUnknown_085F2C3C
	b _0806DF14
	.align 2, 0
_0806DEF8: .4byte gUnknown_085F29C0
_0806DEFC: .4byte gUnknown_085F2C3C
_0806DF00:
	ldr r5, _0806DF08  @ gUnknown_085F2D44
	ldr r4, _0806DF0C  @ gUnknown_085F2DAC
	b _0806DF14
	.align 2, 0
_0806DF08: .4byte gUnknown_085F2D44
_0806DF0C: .4byte gUnknown_085F2DAC
_0806DF10:
	ldr r5, _0806DF70  @ gUnknown_085F1BD8
	ldr r4, _0806DF74  @ gUnknown_085F1D6C
_0806DF14:
	ldr r0, _0806DF78  @ gUnknown_085D9284
	movs r1, #3
	bl Proc_Start
	adds r6, r0, #0
	str r7, [r6, #0x5c]
	movs r0, #0
	mov r8, r0
	movs r0, #0
	strh r0, [r6, #0x2c]
	str r5, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r6, #0x60]
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	ldr r1, _0806DF7C  @ gUnknown_02000010
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r6, #0x60]
	str r1, [r0]
	ldrh r1, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #4
	ands r0, r1
	strh r0, [r4, #8]
	movs r0, #0x64
	strh r0, [r4, #0xa]
	bl AnimSort
	adds r0, r7, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806DF80
	ldrh r0, [r4, #8]
	movs r2, #0xe4
	lsls r2, r2, #7
	b _0806DF86
	.align 2, 0
_0806DF70: .4byte gUnknown_085F1BD8
_0806DF74: .4byte gUnknown_085F1D6C
_0806DF78: .4byte gUnknown_085D9284
_0806DF7C: .4byte gUnknown_02000010
_0806DF80:
	ldrh r0, [r4, #8]
	movs r2, #0x93
	lsls r2, r2, #8
_0806DF86:
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #8]
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	bl SetAnimStateHidden
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806DD34

	THUMB_FUNC_START sub_806DFA4
sub_806DFA4: @ 0x0806DFA4
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0x60]
	ldr r0, [r2, #0x5c]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldr r0, [r2, #0x5c]
	ldrh r1, [r0, #0x10]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806DFCA
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806DFCA
	adds r0, r2, #0
	bl Proc_Break
_0806DFCA:
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806DFA4

	THUMB_FUNC_START sub_806DFD0
sub_806DFD0: @ 0x0806DFD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	bl sub_80522CC
	cmp r0, #1
	bne _0806E00A
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	bl SetAnimStateUnHidden
	ldr r0, [r4, #0x60]
	bl AnimDelete
	ldr r0, [r4, #0x5c]
	bl GetAISSubjectId
	ldr r1, _0806E010  @ gUnknown_02000010
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	adds r0, r4, #0
	bl Proc_Break
_0806E00A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E010: .4byte gUnknown_02000010

	THUMB_FUNC_END sub_806DFD0

	THUMB_FUNC_START sub_806E014
sub_806E014: @ 0x0806E014
	push {r4, lr}
	adds r4, r0, #0
	bl ClearBG1Setup
	ldr r0, _0806E030  @ gUnknown_085D92A4
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E030: .4byte gUnknown_085D92A4

	THUMB_FUNC_END sub_806E014

	THUMB_FUNC_START sub_806E034
sub_806E034: @ 0x0806E034
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806E054
	ldr r0, [r4, #0x5c]
	bl sub_806E078
	ldr r0, [r4, #0x5c]
	bl sub_806E128
	b _0806E070
_0806E054:
	cmp r0, #3
	beq _0806E05C
	cmp r0, #0x11
	bne _0806E066
_0806E05C:
	ldr r0, [r4, #0x5c]
	movs r1, #5
	bl sub_8053F8C
	b _0806E070
_0806E066:
	cmp r0, #0x24
	bne _0806E070
	adds r0, r4, #0
	bl Proc_Break
_0806E070:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806E034

	THUMB_FUNC_START sub_806E078
sub_806E078: @ 0x0806E078
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806E0BC  @ gUnknown_0201774C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, _0806E0C0  @ gUnknown_085D92BC
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	strh r1, [r0, #0x2e]
	str r1, [r0, #0x44]
	ldr r1, _0806E0C4  @ gUnknown_080DF546
	str r1, [r0, #0x48]
	ldr r1, _0806E0C8  @ gUnknown_085D92D4
	str r1, [r0, #0x4c]
	str r1, [r0, #0x50]
	ldr r0, _0806E0CC  @ gUnknown_0872E998
	movs r1, #0x80
	lsls r1, r1, #6
	bl SomeImageStoringRoutine_SpellAnim2
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E0BC: .4byte gUnknown_0201774C
_0806E0C0: .4byte gUnknown_085D92BC
_0806E0C4: .4byte gUnknown_080DF546
_0806E0C8: .4byte gUnknown_085D92D4
_0806E0CC: .4byte gUnknown_0872E998

	THUMB_FUNC_END sub_806E078

	THUMB_FUNC_START sub_806E0D0
sub_806E0D0: @ 0x0806E0D0
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
	blt _0806E0FE
	ldr r1, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	ldr r0, [r4, #0x5c]
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_8055670
	b _0806E11C
_0806E0FE:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne _0806E11C
	bl ClearBG1
	ldr r1, _0806E124  @ gUnknown_0201774C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bl sub_805526C
	adds r0, r4, #0
	bl Proc_Break
_0806E11C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E124: .4byte gUnknown_0201774C

	THUMB_FUNC_END sub_806E0D0

	THUMB_FUNC_START sub_806E128
sub_806E128: @ 0x0806E128
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806E14C  @ gUnknown_085D92E0
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	str r1, [r0, #0x44]
	ldr r1, _0806E150  @ gUnknown_080DF568
	str r1, [r0, #0x48]
	ldr r1, _0806E154  @ gUnknown_087456E8
	str r1, [r0, #0x4c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E14C: .4byte gUnknown_085D92E0
_0806E150: .4byte gUnknown_080DF568
_0806E154: .4byte gUnknown_087456E8

	THUMB_FUNC_END sub_806E128

	THUMB_FUNC_START sub_806E158
sub_806E158: @ 0x0806E158
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r0, #0
	adds r0, #0x2c
	adds r1, r4, #0
	adds r1, #0x44
	ldr r2, [r4, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0806E1D8
	ldr r0, [r4, #0x4c]
	mov r7, sp
	lsls r1, r1, #5
	adds r0, r0, r1
	mov r1, sp
	movs r2, #8
	bl CpuFastSet
	movs r6, #0
	movs r0, #0x1f
	mov ip, r0
_0806E188:
	lsls r0, r6, #1
	adds r5, r0, r7
	ldrh r1, [r5]
	lsrs r3, r1, #5
	mov r2, ip
	ands r3, r2
	mov r0, ip
	ands r0, r1
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x13
	adds r1, r0, r2
	lsrs r2, r1, #0x18
	cmp r0, #0
	bge _0806E1AC
	movs r4, #0
_0806E1AC:
	lsls r0, r2, #0x18
	cmp r0, #0
	bge _0806E1B4
	movs r2, #0
_0806E1B4:
	lsls r1, r4, #0x18
	asrs r1, r1, #0x18
	lsls r0, r3, #5
	orrs r1, r0
	lsls r0, r2, #0x18
	asrs r0, r0, #0xe
	orrs r1, r0
	strh r1, [r5]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0xf
	bls _0806E188
	adds r0, r7, #0
	movs r1, #0x20
	bl SomePaletteStoringRoutine_SpellAnim2
	b _0806E1E6
_0806E1D8:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0806E1E6
	adds r0, r4, #0
	bl Proc_Break
_0806E1E6:
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806E158

	THUMB_FUNC_START sub_806E1F0
sub_806E1F0: @ 0x0806E1F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	cmp r1, #0
	bne _0806E202
	ldr r4, _0806E25C  @ gUnknown_08746508
	ldr r7, _0806E260  @ gUnknown_0874670C
_0806E202:
	ldr r0, _0806E264  @ gUnknown_085D9300
	movs r1, #3
	bl Proc_Start
	adds r5, r0, #0
	str r6, [r5, #0x5c]
	movs r0, #0
	mov r8, r0
	movs r0, #0
	strh r0, [r5, #0x2c]
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl sub_8055554
	adds r4, r0, #0
	str r4, [r5, #0x60]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	ldr r1, _0806E268  @ gUnknown_02000010
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r5, #0x60]
	str r1, [r0]
	ldrh r1, [r4, #8]
	movs r0, #0xc0
	lsls r0, r0, #4
	ands r0, r1
	strh r0, [r4, #8]
	movs r0, #0x64
	strh r0, [r4, #0xa]
	bl AnimSort
	adds r0, r6, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806E26C
	ldrh r0, [r4, #8]
	movs r2, #0xe4
	lsls r2, r2, #7
	b _0806E272
	.align 2, 0
_0806E25C: .4byte gUnknown_08746508
_0806E260: .4byte gUnknown_0874670C
_0806E264: .4byte gUnknown_085D9300
_0806E268: .4byte gUnknown_02000010
_0806E26C:
	ldrh r0, [r4, #8]
	movs r2, #0x93
	lsls r2, r2, #8
_0806E272:
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #8]
	ldr r0, [r5, #0x5c]
	bl GetAISSubjectId
	bl SetAnimStateHidden
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806E1F0

	THUMB_FUNC_START sub_806E290
sub_806E290: @ 0x0806E290
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x60]
	ldr r0, [r6, #0x5c]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldrh r0, [r6, #0x2c]
	adds r0, #1
	strh r0, [r6, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	bne _0806E2FC
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	bl SetAnimStateUnHidden
	ldr r0, [r6, #0x60]
	bl AnimDelete
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	ldr r1, _0806E304  @ gUnknown_02000010
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	ldr r5, _0806E308  @ gAnims
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r4, [r0]
	ldr r0, [r6, #0x5c]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r2, [r0]
	ldrh r0, [r4, #0x10]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4, #0x10]
	ldrh r0, [r2, #0x10]
	orrs r0, r1
	strh r0, [r2, #0x10]
	adds r0, r6, #0
	bl Proc_Break
_0806E2FC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806E304: .4byte gUnknown_02000010
_0806E308: .4byte gAnims

	THUMB_FUNC_END sub_806E290

	THUMB_FUNC_START nullsub_17
nullsub_17: @ 0x0806E30C
	bx lr

	THUMB_FUNC_END nullsub_17

	THUMB_FUNC_START sub_806E310
sub_806E310: @ 0x0806E310
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, _0806E364  @ gUnknown_085D9318
	movs r1, #3
	bl Proc_Start
	adds r7, r0, #0
	str r4, [r7, #0x5c]
	movs r0, #0
	strh r0, [r7, #0x2c]
	str r0, [r7, #0x44]
	ldr r0, _0806E368  @ gUnknown_080DF5D6
	str r0, [r7, #0x48]
	ldr r0, _0806E36C  @ gUnknown_085D9330
	str r0, [r7, #0x4c]
	str r0, [r7, #0x50]
	ldr r0, _0806E370  @ gUnknown_085D9370
	str r0, [r7, #0x54]
	ldr r0, _0806E374  @ gUnknown_085D93B0
	str r0, [r7, #0x58]
	bl sub_80551B0
	ldr r0, _0806E378  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0806E386
	ldr r0, [r7, #0x5c]
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806E37C
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0806E386
	.align 2, 0
_0806E364: .4byte gUnknown_085D9318
_0806E368: .4byte gUnknown_080DF5D6
_0806E36C: .4byte gUnknown_085D9330
_0806E370: .4byte gUnknown_085D9370
_0806E374: .4byte gUnknown_085D93B0
_0806E378: .4byte gEkrDistanceType
_0806E37C:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0806E386:
	ldr r4, [r7, #0x5c]
	ldr r2, _0806E43C  @ gAnims
	mov r9, r2
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	add r0, r9
	ldr r6, [r0]
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	add r0, r9
	ldr r1, [r0]
	ldrh r0, [r4, #0x10]
	movs r3, #0x20
	mov r8, r3
	mov r2, r8
	orrs r0, r2
	strh r0, [r4, #0x10]
	ldrh r0, [r4]
	movs r5, #8
	orrs r0, r5
	strh r0, [r4]
	ldrh r0, [r6, #0x10]
	orrs r0, r2
	strh r0, [r6, #0x10]
	ldrh r0, [r6]
	orrs r0, r5
	strh r0, [r6]
	ldrh r0, [r1, #0x10]
	orrs r0, r2
	strh r0, [r1, #0x10]
	ldrh r0, [r1]
	orrs r0, r5
	strh r0, [r1]
	ldr r0, [r7, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	add r0, r9
	ldr r6, [r0]
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	add r0, r9
	ldr r1, [r0]
	ldrh r0, [r4, #0x10]
	mov r3, r8
	orrs r0, r3
	strh r0, [r4, #0x10]
	ldrh r0, [r4]
	orrs r0, r5
	strh r0, [r4]
	ldrh r0, [r6, #0x10]
	orrs r0, r3
	strh r0, [r6, #0x10]
	ldrh r0, [r6]
	orrs r0, r5
	strh r0, [r6]
	ldrh r0, [r1, #0x10]
	orrs r0, r3
	strh r0, [r1, #0x10]
	ldrh r0, [r1]
	orrs r5, r0
	strh r5, [r1]
	ldr r0, _0806E440  @ 0x000003D1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r7, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl EkrSoundSomeBark
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E43C: .4byte gAnims
_0806E440: .4byte 0x000003D1

	THUMB_FUNC_END sub_806E310

	THUMB_FUNC_START sub_806E444
sub_806E444: @ 0x0806E444
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
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0806E4C0
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
	movs r3, #0
	ldr r4, _0806E4BC  @ gBG1TilemapBuffer
_0806E494:
	lsls r2, r3, #5
	adds r0, r2, #0
	adds r0, #0x1e
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r4]
	strh r1, [r0]
	adds r2, #0x1f
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r4]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x13
	bls _0806E494
	bl sub_80551B0
	b _0806E578
	.align 2, 0
_0806E4BC: .4byte gBG1TilemapBuffer
_0806E4C0:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0806E578
	bl ClearBG1
	bl sub_805526C
	ldr r4, [r7, #0x5c]
	ldr r0, _0806E584  @ gAnims
	mov r8, r0
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	str r3, [sp]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0]
	ldrh r0, [r4, #0x10]
	movs r6, #0x40
	orrs r0, r6
	strh r0, [r4, #0x10]
	ldrh r1, [r4]
	ldr r5, _0806E588  @ 0x0000FFF7
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r4]
	ldr r3, [sp]
	ldrh r0, [r3, #0x10]
	orrs r0, r6
	strh r0, [r3, #0x10]
	ldrh r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r3]
	ldrh r0, [r2, #0x10]
	orrs r0, r6
	strh r0, [r2, #0x10]
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r7, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	str r3, [sp]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0]
	ldrh r0, [r4, #0x10]
	orrs r0, r6
	strh r0, [r4, #0x10]
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r4]
	ldr r3, [sp]
	ldrh r0, [r3, #0x10]
	orrs r0, r6
	strh r0, [r3, #0x10]
	ldrh r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r3]
	ldrh r0, [r2, #0x10]
	orrs r6, r0
	strh r6, [r2, #0x10]
	ldrh r0, [r2]
	ands r5, r0
	strh r5, [r2]
	adds r0, r7, #0
	bl Proc_Break
_0806E578:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806E584: .4byte gAnims
_0806E588: .4byte 0x0000FFF7

	THUMB_FUNC_END sub_806E444

	THUMB_FUNC_START sub_806E58C
sub_806E58C: @ 0x0806E58C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0806E5E8  @ gUnknown_085D93F0
	movs r1, #3
	bl Proc_Start
	adds r4, r0, #0
	str r6, [r4, #0x5c]
	movs r0, #0
	strh r0, [r4, #0x2c]
	str r0, [r4, #0x44]
	strh r5, [r4, #0x3a]
	ldr r0, _0806E5EC  @ gUnknown_080DF5D6
	str r0, [r4, #0x48]
	ldr r0, _0806E5F0  @ gUnknown_085D9330
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
	ldr r0, _0806E5F4  @ gUnknown_085D9370
	str r0, [r4, #0x54]
	ldr r0, _0806E5F8  @ gUnknown_085D93B0
	str r0, [r4, #0x58]
	bl sub_80551B0
	ldr r0, [r4, #0x5c]
	bl GetCoreAIStruct
	adds r1, r0, #0
	ldr r0, _0806E5FC  @ gEkrDistanceType
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0806E60A
	adds r0, r1, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _0806E600
	movs r0, #1
	movs r1, #0x18
	movs r2, #0
	bl BG_SetPosition
	b _0806E60A
	.align 2, 0
_0806E5E8: .4byte gUnknown_085D93F0
_0806E5EC: .4byte gUnknown_080DF5D6
_0806E5F0: .4byte gUnknown_085D9330
_0806E5F4: .4byte gUnknown_085D9370
_0806E5F8: .4byte gUnknown_085D93B0
_0806E5FC: .4byte gEkrDistanceType
_0806E600:
	movs r0, #1
	movs r1, #0xe8
	movs r2, #0
	bl BG_SetPosition
_0806E60A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806E58C

	THUMB_FUNC_START sub_806E610
sub_806E610: @ 0x0806E610
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806E634  @ 0x000003D1
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r4, #0x5c]
	movs r3, #2
	ldrsh r2, [r2, r3]
	movs r3, #1
	bl EkrSoundSomeBark
	adds r0, r4, #0
	bl Proc_Break
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E634: .4byte 0x000003D1

	THUMB_FUNC_END sub_806E610

	THUMB_FUNC_START sub_806E638
sub_806E638: @ 0x0806E638
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x5c]
	bl GetCoreAIStruct
	adds r7, r0, #0
	adds r0, r6, #0
	adds r0, #0x2c
	adds r1, r6, #0
	adds r1, #0x44
	ldr r2, [r6, #0x48]
	bl sub_80558F4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	blt _0806E6B4
	ldr r0, [r6, #0x4c]
	ldr r2, [r6, #0x50]
	ldr r5, [r6, #0x54]
	ldr r6, [r6, #0x58]
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r1, [r0]
	adds r2, r4, r2
	ldr r2, [r2]
	adds r0, r7, #0
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
	movs r3, #0
	ldr r4, _0806E6B0  @ gBG1TilemapBuffer
_0806E68C:
	lsls r2, r3, #5
	adds r0, r2, #0
	adds r0, #0x1e
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r4]
	strh r1, [r0]
	adds r2, #0x1f
	lsls r2, r2, #1
	adds r2, r2, r4
	ldrh r0, [r4]
	strh r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x13
	bls _0806E68C
	b _0806E6DA
	.align 2, 0
_0806E6B0: .4byte gBG1TilemapBuffer
_0806E6B4:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0806E6DA
	movs r1, #0x3a
	ldrsh r0, [r6, r1]
	cmp r0, #1
	bne _0806E6CC
	adds r0, r7, #0
	movs r1, #0xc
	bl sub_8054BA4
_0806E6CC:
	bl ClearBG1
	bl sub_805526C
	adds r0, r6, #0
	bl Proc_Break
_0806E6DA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806E638

	THUMB_FUNC_START sub_806E6E0
sub_806E6E0: @ 0x0806E6E0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, r9
	mov r4, r8
	push {r4, r5, r6}
	mov sl, r0
	ldr r4, [r0, #0x5c]
	ldr r0, _0806E798  @ gAnims
	mov r9, r0
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	add r0, r9
	ldr r6, [r0]
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	add r0, r9
	ldr r1, [r0]
	ldrh r0, [r4, #0x10]
	movs r2, #0x20
	mov r8, r2
	mov r2, r8
	orrs r0, r2
	strh r0, [r4, #0x10]
	ldrh r0, [r4]
	movs r5, #8
	orrs r0, r5
	strh r0, [r4]
	ldrh r0, [r6, #0x10]
	orrs r0, r2
	strh r0, [r6, #0x10]
	ldrh r0, [r6]
	orrs r0, r5
	strh r0, [r6]
	ldrh r0, [r1, #0x10]
	orrs r0, r2
	strh r0, [r1, #0x10]
	ldrh r0, [r1]
	orrs r0, r5
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	add r0, r9
	ldr r6, [r0]
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	add r0, r9
	ldr r1, [r0]
	ldrh r0, [r4, #0x10]
	mov r2, r8
	orrs r0, r2
	strh r0, [r4, #0x10]
	ldrh r0, [r4]
	orrs r0, r5
	strh r0, [r4]
	ldrh r0, [r6, #0x10]
	orrs r0, r2
	strh r0, [r6, #0x10]
	ldrh r0, [r6]
	orrs r0, r5
	strh r0, [r6]
	ldrh r0, [r1, #0x10]
	orrs r0, r2
	strh r0, [r1, #0x10]
	ldrh r0, [r1]
	orrs r5, r0
	strh r5, [r1]
	mov r0, sl
	bl Proc_Break
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806E798: .4byte gAnims

	THUMB_FUNC_END sub_806E6E0

	THUMB_FUNC_START sub_806E79C
sub_806E79C: @ 0x0806E79C
	push {r4, r5, r6, lr}
	mov r6, r9
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r9, r0
	ldr r4, [r0, #0x5c]
	ldr r0, _0806E860  @ gAnims
	mov r8, r0
	adds r0, r4, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	str r3, [sp]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0]
	ldrh r0, [r4, #0x10]
	movs r6, #0x40
	orrs r0, r6
	strh r0, [r4, #0x10]
	ldrh r1, [r4]
	ldr r5, _0806E864  @ 0x0000FFF7
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r4]
	ldr r3, [sp]
	ldrh r0, [r3, #0x10]
	orrs r0, r6
	strh r0, [r3, #0x10]
	ldrh r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r3]
	ldrh r0, [r2, #0x10]
	orrs r0, r6
	strh r0, [r2, #0x10]
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2]
	mov r1, r9
	ldr r0, [r1, #0x5c]
	bl GetCoreAIStruct
	adds r4, r0, #0
	bl GetAISSubjectId
	lsls r0, r0, #3
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	str r3, [sp]
	bl GetAISSubjectId
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0]
	ldrh r0, [r4, #0x10]
	orrs r0, r6
	strh r0, [r4, #0x10]
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r4]
	ldr r3, [sp]
	ldrh r0, [r3, #0x10]
	orrs r0, r6
	strh r0, [r3, #0x10]
	ldrh r1, [r3]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r3]
	ldrh r0, [r2, #0x10]
	orrs r6, r0
	strh r6, [r2, #0x10]
	ldrh r0, [r2]
	ands r5, r0
	strh r5, [r2]
	mov r0, r9
	bl Proc_Break
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0806E860: .4byte gAnims
_0806E864: .4byte 0x0000FFF7

	THUMB_FUNC_END sub_806E79C

	THUMB_FUNC_START sub_806E868
sub_806E868: @ 0x0806E868
	push {r4, lr}
	adds r4, r0, #0
	bl GetAnimationStartFrameMaybe
	adds r2, r0, #0
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _0806E88C
	ldr r0, [r4, #0x5c]
	movs r1, #1
	negs r1, r1
	bl NewEfxFarAttackWithDistance
	b _0806E89E
_0806E88C:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0xa
	cmp r1, r0
	bne _0806E89E
	adds r0, r4, #0
	bl Proc_Break
_0806E89E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806E868

	THUMB_FUNC_START sub_806E8A4
sub_806E8A4: @ 0x0806E8A4
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
	bne _0806E8D0
	movs r1, #1
	negs r1, r1
	adds r0, r5, #0
	bl NewEfxFarAttackWithDistance
	b _0806E8EA
_0806E8D0:
	movs r0, #0x2c
	ldrsh r1, [r4, r0]
	adds r0, r2, #0
	adds r0, #0xa
	cmp r1, r0
	bne _0806E8EA
	ldrh r0, [r5, #0x10]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r5, #0x10]
	adds r0, r4, #0
	bl Proc_Break
_0806E8EA:
	pop {r4, r5}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_806E8A4

	THUMB_FUNC_START sub_806E8F0
sub_806E8F0: @ 0x0806E8F0
	ldr r0, _0806E8FC  @ gpProcefxopCur
	movs r1, #0
	str r1, [r0]
	ldr r0, _0806E900  @ gUnknown_0203E1EC
	str r1, [r0]
	bx lr
	.align 2, 0
_0806E8FC: .4byte gpProcefxopCur
_0806E900: .4byte gUnknown_0203E1EC

	THUMB_FUNC_END sub_806E8F0

	THUMB_FUNC_START sub_806E904
sub_806E904: @ 0x0806E904
	push {r4, lr}
	ldr r4, _0806E91C  @ gpProcefxopCur
	ldr r0, [r4]
	cmp r0, #0
	beq _0806E916
	bl Proc_End
	movs r0, #0
	str r0, [r4]
_0806E916:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E91C: .4byte gpProcefxopCur

	THUMB_FUNC_END sub_806E904

	THUMB_FUNC_START sub_806E920
sub_806E920: @ 0x0806E920
	push {r4, lr}
	ldr r4, _0806E938  @ gUnknown_0203E1EC
	ldr r0, [r4]
	cmp r0, #0
	beq _0806E932
	bl Proc_End
	movs r0, #0
	str r0, [r4]
_0806E932:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806E938: .4byte gUnknown_0203E1EC

	THUMB_FUNC_END sub_806E920
