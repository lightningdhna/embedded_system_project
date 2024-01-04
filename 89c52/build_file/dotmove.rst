                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module dotmove
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _number_string
                                     12 	.globl _main
                                     13 	.globl _UART_Receive
                                     14 	.globl _uart_init
                                     15 	.globl _display_number
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 	.globl _data_mat
                                    113 	.globl _point
                                    114 	.globl _received_data
                                    115 	.globl _resolve_message
                                    116 ;--------------------------------------------------------
                                    117 ; special function registers
                                    118 ;--------------------------------------------------------
                                    119 	.area RSEG    (ABS,DATA)
      000000                        120 	.org 0x0000
                           000080   121 _P0	=	0x0080
                           000081   122 _SP	=	0x0081
                           000082   123 _DPL	=	0x0082
                           000083   124 _DPH	=	0x0083
                           000087   125 _PCON	=	0x0087
                           000088   126 _TCON	=	0x0088
                           000089   127 _TMOD	=	0x0089
                           00008A   128 _TL0	=	0x008a
                           00008B   129 _TL1	=	0x008b
                           00008C   130 _TH0	=	0x008c
                           00008D   131 _TH1	=	0x008d
                           000090   132 _P1	=	0x0090
                           000098   133 _SCON	=	0x0098
                           000099   134 _SBUF	=	0x0099
                           0000A0   135 _P2	=	0x00a0
                           0000A8   136 _IE	=	0x00a8
                           0000B0   137 _P3	=	0x00b0
                           0000B8   138 _IP	=	0x00b8
                           0000D0   139 _PSW	=	0x00d0
                           0000E0   140 _ACC	=	0x00e0
                           0000F0   141 _B	=	0x00f0
                                    142 ;--------------------------------------------------------
                                    143 ; special function bits
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0_0	=	0x0080
                           000081   148 _P0_1	=	0x0081
                           000082   149 _P0_2	=	0x0082
                           000083   150 _P0_3	=	0x0083
                           000084   151 _P0_4	=	0x0084
                           000085   152 _P0_5	=	0x0085
                           000086   153 _P0_6	=	0x0086
                           000087   154 _P0_7	=	0x0087
                           000088   155 _IT0	=	0x0088
                           000089   156 _IE0	=	0x0089
                           00008A   157 _IT1	=	0x008a
                           00008B   158 _IE1	=	0x008b
                           00008C   159 _TR0	=	0x008c
                           00008D   160 _TF0	=	0x008d
                           00008E   161 _TR1	=	0x008e
                           00008F   162 _TF1	=	0x008f
                           000090   163 _P1_0	=	0x0090
                           000091   164 _P1_1	=	0x0091
                           000092   165 _P1_2	=	0x0092
                           000093   166 _P1_3	=	0x0093
                           000094   167 _P1_4	=	0x0094
                           000095   168 _P1_5	=	0x0095
                           000096   169 _P1_6	=	0x0096
                           000097   170 _P1_7	=	0x0097
                           000098   171 _RI	=	0x0098
                           000099   172 _TI	=	0x0099
                           00009A   173 _RB8	=	0x009a
                           00009B   174 _TB8	=	0x009b
                           00009C   175 _REN	=	0x009c
                           00009D   176 _SM2	=	0x009d
                           00009E   177 _SM1	=	0x009e
                           00009F   178 _SM0	=	0x009f
                           0000A0   179 _P2_0	=	0x00a0
                           0000A1   180 _P2_1	=	0x00a1
                           0000A2   181 _P2_2	=	0x00a2
                           0000A3   182 _P2_3	=	0x00a3
                           0000A4   183 _P2_4	=	0x00a4
                           0000A5   184 _P2_5	=	0x00a5
                           0000A6   185 _P2_6	=	0x00a6
                           0000A7   186 _P2_7	=	0x00a7
                           0000A8   187 _EX0	=	0x00a8
                           0000A9   188 _ET0	=	0x00a9
                           0000AA   189 _EX1	=	0x00aa
                           0000AB   190 _ET1	=	0x00ab
                           0000AC   191 _ES	=	0x00ac
                           0000AF   192 _EA	=	0x00af
                           0000B0   193 _P3_0	=	0x00b0
                           0000B1   194 _P3_1	=	0x00b1
                           0000B2   195 _P3_2	=	0x00b2
                           0000B3   196 _P3_3	=	0x00b3
                           0000B4   197 _P3_4	=	0x00b4
                           0000B5   198 _P3_5	=	0x00b5
                           0000B6   199 _P3_6	=	0x00b6
                           0000B7   200 _P3_7	=	0x00b7
                           0000B0   201 _RXD	=	0x00b0
                           0000B1   202 _TXD	=	0x00b1
                           0000B2   203 _INT0	=	0x00b2
                           0000B3   204 _INT1	=	0x00b3
                           0000B4   205 _T0	=	0x00b4
                           0000B5   206 _T1	=	0x00b5
                           0000B6   207 _WR	=	0x00b6
                           0000B7   208 _RD	=	0x00b7
                           0000B8   209 _PX0	=	0x00b8
                           0000B9   210 _PT0	=	0x00b9
                           0000BA   211 _PX1	=	0x00ba
                           0000BB   212 _PT1	=	0x00bb
                           0000BC   213 _PS	=	0x00bc
                           0000D0   214 _P	=	0x00d0
                           0000D1   215 _F1	=	0x00d1
                           0000D2   216 _OV	=	0x00d2
                           0000D3   217 _RS0	=	0x00d3
                           0000D4   218 _RS1	=	0x00d4
                           0000D5   219 _F0	=	0x00d5
                           0000D6   220 _AC	=	0x00d6
                           0000D7   221 _CY	=	0x00d7
                                    222 ;--------------------------------------------------------
                                    223 ; overlayable register banks
                                    224 ;--------------------------------------------------------
                                    225 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        226 	.ds 8
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable bit register bank
                                    229 ;--------------------------------------------------------
                                    230 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        231 bits:
      000020                        232 	.ds 1
                           008000   233 	b0 = bits[0]
                           008100   234 	b1 = bits[1]
                           008200   235 	b2 = bits[2]
                           008300   236 	b3 = bits[3]
                           008400   237 	b4 = bits[4]
                           008500   238 	b5 = bits[5]
                           008600   239 	b6 = bits[6]
                           008700   240 	b7 = bits[7]
                                    241 ;--------------------------------------------------------
                                    242 ; internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area DSEG    (DATA)
      000008                        245 _display_number_led_65537_38:
      000008                        246 	.ds 1
      000009                        247 _display_number_neg_65537_38:
      000009                        248 	.ds 1
      00000A                        249 _received_data::
      00000A                        250 	.ds 1
      00000B                        251 _point::
      00000B                        252 	.ds 1
      00000C                        253 _data_mat::
      00000C                        254 	.ds 8
      000014                        255 _main_current_data_458752_113:
      000014                        256 	.ds 1
                                    257 ;--------------------------------------------------------
                                    258 ; overlayable items in internal ram
                                    259 ;--------------------------------------------------------
                                    260 	.area	OSEG    (OVR,DATA)
                                    261 ;--------------------------------------------------------
                                    262 ; Stack segment in internal ram
                                    263 ;--------------------------------------------------------
                                    264 	.area SSEG
      000021                        265 __start__stack:
      000021                        266 	.ds	1
                                    267 
                                    268 ;--------------------------------------------------------
                                    269 ; indirectly addressable internal ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area ISEG    (DATA)
                                    272 ;--------------------------------------------------------
                                    273 ; absolute internal ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area IABS    (ABS,DATA)
                                    276 	.area IABS    (ABS,DATA)
                                    277 ;--------------------------------------------------------
                                    278 ; bit data
                                    279 ;--------------------------------------------------------
                                    280 	.area BSEG    (BIT)
                                    281 ;--------------------------------------------------------
                                    282 ; paged external ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area PSEG    (PAG,XDATA)
                                    285 ;--------------------------------------------------------
                                    286 ; uninitialized external ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area XSEG    (XDATA)
                                    289 ;--------------------------------------------------------
                                    290 ; absolute external ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area XABS    (ABS,XDATA)
                                    293 ;--------------------------------------------------------
                                    294 ; initialized external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area XISEG   (XDATA)
                                    297 	.area HOME    (CODE)
                                    298 	.area GSINIT0 (CODE)
                                    299 	.area GSINIT1 (CODE)
                                    300 	.area GSINIT2 (CODE)
                                    301 	.area GSINIT3 (CODE)
                                    302 	.area GSINIT4 (CODE)
                                    303 	.area GSINIT5 (CODE)
                                    304 	.area GSINIT  (CODE)
                                    305 	.area GSFINAL (CODE)
                                    306 	.area CSEG    (CODE)
                                    307 ;--------------------------------------------------------
                                    308 ; interrupt vector
                                    309 ;--------------------------------------------------------
                                    310 	.area HOME    (CODE)
      000000                        311 __interrupt_vect:
      000000 02 00 29         [24]  312 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  313 	reti
      000004                        314 	.ds	7
      00000B 32               [24]  315 	reti
      00000C                        316 	.ds	7
      000013 32               [24]  317 	reti
      000014                        318 	.ds	7
      00001B 32               [24]  319 	reti
      00001C                        320 	.ds	7
      000023 02 01 55         [24]  321 	ljmp	_UART_Receive
                                    322 ;--------------------------------------------------------
                                    323 ; global & static initialisations
                                    324 ;--------------------------------------------------------
                                    325 	.area HOME    (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 	.globl __sdcc_gsinit_startup
                                    330 	.globl __sdcc_program_startup
                                    331 	.globl __start__stack
                                    332 	.globl __mcs51_genXINIT
                                    333 	.globl __mcs51_genXRAMCLEAR
                                    334 	.globl __mcs51_genRAMCLEAR
                                    335 ;	dotmove.c:8: char point = 65;
      000082 75 0B 41         [24]  336 	mov	_point,#0x41
                                    337 	.area GSFINAL (CODE)
      000085 02 00 26         [24]  338 	ljmp	__sdcc_program_startup
                                    339 ;--------------------------------------------------------
                                    340 ; Home
                                    341 ;--------------------------------------------------------
                                    342 	.area HOME    (CODE)
                                    343 	.area HOME    (CODE)
      000026                        344 __sdcc_program_startup:
      000026 02 02 1D         [24]  345 	ljmp	_main
                                    346 ;	return from main will return to caller
                                    347 ;--------------------------------------------------------
                                    348 ; code
                                    349 ;--------------------------------------------------------
                                    350 	.area CSEG    (CODE)
                                    351 ;------------------------------------------------------------
                                    352 ;Allocation info for local variables in function 'display_number'
                                    353 ;------------------------------------------------------------
                                    354 ;number                    Allocated to registers r4 r5 r6 r7 
                                    355 ;i                         Allocated to registers r3 
                                    356 ;led                       Allocated with name '_display_number_led_65537_38'
                                    357 ;neg                       Allocated with name '_display_number_neg_65537_38'
                                    358 ;__1966090004              Allocated to registers r3 
                                    359 ;__1966090005              Allocated to registers r0 
                                    360 ;led                       Allocated to registers 
                                    361 ;digit                     Allocated to registers 
                                    362 ;------------------------------------------------------------
                                    363 ;	led7seg.h:27: void display_number(long number)
                                    364 ;	-----------------------------------------
                                    365 ;	 function display_number
                                    366 ;	-----------------------------------------
      000088                        367 _display_number:
                           000007   368 	ar7 = 0x07
                           000006   369 	ar6 = 0x06
                           000005   370 	ar5 = 0x05
                           000004   371 	ar4 = 0x04
                           000003   372 	ar3 = 0x03
                           000002   373 	ar2 = 0x02
                           000001   374 	ar1 = 0x01
                           000000   375 	ar0 = 0x00
      000088 AC 82            [24]  376 	mov	r4,dpl
      00008A AD 83            [24]  377 	mov	r5,dph
      00008C AE F0            [24]  378 	mov	r6,b
      00008E FF               [12]  379 	mov	r7,a
                                    380 ;	led7seg.h:29: if (!number)
      00008F EC               [12]  381 	mov	a,r4
      000090 4D               [12]  382 	orl	a,r5
      000091 4E               [12]  383 	orl	a,r6
      000092 4F               [12]  384 	orl	a,r7
                                    385 ;	led7seg.h:31: P0 = 0;
      000093 70 17            [24]  386 	jnz	00103$
      000095 F5 80            [12]  387 	mov	_P0,a
                                    388 ;	led7seg.h:32: P2 &= 0b11100011;
      000097 53 A0 E3         [24]  389 	anl	_P2,#0xe3
                                    390 ;	led7seg.h:33: P0 = number_string[0];
      00009A 90 04 1D         [24]  391 	mov	dptr,#_number_string
      00009D E4               [12]  392 	clr	a
      00009E 93               [24]  393 	movc	a,@a+dptr
      00009F F5 80            [12]  394 	mov	_P0,a
                                    395 ;	led7seg.h:34: for (char i = 0; i < 100; i++)
      0000A1 7B 00            [12]  396 	mov	r3,#0x00
      0000A3                        397 00113$:
      0000A3 BB 64 00         [24]  398 	cjne	r3,#0x64,00148$
      0000A6                        399 00148$:
      0000A6 50 03            [24]  400 	jnc	00101$
      0000A8 0B               [12]  401 	inc	r3
      0000A9 80 F8            [24]  402 	sjmp	00113$
      0000AB                        403 00101$:
                                    404 ;	led7seg.h:36: return;
      0000AB 22               [24]  405 	ret
      0000AC                        406 00103$:
                                    407 ;	led7seg.h:39: char neg = 0;
      0000AC 75 09 00         [24]  408 	mov	_display_number_neg_65537_38,#0x00
                                    409 ;	led7seg.h:40: if (number < 0)
      0000AF EF               [12]  410 	mov	a,r7
      0000B0 30 E7 10         [24]  411 	jnb	acc.7,00122$
                                    412 ;	led7seg.h:42: neg = 1;
      0000B3 75 09 01         [24]  413 	mov	_display_number_neg_65537_38,#0x01
                                    414 ;	led7seg.h:43: number = -number;
      0000B6 C3               [12]  415 	clr	c
      0000B7 E4               [12]  416 	clr	a
      0000B8 9C               [12]  417 	subb	a,r4
      0000B9 FC               [12]  418 	mov	r4,a
      0000BA E4               [12]  419 	clr	a
      0000BB 9D               [12]  420 	subb	a,r5
      0000BC FD               [12]  421 	mov	r5,a
      0000BD E4               [12]  422 	clr	a
      0000BE 9E               [12]  423 	subb	a,r6
      0000BF FE               [12]  424 	mov	r6,a
      0000C0 E4               [12]  425 	clr	a
      0000C1 9F               [12]  426 	subb	a,r7
      0000C2 FF               [12]  427 	mov	r7,a
                                    428 ;	led7seg.h:53: while (number)
      0000C3                        429 00122$:
      0000C3 75 08 00         [24]  430 	mov	_display_number_led_65537_38,#0x00
      0000C6                        431 00106$:
      0000C6 EC               [12]  432 	mov	a,r4
      0000C7 4D               [12]  433 	orl	a,r5
      0000C8 4E               [12]  434 	orl	a,r6
      0000C9 4F               [12]  435 	orl	a,r7
      0000CA 60 5A            [24]  436 	jz	00108$
                                    437 ;	led7seg.h:55: display_digit(led++, number % 10);
      0000CC 75 15 0A         [24]  438 	mov	__modslong_PARM_2,#0x0a
      0000CF E4               [12]  439 	clr	a
      0000D0 F5 16            [12]  440 	mov	(__modslong_PARM_2 + 1),a
      0000D2 F5 17            [12]  441 	mov	(__modslong_PARM_2 + 2),a
      0000D4 F5 18            [12]  442 	mov	(__modslong_PARM_2 + 3),a
      0000D6 8C 82            [24]  443 	mov	dpl,r4
      0000D8 8D 83            [24]  444 	mov	dph,r5
      0000DA 8E F0            [24]  445 	mov	b,r6
      0000DC EF               [12]  446 	mov	a,r7
      0000DD C0 07            [24]  447 	push	ar7
      0000DF C0 06            [24]  448 	push	ar6
      0000E1 C0 05            [24]  449 	push	ar5
      0000E3 C0 04            [24]  450 	push	ar4
      0000E5 12 03 78         [24]  451 	lcall	__modslong
      0000E8 A8 82            [24]  452 	mov	r0,dpl
      0000EA D0 04            [24]  453 	pop	ar4
      0000EC D0 05            [24]  454 	pop	ar5
      0000EE D0 06            [24]  455 	pop	ar6
      0000F0 D0 07            [24]  456 	pop	ar7
      0000F2 AB 08            [24]  457 	mov	r3,_display_number_led_65537_38
      0000F4 05 08            [12]  458 	inc	_display_number_led_65537_38
                                    459 ;	led7seg.h:19: P0 = 0;
      0000F6 75 80 00         [24]  460 	mov	_P0,#0x00
                                    461 ;	led7seg.h:20: P2 &= 0b11100011;
      0000F9 53 A0 E3         [24]  462 	anl	_P2,#0xe3
                                    463 ;	led7seg.h:21: P2 |= led << 2;
      0000FC EB               [12]  464 	mov	a,r3
      0000FD 2B               [12]  465 	add	a,r3
      0000FE 25 E0            [12]  466 	add	a,acc
      000100 42 A0            [12]  467 	orl	_P2,a
                                    468 ;	led7seg.h:24: P0 = number_string[digit];
      000102 E8               [12]  469 	mov	a,r0
      000103 90 04 1D         [24]  470 	mov	dptr,#_number_string
      000106 93               [24]  471 	movc	a,@a+dptr
      000107 F5 80            [12]  472 	mov	_P0,a
                                    473 ;	led7seg.h:56: number /= 10;
      000109 75 15 0A         [24]  474 	mov	__divslong_PARM_2,#0x0a
      00010C E4               [12]  475 	clr	a
      00010D F5 16            [12]  476 	mov	(__divslong_PARM_2 + 1),a
      00010F F5 17            [12]  477 	mov	(__divslong_PARM_2 + 2),a
      000111 F5 18            [12]  478 	mov	(__divslong_PARM_2 + 3),a
      000113 8C 82            [24]  479 	mov	dpl,r4
      000115 8D 83            [24]  480 	mov	dph,r5
      000117 8E F0            [24]  481 	mov	b,r6
      000119 EF               [12]  482 	mov	a,r7
      00011A 12 03 C7         [24]  483 	lcall	__divslong
      00011D AC 82            [24]  484 	mov	r4,dpl
      00011F AD 83            [24]  485 	mov	r5,dph
      000121 AE F0            [24]  486 	mov	r6,b
      000123 FF               [12]  487 	mov	r7,a
      000124 80 A0            [24]  488 	sjmp	00106$
      000126                        489 00108$:
                                    490 ;	led7seg.h:58: if (neg)
      000126 E5 09            [12]  491 	mov	a,_display_number_neg_65537_38
      000128 60 0F            [24]  492 	jz	00115$
                                    493 ;	led7seg.h:60: P0 = 0;
      00012A 75 80 00         [24]  494 	mov	_P0,#0x00
                                    495 ;	led7seg.h:61: P2 = led << 2;
      00012D E5 08            [12]  496 	mov	a,_display_number_led_65537_38
      00012F FA               [12]  497 	mov	r2,a
      000130 25 E0            [12]  498 	add	a,acc
      000132 25 E0            [12]  499 	add	a,acc
      000134 F5 A0            [12]  500 	mov	_P2,a
                                    501 ;	led7seg.h:62: P0 = 0b01000000;
      000136 75 80 40         [24]  502 	mov	_P0,#0x40
      000139                        503 00115$:
                                    504 ;	led7seg.h:64: }
      000139 22               [24]  505 	ret
                                    506 ;------------------------------------------------------------
                                    507 ;Allocation info for local variables in function 'uart_init'
                                    508 ;------------------------------------------------------------
                                    509 ;	dotmove.c:20: void uart_init(void)
                                    510 ;	-----------------------------------------
                                    511 ;	 function uart_init
                                    512 ;	-----------------------------------------
      00013A                        513 _uart_init:
                                    514 ;	dotmove.c:24: TMOD &= 0x0f;
      00013A 53 89 0F         [24]  515 	anl	_TMOD,#0x0f
                                    516 ;	dotmove.c:25: TMOD |= 0x20;
      00013D 43 89 20         [24]  517 	orl	_TMOD,#0x20
                                    518 ;	dotmove.c:26: TH1 = 0xfd;
      000140 75 8D FD         [24]  519 	mov	_TH1,#0xfd
                                    520 ;	dotmove.c:27: TL1 = 0xfd;
      000143 75 8B FD         [24]  521 	mov	_TL1,#0xfd
                                    522 ;	dotmove.c:28: ET1 = 0;
                                    523 ;	assignBit
      000146 C2 AB            [12]  524 	clr	_ET1
                                    525 ;	dotmove.c:29: TR1 = 1;
                                    526 ;	assignBit
      000148 D2 8E            [12]  527 	setb	_TR1
                                    528 ;	dotmove.c:31: SM0 = 0;
                                    529 ;	assignBit
      00014A C2 9F            [12]  530 	clr	_SM0
                                    531 ;	dotmove.c:32: SM1 = 1;
                                    532 ;	assignBit
      00014C D2 9E            [12]  533 	setb	_SM1
                                    534 ;	dotmove.c:34: ES = 1;
                                    535 ;	assignBit
      00014E D2 AC            [12]  536 	setb	_ES
                                    537 ;	dotmove.c:35: EA = 1;
                                    538 ;	assignBit
      000150 D2 AF            [12]  539 	setb	_EA
                                    540 ;	dotmove.c:36: REN = 1;
                                    541 ;	assignBit
      000152 D2 9C            [12]  542 	setb	_REN
                                    543 ;	dotmove.c:37: }
      000154 22               [24]  544 	ret
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'UART_Receive'
                                    547 ;------------------------------------------------------------
                                    548 ;	dotmove.c:39: void UART_Receive(void) __interrupt(4)
                                    549 ;	-----------------------------------------
                                    550 ;	 function UART_Receive
                                    551 ;	-----------------------------------------
      000155                        552 _UART_Receive:
      000155 C0 20            [24]  553 	push	bits
      000157 C0 E0            [24]  554 	push	acc
      000159 C0 F0            [24]  555 	push	b
      00015B C0 82            [24]  556 	push	dpl
      00015D C0 83            [24]  557 	push	dph
      00015F C0 07            [24]  558 	push	(0+7)
      000161 C0 06            [24]  559 	push	(0+6)
      000163 C0 05            [24]  560 	push	(0+5)
      000165 C0 04            [24]  561 	push	(0+4)
      000167 C0 03            [24]  562 	push	(0+3)
      000169 C0 02            [24]  563 	push	(0+2)
      00016B C0 01            [24]  564 	push	(0+1)
      00016D C0 00            [24]  565 	push	(0+0)
      00016F C0 D0            [24]  566 	push	psw
      000171 75 D0 00         [24]  567 	mov	psw,#0x00
                                    568 ;	dotmove.c:41: P2 = 0x10;
      000174 75 A0 10         [24]  569 	mov	_P2,#0x10
                                    570 ;	dotmove.c:42: if (RI)
      000177 30 98 0D         [24]  571 	jnb	_RI,00103$
                                    572 ;	dotmove.c:44: P2 = ~SBUF;
      00017A E5 99            [12]  573 	mov	a,_SBUF
      00017C F4               [12]  574 	cpl	a
      00017D F5 A0            [12]  575 	mov	_P2,a
                                    576 ;	dotmove.c:45: received_data = SBUF; // Get received data
      00017F 85 99 0A         [24]  577 	mov	_received_data,_SBUF
                                    578 ;	dotmove.c:46: resolve_message();
      000182 12 01 A4         [24]  579 	lcall	_resolve_message
                                    580 ;	dotmove.c:47: RI = 0; // Clear receive interrupt flag
                                    581 ;	assignBit
      000185 C2 98            [12]  582 	clr	_RI
      000187                        583 00103$:
                                    584 ;	dotmove.c:49: }
      000187 D0 D0            [24]  585 	pop	psw
      000189 D0 00            [24]  586 	pop	(0+0)
      00018B D0 01            [24]  587 	pop	(0+1)
      00018D D0 02            [24]  588 	pop	(0+2)
      00018F D0 03            [24]  589 	pop	(0+3)
      000191 D0 04            [24]  590 	pop	(0+4)
      000193 D0 05            [24]  591 	pop	(0+5)
      000195 D0 06            [24]  592 	pop	(0+6)
      000197 D0 07            [24]  593 	pop	(0+7)
      000199 D0 83            [24]  594 	pop	dph
      00019B D0 82            [24]  595 	pop	dpl
      00019D D0 F0            [24]  596 	pop	b
      00019F D0 E0            [24]  597 	pop	acc
      0001A1 D0 20            [24]  598 	pop	bits
      0001A3 32               [24]  599 	reti
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'resolve_message'
                                    602 ;------------------------------------------------------------
                                    603 ;__1966080007              Allocated to registers r7 
                                    604 ;a                         Allocated to registers 
                                    605 ;__2621440009              Allocated to registers r7 
                                    606 ;a                         Allocated to registers 
                                    607 ;__2621440011              Allocated to registers r7 
                                    608 ;a                         Allocated to registers 
                                    609 ;------------------------------------------------------------
                                    610 ;	dotmove.c:100: void resolve_message(void)
                                    611 ;	-----------------------------------------
                                    612 ;	 function resolve_message
                                    613 ;	-----------------------------------------
      0001A4                        614 _resolve_message:
                                    615 ;	dotmove.c:102: if (received_data == 127)
      0001A4 74 7F            [12]  616 	mov	a,#0x7f
      0001A6 B5 0A 01         [24]  617 	cjne	a,_received_data,00151$
      0001A9 22               [24]  618 	ret
      0001AA                        619 00151$:
                                    620 ;	dotmove.c:105: else if (received_data == 65)
      0001AA 74 41            [12]  621 	mov	a,#0x41
      0001AC B5 0A 16         [24]  622 	cjne	a,_received_data,00107$
                                    623 ;	dotmove.c:107: turn_off(point);
                                    624 ;	dotmove.c:91: if (a > 63)
      0001AF E5 0B            [12]  625 	mov	a,_point
      0001B1 FF               [12]  626 	mov	r7,a
      0001B2 24 C0            [12]  627 	add	a,#0xff - 0x3f
      0001B4 40 0B            [24]  628 	jc	00114$
                                    629 ;	dotmove.c:94: data_mat[a >> 3] = 0;
      0001B6 EF               [12]  630 	mov	a,r7
      0001B7 C4               [12]  631 	swap	a
      0001B8 23               [12]  632 	rl	a
      0001B9 54 1F            [12]  633 	anl	a,#0x1f
      0001BB FF               [12]  634 	mov	r7,a
      0001BC 24 0C            [12]  635 	add	a,#_data_mat
      0001BE F8               [12]  636 	mov	r0,a
      0001BF 76 00            [12]  637 	mov	@r0,#0x00
                                    638 ;	dotmove.c:107: turn_off(point);
      0001C1                        639 00114$:
                                    640 ;	dotmove.c:108: point = 65;
      0001C1 75 0B 41         [24]  641 	mov	_point,#0x41
      0001C4 22               [24]  642 	ret
      0001C5                        643 00107$:
                                    644 ;	dotmove.c:110: else if (received_data > 70)
      0001C5 E5 0A            [12]  645 	mov	a,_received_data
      0001C7 24 B9            [12]  646 	add	a,#0xff - 0x46
      0001C9 50 07            [24]  647 	jnc	00104$
                                    648 ;	dotmove.c:112: received_data -= 70;
      0001CB E5 0A            [12]  649 	mov	a,_received_data
      0001CD 24 BA            [12]  650 	add	a,#0xba
      0001CF F5 0A            [12]  651 	mov	_received_data,a
      0001D1 22               [24]  652 	ret
      0001D2                        653 00104$:
                                    654 ;	dotmove.c:116: if (received_data != point)
      0001D2 E5 0B            [12]  655 	mov	a,_point
      0001D4 B5 0A 01         [24]  656 	cjne	a,_received_data,00156$
      0001D7 22               [24]  657 	ret
      0001D8                        658 00156$:
                                    659 ;	dotmove.c:118: turn_off(point);
                                    660 ;	dotmove.c:91: if (a > 63)
      0001D8 E5 0B            [12]  661 	mov	a,_point
      0001DA FF               [12]  662 	mov	r7,a
      0001DB 24 C0            [12]  663 	add	a,#0xff - 0x3f
      0001DD 40 0B            [24]  664 	jc	00117$
                                    665 ;	dotmove.c:94: data_mat[a >> 3] = 0;
      0001DF EF               [12]  666 	mov	a,r7
      0001E0 C4               [12]  667 	swap	a
      0001E1 23               [12]  668 	rl	a
      0001E2 54 1F            [12]  669 	anl	a,#0x1f
      0001E4 FF               [12]  670 	mov	r7,a
      0001E5 24 0C            [12]  671 	add	a,#_data_mat
      0001E7 F8               [12]  672 	mov	r0,a
      0001E8 76 00            [12]  673 	mov	@r0,#0x00
                                    674 ;	dotmove.c:118: turn_off(point);
      0001EA                        675 00117$:
                                    676 ;	dotmove.c:119: point = received_data;
      0001EA 85 0A 0B         [24]  677 	mov	_point,_received_data
                                    678 ;	dotmove.c:120: turn_on(point);
                                    679 ;	dotmove.c:85: if (a > 63)
      0001ED E5 0B            [12]  680 	mov	a,_point
      0001EF FF               [12]  681 	mov	r7,a
      0001F0 24 C0            [12]  682 	add	a,#0xff - 0x3f
      0001F2 40 28            [24]  683 	jc	00121$
                                    684 ;	dotmove.c:87: data_mat[a >> 3] |= 0x80 >> (a & 7);
      0001F4 EF               [12]  685 	mov	a,r7
      0001F5 C4               [12]  686 	swap	a
      0001F6 23               [12]  687 	rl	a
      0001F7 54 1F            [12]  688 	anl	a,#0x1f
      0001F9 24 0C            [12]  689 	add	a,#_data_mat
      0001FB F9               [12]  690 	mov	r1,a
      0001FC 87 06            [24]  691 	mov	ar6,@r1
      0001FE 53 07 07         [24]  692 	anl	ar7,#0x07
      000201 8F F0            [24]  693 	mov	b,r7
      000203 05 F0            [12]  694 	inc	b
      000205 7F 80            [12]  695 	mov	r7,#0x80
      000207 E4               [12]  696 	clr	a
      000208 FD               [12]  697 	mov	r5,a
      000209 33               [12]  698 	rlc	a
      00020A 92 D2            [24]  699 	mov	ov,c
      00020C 80 08            [24]  700 	sjmp	00160$
      00020E                        701 00159$:
      00020E A2 D2            [12]  702 	mov	c,ov
      000210 ED               [12]  703 	mov	a,r5
      000211 13               [12]  704 	rrc	a
      000212 FD               [12]  705 	mov	r5,a
      000213 EF               [12]  706 	mov	a,r7
      000214 13               [12]  707 	rrc	a
      000215 FF               [12]  708 	mov	r7,a
      000216                        709 00160$:
      000216 D5 F0 F5         [24]  710 	djnz	b,00159$
      000219 EF               [12]  711 	mov	a,r7
      00021A 4E               [12]  712 	orl	a,r6
      00021B F7               [12]  713 	mov	@r1,a
                                    714 ;	dotmove.c:120: turn_on(point);
      00021C                        715 00121$:
                                    716 ;	dotmove.c:123: }
      00021C 22               [24]  717 	ret
                                    718 ;------------------------------------------------------------
                                    719 ;Allocation info for local variables in function 'main'
                                    720 ;------------------------------------------------------------
                                    721 ;row                       Allocated to registers r7 
                                    722 ;current_data              Allocated with name '_main_current_data_458752_113'
                                    723 ;i                         Allocated to registers r3 
                                    724 ;i                         Allocated to registers r6 
                                    725 ;------------------------------------------------------------
                                    726 ;	dotmove.c:126: void main(void)
                                    727 ;	-----------------------------------------
                                    728 ;	 function main
                                    729 ;	-----------------------------------------
      00021D                        730 _main:
                                    731 ;	dotmove.c:129: uart_init();
      00021D 12 01 3A         [24]  732 	lcall	_uart_init
                                    733 ;	dotmove.c:57: for (char row = 0; row < 8; row++)
      000220                        734 00125$:
      000220 7F 00            [12]  735 	mov	r7,#0x00
      000222                        736 00115$:
      000222 BF 08 00         [24]  737 	cjne	r7,#0x08,00149$
      000225                        738 00149$:
      000225 50 F9            [24]  739 	jnc	00125$
                                    740 ;	dotmove.c:59: const char current_data = data_mat[row];
      000227 EF               [12]  741 	mov	a,r7
      000228 24 0C            [12]  742 	add	a,#_data_mat
      00022A F9               [12]  743 	mov	r1,a
      00022B 87 14            [24]  744 	mov	_main_current_data_458752_113,@r1
                                    745 ;	dotmove.c:60: for (char i = 0; i < 8; i++)
      00022D 8F F0            [24]  746 	mov	b,r7
      00022F 05 F0            [12]  747 	inc	b
      000231 7C 80            [12]  748 	mov	r4,#0x80
      000233 E4               [12]  749 	clr	a
      000234 FD               [12]  750 	mov	r5,a
      000235 33               [12]  751 	rlc	a
      000236 92 D2            [24]  752 	mov	ov,c
      000238 80 08            [24]  753 	sjmp	00152$
      00023A                        754 00151$:
      00023A A2 D2            [12]  755 	mov	c,ov
      00023C ED               [12]  756 	mov	a,r5
      00023D 13               [12]  757 	rrc	a
      00023E FD               [12]  758 	mov	r5,a
      00023F EC               [12]  759 	mov	a,r4
      000240 13               [12]  760 	rrc	a
      000241 FC               [12]  761 	mov	r4,a
      000242                        762 00152$:
      000242 D5 F0 F5         [24]  763 	djnz	b,00151$
      000245 7B 00            [12]  764 	mov	r3,#0x00
      000247                        765 00109$:
      000247 BB 08 00         [24]  766 	cjne	r3,#0x08,00153$
      00024A                        767 00153$:
      00024A 50 2B            [24]  768 	jnc	00104$
                                    769 ;	dotmove.c:62: SER = (0x80 >> row) & (0x80 >> i);
      00024C 8B F0            [24]  770 	mov	b,r3
      00024E 05 F0            [12]  771 	inc	b
      000250 7A 80            [12]  772 	mov	r2,#0x80
      000252 E4               [12]  773 	clr	a
      000253 FE               [12]  774 	mov	r6,a
      000254 33               [12]  775 	rlc	a
      000255 92 D2            [24]  776 	mov	ov,c
      000257 80 08            [24]  777 	sjmp	00156$
      000259                        778 00155$:
      000259 A2 D2            [12]  779 	mov	c,ov
      00025B EE               [12]  780 	mov	a,r6
      00025C 13               [12]  781 	rrc	a
      00025D FE               [12]  782 	mov	r6,a
      00025E EA               [12]  783 	mov	a,r2
      00025F 13               [12]  784 	rrc	a
      000260 FA               [12]  785 	mov	r2,a
      000261                        786 00156$:
      000261 D5 F0 F5         [24]  787 	djnz	b,00155$
      000264 EC               [12]  788 	mov	a,r4
      000265 52 02            [12]  789 	anl	ar2,a
      000267 ED               [12]  790 	mov	a,r5
      000268 52 06            [12]  791 	anl	ar6,a
                                    792 ;	assignBit
      00026A EA               [12]  793 	mov	a,r2
      00026B 4E               [12]  794 	orl	a,r6
      00026C 24 FF            [12]  795 	add	a,#0xff
      00026E 92 B4            [24]  796 	mov	_P3_4,c
                                    797 ;	dotmove.c:63: SCK = 1;
                                    798 ;	assignBit
      000270 D2 B6            [12]  799 	setb	_P3_6
                                    800 ;	dotmove.c:64: SCK = 0;
                                    801 ;	assignBit
      000272 C2 B6            [12]  802 	clr	_P3_6
                                    803 ;	dotmove.c:60: for (char i = 0; i < 8; i++)
      000274 0B               [12]  804 	inc	r3
      000275 80 D0            [24]  805 	sjmp	00109$
      000277                        806 00104$:
                                    807 ;	dotmove.c:66: P0 = 0xff;
      000277 75 80 FF         [24]  808 	mov	_P0,#0xff
                                    809 ;	dotmove.c:67: RCK = 1;
                                    810 ;	assignBit
      00027A D2 B5            [12]  811 	setb	_P3_5
                                    812 ;	dotmove.c:68: RCK = 0;
                                    813 ;	assignBit
      00027C C2 B5            [12]  814 	clr	_P3_5
                                    815 ;	dotmove.c:69: P0 = ~current_data;
      00027E E5 14            [12]  816 	mov	a,_main_current_data_458752_113
      000280 F4               [12]  817 	cpl	a
      000281 F5 80            [12]  818 	mov	_P0,a
                                    819 ;	dotmove.c:70: for (char i = 0; i < 5; i++)
      000283 7E 00            [12]  820 	mov	r6,#0x00
      000285                        821 00112$:
      000285 BE 05 00         [24]  822 	cjne	r6,#0x05,00157$
      000288                        823 00157$:
      000288 50 03            [24]  824 	jnc	00116$
      00028A 0E               [12]  825 	inc	r6
      00028B 80 F8            [24]  826 	sjmp	00112$
      00028D                        827 00116$:
                                    828 ;	dotmove.c:57: for (char row = 0; row < 8; row++)
      00028D 0F               [12]  829 	inc	r7
                                    830 ;	dotmove.c:132: display_led_mat();
                                    831 ;	dotmove.c:134: }
      00028E 80 92            [24]  832 	sjmp	00115$
                                    833 	.area CSEG    (CODE)
                                    834 	.area CONST   (CODE)
      00041D                        835 _number_string:
      00041D 3F                     836 	.db #0x3f	; 63
      00041E 06                     837 	.db #0x06	; 6
      00041F 5B                     838 	.db #0x5b	; 91
      000420 4F                     839 	.db #0x4f	; 79	'O'
      000421 66                     840 	.db #0x66	; 102	'f'
      000422 6D                     841 	.db #0x6d	; 109	'm'
      000423 7D                     842 	.db #0x7d	; 125
      000424 07                     843 	.db #0x07	; 7
      000425 7F                     844 	.db #0x7f	; 127
      000426 6F                     845 	.db #0x6f	; 111	'o'
                                    846 	.area XINIT   (CODE)
                                    847 	.area CABS    (ABS,CODE)
