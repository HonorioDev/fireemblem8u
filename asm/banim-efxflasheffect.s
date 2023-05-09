	.INCLUDE "macro.inc"

	.SYNTAX UNIFIED

	THUMB_FUNC_START NewEfxWeaponIcon
NewEfxWeaponIcon: @ 0x08054E8C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08054EC8  @ gProc_efxWeaponIcon
	movs r1, #3
	bl Proc_Start
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
	ldr r1, _08054ED0  @ gpProcEfxWeaponIcon
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08054EC8: .4byte gProc_efxWeaponIcon
_08054ECC: .4byte gUnknown_080DAD0A
_08054ED0: .4byte gpProcEfxWeaponIcon

	THUMB_FUNC_END NewEfxWeaponIcon

	THUMB_FUNC_START EndProcEfxWeaponIcon
EndProcEfxWeaponIcon: @ 0x08054ED4
	push {r4, lr}
	ldr r4, _08054EEC  @ gpProcEfxWeaponIcon
	ldr r0, [r4]
	cmp r0, #0
	beq _08054EE6
	bl Proc_End
	movs r0, #0
	str r0, [r4]
_08054EE6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08054EEC: .4byte gpProcEfxWeaponIcon

	THUMB_FUNC_END EndProcEfxWeaponIcon

	THUMB_FUNC_START EfxWeaponIconSet50
