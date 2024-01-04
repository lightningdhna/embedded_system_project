                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module connect
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _back
                                     12 	.globl _forward
                                     13 	.globl _number_string
                                     14 	.globl _main
                                     15 	.globl _key_pressed_handle
                                     16 	.globl _UART_Receive
                                     17 	.globl _uart_send
                                     18 	.globl _uart_init
                                     19 	.globl _display_number
                                     20 	.globl _CY
                                     21 	.globl _AC
                                     22 	.globl _F0
                                     23 	.globl _RS1
                                     24 	.globl _RS0
                                     25 	.globl _OV
                                     26 	.globl _F1
                                     27 	.globl _P
                                     28 	.globl _PS
                                     29 	.globl _PT1
                                     30 	.globl _PX1
                                     31 	.globl _PT0
                                     32 	.globl _PX0
                                     33 	.globl _RD
                                     34 	.globl _WR
                                     35 	.globl _T1
                                     36 	.globl _T0
                                     37 	.globl _INT1
                                     38 	.globl _INT0
                                     39 	.globl _TXD
                                     40 	.globl _RXD
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _EA
                                     50 	.globl _ES
                                     51 	.globl _ET1
                                     52 	.globl _EX1
                                     53 	.globl _ET0
                                     54 	.globl _EX0
                                     55 	.globl _P2_7
                                     56 	.globl _P2_6
                                     57 	.globl _P2_5
                                     58 	.globl _P2_4
                                     59 	.globl _P2_3
                                     60 	.globl _P2_2
                                     61 	.globl _P2_1
                                     62 	.globl _P2_0
                                     63 	.globl _SM0
                                     64 	.globl _SM1
                                     65 	.globl _SM2
                                     66 	.globl _REN
                                     67 	.globl _TB8
                                     68 	.globl _RB8
                                     69 	.globl _TI
                                     70 	.globl _RI
                                     71 	.globl _P1_7
                                     72 	.globl _P1_6
                                     73 	.globl _P1_5
                                     74 	.globl _P1_4
                                     75 	.globl _P1_3
                                     76 	.globl _P1_2
                                     77 	.globl _P1_1
                                     78 	.globl _P1_0
                                     79 	.globl _TF1
                                     80 	.globl _TR1
                                     81 	.globl _TF0
                                     82 	.globl _TR0
                                     83 	.globl _IE1
                                     84 	.globl _IT1
                                     85 	.globl _IE0
                                     86 	.globl _IT0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _B
                                     96 	.globl _ACC
                                     97 	.globl _PSW
                                     98 	.globl _IP
                                     99 	.globl _P3
                                    100 	.globl _IE
                                    101 	.globl _P2
                                    102 	.globl _SBUF
                                    103 	.globl _SCON
                                    104 	.globl _P1
                                    105 	.globl _TH1
                                    106 	.globl _TH0
                                    107 	.globl _TL1
                                    108 	.globl _TL0
                                    109 	.globl _TMOD
                                    110 	.globl _TCON
                                    111 	.globl _PCON
                                    112 	.globl _DPH
                                    113 	.globl _DPL
                                    114 	.globl _SP
                                    115 	.globl _P0
                                    116 	.globl _kit_id
                                    117 	.globl _key_pressed
                                    118 	.globl _data_mat
                                    119 	.globl _point
                                    120 	.globl _received_data
                                    121 	.globl _move_up
                                    122 	.globl _move_down
                                    123 	.globl _move_left
                                    124 	.globl _move_right
                                    125 	.globl _resolve_message
                                    126 ;--------------------------------------------------------
                                    127 ; special function registers
                                    128 ;--------------------------------------------------------
                                    129 	.area RSEG    (ABS,DATA)
      000000                        130 	.org 0x0000
                           000080   131 _P0	=	0x0080
                           000081   132 _SP	=	0x0081
                           000082   133 _DPL	=	0x0082
                           000083   134 _DPH	=	0x0083
                           000087   135 _PCON	=	0x0087
                           000088   136 _TCON	=	0x0088
                           000089   137 _TMOD	=	0x0089
                           00008A   138 _TL0	=	0x008a
                           00008B   139 _TL1	=	0x008b
                           00008C   140 _TH0	=	0x008c
                           00008D   141 _TH1	=	0x008d
                           000090   142 _P1	=	0x0090
                           000098   143 _SCON	=	0x0098
                           000099   144 _SBUF	=	0x0099
                           0000A0   145 _P2	=	0x00a0
                           0000A8   146 _IE	=	0x00a8
                           0000B0   147 _P3	=	0x00b0
                           0000B8   148 _IP	=	0x00b8
                           0000D0   149 _PSW	=	0x00d0
                           0000E0   150 _ACC	=	0x00e0
                           0000F0   151 _B	=	0x00f0
                                    152 ;--------------------------------------------------------
                                    153 ; special function bits
                                    154 ;--------------------------------------------------------
                                    155 	.area RSEG    (ABS,DATA)
      000000                        156 	.org 0x0000
                           000080   157 _P0_0	=	0x0080
                           000081   158 _P0_1	=	0x0081
                           000082   159 _P0_2	=	0x0082
                           000083   160 _P0_3	=	0x0083
                           000084   161 _P0_4	=	0x0084
                           000085   162 _P0_5	=	0x0085
                           000086   163 _P0_6	=	0x0086
                           000087   164 _P0_7	=	0x0087
                           000088   165 _IT0	=	0x0088
                           000089   166 _IE0	=	0x0089
                           00008A   167 _IT1	=	0x008a
                           00008B   168 _IE1	=	0x008b
                           00008C   169 _TR0	=	0x008c
                           00008D   170 _TF0	=	0x008d
                           00008E   171 _TR1	=	0x008e
                           00008F   172 _TF1	=	0x008f
                           000090   173 _P1_0	=	0x0090
                           000091   174 _P1_1	=	0x0091
                           000092   175 _P1_2	=	0x0092
                           000093   176 _P1_3	=	0x0093
                           000094   177 _P1_4	=	0x0094
                           000095   178 _P1_5	=	0x0095
                           000096   179 _P1_6	=	0x0096
                           000097   180 _P1_7	=	0x0097
                           000098   181 _RI	=	0x0098
                           000099   182 _TI	=	0x0099
                           00009A   183 _RB8	=	0x009a
                           00009B   184 _TB8	=	0x009b
                           00009C   185 _REN	=	0x009c
                           00009D   186 _SM2	=	0x009d
                           00009E   187 _SM1	=	0x009e
                           00009F   188 _SM0	=	0x009f
                           0000A0   189 _P2_0	=	0x00a0
                           0000A1   190 _P2_1	=	0x00a1
                           0000A2   191 _P2_2	=	0x00a2
                           0000A3   192 _P2_3	=	0x00a3
                           0000A4   193 _P2_4	=	0x00a4
                           0000A5   194 _P2_5	=	0x00a5
                           0000A6   195 _P2_6	=	0x00a6
                           0000A7   196 _P2_7	=	0x00a7
                           0000A8   197 _EX0	=	0x00a8
                           0000A9   198 _ET0	=	0x00a9
                           0000AA   199 _EX1	=	0x00aa
                           0000AB   200 _ET1	=	0x00ab
                           0000AC   201 _ES	=	0x00ac
                           0000AF   202 _EA	=	0x00af
                           0000B0   203 _P3_0	=	0x00b0
                           0000B1   204 _P3_1	=	0x00b1
                           0000B2   205 _P3_2	=	0x00b2
                           0000B3   206 _P3_3	=	0x00b3
                           0000B4   207 _P3_4	=	0x00b4
                           0000B5   208 _P3_5	=	0x00b5
                           0000B6   209 _P3_6	=	0x00b6
                           0000B7   210 _P3_7	=	0x00b7
                           0000B0   211 _RXD	=	0x00b0
                           0000B1   212 _TXD	=	0x00b1
                           0000B2   213 _INT0	=	0x00b2
                           0000B3   214 _INT1	=	0x00b3
                           0000B4   215 _T0	=	0x00b4
                           0000B5   216 _T1	=	0x00b5
                           0000B6   217 _WR	=	0x00b6
                           0000B7   218 _RD	=	0x00b7
                           0000B8   219 _PX0	=	0x00b8
                           0000B9   220 _PT0	=	0x00b9
                           0000BA   221 _PX1	=	0x00ba
                           0000BB   222 _PT1	=	0x00bb
                           0000BC   223 _PS	=	0x00bc
                           0000D0   224 _P	=	0x00d0
                           0000D1   225 _F1	=	0x00d1
                           0000D2   226 _OV	=	0x00d2
                           0000D3   227 _RS0	=	0x00d3
                           0000D4   228 _RS1	=	0x00d4
                           0000D5   229 _F0	=	0x00d5
                           0000D6   230 _AC	=	0x00d6
                           0000D7   231 _CY	=	0x00d7
                                    232 ;--------------------------------------------------------
                                    233 ; overlayable register banks
                                    234 ;--------------------------------------------------------
                                    235 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        236 	.ds 8
                                    237 ;--------------------------------------------------------
                                    238 ; overlayable bit register bank
                                    239 ;--------------------------------------------------------
                                    240 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        241 bits:
      000021                        242 	.ds 1
                           008000   243 	b0 = bits[0]
                           008100   244 	b1 = bits[1]
                           008200   245 	b2 = bits[2]
                           008300   246 	b3 = bits[3]
                           008400   247 	b4 = bits[4]
                           008500   248 	b5 = bits[5]
                           008600   249 	b6 = bits[6]
                           008700   250 	b7 = bits[7]
                                    251 ;--------------------------------------------------------
                                    252 ; internal ram data
                                    253 ;--------------------------------------------------------
                                    254 	.area DSEG    (DATA)
      000008                        255 _display_number_led_65537_38:
      000008                        256 	.ds 1
      000009                        257 _display_number_neg_65537_38:
      000009                        258 	.ds 1
      00000A                        259 _received_data::
      00000A                        260 	.ds 1
      00000B                        261 _point::
      00000B                        262 	.ds 1
      00000C                        263 _data_mat::
      00000C                        264 	.ds 8
      000014                        265 _key_pressed::
      000014                        266 	.ds 1
      000015                        267 _main_current_data_458752_175:
      000015                        268 	.ds 1
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable items in internal ram
                                    271 ;--------------------------------------------------------
                                    272 	.area	OSEG    (OVR,DATA)
                                    273 	.area	OSEG    (OVR,DATA)
                                    274 	.area	OSEG    (OVR,DATA)
                                    275 ;--------------------------------------------------------
                                    276 ; Stack segment in internal ram
                                    277 ;--------------------------------------------------------
                                    278 	.area SSEG
      000022                        279 __start__stack:
      000022                        280 	.ds	1
                                    281 
                                    282 ;--------------------------------------------------------
                                    283 ; indirectly addressable internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area ISEG    (DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; absolute internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area IABS    (ABS,DATA)
                                    290 	.area IABS    (ABS,DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; bit data
                                    293 ;--------------------------------------------------------
                                    294 	.area BSEG    (BIT)
      000000                        295 _kit_id::
      000000                        296 	.ds 1
                                    297 ;--------------------------------------------------------
                                    298 ; paged external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area PSEG    (PAG,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; uninitialized external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XSEG    (XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; absolute external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XABS    (ABS,XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; initialized external ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XISEG   (XDATA)
                                    313 	.area HOME    (CODE)
                                    314 	.area GSINIT0 (CODE)
                                    315 	.area GSINIT1 (CODE)
                                    316 	.area GSINIT2 (CODE)
                                    317 	.area GSINIT3 (CODE)
                                    318 	.area GSINIT4 (CODE)
                                    319 	.area GSINIT5 (CODE)
                                    320 	.area GSINIT  (CODE)
                                    321 	.area GSFINAL (CODE)
                                    322 	.area CSEG    (CODE)
                                    323 ;--------------------------------------------------------
                                    324 ; interrupt vector
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
      000000                        327 __interrupt_vect:
      000000 02 00 29         [24]  328 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  329 	reti
      000004                        330 	.ds	7
      00000B 32               [24]  331 	reti
      00000C                        332 	.ds	7
      000013 32               [24]  333 	reti
      000014                        334 	.ds	7
      00001B 32               [24]  335 	reti
      00001C                        336 	.ds	7
      000023 02 01 68         [24]  337 	ljmp	_UART_Receive
                                    338 ;--------------------------------------------------------
                                    339 ; global & static initialisations
                                    340 ;--------------------------------------------------------
                                    341 	.area HOME    (CODE)
                                    342 	.area GSINIT  (CODE)
                                    343 	.area GSFINAL (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.globl __sdcc_gsinit_startup
                                    346 	.globl __sdcc_program_startup
                                    347 	.globl __start__stack
                                    348 	.globl __mcs51_genXINIT
                                    349 	.globl __mcs51_genXRAMCLEAR
                                    350 	.globl __mcs51_genRAMCLEAR
                                    351 ;	connect.c:12: char point = 65;
      000082 75 0B 41         [24]  352 	mov	_point,#0x41
                                    353 ;	connect.c:116: char key_pressed = 0;
      000085 75 14 00         [24]  354 	mov	_key_pressed,#0x00
                                    355 ;	connect.c:11: __bit kit_id = 0;
                                    356 ;	assignBit
      000088 C2 00            [12]  357 	clr	_kit_id
                                    358 	.area GSFINAL (CODE)
      00008A 02 00 26         [24]  359 	ljmp	__sdcc_program_startup
                                    360 ;--------------------------------------------------------
                                    361 ; Home
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area HOME    (CODE)
      000026                        365 __sdcc_program_startup:
      000026 02 04 D0         [24]  366 	ljmp	_main
                                    367 ;	return from main will return to caller
                                    368 ;--------------------------------------------------------
                                    369 ; code
                                    370 ;--------------------------------------------------------
                                    371 	.area CSEG    (CODE)
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'display_number'
                                    374 ;------------------------------------------------------------
                                    375 ;number                    Allocated to registers r4 r5 r6 r7 
                                    376 ;i                         Allocated to registers r3 
                                    377 ;led                       Allocated with name '_display_number_led_65537_38'
                                    378 ;neg                       Allocated with name '_display_number_neg_65537_38'
                                    379 ;__1966090004              Allocated to registers r3 
                                    380 ;__1966090005              Allocated to registers r0 
                                    381 ;led                       Allocated to registers 
                                    382 ;digit                     Allocated to registers 
                                    383 ;------------------------------------------------------------
                                    384 ;	led7seg.h:27: void display_number(long number)
                                    385 ;	-----------------------------------------
                                    386 ;	 function display_number
                                    387 ;	-----------------------------------------
      00008D                        388 _display_number:
                           000007   389 	ar7 = 0x07
                           000006   390 	ar6 = 0x06
                           000005   391 	ar5 = 0x05
                           000004   392 	ar4 = 0x04
                           000003   393 	ar3 = 0x03
                           000002   394 	ar2 = 0x02
                           000001   395 	ar1 = 0x01
                           000000   396 	ar0 = 0x00
      00008D AC 82            [24]  397 	mov	r4,dpl
      00008F AD 83            [24]  398 	mov	r5,dph
      000091 AE F0            [24]  399 	mov	r6,b
      000093 FF               [12]  400 	mov	r7,a
                                    401 ;	led7seg.h:29: if (!number)
      000094 EC               [12]  402 	mov	a,r4
      000095 4D               [12]  403 	orl	a,r5
      000096 4E               [12]  404 	orl	a,r6
      000097 4F               [12]  405 	orl	a,r7
                                    406 ;	led7seg.h:31: P0 = 0;
      000098 70 17            [24]  407 	jnz	00103$
      00009A F5 80            [12]  408 	mov	_P0,a
                                    409 ;	led7seg.h:32: P2 &= 0b11100011;
      00009C 53 A0 E3         [24]  410 	anl	_P2,#0xe3
                                    411 ;	led7seg.h:33: P0 = number_string[0];
      00009F 90 07 9B         [24]  412 	mov	dptr,#_number_string
      0000A2 E4               [12]  413 	clr	a
      0000A3 93               [24]  414 	movc	a,@a+dptr
      0000A4 F5 80            [12]  415 	mov	_P0,a
                                    416 ;	led7seg.h:34: for (char i = 0; i < 100; i++)
      0000A6 7B 00            [12]  417 	mov	r3,#0x00
      0000A8                        418 00113$:
      0000A8 BB 64 00         [24]  419 	cjne	r3,#0x64,00148$
      0000AB                        420 00148$:
      0000AB 50 03            [24]  421 	jnc	00101$
      0000AD 0B               [12]  422 	inc	r3
      0000AE 80 F8            [24]  423 	sjmp	00113$
      0000B0                        424 00101$:
                                    425 ;	led7seg.h:36: return;
      0000B0 22               [24]  426 	ret
      0000B1                        427 00103$:
                                    428 ;	led7seg.h:39: char neg = 0;
      0000B1 75 09 00         [24]  429 	mov	_display_number_neg_65537_38,#0x00
                                    430 ;	led7seg.h:40: if (number < 0)
      0000B4 EF               [12]  431 	mov	a,r7
      0000B5 30 E7 10         [24]  432 	jnb	acc.7,00122$
                                    433 ;	led7seg.h:42: neg = 1;
      0000B8 75 09 01         [24]  434 	mov	_display_number_neg_65537_38,#0x01
                                    435 ;	led7seg.h:43: number = -number;
      0000BB C3               [12]  436 	clr	c
      0000BC E4               [12]  437 	clr	a
      0000BD 9C               [12]  438 	subb	a,r4
      0000BE FC               [12]  439 	mov	r4,a
      0000BF E4               [12]  440 	clr	a
      0000C0 9D               [12]  441 	subb	a,r5
      0000C1 FD               [12]  442 	mov	r5,a
      0000C2 E4               [12]  443 	clr	a
      0000C3 9E               [12]  444 	subb	a,r6
      0000C4 FE               [12]  445 	mov	r6,a
      0000C5 E4               [12]  446 	clr	a
      0000C6 9F               [12]  447 	subb	a,r7
      0000C7 FF               [12]  448 	mov	r7,a
                                    449 ;	led7seg.h:53: while (number)
      0000C8                        450 00122$:
      0000C8 75 08 00         [24]  451 	mov	_display_number_led_65537_38,#0x00
      0000CB                        452 00106$:
      0000CB EC               [12]  453 	mov	a,r4
      0000CC 4D               [12]  454 	orl	a,r5
      0000CD 4E               [12]  455 	orl	a,r6
      0000CE 4F               [12]  456 	orl	a,r7
      0000CF 60 5A            [24]  457 	jz	00108$
                                    458 ;	led7seg.h:55: display_digit(led++, number % 10);
      0000D1 75 16 0A         [24]  459 	mov	__modslong_PARM_2,#0x0a
      0000D4 E4               [12]  460 	clr	a
      0000D5 F5 17            [12]  461 	mov	(__modslong_PARM_2 + 1),a
      0000D7 F5 18            [12]  462 	mov	(__modslong_PARM_2 + 2),a
      0000D9 F5 19            [12]  463 	mov	(__modslong_PARM_2 + 3),a
      0000DB 8C 82            [24]  464 	mov	dpl,r4
      0000DD 8D 83            [24]  465 	mov	dph,r5
      0000DF 8E F0            [24]  466 	mov	b,r6
      0000E1 EF               [12]  467 	mov	a,r7
      0000E2 C0 07            [24]  468 	push	ar7
      0000E4 C0 06            [24]  469 	push	ar6
      0000E6 C0 05            [24]  470 	push	ar5
      0000E8 C0 04            [24]  471 	push	ar4
      0000EA 12 06 F6         [24]  472 	lcall	__modslong
      0000ED A8 82            [24]  473 	mov	r0,dpl
      0000EF D0 04            [24]  474 	pop	ar4
      0000F1 D0 05            [24]  475 	pop	ar5
      0000F3 D0 06            [24]  476 	pop	ar6
      0000F5 D0 07            [24]  477 	pop	ar7
      0000F7 AB 08            [24]  478 	mov	r3,_display_number_led_65537_38
      0000F9 05 08            [12]  479 	inc	_display_number_led_65537_38
                                    480 ;	led7seg.h:19: P0 = 0;
      0000FB 75 80 00         [24]  481 	mov	_P0,#0x00
                                    482 ;	led7seg.h:20: P2 &= 0b11100011;
      0000FE 53 A0 E3         [24]  483 	anl	_P2,#0xe3
                                    484 ;	led7seg.h:21: P2 |= led << 2;
      000101 EB               [12]  485 	mov	a,r3
      000102 2B               [12]  486 	add	a,r3
      000103 25 E0            [12]  487 	add	a,acc
      000105 42 A0            [12]  488 	orl	_P2,a
                                    489 ;	led7seg.h:24: P0 = number_string[digit];
      000107 E8               [12]  490 	mov	a,r0
      000108 90 07 9B         [24]  491 	mov	dptr,#_number_string
      00010B 93               [24]  492 	movc	a,@a+dptr
      00010C F5 80            [12]  493 	mov	_P0,a
                                    494 ;	led7seg.h:56: number /= 10;
      00010E 75 16 0A         [24]  495 	mov	__divslong_PARM_2,#0x0a
      000111 E4               [12]  496 	clr	a
      000112 F5 17            [12]  497 	mov	(__divslong_PARM_2 + 1),a
      000114 F5 18            [12]  498 	mov	(__divslong_PARM_2 + 2),a
      000116 F5 19            [12]  499 	mov	(__divslong_PARM_2 + 3),a
      000118 8C 82            [24]  500 	mov	dpl,r4
      00011A 8D 83            [24]  501 	mov	dph,r5
      00011C 8E F0            [24]  502 	mov	b,r6
      00011E EF               [12]  503 	mov	a,r7
      00011F 12 07 45         [24]  504 	lcall	__divslong
      000122 AC 82            [24]  505 	mov	r4,dpl
      000124 AD 83            [24]  506 	mov	r5,dph
      000126 AE F0            [24]  507 	mov	r6,b
      000128 FF               [12]  508 	mov	r7,a
      000129 80 A0            [24]  509 	sjmp	00106$
      00012B                        510 00108$:
                                    511 ;	led7seg.h:58: if (neg)
      00012B E5 09            [12]  512 	mov	a,_display_number_neg_65537_38
      00012D 60 0F            [24]  513 	jz	00115$
                                    514 ;	led7seg.h:60: P0 = 0;
      00012F 75 80 00         [24]  515 	mov	_P0,#0x00
                                    516 ;	led7seg.h:61: P2 = led << 2;
      000132 E5 08            [12]  517 	mov	a,_display_number_led_65537_38
      000134 FA               [12]  518 	mov	r2,a
      000135 25 E0            [12]  519 	add	a,acc
      000137 25 E0            [12]  520 	add	a,acc
      000139 F5 A0            [12]  521 	mov	_P2,a
                                    522 ;	led7seg.h:62: P0 = 0b01000000;
      00013B 75 80 40         [24]  523 	mov	_P0,#0x40
      00013E                        524 00115$:
                                    525 ;	led7seg.h:64: }
      00013E 22               [24]  526 	ret
                                    527 ;------------------------------------------------------------
                                    528 ;Allocation info for local variables in function 'uart_init'
                                    529 ;------------------------------------------------------------
                                    530 ;	connect.c:24: void uart_init(void)
                                    531 ;	-----------------------------------------
                                    532 ;	 function uart_init
                                    533 ;	-----------------------------------------
      00013F                        534 _uart_init:
                                    535 ;	connect.c:28: TMOD &= 0x0f;
      00013F 53 89 0F         [24]  536 	anl	_TMOD,#0x0f
                                    537 ;	connect.c:29: TMOD |= 0x20;
      000142 43 89 20         [24]  538 	orl	_TMOD,#0x20
                                    539 ;	connect.c:30: TH1 = 0xfd;
      000145 75 8D FD         [24]  540 	mov	_TH1,#0xfd
                                    541 ;	connect.c:31: TL1 = 0xfd;
      000148 75 8B FD         [24]  542 	mov	_TL1,#0xfd
                                    543 ;	connect.c:32: ET1 = 0;
                                    544 ;	assignBit
      00014B C2 AB            [12]  545 	clr	_ET1
                                    546 ;	connect.c:33: TR1 = 1;
                                    547 ;	assignBit
      00014D D2 8E            [12]  548 	setb	_TR1
                                    549 ;	connect.c:35: SM0 = 0;
                                    550 ;	assignBit
      00014F C2 9F            [12]  551 	clr	_SM0
                                    552 ;	connect.c:36: SM1 = 1;
                                    553 ;	assignBit
      000151 D2 9E            [12]  554 	setb	_SM1
                                    555 ;	connect.c:38: ES = 1;
                                    556 ;	assignBit
      000153 D2 AC            [12]  557 	setb	_ES
                                    558 ;	connect.c:39: EA = 1;
                                    559 ;	assignBit
      000155 D2 AF            [12]  560 	setb	_EA
                                    561 ;	connect.c:40: REN = 1;
                                    562 ;	assignBit
      000157 D2 9C            [12]  563 	setb	_REN
                                    564 ;	connect.c:41: }
      000159 22               [24]  565 	ret
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'uart_send'
                                    568 ;------------------------------------------------------------
                                    569 ;data                      Allocated to registers r7 
                                    570 ;------------------------------------------------------------
                                    571 ;	connect.c:43: void uart_send(__code char data)
                                    572 ;	-----------------------------------------
                                    573 ;	 function uart_send
                                    574 ;	-----------------------------------------
      00015A                        575 _uart_send:
      00015A AF 82            [24]  576 	mov	r7,dpl
                                    577 ;	connect.c:45: ES = 0;
                                    578 ;	assignBit
      00015C C2 AC            [12]  579 	clr	_ES
                                    580 ;	connect.c:46: SBUF = data; // Load data into buffer
      00015E 8F 99            [24]  581 	mov	_SBUF,r7
                                    582 ;	connect.c:47: while (TI == 0)
      000160                        583 00101$:
                                    584 ;	connect.c:50: TI = 0; // Clear transmit interrupt flag
                                    585 ;	assignBit
      000160 10 99 02         [24]  586 	jbc	_TI,00114$
      000163 80 FB            [24]  587 	sjmp	00101$
      000165                        588 00114$:
                                    589 ;	connect.c:51: ES = 1;
                                    590 ;	assignBit
      000165 D2 AC            [12]  591 	setb	_ES
                                    592 ;	connect.c:52: }
      000167 22               [24]  593 	ret
                                    594 ;------------------------------------------------------------
                                    595 ;Allocation info for local variables in function 'UART_Receive'
                                    596 ;------------------------------------------------------------
                                    597 ;	connect.c:54: void UART_Receive(void) __interrupt(4)
                                    598 ;	-----------------------------------------
                                    599 ;	 function UART_Receive
                                    600 ;	-----------------------------------------
      000168                        601 _UART_Receive:
      000168 C0 21            [24]  602 	push	bits
      00016A C0 E0            [24]  603 	push	acc
      00016C C0 F0            [24]  604 	push	b
      00016E C0 82            [24]  605 	push	dpl
      000170 C0 83            [24]  606 	push	dph
      000172 C0 07            [24]  607 	push	(0+7)
      000174 C0 06            [24]  608 	push	(0+6)
      000176 C0 05            [24]  609 	push	(0+5)
      000178 C0 04            [24]  610 	push	(0+4)
      00017A C0 03            [24]  611 	push	(0+3)
      00017C C0 02            [24]  612 	push	(0+2)
      00017E C0 01            [24]  613 	push	(0+1)
      000180 C0 00            [24]  614 	push	(0+0)
      000182 C0 D0            [24]  615 	push	psw
      000184 75 D0 00         [24]  616 	mov	psw,#0x00
                                    617 ;	connect.c:56: P2 = 0x10;
      000187 75 A0 10         [24]  618 	mov	_P2,#0x10
                                    619 ;	connect.c:57: if (RI)
      00018A 30 98 0D         [24]  620 	jnb	_RI,00103$
                                    621 ;	connect.c:59: P2 = ~SBUF;
      00018D E5 99            [12]  622 	mov	a,_SBUF
      00018F F4               [12]  623 	cpl	a
      000190 F5 A0            [12]  624 	mov	_P2,a
                                    625 ;	connect.c:60: received_data = SBUF; // Get received data
      000192 85 99 0A         [24]  626 	mov	_received_data,_SBUF
                                    627 ;	connect.c:61: resolve_message();
      000195 12 04 38         [24]  628 	lcall	_resolve_message
                                    629 ;	connect.c:62: RI = 0; // Clear receive interrupt flag
                                    630 ;	assignBit
      000198 C2 98            [12]  631 	clr	_RI
      00019A                        632 00103$:
                                    633 ;	connect.c:64: }
      00019A D0 D0            [24]  634 	pop	psw
      00019C D0 00            [24]  635 	pop	(0+0)
      00019E D0 01            [24]  636 	pop	(0+1)
      0001A0 D0 02            [24]  637 	pop	(0+2)
      0001A2 D0 03            [24]  638 	pop	(0+3)
      0001A4 D0 04            [24]  639 	pop	(0+4)
      0001A6 D0 05            [24]  640 	pop	(0+5)
      0001A8 D0 06            [24]  641 	pop	(0+6)
      0001AA D0 07            [24]  642 	pop	(0+7)
      0001AC D0 83            [24]  643 	pop	dph
      0001AE D0 82            [24]  644 	pop	dpl
      0001B0 D0 F0            [24]  645 	pop	b
      0001B2 D0 E0            [24]  646 	pop	acc
      0001B4 D0 21            [24]  647 	pop	bits
      0001B6 32               [24]  648 	reti
                                    649 ;------------------------------------------------------------
                                    650 ;Allocation info for local variables in function 'key_pressed_handle'
                                    651 ;------------------------------------------------------------
                                    652 ;	connect.c:117: void key_pressed_handle(void)
                                    653 ;	-----------------------------------------
                                    654 ;	 function key_pressed_handle
                                    655 ;	-----------------------------------------
      0001B7                        656 _key_pressed_handle:
                                    657 ;	connect.c:119: if (point >= 64)
      0001B7 74 C0            [12]  658 	mov	a,#0x100 - 0x40
      0001B9 25 0B            [12]  659 	add	a,_point
      0001BB 50 06            [24]  660 	jnc	00102$
                                    661 ;	connect.c:121: uart_send(key_pressed);
      0001BD 85 14 82         [24]  662 	mov	dpl,_key_pressed
                                    663 ;	connect.c:122: return;
      0001C0 02 01 5A         [24]  664 	ljmp	_uart_send
      0001C3                        665 00102$:
                                    666 ;	connect.c:124: switch (key_pressed)
      0001C3 74 02            [12]  667 	mov	a,#0x02
      0001C5 B5 14 02         [24]  668 	cjne	a,_key_pressed,00131$
      0001C8 80 15            [24]  669 	sjmp	00103$
      0001CA                        670 00131$:
      0001CA 74 05            [12]  671 	mov	a,#0x05
      0001CC B5 14 02         [24]  672 	cjne	a,_key_pressed,00132$
      0001CF 80 14            [24]  673 	sjmp	00105$
      0001D1                        674 00132$:
      0001D1 74 06            [12]  675 	mov	a,#0x06
      0001D3 B5 14 02         [24]  676 	cjne	a,_key_pressed,00133$
      0001D6 80 0A            [24]  677 	sjmp	00104$
      0001D8                        678 00133$:
      0001D8 74 07            [12]  679 	mov	a,#0x07
                                    680 ;	connect.c:126: case 2:
      0001DA B5 14 0E         [24]  681 	cjne	a,_key_pressed,00108$
      0001DD 80 09            [24]  682 	sjmp	00106$
      0001DF                        683 00103$:
                                    684 ;	connect.c:128: move_up();
                                    685 ;	connect.c:129: break;
                                    686 ;	connect.c:130: case 6:
      0001DF 02 01 EC         [24]  687 	ljmp	_move_up
      0001E2                        688 00104$:
                                    689 ;	connect.c:132: move_down();
                                    690 ;	connect.c:133: break;
                                    691 ;	connect.c:134: case 5:
      0001E2 02 02 5A         [24]  692 	ljmp	_move_down
      0001E5                        693 00105$:
                                    694 ;	connect.c:136: move_left();
                                    695 ;	connect.c:137: break;
                                    696 ;	connect.c:138: case 7:
      0001E5 02 02 C9         [24]  697 	ljmp	_move_left
      0001E8                        698 00106$:
                                    699 ;	connect.c:140: move_right();
                                    700 ;	connect.c:142: }
                                    701 ;	connect.c:143: }
      0001E8 02 03 7E         [24]  702 	ljmp	_move_right
      0001EB                        703 00108$:
      0001EB 22               [24]  704 	ret
                                    705 ;------------------------------------------------------------
                                    706 ;Allocation info for local variables in function 'move_up'
                                    707 ;------------------------------------------------------------
                                    708 ;__1310720007              Allocated to registers r7 
                                    709 ;a                         Allocated to registers 
                                    710 ;__1310720009              Allocated to registers r7 
                                    711 ;a                         Allocated to registers 
                                    712 ;------------------------------------------------------------
                                    713 ;	connect.c:149: void move_up(void)
                                    714 ;	-----------------------------------------
                                    715 ;	 function move_up
                                    716 ;	-----------------------------------------
      0001EC                        717 _move_up:
                                    718 ;	connect.c:151: if (point < 8)
      0001EC 74 F8            [12]  719 	mov	a,#0x100 - 0x08
      0001EE 25 0B            [12]  720 	add	a,_point
      0001F0 40 01            [24]  721 	jc	00102$
                                    722 ;	connect.c:152: return;
      0001F2 22               [24]  723 	ret
      0001F3                        724 00102$:
                                    725 ;	connect.c:153: turn_off(point);
                                    726 ;	connect.c:107: if (a > 63)
      0001F3 E5 0B            [12]  727 	mov	a,_point
      0001F5 FF               [12]  728 	mov	r7,a
      0001F6 24 C0            [12]  729 	add	a,#0xff - 0x3f
      0001F8 40 2A            [24]  730 	jc	00105$
                                    731 ;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
      0001FA EF               [12]  732 	mov	a,r7
      0001FB C4               [12]  733 	swap	a
      0001FC 23               [12]  734 	rl	a
      0001FD 54 1F            [12]  735 	anl	a,#0x1f
      0001FF 24 0C            [12]  736 	add	a,#_data_mat
      000201 F9               [12]  737 	mov	r1,a
      000202 87 06            [24]  738 	mov	ar6,@r1
      000204 53 07 07         [24]  739 	anl	ar7,#0x07
      000207 8F F0            [24]  740 	mov	b,r7
      000209 05 F0            [12]  741 	inc	b
      00020B 7F 80            [12]  742 	mov	r7,#0x80
      00020D E4               [12]  743 	clr	a
      00020E FD               [12]  744 	mov	r5,a
      00020F 33               [12]  745 	rlc	a
      000210 92 D2            [24]  746 	mov	ov,c
      000212 80 08            [24]  747 	sjmp	00126$
      000214                        748 00125$:
      000214 A2 D2            [12]  749 	mov	c,ov
      000216 ED               [12]  750 	mov	a,r5
      000217 13               [12]  751 	rrc	a
      000218 FD               [12]  752 	mov	r5,a
      000219 EF               [12]  753 	mov	a,r7
      00021A 13               [12]  754 	rrc	a
      00021B FF               [12]  755 	mov	r7,a
      00021C                        756 00126$:
      00021C D5 F0 F5         [24]  757 	djnz	b,00125$
      00021F EF               [12]  758 	mov	a,r7
      000220 F4               [12]  759 	cpl	a
      000221 FF               [12]  760 	mov	r7,a
      000222 5E               [12]  761 	anl	a,r6
      000223 F7               [12]  762 	mov	@r1,a
                                    763 ;	connect.c:153: turn_off(point);
      000224                        764 00105$:
                                    765 ;	connect.c:154: point -= 8;
      000224 E5 0B            [12]  766 	mov	a,_point
      000226 24 F8            [12]  767 	add	a,#0xf8
      000228 F5 0B            [12]  768 	mov	_point,a
                                    769 ;	connect.c:155: turn_on(point);
                                    770 ;	connect.c:101: if (a > 63)
      00022A E5 0B            [12]  771 	mov	a,_point
      00022C FF               [12]  772 	mov	r7,a
      00022D 24 C0            [12]  773 	add	a,#0xff - 0x3f
      00022F 40 28            [24]  774 	jc	00109$
                                    775 ;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
      000231 EF               [12]  776 	mov	a,r7
      000232 C4               [12]  777 	swap	a
      000233 23               [12]  778 	rl	a
      000234 54 1F            [12]  779 	anl	a,#0x1f
      000236 24 0C            [12]  780 	add	a,#_data_mat
      000238 F9               [12]  781 	mov	r1,a
      000239 87 06            [24]  782 	mov	ar6,@r1
      00023B 53 07 07         [24]  783 	anl	ar7,#0x07
      00023E 8F F0            [24]  784 	mov	b,r7
      000240 05 F0            [12]  785 	inc	b
      000242 7F 80            [12]  786 	mov	r7,#0x80
      000244 E4               [12]  787 	clr	a
      000245 FD               [12]  788 	mov	r5,a
      000246 33               [12]  789 	rlc	a
      000247 92 D2            [24]  790 	mov	ov,c
      000249 80 08            [24]  791 	sjmp	00129$
      00024B                        792 00128$:
      00024B A2 D2            [12]  793 	mov	c,ov
      00024D ED               [12]  794 	mov	a,r5
      00024E 13               [12]  795 	rrc	a
      00024F FD               [12]  796 	mov	r5,a
      000250 EF               [12]  797 	mov	a,r7
      000251 13               [12]  798 	rrc	a
      000252 FF               [12]  799 	mov	r7,a
      000253                        800 00129$:
      000253 D5 F0 F5         [24]  801 	djnz	b,00128$
      000256 EF               [12]  802 	mov	a,r7
      000257 4E               [12]  803 	orl	a,r6
      000258 F7               [12]  804 	mov	@r1,a
                                    805 ;	connect.c:155: turn_on(point);
      000259                        806 00109$:
                                    807 ;	connect.c:156: }
      000259 22               [24]  808 	ret
                                    809 ;------------------------------------------------------------
                                    810 ;Allocation info for local variables in function 'move_down'
                                    811 ;------------------------------------------------------------
                                    812 ;__1310720011              Allocated to registers r7 
                                    813 ;a                         Allocated to registers 
                                    814 ;__1310720013              Allocated to registers r7 
                                    815 ;a                         Allocated to registers 
                                    816 ;------------------------------------------------------------
                                    817 ;	connect.c:157: void move_down(void)
                                    818 ;	-----------------------------------------
                                    819 ;	 function move_down
                                    820 ;	-----------------------------------------
      00025A                        821 _move_down:
                                    822 ;	connect.c:159: if (point >= 56)
      00025A 74 C8            [12]  823 	mov	a,#0x100 - 0x38
      00025C 25 0B            [12]  824 	add	a,_point
      00025E 50 01            [24]  825 	jnc	00102$
                                    826 ;	connect.c:161: return;
      000260 22               [24]  827 	ret
      000261                        828 00102$:
                                    829 ;	connect.c:163: turn_off(point);
                                    830 ;	connect.c:107: if (a > 63)
      000261 E5 0B            [12]  831 	mov	a,_point
      000263 FF               [12]  832 	mov	r7,a
      000264 24 C0            [12]  833 	add	a,#0xff - 0x3f
      000266 40 2A            [24]  834 	jc	00105$
                                    835 ;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
      000268 EF               [12]  836 	mov	a,r7
      000269 C4               [12]  837 	swap	a
      00026A 23               [12]  838 	rl	a
      00026B 54 1F            [12]  839 	anl	a,#0x1f
      00026D 24 0C            [12]  840 	add	a,#_data_mat
      00026F F9               [12]  841 	mov	r1,a
      000270 87 06            [24]  842 	mov	ar6,@r1
      000272 53 07 07         [24]  843 	anl	ar7,#0x07
      000275 8F F0            [24]  844 	mov	b,r7
      000277 05 F0            [12]  845 	inc	b
      000279 7F 80            [12]  846 	mov	r7,#0x80
      00027B E4               [12]  847 	clr	a
      00027C FD               [12]  848 	mov	r5,a
      00027D 33               [12]  849 	rlc	a
      00027E 92 D2            [24]  850 	mov	ov,c
      000280 80 08            [24]  851 	sjmp	00126$
      000282                        852 00125$:
      000282 A2 D2            [12]  853 	mov	c,ov
      000284 ED               [12]  854 	mov	a,r5
      000285 13               [12]  855 	rrc	a
      000286 FD               [12]  856 	mov	r5,a
      000287 EF               [12]  857 	mov	a,r7
      000288 13               [12]  858 	rrc	a
      000289 FF               [12]  859 	mov	r7,a
      00028A                        860 00126$:
      00028A D5 F0 F5         [24]  861 	djnz	b,00125$
      00028D EF               [12]  862 	mov	a,r7
      00028E F4               [12]  863 	cpl	a
      00028F FF               [12]  864 	mov	r7,a
      000290 5E               [12]  865 	anl	a,r6
      000291 F7               [12]  866 	mov	@r1,a
                                    867 ;	connect.c:163: turn_off(point);
      000292                        868 00105$:
                                    869 ;	connect.c:164: point += 8;
      000292 AF 0B            [24]  870 	mov	r7,_point
      000294 74 08            [12]  871 	mov	a,#0x08
      000296 2F               [12]  872 	add	a,r7
      000297 F5 0B            [12]  873 	mov	_point,a
                                    874 ;	connect.c:165: turn_on(point);
                                    875 ;	connect.c:101: if (a > 63)
      000299 E5 0B            [12]  876 	mov	a,_point
      00029B FF               [12]  877 	mov	r7,a
      00029C 24 C0            [12]  878 	add	a,#0xff - 0x3f
      00029E 40 28            [24]  879 	jc	00109$
                                    880 ;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
      0002A0 EF               [12]  881 	mov	a,r7
      0002A1 C4               [12]  882 	swap	a
      0002A2 23               [12]  883 	rl	a
      0002A3 54 1F            [12]  884 	anl	a,#0x1f
      0002A5 24 0C            [12]  885 	add	a,#_data_mat
      0002A7 F9               [12]  886 	mov	r1,a
      0002A8 87 06            [24]  887 	mov	ar6,@r1
      0002AA 53 07 07         [24]  888 	anl	ar7,#0x07
      0002AD 8F F0            [24]  889 	mov	b,r7
      0002AF 05 F0            [12]  890 	inc	b
      0002B1 7F 80            [12]  891 	mov	r7,#0x80
      0002B3 E4               [12]  892 	clr	a
      0002B4 FD               [12]  893 	mov	r5,a
      0002B5 33               [12]  894 	rlc	a
      0002B6 92 D2            [24]  895 	mov	ov,c
      0002B8 80 08            [24]  896 	sjmp	00129$
      0002BA                        897 00128$:
      0002BA A2 D2            [12]  898 	mov	c,ov
      0002BC ED               [12]  899 	mov	a,r5
      0002BD 13               [12]  900 	rrc	a
      0002BE FD               [12]  901 	mov	r5,a
      0002BF EF               [12]  902 	mov	a,r7
      0002C0 13               [12]  903 	rrc	a
      0002C1 FF               [12]  904 	mov	r7,a
      0002C2                        905 00129$:
      0002C2 D5 F0 F5         [24]  906 	djnz	b,00128$
      0002C5 EF               [12]  907 	mov	a,r7
      0002C6 4E               [12]  908 	orl	a,r6
      0002C7 F7               [12]  909 	mov	@r1,a
                                    910 ;	connect.c:165: turn_on(point);
      0002C8                        911 00109$:
                                    912 ;	connect.c:166: }
      0002C8 22               [24]  913 	ret
                                    914 ;------------------------------------------------------------
                                    915 ;Allocation info for local variables in function 'move_left'
                                    916 ;------------------------------------------------------------
                                    917 ;__2621440015              Allocated to registers r7 
                                    918 ;a                         Allocated to registers 
                                    919 ;__1310720017              Allocated to registers r7 
                                    920 ;a                         Allocated to registers 
                                    921 ;__1310720019              Allocated to registers r7 
                                    922 ;a                         Allocated to registers 
                                    923 ;------------------------------------------------------------
                                    924 ;	connect.c:167: void move_left(void)
                                    925 ;	-----------------------------------------
                                    926 ;	 function move_left
                                    927 ;	-----------------------------------------
      0002C9                        928 _move_left:
                                    929 ;	connect.c:169: if ((point & 7) == 0)
      0002C9 E5 0B            [12]  930 	mov	a,_point
      0002CB 54 07            [12]  931 	anl	a,#0x07
      0002CD 60 02            [24]  932 	jz	00137$
      0002CF 80 4A            [24]  933 	sjmp	00104$
      0002D1                        934 00137$:
                                    935 ;	connect.c:171: if (kit_id)
      0002D1 30 00 46         [24]  936 	jnb	_kit_id,00102$
                                    937 ;	connect.c:173: turn_off(point);
                                    938 ;	connect.c:107: if (a > 63)
      0002D4 E5 0B            [12]  939 	mov	a,_point
      0002D6 FF               [12]  940 	mov	r7,a
      0002D7 24 C0            [12]  941 	add	a,#0xff - 0x3f
      0002D9 40 2A            [24]  942 	jc	00107$
                                    943 ;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
      0002DB EF               [12]  944 	mov	a,r7
      0002DC C4               [12]  945 	swap	a
      0002DD 23               [12]  946 	rl	a
      0002DE 54 1F            [12]  947 	anl	a,#0x1f
      0002E0 24 0C            [12]  948 	add	a,#_data_mat
      0002E2 F9               [12]  949 	mov	r1,a
      0002E3 87 06            [24]  950 	mov	ar6,@r1
      0002E5 53 07 07         [24]  951 	anl	ar7,#0x07
      0002E8 8F F0            [24]  952 	mov	b,r7
      0002EA 05 F0            [12]  953 	inc	b
      0002EC 7F 80            [12]  954 	mov	r7,#0x80
      0002EE E4               [12]  955 	clr	a
      0002EF FD               [12]  956 	mov	r5,a
      0002F0 33               [12]  957 	rlc	a
      0002F1 92 D2            [24]  958 	mov	ov,c
      0002F3 80 08            [24]  959 	sjmp	00141$
      0002F5                        960 00140$:
      0002F5 A2 D2            [12]  961 	mov	c,ov
      0002F7 ED               [12]  962 	mov	a,r5
      0002F8 13               [12]  963 	rrc	a
      0002F9 FD               [12]  964 	mov	r5,a
      0002FA EF               [12]  965 	mov	a,r7
      0002FB 13               [12]  966 	rrc	a
      0002FC FF               [12]  967 	mov	r7,a
      0002FD                        968 00141$:
      0002FD D5 F0 F5         [24]  969 	djnz	b,00140$
      000300 EF               [12]  970 	mov	a,r7
      000301 F4               [12]  971 	cpl	a
      000302 FF               [12]  972 	mov	r7,a
      000303 5E               [12]  973 	anl	a,r6
      000304 F7               [12]  974 	mov	@r1,a
                                    975 ;	connect.c:173: turn_off(point);
      000305                        976 00107$:
                                    977 ;	connect.c:174: uart_send(back | (point >> 3));
      000305 E5 0B            [12]  978 	mov	a,_point
      000307 C4               [12]  979 	swap	a
      000308 23               [12]  980 	rl	a
      000309 54 1F            [12]  981 	anl	a,#0x1f
      00030B FF               [12]  982 	mov	r7,a
      00030C 90 07 A6         [24]  983 	mov	dptr,#_back
      00030F E4               [12]  984 	clr	a
      000310 93               [24]  985 	movc	a,@a+dptr
      000311 4F               [12]  986 	orl	a,r7
      000312 F5 82            [12]  987 	mov	dpl,a
      000314 12 01 5A         [24]  988 	lcall	_uart_send
                                    989 ;	connect.c:175: point = 100;
      000317 75 0B 64         [24]  990 	mov	_point,#0x64
      00031A                        991 00102$:
                                    992 ;	connect.c:177: return;
      00031A 22               [24]  993 	ret
      00031B                        994 00104$:
                                    995 ;	connect.c:179: turn_off(point);
                                    996 ;	connect.c:107: if (a > 63)
      00031B E5 0B            [12]  997 	mov	a,_point
      00031D FF               [12]  998 	mov	r7,a
      00031E 24 C0            [12]  999 	add	a,#0xff - 0x3f
      000320 40 2A            [24] 1000 	jc	00110$
                                   1001 ;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
      000322 EF               [12] 1002 	mov	a,r7
      000323 C4               [12] 1003 	swap	a
      000324 23               [12] 1004 	rl	a
      000325 54 1F            [12] 1005 	anl	a,#0x1f
      000327 24 0C            [12] 1006 	add	a,#_data_mat
      000329 F9               [12] 1007 	mov	r1,a
      00032A 87 06            [24] 1008 	mov	ar6,@r1
      00032C 53 07 07         [24] 1009 	anl	ar7,#0x07
      00032F 8F F0            [24] 1010 	mov	b,r7
      000331 05 F0            [12] 1011 	inc	b
      000333 7F 80            [12] 1012 	mov	r7,#0x80
      000335 E4               [12] 1013 	clr	a
      000336 FD               [12] 1014 	mov	r5,a
      000337 33               [12] 1015 	rlc	a
      000338 92 D2            [24] 1016 	mov	ov,c
      00033A 80 08            [24] 1017 	sjmp	00144$
      00033C                       1018 00143$:
      00033C A2 D2            [12] 1019 	mov	c,ov
      00033E ED               [12] 1020 	mov	a,r5
      00033F 13               [12] 1021 	rrc	a
      000340 FD               [12] 1022 	mov	r5,a
      000341 EF               [12] 1023 	mov	a,r7
      000342 13               [12] 1024 	rrc	a
      000343 FF               [12] 1025 	mov	r7,a
      000344                       1026 00144$:
      000344 D5 F0 F5         [24] 1027 	djnz	b,00143$
      000347 EF               [12] 1028 	mov	a,r7
      000348 F4               [12] 1029 	cpl	a
      000349 FF               [12] 1030 	mov	r7,a
      00034A 5E               [12] 1031 	anl	a,r6
      00034B F7               [12] 1032 	mov	@r1,a
                                   1033 ;	connect.c:179: turn_off(point);
      00034C                       1034 00110$:
                                   1035 ;	connect.c:180: point--;
      00034C 15 0B            [12] 1036 	dec	_point
                                   1037 ;	connect.c:181: turn_on(point);
                                   1038 ;	connect.c:101: if (a > 63)
      00034E E5 0B            [12] 1039 	mov	a,_point
      000350 FF               [12] 1040 	mov	r7,a
      000351 24 C0            [12] 1041 	add	a,#0xff - 0x3f
      000353 40 28            [24] 1042 	jc	00114$
                                   1043 ;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
      000355 EF               [12] 1044 	mov	a,r7
      000356 C4               [12] 1045 	swap	a
      000357 23               [12] 1046 	rl	a
      000358 54 1F            [12] 1047 	anl	a,#0x1f
      00035A 24 0C            [12] 1048 	add	a,#_data_mat
      00035C F9               [12] 1049 	mov	r1,a
      00035D 87 06            [24] 1050 	mov	ar6,@r1
      00035F 53 07 07         [24] 1051 	anl	ar7,#0x07
      000362 8F F0            [24] 1052 	mov	b,r7
      000364 05 F0            [12] 1053 	inc	b
      000366 7F 80            [12] 1054 	mov	r7,#0x80
      000368 E4               [12] 1055 	clr	a
      000369 FD               [12] 1056 	mov	r5,a
      00036A 33               [12] 1057 	rlc	a
      00036B 92 D2            [24] 1058 	mov	ov,c
      00036D 80 08            [24] 1059 	sjmp	00147$
      00036F                       1060 00146$:
      00036F A2 D2            [12] 1061 	mov	c,ov
      000371 ED               [12] 1062 	mov	a,r5
      000372 13               [12] 1063 	rrc	a
      000373 FD               [12] 1064 	mov	r5,a
      000374 EF               [12] 1065 	mov	a,r7
      000375 13               [12] 1066 	rrc	a
      000376 FF               [12] 1067 	mov	r7,a
      000377                       1068 00147$:
      000377 D5 F0 F5         [24] 1069 	djnz	b,00146$
      00037A EF               [12] 1070 	mov	a,r7
      00037B 4E               [12] 1071 	orl	a,r6
      00037C F7               [12] 1072 	mov	@r1,a
                                   1073 ;	connect.c:181: turn_on(point);
      00037D                       1074 00114$:
                                   1075 ;	connect.c:182: }
      00037D 22               [24] 1076 	ret
                                   1077 ;------------------------------------------------------------
                                   1078 ;Allocation info for local variables in function 'move_right'
                                   1079 ;------------------------------------------------------------
                                   1080 ;__2621440021              Allocated to registers r7 
                                   1081 ;a                         Allocated to registers 
                                   1082 ;__1310720023              Allocated to registers r7 
                                   1083 ;a                         Allocated to registers 
                                   1084 ;__1310720025              Allocated to registers r7 
                                   1085 ;a                         Allocated to registers 
                                   1086 ;------------------------------------------------------------
                                   1087 ;	connect.c:183: void move_right(void)
                                   1088 ;	-----------------------------------------
                                   1089 ;	 function move_right
                                   1090 ;	-----------------------------------------
      00037E                       1091 _move_right:
                                   1092 ;	connect.c:185: if ((point & 7) == 7)
      00037E AE 0B            [24] 1093 	mov	r6,_point
      000380 53 06 07         [24] 1094 	anl	ar6,#0x07
      000383 7F 00            [12] 1095 	mov	r7,#0x00
      000385 BE 07 4D         [24] 1096 	cjne	r6,#0x07,00104$
      000388 BF 00 4A         [24] 1097 	cjne	r7,#0x00,00104$
                                   1098 ;	connect.c:187: if (kit_id == 0)
      00038B 20 00 46         [24] 1099 	jb	_kit_id,00102$
                                   1100 ;	connect.c:189: turn_off(point);
                                   1101 ;	connect.c:107: if (a > 63)
      00038E E5 0B            [12] 1102 	mov	a,_point
      000390 FF               [12] 1103 	mov	r7,a
      000391 24 C0            [12] 1104 	add	a,#0xff - 0x3f
      000393 40 2A            [24] 1105 	jc	00107$
                                   1106 ;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
      000395 EF               [12] 1107 	mov	a,r7
      000396 C4               [12] 1108 	swap	a
      000397 23               [12] 1109 	rl	a
      000398 54 1F            [12] 1110 	anl	a,#0x1f
      00039A 24 0C            [12] 1111 	add	a,#_data_mat
      00039C F9               [12] 1112 	mov	r1,a
      00039D 87 06            [24] 1113 	mov	ar6,@r1
      00039F 53 07 07         [24] 1114 	anl	ar7,#0x07
      0003A2 8F F0            [24] 1115 	mov	b,r7
      0003A4 05 F0            [12] 1116 	inc	b
      0003A6 7F 80            [12] 1117 	mov	r7,#0x80
      0003A8 E4               [12] 1118 	clr	a
      0003A9 FD               [12] 1119 	mov	r5,a
      0003AA 33               [12] 1120 	rlc	a
      0003AB 92 D2            [24] 1121 	mov	ov,c
      0003AD 80 08            [24] 1122 	sjmp	00141$
      0003AF                       1123 00140$:
      0003AF A2 D2            [12] 1124 	mov	c,ov
      0003B1 ED               [12] 1125 	mov	a,r5
      0003B2 13               [12] 1126 	rrc	a
      0003B3 FD               [12] 1127 	mov	r5,a
      0003B4 EF               [12] 1128 	mov	a,r7
      0003B5 13               [12] 1129 	rrc	a
      0003B6 FF               [12] 1130 	mov	r7,a
      0003B7                       1131 00141$:
      0003B7 D5 F0 F5         [24] 1132 	djnz	b,00140$
      0003BA EF               [12] 1133 	mov	a,r7
      0003BB F4               [12] 1134 	cpl	a
      0003BC FF               [12] 1135 	mov	r7,a
      0003BD 5E               [12] 1136 	anl	a,r6
      0003BE F7               [12] 1137 	mov	@r1,a
                                   1138 ;	connect.c:189: turn_off(point);
      0003BF                       1139 00107$:
                                   1140 ;	connect.c:190: uart_send(forward | (point >> 3));
      0003BF E5 0B            [12] 1141 	mov	a,_point
      0003C1 C4               [12] 1142 	swap	a
      0003C2 23               [12] 1143 	rl	a
      0003C3 54 1F            [12] 1144 	anl	a,#0x1f
      0003C5 FF               [12] 1145 	mov	r7,a
      0003C6 90 07 A5         [24] 1146 	mov	dptr,#_forward
      0003C9 E4               [12] 1147 	clr	a
      0003CA 93               [24] 1148 	movc	a,@a+dptr
      0003CB 4F               [12] 1149 	orl	a,r7
      0003CC F5 82            [12] 1150 	mov	dpl,a
      0003CE 12 01 5A         [24] 1151 	lcall	_uart_send
                                   1152 ;	connect.c:191: point = 100;
      0003D1 75 0B 64         [24] 1153 	mov	_point,#0x64
      0003D4                       1154 00102$:
                                   1155 ;	connect.c:193: return;
      0003D4 22               [24] 1156 	ret
      0003D5                       1157 00104$:
                                   1158 ;	connect.c:195: turn_off(point);
                                   1159 ;	connect.c:107: if (a > 63)
      0003D5 E5 0B            [12] 1160 	mov	a,_point
      0003D7 FF               [12] 1161 	mov	r7,a
      0003D8 24 C0            [12] 1162 	add	a,#0xff - 0x3f
      0003DA 40 2A            [24] 1163 	jc	00110$
                                   1164 ;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
      0003DC EF               [12] 1165 	mov	a,r7
      0003DD C4               [12] 1166 	swap	a
      0003DE 23               [12] 1167 	rl	a
      0003DF 54 1F            [12] 1168 	anl	a,#0x1f
      0003E1 24 0C            [12] 1169 	add	a,#_data_mat
      0003E3 F9               [12] 1170 	mov	r1,a
      0003E4 87 06            [24] 1171 	mov	ar6,@r1
      0003E6 53 07 07         [24] 1172 	anl	ar7,#0x07
      0003E9 8F F0            [24] 1173 	mov	b,r7
      0003EB 05 F0            [12] 1174 	inc	b
      0003ED 7F 80            [12] 1175 	mov	r7,#0x80
      0003EF E4               [12] 1176 	clr	a
      0003F0 FD               [12] 1177 	mov	r5,a
      0003F1 33               [12] 1178 	rlc	a
      0003F2 92 D2            [24] 1179 	mov	ov,c
      0003F4 80 08            [24] 1180 	sjmp	00144$
      0003F6                       1181 00143$:
      0003F6 A2 D2            [12] 1182 	mov	c,ov
      0003F8 ED               [12] 1183 	mov	a,r5
      0003F9 13               [12] 1184 	rrc	a
      0003FA FD               [12] 1185 	mov	r5,a
      0003FB EF               [12] 1186 	mov	a,r7
      0003FC 13               [12] 1187 	rrc	a
      0003FD FF               [12] 1188 	mov	r7,a
      0003FE                       1189 00144$:
      0003FE D5 F0 F5         [24] 1190 	djnz	b,00143$
      000401 EF               [12] 1191 	mov	a,r7
      000402 F4               [12] 1192 	cpl	a
      000403 FF               [12] 1193 	mov	r7,a
      000404 5E               [12] 1194 	anl	a,r6
      000405 F7               [12] 1195 	mov	@r1,a
                                   1196 ;	connect.c:195: turn_off(point);
      000406                       1197 00110$:
                                   1198 ;	connect.c:196: point++;
      000406 05 0B            [12] 1199 	inc	_point
                                   1200 ;	connect.c:197: turn_on(point);
                                   1201 ;	connect.c:101: if (a > 63)
      000408 E5 0B            [12] 1202 	mov	a,_point
      00040A FF               [12] 1203 	mov	r7,a
      00040B 24 C0            [12] 1204 	add	a,#0xff - 0x3f
      00040D 40 28            [24] 1205 	jc	00114$
                                   1206 ;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
      00040F EF               [12] 1207 	mov	a,r7
      000410 C4               [12] 1208 	swap	a
      000411 23               [12] 1209 	rl	a
      000412 54 1F            [12] 1210 	anl	a,#0x1f
      000414 24 0C            [12] 1211 	add	a,#_data_mat
      000416 F9               [12] 1212 	mov	r1,a
      000417 87 06            [24] 1213 	mov	ar6,@r1
      000419 53 07 07         [24] 1214 	anl	ar7,#0x07
      00041C 8F F0            [24] 1215 	mov	b,r7
      00041E 05 F0            [12] 1216 	inc	b
      000420 7F 80            [12] 1217 	mov	r7,#0x80
      000422 E4               [12] 1218 	clr	a
      000423 FD               [12] 1219 	mov	r5,a
      000424 33               [12] 1220 	rlc	a
      000425 92 D2            [24] 1221 	mov	ov,c
      000427 80 08            [24] 1222 	sjmp	00147$
      000429                       1223 00146$:
      000429 A2 D2            [12] 1224 	mov	c,ov
      00042B ED               [12] 1225 	mov	a,r5
      00042C 13               [12] 1226 	rrc	a
      00042D FD               [12] 1227 	mov	r5,a
      00042E EF               [12] 1228 	mov	a,r7
      00042F 13               [12] 1229 	rrc	a
      000430 FF               [12] 1230 	mov	r7,a
      000431                       1231 00147$:
      000431 D5 F0 F5         [24] 1232 	djnz	b,00146$
      000434 EF               [12] 1233 	mov	a,r7
      000435 4E               [12] 1234 	orl	a,r6
      000436 F7               [12] 1235 	mov	@r1,a
                                   1236 ;	connect.c:197: turn_on(point);
      000437                       1237 00114$:
                                   1238 ;	connect.c:198: }
      000437 22               [24] 1239 	ret
                                   1240 ;------------------------------------------------------------
                                   1241 ;Allocation info for local variables in function 'resolve_message'
                                   1242 ;------------------------------------------------------------
                                   1243 ;__1966080027              Allocated to registers r7 
                                   1244 ;a                         Allocated to registers 
                                   1245 ;__1966080029              Allocated to registers r7 
                                   1246 ;a                         Allocated to registers 
                                   1247 ;------------------------------------------------------------
                                   1248 ;	connect.c:199: void resolve_message(void)
                                   1249 ;	-----------------------------------------
                                   1250 ;	 function resolve_message
                                   1251 ;	-----------------------------------------
      000438                       1252 _resolve_message:
                                   1253 ;	connect.c:201: if (received_data & forward)
      000438 90 07 A5         [24] 1254 	mov	dptr,#_forward
      00043B E4               [12] 1255 	clr	a
      00043C 93               [24] 1256 	movc	a,@a+dptr
      00043D FF               [12] 1257 	mov	r7,a
      00043E 55 0A            [12] 1258 	anl	a,_received_data
      000440 60 3E            [24] 1259 	jz	00105$
                                   1260 ;	connect.c:203: kit_id = 1;
                                   1261 ;	assignBit
      000442 D2 00            [12] 1262 	setb	_kit_id
                                   1263 ;	connect.c:204: point = 8 * (received_data ^ forward);
      000444 E5 0A            [12] 1264 	mov	a,_received_data
      000446 62 07            [12] 1265 	xrl	ar7,a
      000448 EF               [12] 1266 	mov	a,r7
      000449 C4               [12] 1267 	swap	a
      00044A 03               [12] 1268 	rr	a
      00044B 54 F8            [12] 1269 	anl	a,#0xf8
      00044D F5 0B            [12] 1270 	mov	_point,a
                                   1271 ;	connect.c:206: turn_on(point);
                                   1272 ;	connect.c:101: if (a > 63)
      00044F E5 0B            [12] 1273 	mov	a,_point
      000451 FF               [12] 1274 	mov	r7,a
      000452 24 C0            [12] 1275 	add	a,#0xff - 0x3f
      000454 50 01            [24] 1276 	jnc	00132$
      000456 22               [24] 1277 	ret
      000457                       1278 00132$:
                                   1279 ;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
      000457 EF               [12] 1280 	mov	a,r7
      000458 C4               [12] 1281 	swap	a
      000459 23               [12] 1282 	rl	a
      00045A 54 1F            [12] 1283 	anl	a,#0x1f
      00045C 24 0C            [12] 1284 	add	a,#_data_mat
      00045E F9               [12] 1285 	mov	r1,a
      00045F 87 06            [24] 1286 	mov	ar6,@r1
      000461 53 07 07         [24] 1287 	anl	ar7,#0x07
      000464 8F F0            [24] 1288 	mov	b,r7
      000466 05 F0            [12] 1289 	inc	b
      000468 7F 80            [12] 1290 	mov	r7,#0x80
      00046A E4               [12] 1291 	clr	a
      00046B FD               [12] 1292 	mov	r5,a
      00046C 33               [12] 1293 	rlc	a
      00046D 92 D2            [24] 1294 	mov	ov,c
      00046F 80 08            [24] 1295 	sjmp	00134$
      000471                       1296 00133$:
      000471 A2 D2            [12] 1297 	mov	c,ov
      000473 ED               [12] 1298 	mov	a,r5
      000474 13               [12] 1299 	rrc	a
      000475 FD               [12] 1300 	mov	r5,a
      000476 EF               [12] 1301 	mov	a,r7
      000477 13               [12] 1302 	rrc	a
      000478 FF               [12] 1303 	mov	r7,a
      000479                       1304 00134$:
      000479 D5 F0 F5         [24] 1305 	djnz	b,00133$
      00047C EF               [12] 1306 	mov	a,r7
      00047D 4E               [12] 1307 	orl	a,r6
      00047E F7               [12] 1308 	mov	@r1,a
                                   1309 ;	connect.c:206: turn_on(point);
      00047F 22               [24] 1310 	ret
      000480                       1311 00105$:
                                   1312 ;	connect.c:208: else if (received_data & back)
      000480 90 07 A6         [24] 1313 	mov	dptr,#_back
      000483 E4               [12] 1314 	clr	a
      000484 93               [24] 1315 	movc	a,@a+dptr
      000485 FF               [12] 1316 	mov	r7,a
      000486 55 0A            [12] 1317 	anl	a,_received_data
      000488 60 3F            [24] 1318 	jz	00102$
                                   1319 ;	connect.c:210: kit_id = 0;
                                   1320 ;	assignBit
      00048A C2 00            [12] 1321 	clr	_kit_id
                                   1322 ;	connect.c:211: point = 7 + (8 * (received_data ^ back));
      00048C E5 0A            [12] 1323 	mov	a,_received_data
      00048E 62 07            [12] 1324 	xrl	ar7,a
      000490 EF               [12] 1325 	mov	a,r7
      000491 C4               [12] 1326 	swap	a
      000492 03               [12] 1327 	rr	a
      000493 54 F8            [12] 1328 	anl	a,#0xf8
      000495 24 07            [12] 1329 	add	a,#0x07
      000497 F5 0B            [12] 1330 	mov	_point,a
                                   1331 ;	connect.c:212: turn_on(point);
                                   1332 ;	connect.c:101: if (a > 63)
      000499 E5 0B            [12] 1333 	mov	a,_point
      00049B FF               [12] 1334 	mov	r7,a
      00049C 24 C0            [12] 1335 	add	a,#0xff - 0x3f
      00049E 40 2F            [24] 1336 	jc	00113$
                                   1337 ;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
      0004A0 EF               [12] 1338 	mov	a,r7
      0004A1 C4               [12] 1339 	swap	a
      0004A2 23               [12] 1340 	rl	a
      0004A3 54 1F            [12] 1341 	anl	a,#0x1f
      0004A5 24 0C            [12] 1342 	add	a,#_data_mat
      0004A7 F9               [12] 1343 	mov	r1,a
      0004A8 87 06            [24] 1344 	mov	ar6,@r1
      0004AA 53 07 07         [24] 1345 	anl	ar7,#0x07
      0004AD 8F F0            [24] 1346 	mov	b,r7
      0004AF 05 F0            [12] 1347 	inc	b
      0004B1 7F 80            [12] 1348 	mov	r7,#0x80
      0004B3 E4               [12] 1349 	clr	a
      0004B4 FD               [12] 1350 	mov	r5,a
      0004B5 33               [12] 1351 	rlc	a
      0004B6 92 D2            [24] 1352 	mov	ov,c
      0004B8 80 08            [24] 1353 	sjmp	00138$
      0004BA                       1354 00137$:
      0004BA A2 D2            [12] 1355 	mov	c,ov
      0004BC ED               [12] 1356 	mov	a,r5
      0004BD 13               [12] 1357 	rrc	a
      0004BE FD               [12] 1358 	mov	r5,a
      0004BF EF               [12] 1359 	mov	a,r7
      0004C0 13               [12] 1360 	rrc	a
      0004C1 FF               [12] 1361 	mov	r7,a
      0004C2                       1362 00138$:
      0004C2 D5 F0 F5         [24] 1363 	djnz	b,00137$
      0004C5 EF               [12] 1364 	mov	a,r7
      0004C6 4E               [12] 1365 	orl	a,r6
      0004C7 F7               [12] 1366 	mov	@r1,a
                                   1367 ;	connect.c:212: turn_on(point);
      0004C8 22               [24] 1368 	ret
      0004C9                       1369 00102$:
                                   1370 ;	connect.c:216: key_pressed = received_data;
      0004C9 85 0A 14         [24] 1371 	mov	_key_pressed,_received_data
                                   1372 ;	connect.c:217: key_pressed_handle();
                                   1373 ;	connect.c:219: }
      0004CC 02 01 B7         [24] 1374 	ljmp	_key_pressed_handle
      0004CF                       1375 00113$:
      0004CF 22               [24] 1376 	ret
                                   1377 ;------------------------------------------------------------
                                   1378 ;Allocation info for local variables in function 'main'
                                   1379 ;------------------------------------------------------------
                                   1380 ;__1966080031              Allocated to registers r7 
                                   1381 ;row                       Allocated to registers r7 
                                   1382 ;current_data              Allocated with name '_main_current_data_458752_175'
                                   1383 ;i                         Allocated to registers r3 
                                   1384 ;i                         Allocated to registers r6 
                                   1385 ;------------------------------------------------------------
                                   1386 ;	connect.c:222: void main(void)
                                   1387 ;	-----------------------------------------
                                   1388 ;	 function main
                                   1389 ;	-----------------------------------------
      0004D0                       1390 _main:
                                   1391 ;	connect.c:235: kit_id = 0;
                                   1392 ;	assignBit
      0004D0 C2 00            [12] 1393 	clr	_kit_id
                                   1394 ;	connect.c:236: point = 0;
      0004D2 75 0B 00         [24] 1395 	mov	_point,#0x00
                                   1396 ;	connect.c:238: uart_init();
      0004D5 12 01 3F         [24] 1397 	lcall	_uart_init
                                   1398 ;	connect.c:239: while (1)
      0004D8                       1399 00104$:
                                   1400 ;	keymatrix.h:12: P1 = 0xff;
      0004D8 75 90 FF         [24] 1401 	mov	_P1,#0xff
                                   1402 ;	keymatrix.h:13: P1_3 = 0;
                                   1403 ;	assignBit
      0004DB C2 93            [12] 1404 	clr	_P1_3
                                   1405 ;	connect.c:14: void move_up(void);
      0004DD 20 97 08         [24] 1406 	jb	_P1_7,00110$
      0004E0                       1407 00106$:
      0004E0 30 97 FD         [24] 1408 	jnb	_P1_7,00106$
      0004E3 7F 01            [12] 1409 	mov	r7,#0x01
      0004E5 02 05 93         [24] 1410 	ljmp	00186$
      0004E8                       1411 00110$:
                                   1412 ;	connect.c:15: void move_down(void);
      0004E8 20 96 08         [24] 1413 	jb	_P1_6,00115$
      0004EB                       1414 00111$:
      0004EB 30 96 FD         [24] 1415 	jnb	_P1_6,00111$
      0004EE 7F 05            [12] 1416 	mov	r7,#0x05
      0004F0 02 05 93         [24] 1417 	ljmp	00186$
      0004F3                       1418 00115$:
                                   1419 ;	connect.c:16: void move_left(void);
      0004F3 20 95 08         [24] 1420 	jb	_P1_5,00120$
      0004F6                       1421 00116$:
      0004F6 30 95 FD         [24] 1422 	jnb	_P1_5,00116$
      0004F9 7F 09            [12] 1423 	mov	r7,#0x09
      0004FB 02 05 93         [24] 1424 	ljmp	00186$
      0004FE                       1425 00120$:
                                   1426 ;	connect.c:17: void move_right(void);
      0004FE 20 94 08         [24] 1427 	jb	_P1_4,00125$
      000501                       1428 00121$:
      000501 30 94 FD         [24] 1429 	jnb	_P1_4,00121$
      000504 7F 0D            [12] 1430 	mov	r7,#0x0d
      000506 02 05 93         [24] 1431 	ljmp	00186$
      000509                       1432 00125$:
                                   1433 ;	keymatrix.h:19: P1 = 0xff;
      000509 75 90 FF         [24] 1434 	mov	_P1,#0xff
                                   1435 ;	keymatrix.h:20: P1_2 = 0;
                                   1436 ;	assignBit
      00050C C2 92            [12] 1437 	clr	_P1_2
                                   1438 ;	connect.c:21: #define RCK P3_5
      00050E 20 97 08         [24] 1439 	jb	_P1_7,00130$
      000511                       1440 00126$:
      000511 30 97 FD         [24] 1441 	jnb	_P1_7,00126$
      000514 7F 02            [12] 1442 	mov	r7,#0x02
      000516 02 05 93         [24] 1443 	ljmp	00186$
      000519                       1444 00130$:
                                   1445 ;	connect.c:22: 
      000519 20 96 07         [24] 1446 	jb	_P1_6,00135$
      00051C                       1447 00131$:
      00051C 30 96 FD         [24] 1448 	jnb	_P1_6,00131$
      00051F 7F 06            [12] 1449 	mov	r7,#0x06
      000521 80 70            [24] 1450 	sjmp	00186$
      000523                       1451 00135$:
                                   1452 ;	connect.c:23: //***************************************************************//
      000523 20 95 07         [24] 1453 	jb	_P1_5,00140$
      000526                       1454 00136$:
      000526 30 95 FD         [24] 1455 	jnb	_P1_5,00136$
      000529 7F 0A            [12] 1456 	mov	r7,#0x0a
      00052B 80 66            [24] 1457 	sjmp	00186$
      00052D                       1458 00140$:
                                   1459 ;	connect.c:24: void uart_init(void)
      00052D 20 94 07         [24] 1460 	jb	_P1_4,00145$
      000530                       1461 00141$:
      000530 30 94 FD         [24] 1462 	jnb	_P1_4,00141$
      000533 7F 0E            [12] 1463 	mov	r7,#0x0e
      000535 80 5C            [24] 1464 	sjmp	00186$
      000537                       1465 00145$:
                                   1466 ;	keymatrix.h:26: P1 = 0xff;
      000537 75 90 FF         [24] 1467 	mov	_P1,#0xff
                                   1468 ;	keymatrix.h:27: P1_1 = 0;
                                   1469 ;	assignBit
      00053A C2 91            [12] 1470 	clr	_P1_1
                                   1471 ;	connect.c:28: TMOD &= 0x0f;
      00053C 20 97 07         [24] 1472 	jb	_P1_7,00150$
      00053F                       1473 00146$:
      00053F 30 97 FD         [24] 1474 	jnb	_P1_7,00146$
      000542 7F 03            [12] 1475 	mov	r7,#0x03
      000544 80 4D            [24] 1476 	sjmp	00186$
      000546                       1477 00150$:
                                   1478 ;	connect.c:29: TMOD |= 0x20;
      000546 20 96 07         [24] 1479 	jb	_P1_6,00155$
      000549                       1480 00151$:
      000549 30 96 FD         [24] 1481 	jnb	_P1_6,00151$
      00054C 7F 07            [12] 1482 	mov	r7,#0x07
      00054E 80 43            [24] 1483 	sjmp	00186$
      000550                       1484 00155$:
                                   1485 ;	connect.c:30: TH1 = 0xfd;
      000550 20 95 07         [24] 1486 	jb	_P1_5,00160$
      000553                       1487 00156$:
      000553 30 95 FD         [24] 1488 	jnb	_P1_5,00156$
      000556 7F 0B            [12] 1489 	mov	r7,#0x0b
      000558 80 39            [24] 1490 	sjmp	00186$
      00055A                       1491 00160$:
                                   1492 ;	connect.c:31: TL1 = 0xfd;
      00055A 20 94 07         [24] 1493 	jb	_P1_4,00165$
      00055D                       1494 00161$:
      00055D 30 94 FD         [24] 1495 	jnb	_P1_4,00161$
      000560 7F 0F            [12] 1496 	mov	r7,#0x0f
      000562 80 2F            [24] 1497 	sjmp	00186$
      000564                       1498 00165$:
                                   1499 ;	keymatrix.h:33: P1 = 0xff;
      000564 75 90 FF         [24] 1500 	mov	_P1,#0xff
                                   1501 ;	keymatrix.h:34: P1_0 = 0;
                                   1502 ;	assignBit
      000567 C2 90            [12] 1503 	clr	_P1_0
                                   1504 ;	connect.c:35: SM0 = 0;
      000569 20 97 07         [24] 1505 	jb	_P1_7,00170$
      00056C                       1506 00166$:
      00056C 30 97 FD         [24] 1507 	jnb	_P1_7,00166$
      00056F 7F 04            [12] 1508 	mov	r7,#0x04
      000571 80 20            [24] 1509 	sjmp	00186$
      000573                       1510 00170$:
                                   1511 ;	connect.c:36: SM1 = 1;
      000573 20 96 07         [24] 1512 	jb	_P1_6,00175$
      000576                       1513 00171$:
      000576 30 96 FD         [24] 1514 	jnb	_P1_6,00171$
      000579 7F 08            [12] 1515 	mov	r7,#0x08
      00057B 80 16            [24] 1516 	sjmp	00186$
      00057D                       1517 00175$:
                                   1518 ;	connect.c:37: // allow interrupt for receive interrupt
      00057D 20 95 07         [24] 1519 	jb	_P1_5,00180$
      000580                       1520 00176$:
      000580 30 95 FD         [24] 1521 	jnb	_P1_5,00176$
      000583 7F 0C            [12] 1522 	mov	r7,#0x0c
      000585 80 0C            [24] 1523 	sjmp	00186$
      000587                       1524 00180$:
                                   1525 ;	connect.c:38: ES = 1;
      000587 20 94 07         [24] 1526 	jb	_P1_4,00185$
      00058A                       1527 00181$:
      00058A 30 94 FD         [24] 1528 	jnb	_P1_4,00181$
      00058D 7F 10            [12] 1529 	mov	r7,#0x10
      00058F 80 02            [24] 1530 	sjmp	00186$
      000591                       1531 00185$:
                                   1532 ;	keymatrix.h:39: return 0;
      000591 7F 00            [12] 1533 	mov	r7,#0x00
                                   1534 ;	connect.c:241: key_pressed = get_pressed_key();
      000593                       1535 00186$:
                                   1536 ;	connect.c:242: if (key_pressed)
      000593 EF               [12] 1537 	mov	a,r7
      000594 F5 14            [12] 1538 	mov	_key_pressed,a
      000596 60 03            [24] 1539 	jz	00241$
                                   1540 ;	connect.c:244: key_pressed_handle();
      000598 12 01 B7         [24] 1541 	lcall	_key_pressed_handle
                                   1542 ;	connect.c:73: for (char row = 0; row < 8; row++)
      00059B                       1543 00241$:
      00059B 7F 00            [12] 1544 	mov	r7,#0x00
      00059D                       1545 00198$:
      00059D BF 08 00         [24] 1546 	cjne	r7,#0x08,00397$
      0005A0                       1547 00397$:
      0005A0 40 03            [24] 1548 	jc	00398$
      0005A2 02 04 D8         [24] 1549 	ljmp	00104$
      0005A5                       1550 00398$:
                                   1551 ;	connect.c:75: const char current_data = data_mat[row];
      0005A5 EF               [12] 1552 	mov	a,r7
      0005A6 24 0C            [12] 1553 	add	a,#_data_mat
      0005A8 F9               [12] 1554 	mov	r1,a
      0005A9 87 15            [24] 1555 	mov	_main_current_data_458752_175,@r1
                                   1556 ;	connect.c:76: for (char i = 0; i < 8; i++)
      0005AB 8F F0            [24] 1557 	mov	b,r7
      0005AD 05 F0            [12] 1558 	inc	b
      0005AF 7C 80            [12] 1559 	mov	r4,#0x80
      0005B1 E4               [12] 1560 	clr	a
      0005B2 FD               [12] 1561 	mov	r5,a
      0005B3 33               [12] 1562 	rlc	a
      0005B4 92 D2            [24] 1563 	mov	ov,c
      0005B6 80 08            [24] 1564 	sjmp	00400$
      0005B8                       1565 00399$:
      0005B8 A2 D2            [12] 1566 	mov	c,ov
      0005BA ED               [12] 1567 	mov	a,r5
      0005BB 13               [12] 1568 	rrc	a
      0005BC FD               [12] 1569 	mov	r5,a
      0005BD EC               [12] 1570 	mov	a,r4
      0005BE 13               [12] 1571 	rrc	a
      0005BF FC               [12] 1572 	mov	r4,a
      0005C0                       1573 00400$:
      0005C0 D5 F0 F5         [24] 1574 	djnz	b,00399$
      0005C3 7B 00            [12] 1575 	mov	r3,#0x00
      0005C5                       1576 00192$:
      0005C5 BB 08 00         [24] 1577 	cjne	r3,#0x08,00401$
      0005C8                       1578 00401$:
      0005C8 50 2B            [24] 1579 	jnc	00187$
                                   1580 ;	connect.c:78: SER = (0x80 >> row) & (0x80 >> i);
      0005CA 8B F0            [24] 1581 	mov	b,r3
      0005CC 05 F0            [12] 1582 	inc	b
      0005CE 7A 80            [12] 1583 	mov	r2,#0x80
      0005D0 E4               [12] 1584 	clr	a
      0005D1 FE               [12] 1585 	mov	r6,a
      0005D2 33               [12] 1586 	rlc	a
      0005D3 92 D2            [24] 1587 	mov	ov,c
      0005D5 80 08            [24] 1588 	sjmp	00404$
      0005D7                       1589 00403$:
      0005D7 A2 D2            [12] 1590 	mov	c,ov
      0005D9 EE               [12] 1591 	mov	a,r6
      0005DA 13               [12] 1592 	rrc	a
      0005DB FE               [12] 1593 	mov	r6,a
      0005DC EA               [12] 1594 	mov	a,r2
      0005DD 13               [12] 1595 	rrc	a
      0005DE FA               [12] 1596 	mov	r2,a
      0005DF                       1597 00404$:
      0005DF D5 F0 F5         [24] 1598 	djnz	b,00403$
      0005E2 EC               [12] 1599 	mov	a,r4
      0005E3 52 02            [12] 1600 	anl	ar2,a
      0005E5 ED               [12] 1601 	mov	a,r5
      0005E6 52 06            [12] 1602 	anl	ar6,a
                                   1603 ;	assignBit
      0005E8 EA               [12] 1604 	mov	a,r2
      0005E9 4E               [12] 1605 	orl	a,r6
      0005EA 24 FF            [12] 1606 	add	a,#0xff
      0005EC 92 B4            [24] 1607 	mov	_P3_4,c
                                   1608 ;	connect.c:79: SCK = 1;
                                   1609 ;	assignBit
      0005EE D2 B6            [12] 1610 	setb	_P3_6
                                   1611 ;	connect.c:80: SCK = 0;
                                   1612 ;	assignBit
      0005F0 C2 B6            [12] 1613 	clr	_P3_6
                                   1614 ;	connect.c:76: for (char i = 0; i < 8; i++)
      0005F2 0B               [12] 1615 	inc	r3
      0005F3 80 D0            [24] 1616 	sjmp	00192$
      0005F5                       1617 00187$:
                                   1618 ;	connect.c:82: P0 = 0xff;
      0005F5 75 80 FF         [24] 1619 	mov	_P0,#0xff
                                   1620 ;	connect.c:83: RCK = 1;
                                   1621 ;	assignBit
      0005F8 D2 B5            [12] 1622 	setb	_P3_5
                                   1623 ;	connect.c:84: RCK = 0;
                                   1624 ;	assignBit
      0005FA C2 B5            [12] 1625 	clr	_P3_5
                                   1626 ;	connect.c:85: P0 = ~current_data;
      0005FC E5 15            [12] 1627 	mov	a,_main_current_data_458752_175
      0005FE F4               [12] 1628 	cpl	a
      0005FF F5 80            [12] 1629 	mov	_P0,a
                                   1630 ;	connect.c:86: for (char i = 0; i < 5; i++)
      000601 7E 00            [12] 1631 	mov	r6,#0x00
      000603                       1632 00195$:
      000603 BE 05 00         [24] 1633 	cjne	r6,#0x05,00405$
      000606                       1634 00405$:
      000606 50 03            [24] 1635 	jnc	00199$
      000608 0E               [12] 1636 	inc	r6
      000609 80 F8            [24] 1637 	sjmp	00195$
      00060B                       1638 00199$:
                                   1639 ;	connect.c:73: for (char row = 0; row < 8; row++)
      00060B 0F               [12] 1640 	inc	r7
                                   1641 ;	connect.c:246: display_led_mat();
                                   1642 ;	connect.c:248: }
      00060C 80 8F            [24] 1643 	sjmp	00198$
                                   1644 	.area CSEG    (CODE)
                                   1645 	.area CONST   (CODE)
      00079B                       1646 _number_string:
      00079B 3F                    1647 	.db #0x3f	; 63
      00079C 06                    1648 	.db #0x06	; 6
      00079D 5B                    1649 	.db #0x5b	; 91
      00079E 4F                    1650 	.db #0x4f	; 79	'O'
      00079F 66                    1651 	.db #0x66	; 102	'f'
      0007A0 6D                    1652 	.db #0x6d	; 109	'm'
      0007A1 7D                    1653 	.db #0x7d	; 125
      0007A2 07                    1654 	.db #0x07	; 7
      0007A3 7F                    1655 	.db #0x7f	; 127
      0007A4 6F                    1656 	.db #0x6f	; 111	'o'
      0007A5                       1657 _forward:
      0007A5 20                    1658 	.db #0x20	; 32
      0007A6                       1659 _back:
      0007A6 40                    1660 	.db #0x40	; 64
                                   1661 	.area XINIT   (CODE)
                                   1662 	.area CABS    (ABS,CODE)
