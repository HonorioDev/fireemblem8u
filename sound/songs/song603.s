	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song603_1
song603_1:	@ 0x08582600
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 67
	.byte	VOL	, v117
	.byte		N24	, Cn3, v127
	.byte	W24
	.byte	FINE

	.align 2
	.global song603
song603:	@ 0x08582610
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	0		@ reverb

	.word	voicegroup035		@ voicegroup/tone

	.word	song603_1		@ track