EfxWeaponIconSet50: @ 0x08054EF0
	ldr r0, _08054EFC  @ gpProcEfxWeaponIcon
	ldr r1, [r0]
	movs r0, #1
	str r0, [r1, #0x50]
	bx lr
	.align 2, 0
_08054EFC: .4byte gpProcEfxWeaponIcon

	THUMB_FUNC_END EfxWeaponIconSet50

	THUMB_FUNC_START EfxWeaponIconClear50
EfxWeaponIconClear50: @ 0x08054F00
	ldr r0, _08054F0C  @ gpProcEfxWeaponIcon
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #0x50]
	bx lr
	.align 2, 0
_08054F0C: .4byte gpProcEfxWeaponIcon

	THUMB_FUNC_END EfxWeaponIconClear50

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

	THUMB_FUNC_END sub_8054F10

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

	THUMB_FUNC_END sub_8054F78

	THUMB_FUNC_START NewEfxSpellCast
NewEfxSpellCast: @ 0x08054FA8
	push {r4, r5, lr}
	bl GetBanimDragonStatusType
	adds r4, r0, #0
	cmp r4, #0
	bne _08054FF4
	ldr r0, _08054FDC  @ gProc_efxSpellCast
	movs r1, #4
	bl Proc_Start
	adds r5, r0, #0
	adds r0, #0x29
	strb r4, [r0]
	strh r4, [r5, #0x2c]
	movs r0, #4
	strh r0, [r5, #0x2e]
	ldr r0, _08054FE0  @ gpProcEfxSpellCast
	ldr r0, [r0]
	cmp r0, #0
	bne _08054FEC
	ldr r0, _08054FE4  @ pPalette6Buffer
	ldr r1, _08054FE8  @ gPalBackupEkrUnitMaybe
	movs r2, #0x50
	bl CpuFastSet
	b _08054FF0
	.align 2, 0
_08054FDC: .4byte gProc_efxSpellCast
_08054FE0: .4byte gpProcEfxSpellCast
_08054FE4: .4byte pPalette6Buffer
_08054FE8: .4byte gPalBackupEkrUnitMaybe
_08054FEC:
	bl Proc_End
_08054FF0:
	ldr r0, _08054FFC  @ gpProcEfxSpellCast
	str r5, [r0]
_08054FF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08054FFC: .4byte gpProcEfxSpellCast

	THUMB_FUNC_END NewEfxSpellCast

	THUMB_FUNC_START EfxSpellCastSet29
EfxSpellCastSet29: @ 0x08055000
	push {lr}
	ldr r0, _08055018  @ gpProcEfxSpellCast
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
_08055018: .4byte gpProcEfxSpellCast

	THUMB_FUNC_END EfxSpellCastSet29

	THUMB_FUNC_START EndEfxSpellCast
EndEfxSpellCast: @ 0x0805501C
	push {lr}
	ldr r1, _08055034  @ gpProcEfxSpellCast
	ldr r0, [r1]
	cmp r0, #0
	beq _0805502E
	movs r0, #0
	str r0, [r1]
	bl Proc_End
_0805502E:
	pop {r0}
	bx r0
	.align 2, 0
_08055034: .4byte gpProcEfxSpellCast

	THUMB_FUNC_END EndEfxSpellCast

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
	bl Interpolate
	adds r5, r0, #0
	ldr r0, _08055094  @ gPalBackupEkrUnitMaybe
	ldr r4, _08055098  @ pPalette6Buffer
	adds r1, r4, #0
	movs r2, #0x50
	bl CpuFastSet
	subs r4, #0xc0
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xa
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
	bne _0805508C
	adds r0, r6, #0
	bl Proc_Break
_0805508C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08055094: .4byte gPalBackupEkrUnitMaybe
_08055098: .4byte pPalette6Buffer

	THUMB_FUNC_END sub_8055038

	THUMB_FUNC_START sub_805509C
sub_805509C: @ 0x0805509C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080550D4  @ gPalBackupEkrUnitMaybe
	ldr r4, _080550D8  @ pPalette6Buffer
	adds r1, r4, #0
	movs r2, #0x50
	bl CpuFastSet
	subs r4, #0xc0
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0xa
	movs r3, #8
	bl EkrMaybePalFadeWithVal
	adds r0, r5, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _080550CE
	movs r0, #0
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	bl Proc_Break
_080550CE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080550D4: .4byte gPalBackupEkrUnitMaybe
_080550D8: .4byte pPalette6Buffer

	THUMB_FUNC_END sub_805509C

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
	bl Interpolate
	adds r4, r0, #0
	ldr r7, _08055150  @ gPalBackupEkrUnitMaybe
	ldr r6, _08055154  @ pPalette6Buffer
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x50
	bl CpuFastSet
	adds r0, r6, #0
	subs r0, #0xc0
	movs r1, #6
	movs r2, #0xa
	adds r3, r4, #0
	bl EkrMaybePalFadeWithVal
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
	ldr r1, _08055158  @ gpProcEfxSpellCast
	movs r0, #0
	str r0, [r1]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0x50
	bl CpuFastSet
	bl EnablePaletteSync
	adds r0, r5, #0
	bl Proc_Break
_08055146:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08055150: .4byte gPalBackupEkrUnitMaybe
_08055154: .4byte pPalette6Buffer
_08055158: .4byte gpProcEfxSpellCast

	THUMB_FUNC_END sub_80550DC

	THUMB_FUNC_START sub_805515C
sub_805515C: @ 0x0805515C
	bx lr

	THUMB_FUNC_END sub_805515C

	THUMB_FUNC_START SetSomethingSpellFxToTrue
SetSomethingSpellFxToTrue: @ 0x08055160
	ldr r1, _08055168  @ gUnknown_0201772C
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08055168: .4byte gUnknown_0201772C

	THUMB_FUNC_END SetSomethingSpellFxToTrue

	THUMB_FUNC_START SetSomethingSpellFxToFalse
SetSomethingSpellFxToFalse: @ 0x0805516C
	ldr r1, _08055174  @ gUnknown_0201772C
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08055174: .4byte gUnknown_0201772C

	THUMB_FUNC_END SetSomethingSpellFxToFalse

	THUMB_FUNC_START ClearBG1Setup
ClearBG1Setup: @ 0x08055178
	push {lr}
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl BG_SetPosition
	pop {r0}
	bx r0

	THUMB_FUNC_END ClearBG1Setup

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

	THUMB_FUNC_END ClearBG1

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
	bl SetBlendTargetA
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #1
	bl SetBlendTargetB
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

	THUMB_FUNC_END sub_80551B0

	THUMB_FUNC_START sub_805526C
sub_805526C: @ 0x0805526C
	push {lr}
	bl SetDefaultColorEffects
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_805526C

	THUMB_FUNC_START ThisMakesTheHPInSpellAnimGoAway
ThisMakesTheHPInSpellAnimGoAway: @ 0x08055278
	push {lr}
	movs r2, #3
	movs r3, #4
	bl ExecHittedEffectBanim
	pop {r0}
	bx r0

	THUMB_FUNC_END ThisMakesTheHPInSpellAnimGoAway

	THUMB_FUNC_START sub_8055288
sub_8055288: @ 0x08055288
	push {lr}
	movs r2, #5
	movs r3, #5
	bl ExecHittedEffectBanim
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8055288

	THUMB_FUNC_START ExecHittedEffectBanim
ExecHittedEffectBanim: @ 0x08055298
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
	ldr r0, _080552C0  @ gAnims
	ldr r7, [r0, #8]
	ldr r1, [r0, #0xc]
	mov r9, r1
	ldr r5, [r0]
	ldr r0, [r0, #4]
	b _080552D0
	.align 2, 0
_080552C0: .4byte gAnims
_080552C4:
	ldr r0, _080552E0  @ gAnims
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
_080552E0: .4byte gAnims
_080552E4:
	adds r0, r7, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r7, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl GetAnimRoundType
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	ldrh r0, [r5, #0xe]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	bl GetAnimRoundType
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
	bl GettUnitEfxDebuff
	cmp r0, #0
	bne _08055334
	adds r0, r7, #0
	movs r1, #1
	bl SetUnitEfxDebuff
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
	bl GettUnitEfxDebuff
	cmp r0, #0
	bne _08055356
	adds r0, r5, #0
	movs r1, #1
	bl SetUnitEfxDebuff
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
	ldr r4, _080553DC  @ gEfxPairHpBufOffset
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
	bl GetEfxHp
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r1
	bl GetEfxHp
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r6, r4
	beq _08055402
	adds r0, r5, #0
	bl NewEfxHPBar
	adds r0, r7, #0
	bl sub_805A268
	cmp r0, #1
	bne _080553E0
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, sl
	bl NewEfxHitQuake
	b _080553EA
	.align 2, 0
_080553DC: .4byte gEfxPairHpBufOffset
_080553E0:
	adds r0, r5, #0
	adds r1, r7, #0
	ldr r2, [sp]
	bl NewEfxHitQuake
_080553EA:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #5
	bl NewEfxFlashHPBar
	adds r0, r5, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl NewEfxFlashUnit
	b _08055414
_08055402:
	adds r0, r5, #0
	mov r1, r8
	movs r2, #0
	bl NewEfxNoDmage
	b _08055414
_0805540E:
	adds r0, r5, #0
	bl NewEfxAvoid
_08055414:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END ExecHittedEffectBanim

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
	ldr r0, _08055440  @ gAnims
	ldr r7, [r0, #8]
	ldr r5, [r0]
	ldr r0, [r0, #4]
	b _0805544C
	.align 2, 0
_08055440: .4byte gAnims
_08055444:
	ldr r0, _080554A4  @ gAnims
	ldr r7, [r0]
	ldr r5, [r0, #8]
	ldr r0, [r0, #0xc]
_0805544C:
	mov r8, r0
	ldr r4, _080554A8  @ gEfxPairHpBufOffset
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
	bl GetEfxHp
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, #0
	bl GetAISSubjectId
	adds r1, r0, #0
	lsls r0, r4, #1
	adds r0, r0, r1
	bl GetEfxHp
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	mov r0, r9
	cmp r0, #0
	beq _080554AC
	cmp r0, #1
	beq _08055504
	b _0805550A
	.align 2, 0
_080554A4: .4byte gAnims
_080554A8: .4byte gEfxPairHpBufOffset
_080554AC:
	cmp r6, r4
	beq _080554EE
	adds r0, r5, #0
	bl NewEfxHPBarResire
	adds r0, r7, #0
	bl sub_805A268
	cmp r0, #1
	bne _080554CC
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #4
	bl NewEfxHitQuake
	b _080554D6
_080554CC:
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #3
	bl NewEfxHitQuake
_080554D6:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #5
	bl NewEfxFlashHPBar
	adds r0, r5, #0
	movs r1, #0
	movs r2, #8
	movs r3, #0
	bl NewEfxFlashUnit
	b _0805550A
_080554EE:
	ldr r1, _08055500  @ gUnknown_02017750
	movs r0, #2
	str r0, [r1]
	adds r0, r5, #0
	mov r1, r8
	movs r2, #1
	bl NewEfxNoDmage
	b _0805550A
	.align 2, 0
_08055500: .4byte gUnknown_02017750
_08055504:
	adds r0, r5, #0
	bl NewEfxAvoid
_0805550A:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8055424

	THUMB_FUNC_START sub_8055518
sub_8055518: @ 0x08055518
	push {r4, lr}
	adds r4, r1, #0
	bl GetAISSubjectId
	cmp r0, #0
	bne _08055530
	ldr r0, _0805552C  @ gAnims
	ldr r0, [r0]
	b _08055534
	.align 2, 0
_0805552C: .4byte gAnims
_08055530:
	ldr r0, _08055540  @ gAnims
	ldr r0, [r0, #8]
_08055534:
	cmp r4, #0
	beq _08055544
	cmp r4, #1
	beq _0805554A
	b _0805554E
	.align 2, 0
_08055540: .4byte gAnims
_08055544:
	bl NewEfxStatusCHG
	b _0805554E
_0805554A:
	bl NewEfxAvoid
_0805554E:
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8055518

	THUMB_FUNC_START sub_8055554
sub_8055554: @ 0x08055554
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r0, _08055578  @ gEkrDistanceType
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
_08055578: .4byte gEkrDistanceType
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
	bl AnimCreate
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

	THUMB_FUNC_END sub_8055554

	THUMB_FUNC_START sub_80555B0
sub_80555B0: @ 0x080555B0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r0, _080555D4  @ gEkrDistanceType
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
_080555D4: .4byte gEkrDistanceType
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
	bl AnimCreate
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

	THUMB_FUNC_END sub_80555B0

	THUMB_FUNC_START sub_805560C
sub_805560C: @ 0x0805560C
	push {r4, lr}
	sub sp, #8
	adds r3, r0, #0
	ldr r0, _08055640  @ gEkrDistanceType
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
_08055640: .4byte gEkrDistanceType
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

	THUMB_FUNC_END sub_805560C

	THUMB_FUNC_START sub_8055670
sub_8055670: @ 0x08055670
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r0, _0805568C  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055694
	ldr r1, _08055690  @ gEkrTsaBuffer
	adds r0, r3, #0
	bl LZ77UnCompWram
	b _0805569C
	.align 2, 0
_0805568C: .4byte gEkrDistanceType
_08055690: .4byte gEkrTsaBuffer
_08055694:
	ldr r1, _080556C0  @ gEkrTsaBuffer
	adds r0, r2, #0
	bl LZ77UnCompWram
_0805569C:
	ldr r5, _080556C0  @ gEkrTsaBuffer
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
_080556C0: .4byte gEkrTsaBuffer
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

	THUMB_FUNC_END sub_8055670

	THUMB_FUNC_START sub_80556F0
sub_80556F0: @ 0x080556F0
	push {r4, lr}
	sub sp, #8
	adds r3, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08055710  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055718
	ldr r1, _08055714  @ gEkrTsaBuffer
	adds r0, r3, #0
	bl LZ77UnCompWram
	b _08055720
	.align 2, 0
_08055710: .4byte gEkrDistanceType
_08055714: .4byte gEkrTsaBuffer
_08055718:
	ldr r1, _0805573C  @ gEkrTsaBuffer
	adds r0, r2, #0
	bl LZ77UnCompWram
_08055720:
	ldr r2, _0805573C  @ gEkrTsaBuffer
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
_0805573C: .4byte gEkrTsaBuffer
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

	THUMB_FUNC_END sub_80556F0

	THUMB_FUNC_START sub_805576C
sub_805576C: @ 0x0805576C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, _080557A4  @ gEkrTsaBuffer
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
_080557A4: .4byte gEkrTsaBuffer
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

	THUMB_FUNC_END sub_805576C

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

	THUMB_FUNC_END SomeImageStoringRoutine_SpellAnim

	THUMB_FUNC_START SomePaletteStoringRoutine_SpellAnim
SomePaletteStoringRoutine_SpellAnim: @ 0x08055800
	push {lr}
	adds r2, r1, #0
	ldr r1, _08055818  @ gPaletteBuffer + 0x240
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	bl CpuFastSet
	bl EnablePaletteSync
	pop {r0}
	bx r0
	.align 2, 0
_08055818: .4byte gPaletteBuffer + 0x240

	THUMB_FUNC_END SomePaletteStoringRoutine_SpellAnim

	THUMB_FUNC_START SomeImageStoringRoutine_SpellAnim2
SomeImageStoringRoutine_SpellAnim2: @ 0x0805581C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r5, _0805583C  @ 0x06002000
	ldr r4, _08055840  @ gEkrImgBuffer
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
_08055840: .4byte gEkrImgBuffer

	THUMB_FUNC_END SomeImageStoringRoutine_SpellAnim2

	THUMB_FUNC_START SomePaletteStoringRoutine_SpellAnim2
SomePaletteStoringRoutine_SpellAnim2: @ 0x08055844
	push {lr}
	adds r2, r1, #0
	ldr r1, _0805585C  @ pPalette1Buffer
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	bl CpuFastSet
	bl EnablePaletteSync
	pop {r0}
	bx r0
	.align 2, 0
_0805585C: .4byte pPalette1Buffer

	THUMB_FUNC_END SomePaletteStoringRoutine_SpellAnim2

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

	THUMB_FUNC_END sub_8055860

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

	THUMB_FUNC_END sub_805588C

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

	THUMB_FUNC_END sub_80558BC

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

	THUMB_FUNC_END sub_80558F4

	THUMB_FUNC_START sub_8055980
sub_8055980: @ 0x08055980
	ldr r1, _08055988  @ gUnknown_0201775C
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08055988: .4byte gUnknown_0201775C

	THUMB_FUNC_END sub_8055980

	THUMB_FUNC_START GetAnimationStartFrameMaybe
GetAnimationStartFrameMaybe: @ 0x0805598C
	push {lr}
	ldr r0, _0805599C  @ gEkrDistanceType
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne _080559A0
	movs r0, #0x18
	b _080559AA
	.align 2, 0
_0805599C: .4byte gEkrDistanceType
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

	THUMB_FUNC_END GetAnimationStartFrameMaybe

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

	THUMB_FUNC_END sub_80559B0

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

	THUMB_FUNC_END sub_80559D0

	THUMB_FUNC_START SetEkrFrontAnimPostion
SetEkrFrontAnimPostion: @ 0x080559F0
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, #0
	bne _08055A10
	ldr r0, _08055A0C  @ gAnims
	ldr r3, [r0]
	strh r1, [r3, #2]
	strh r2, [r3, #4]
	ldr r3, [r0, #4]
	b _08055A1A
	.align 2, 0
_08055A0C: .4byte gAnims
_08055A10:
	ldr r0, _08055A24  @ gAnims
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
_08055A24: .4byte gAnims

	THUMB_FUNC_END SetEkrFrontAnimPostion

	THUMB_FUNC_START sub_8055A28
sub_8055A28: @ 0x08055A28
	ldr r0, _08055A30  @ gUnknown_0201FAC8
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08055A30: .4byte gUnknown_0201FAC8

	THUMB_FUNC_END sub_8055A28

	THUMB_FUNC_START sub_8055A34
sub_8055A34: @ 0x08055A34
	ldr r1, _08055A3C  @ gUnknown_0201FAC8
	str r0, [r1]
	bx lr
	.align 2, 0
_08055A3C: .4byte gUnknown_0201FAC8

	THUMB_FUNC_END sub_8055A34

	THUMB_FUNC_START NewEfxspdquake
NewEfxspdquake: @ 0x08055A40
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08055A5C  @ gProc_efxspdquake
	movs r1, #1
	bl Proc_Start
	str r4, [r0, #0x5c]
	movs r1, #0
	strh r1, [r0, #0x2c]
	ldr r1, _08055A60  @ gUnknown_080DA4DC
	str r1, [r0, #0x44]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055A5C: .4byte gProc_efxspdquake
_08055A60: .4byte gUnknown_080DA4DC

	THUMB_FUNC_END NewEfxspdquake

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
	ldr r3, _08055AE8  @ gAnims
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
	bl Proc_Break
	b _08055B28
	.align 2, 0
_08055AE8: .4byte gAnims
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

	THUMB_FUNC_END sub_8055A64

	THUMB_FUNC_START sub_8055B38
sub_8055B38: @ 0x08055B38
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, _08055B88  @ gEkrXPosBase
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r6, _08055B8C  @ gEkrBgXOffset
	ldr r0, [r6]
	subs r1, r1, r0
	ldr r3, _08055B90  @ gEkrYPosBase
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
	bl SetEkrFrontAnimPostion
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r0, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl SetEkrFrontAnimPostion
	ldr r0, _08055B94  @ gEkrDistanceType
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
_08055B88: .4byte gEkrXPosBase
_08055B8C: .4byte gEkrBgXOffset
_08055B90: .4byte gEkrYPosBase
_08055B94: .4byte gEkrDistanceType
_08055B98:
	cmp r0, #0
	blt _08055BA6
	cmp r0, #2
	bgt _08055BA6
	ldr r0, [r6]
	bl sub_8053618
_08055BA6:
	adds r0, r7, #0
	bl Proc_Break
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	THUMB_FUNC_END sub_8055B38

.align 2, 0