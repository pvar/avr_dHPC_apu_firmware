; -----------------------------------------------------
;   phase-deltas for each note for each octave
; -----------------------------------------------------

deltas:
	; 2nd octave --------------
	.db 0x00, 0x85	; 00 (C)
	.db 0x00, 0x8d	; 02 (C#)
	.db 0x00, 0x95	; 04 (D)
	.db 0x00, 0x9e	; 06 (Eb)
	.db 0x00, 0xa7	; 08 (E)
	.db 0x00, 0xb1	; 10 (F)
	.db 0x00, 0xbc	; 12 (F#)
	.db 0x00, 0xc7	; 14 (G)
	.db 0x00, 0xd3	; 16 (G#)
	.db 0x00, 0xdf	; 18 (A)
	.db 0x00, 0xed	; 20 (Bb)
	.db 0x00, 0xfb	; 22 (B)
	; 3rd octave --------------
	.db 0x01, 0x0a	; 24 (C)
	.db 0x01, 0x1a	; 26 (C#)
	.db 0x01, 0x2a	; 28 (D)
	.db 0x01, 0x3c	; 30 (Eb)
	.db 0x01, 0x4f	; 32 (E)
	.db 0x01, 0x63	; 34 (F)
	.db 0x01, 0x78	; 36 (F#)
	.db 0x01, 0x8e	; 38 (G)
	.db 0x01, 0xa6	; 40 (G#)
	.db 0x01, 0xbf	; 42 (A)
	.db 0x01, 0xda	; 44 (Bb)
	.db 0x01, 0xf6	; 46 (B)
	; 4th octave --------------
	.db 0x02, 0x13	; 48 (C)
	.db 0x02, 0x33	; 50 (C#)
	.db 0x02, 0x55	; 52 (D)
	.db 0x02, 0x78	; 54 (Eb)
	.db 0x02, 0x9e	; 56 (E)
	.db 0x02, 0xc5	; 58 (F)
	.db 0x02, 0xf0	; 60 (F#)
	.db 0x03, 0x1c	; 62 (G)
	.db 0x03, 0x4c	; 64 (G#)
	.db 0x03, 0x7e	; 66 (A)
	.db 0x03, 0xb3	; 68 (Bb)
	.db 0x03, 0xeb	; 70 (B)
	; 5th octave --------------
	.db 0x04, 0x27	; 72 (C)
	.db 0x04, 0x66	; 74 (C#)
	.db 0x04, 0xa9	; 76 (D)
	.db 0x04, 0xf0	; 78 (Eb)
	.db 0x05, 0x3b	; 80 (E)
	.db 0x05, 0x8b	; 82 (F)
	.db 0x05, 0xdf	; 84 (F#)
	.db 0x06, 0x39	; 86 (G)
	.db 0x06, 0x97	; 88 (G#)
	.db 0x06, 0xfc	; 90 (A)
	.db 0x07, 0x66	; 92 (Bb)
	.db 0x07, 0xd7	; 94 (B)
	; 6th octave --------------
	.db 0x08, 0x4f	; 096 (C)
	.db 0x08, 0xcd	; 098 (C#)
	.db 0x09, 0x53	; 100 (D)
	.db 0x09, 0xe1	; 102 (Eb)
	.db 0x0a, 0x78	; 104 (E)
	.db 0x0b, 0x16	; 106 (F)
	.db 0x0b, 0xbf	; 108 (F#)
	.db 0x0c, 0x72	; 110 (G)
	.db 0x0d, 0x2e	; 112 (G#)
	.db 0x0d, 0xf8	; 114 (A)
	.db 0x0e, 0xcd	; 116 (Bb)
	.db 0x0f, 0xae	; 118 (B)
	; 7th octave --------------
	.db 0x10, 0x9c	; 120 (C)
	.db 0x11, 0x98	; 122 (C#)
	.db 0x12, 0xa4	; 124 (D)
	.db 0x13, 0xc1	; 126 (Eb)
	.db 0x14, 0xed	; 128 (E)
	.db 0x16, 0x2c	; 130 (F)
	.db 0x17, 0x7e	; 132 (F#)
	.db 0x18, 0xe3	; 134 (G)
	.db 0x1a, 0x5d	; 136 (G#)
	.db 0x1b, 0xef	; 138 (A)
	.db 0x1d, 0x98	; 140 (Bb)
	.db 0x1f, 0x5b	; 142 (B)

	.db 0x00, 0x00	; 144 pseudo note: pause
	.db 0x00, 0x00	; 146 pseudo note: stop
	; clear phase delta and decrease note-pointer -- stay here until end of melody
	
	.db 0x9f, 0xf0	 ; pseudo note 148 (noise 0)
	.db 0x7e, 0xf0   ; pseudo note 150 (noise 1)
	.db 0x6c, 0xf0   ; pseudo note 152 (noise 2)
	.db 0x5a, 0xf0   ; pseudo note 154 (noise 3)
	.db 0x48, 0xf0   ; pseudo note 156 (noise 4)
	.db 0x36, 0xf0   ; pseudo note 158 (noise 5)
	.db 0x24, 0xf0   ; pseudo note 160 (noise 6)
	.db 0x12, 0xf0   ; pseudo note 162 (noise 7)



; -----------------------------------------------------
;   durations for each tempo setting
; -----------------------------------------------------

durations:
;	1/32,	1/16,	1/16*,	1/8,	1/8*,	1/4,	1/4*,	1/2
.db	16,		32,		48,		64,		96,		128,	192,	255	; 90 BPM
.db	12,		24,		36,		48,		72,		96,		144,	192	; 120 BPM
.db 10,		20,		30,		40,		60,		80,		120,	160	; 150 BPM
.db	8,		16,		24,		32,		48,		64,		96,		128	; 180 BPM



; -----------------------------------------------------
;  music notation specifications
; -----------------------------------------------------

; values for tempo
;	0	->	60bpm
;	8	->	120bpm
;	16	->	150bpm
;	24	->	180bpm

; two bytes per note
; 	1st byte: note parameters
; 	2nd byte: pointer to specific note/octave
;
; PARAMETERS BYTE:
;
;	EFFECT (XX-000000)
;	  0 (00-000000): no effect
;	 64 (01-000000): pitch bend up
;	128 (10-000000): pitch bend down
;	192 (11-000000): vibrato
;
;	DUTY CYCLE (0000-X-000) -- for channel 1 and 2
;	0 (0000-0-000): duty cycle = 50%
;	8 (0000-1-000): duty cycle = 75%
;
;	DURATION (00000-XXX)
;	0 (00000-000): 1/32
;	1 (00000-001): 1/16
;	2 (00000-010): 1/16* (3/32)
;	3 (00000-011): 1/8
;	4 (00000-100): 1/8* (3/16)
;	5 (00000-101): 1/4
;	6 (00000-110): 1/4* (3/8)
;	7 (00000-111): 1/2



tempo:
.db 0x10, 0x00
ch1_melody:
.db 0x06, 0x66, 0x05, 0x66, 0x03, 0x64, 0x05, 0x60, 0x03, 0x64, 0x05, 0x66, 0x03, 0x6A, 0x07, 0x5C, 0x06, 0x60, 0x05, 0x56, 0x03, 0x56, 0x05, 0x64, 0x05, 0x66, 0x06, 0x3A, 0x06, 0x3E, 0x07, 0x42
.db 0x03, 0x44, 0x03, 0x42, 0x04, 0x3E, 0x01, 0x3A, 0x03, 0x42, 0x03, 0x3E, 0x03, 0x3A, 0x03, 0x36, 0x03, 0x3E, 0x03, 0x3A, 0x01, 0x36, 0x03, 0x34, 0x06, 0x3A, 0x01, 0x90, 0x01, 0x34, 0x01, 0x30
.db 0x03, 0x2C, 0x03, 0x30, 0x03, 0x34, 0x03, 0x36, 0x03, 0x30, 0x01, 0x34, 0x04, 0x36, 0x03, 0x3A, 0x03, 0x3A, 0x03, 0x3E, 0x01, 0x42, 0x04, 0x3E, 0x03, 0x3A, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42
.db 0x03, 0x44, 0x03, 0x42, 0x04, 0x3E, 0x01, 0x3A, 0x03, 0x42, 0x03, 0x3E, 0x03, 0x3A, 0x03, 0x36, 0x03, 0x3E, 0x03, 0x3A, 0x01, 0x36, 0x03, 0x34, 0x06, 0x3A, 0x01, 0x90, 0x01, 0x34, 0x01, 0x30
.db 0x03, 0x2C, 0x03, 0x30, 0x03, 0x34, 0x03, 0x36, 0x03, 0x30, 0x01, 0x34, 0x04, 0x36, 0x03, 0x3A, 0x03, 0x3A, 0x03, 0x3E, 0x01, 0x42, 0x04, 0x3E, 0x03, 0x44, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x40
.db 0x07, 0x42, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x07, 0x44, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x07, 0x48, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x07, 0x4C
.db 0x03, 0x90, 0x03, 0x44, 0x03, 0x48, 0x03, 0x4C, 0x06, 0x4E, 0x05, 0x4E, 0x03, 0x4C, 0x03, 0x48, 0x07, 0x4C, 0x06, 0x90, 0x05, 0x4C, 0x06, 0x48, 0x06, 0x3E, 0x05, 0x4C, 0x07, 0x48, 0x03, 0x90
.db 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x40, 0x07, 0x42, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x07, 0x44, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x07, 0x48, 0x03, 0x90, 0x03, 0x3A
.db 0x03, 0x3E, 0x03, 0x42, 0x07, 0x4C, 0x03, 0x90, 0x03, 0x44, 0x03, 0x48, 0x03, 0x4C, 0x06, 0x4E, 0x05, 0x4E, 0x03, 0x4C, 0x03, 0x48, 0x07, 0x4C, 0x06, 0x90, 0x05, 0x4C, 0x06, 0x48, 0x05, 0x3E
.db 0x03, 0x4C, 0x03, 0x3E, 0x03, 0x4C, 0x07, 0x44, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x03, 0x44, 0x03, 0x42, 0x04, 0x3E, 0x01, 0x3A, 0x03, 0x42, 0x03, 0x3E, 0x03, 0x3A, 0x03, 0x36
.db 0x03, 0x3E, 0x03, 0x3A, 0x01, 0x36, 0x03, 0x34, 0x06, 0x3A, 0x01, 0x90, 0x01, 0x34, 0x01, 0x30, 0x03, 0x2C, 0x03, 0x30, 0x03, 0x34, 0x03, 0x36, 0x03, 0x30, 0x01, 0x34, 0x04, 0x36, 0x03, 0x3A
.db 0x03, 0x3A, 0x03, 0x3E, 0x01, 0x42, 0x04, 0x3E, 0x03, 0x3A, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x03, 0x44, 0x03, 0x42, 0x04, 0x3E, 0x01, 0x3A, 0x03, 0x42, 0x03, 0x3E, 0x03, 0x3A, 0x03, 0x36
.db 0x03, 0x3E, 0x03, 0x3A, 0x01, 0x36, 0x03, 0x34, 0x06, 0x3A, 0x01, 0x90, 0x01, 0x34, 0x01, 0x30, 0x03, 0x2C, 0x03, 0x30, 0x03, 0x34, 0x03, 0x36, 0x03, 0x30, 0x01, 0x34, 0x04, 0x36, 0x03, 0x3A
.db 0x03, 0x3A, 0x03, 0x3E, 0x01, 0x42, 0x04, 0x3E, 0x03, 0x44, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x40, 0x07, 0x42, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x07, 0x44, 0x03, 0x90, 0x03, 0x3A
.db 0x03, 0x3E, 0x03, 0x42, 0x07, 0x48, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x07, 0x4C, 0x03, 0x90, 0x03, 0x44, 0x03, 0x48, 0x03, 0x4C, 0x06, 0x4E, 0x05, 0x4E, 0x03, 0x4C, 0x03, 0x48
.db 0x07, 0x4C, 0x06, 0x90, 0x05, 0x4C, 0x06, 0x48, 0x06, 0x3E, 0x05, 0x4C, 0x07, 0x48, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x40, 0x07, 0x42, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42
.db 0x07, 0x44, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x07, 0x48, 0x03, 0x90, 0x03, 0x3A, 0x03, 0x3E, 0x03, 0x42, 0x07, 0x4C, 0x03, 0x90, 0x03, 0x44, 0x03, 0x48, 0x03, 0x4C, 0x06, 0x4E
.db 0x05, 0x4E, 0x03, 0x4C, 0x03, 0x48, 0x07, 0x4C, 0x06, 0x90, 0x05, 0x4C, 0x06, 0x48, 0x05, 0x3E, 0x03, 0x4C, 0x03, 0x3E, 0x03, 0x4C, 0x07, 0x44, 0x00, 0x92
ch2_melody:
.db 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90
.db 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x28, 0x07, 0x2A, 0x03, 0x90, 0x03, 0x22
.db 0x03, 0x26, 0x03, 0x2A, 0x07, 0x2C, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x07, 0x30, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x07, 0x34, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90
.db 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x28, 0x07, 0x2A, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x07, 0x2C, 0x03, 0x90
.db 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x07, 0x30, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x07, 0x34, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90
.db 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90
.db 0x07, 0x90, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x28, 0x07, 0x2A, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x07, 0x2C, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x07, 0x30
.db 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x07, 0x34, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26
.db 0x03, 0x28, 0x07, 0x2A, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x07, 0x2C, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x07, 0x30, 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A
.db 0x07, 0x34, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x07, 0x90, 0x00, 0x92
ch3_melody:
.db 0x01, 0x48, 0x01, 0x3E, 0x01, 0x36, 0x01, 0x30, 0x01, 0x48, 0x01, 0x3E, 0x01, 0x36, 0x01, 0x30, 0x01, 0x48, 0x01, 0x3E, 0x01, 0x36, 0x01, 0x30, 0x01, 0x48, 0x01, 0x3E, 0x01, 0x36, 0x01, 0x30
.db 0x01, 0x44, 0x01, 0x3A, 0x01, 0x34, 0x01, 0x2C, 0x01, 0x44, 0x01, 0x3A, 0x01, 0x34, 0x01, 0x2C, 0x01, 0x44, 0x01, 0x3A, 0x01, 0x34, 0x01, 0x2C, 0x01, 0x44, 0x01, 0x3A, 0x01, 0x34, 0x01, 0x2C
.db 0x01, 0x3E, 0x01, 0x36, 0x01, 0x30, 0x01, 0x26, 0x01, 0x3E, 0x01, 0x36, 0x01, 0x30, 0x01, 0x26, 0x01, 0x3E, 0x01, 0x36, 0x01, 0x30, 0x01, 0x26, 0x01, 0x3E, 0x01, 0x36, 0x01, 0x30, 0x01, 0x26
.db 0x01, 0x3A, 0x01, 0x30, 0x01, 0x2A, 0x01, 0x22, 0x06, 0x0A, 0x06, 0x0E, 0x07, 0x12, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14
.db 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E
.db 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14
.db 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E
.db 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x2C, 0x03, 0x22, 0x03, 0x26, 0x03, 0x28, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x14
.db 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x14
.db 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x2C, 0x03, 0x2C, 0x03, 0x30, 0x03, 0x34, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1C
.db 0x03, 0x34, 0x03, 0x1C, 0x03, 0x34, 0x03, 0x1C, 0x03, 0x34, 0x03, 0x1C, 0x03, 0x34, 0x03, 0x18, 0x03, 0x30, 0x03, 0x18, 0x03, 0x30, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x18
.db 0x03, 0x30, 0x03, 0x18, 0x03, 0x30, 0x03, 0x18, 0x03, 0x22, 0x03, 0x26, 0x03, 0x28, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x14
.db 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x14
.db 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x2C, 0x03, 0x2C, 0x03, 0x30, 0x03, 0x34, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1C
.db 0x03, 0x34, 0x03, 0x1C, 0x03, 0x34, 0x03, 0x1C, 0x03, 0x34, 0x03, 0x1C, 0x03, 0x34, 0x03, 0x18, 0x03, 0x30, 0x03, 0x18, 0x03, 0x30, 0x03, 0x22, 0x03, 0x3A, 0x03, 0x22, 0x03, 0x3A, 0x07, 0x2C
.db 0x03, 0x90, 0x03, 0x22, 0x03, 0x26, 0x03, 0x2A, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C
.db 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26
.db 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C
.db 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26
.db 0x03, 0x2C, 0x03, 0x22, 0x03, 0x26, 0x03, 0x28, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C
.db 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C
.db 0x03, 0x2C, 0x03, 0x2C, 0x03, 0x30, 0x03, 0x34, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1C, 0x03, 0x34, 0x03, 0x1C, 0x03, 0x34
.db 0x03, 0x1C, 0x03, 0x34, 0x03, 0x1C, 0x03, 0x34, 0x03, 0x18, 0x03, 0x30, 0x03, 0x18, 0x03, 0x30, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x0E, 0x03, 0x26, 0x03, 0x18, 0x03, 0x30, 0x03, 0x18, 0x03, 0x30
.db 0x03, 0x18, 0x03, 0x22, 0x03, 0x26, 0x03, 0x28, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C
.db 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x12, 0x03, 0x2A, 0x03, 0x14, 0x03, 0x2C, 0x03, 0x14, 0x03, 0x2C
.db 0x03, 0x2C, 0x03, 0x2C, 0x03, 0x30, 0x03, 0x34, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1E, 0x03, 0x36, 0x03, 0x1C, 0x03, 0x34, 0x03, 0x1C, 0x03, 0x34
.db 0x03, 0x1C, 0x03, 0x34, 0x03, 0x1C, 0x03, 0x34, 0x03, 0x18, 0x03, 0x30, 0x03, 0x18, 0x03, 0x30, 0x03, 0x22, 0x03, 0x3A, 0x03, 0x22, 0x03, 0x3A, 0x07, 0x2C, 0x00, 0x92
ch4_melody:
.db 0x00, 0x92
