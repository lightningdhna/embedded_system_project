                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module ledmatrix
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _number_string
                                     12 	.globl _main
                                     13 	.globl _timer1_interrupt
                                     14 	.globl _key_pressed_handle
                                     15 	.globl _reset_timer_1
                                     16 	.globl _go_right
                                     17 	.globl _go_left
                                     18 	.globl _go_down
                                     19 	.globl _go_up
                                     20 	.globl _update_game
                                     21 	.globl _update_food
                                     22 	.globl _game_over
                                     23 	.globl _display_number
                                     24 	.globl _srand
                                     25 	.globl _rand
                                     26 	.globl _CY
                                     27 	.globl _AC
                                     28 	.globl _F0
                                     29 	.globl _RS1
                                     30 	.globl _RS0
                                     31 	.globl _OV
                                     32 	.globl _F1
                                     33 	.globl _P
                                     34 	.globl _PS
                                     35 	.globl _PT1
                                     36 	.globl _PX1
                                     37 	.globl _PT0
                                     38 	.globl _PX0
                                     39 	.globl _RD
                                     40 	.globl _WR
                                     41 	.globl _T1
                                     42 	.globl _T0
                                     43 	.globl _INT1
                                     44 	.globl _INT0
                                     45 	.globl _TXD
                                     46 	.globl _RXD
                                     47 	.globl _P3_7
                                     48 	.globl _P3_6
                                     49 	.globl _P3_5
                                     50 	.globl _P3_4
                                     51 	.globl _P3_3
                                     52 	.globl _P3_2
                                     53 	.globl _P3_1
                                     54 	.globl _P3_0
                                     55 	.globl _EA
                                     56 	.globl _ES
                                     57 	.globl _ET1
                                     58 	.globl _EX1
                                     59 	.globl _ET0
                                     60 	.globl _EX0
                                     61 	.globl _P2_7
                                     62 	.globl _P2_6
                                     63 	.globl _P2_5
                                     64 	.globl _P2_4
                                     65 	.globl _P2_3
                                     66 	.globl _P2_2
                                     67 	.globl _P2_1
                                     68 	.globl _P2_0
                                     69 	.globl _SM0
                                     70 	.globl _SM1
                                     71 	.globl _SM2
                                     72 	.globl _REN
                                     73 	.globl _TB8
                                     74 	.globl _RB8
                                     75 	.globl _TI
                                     76 	.globl _RI
                                     77 	.globl _P1_7
                                     78 	.globl _P1_6
                                     79 	.globl _P1_5
                                     80 	.globl _P1_4
                                     81 	.globl _P1_3
                                     82 	.globl _P1_2
                                     83 	.globl _P1_1
                                     84 	.globl _P1_0
                                     85 	.globl _TF1
                                     86 	.globl _TR1
                                     87 	.globl _TF0
                                     88 	.globl _TR0
                                     89 	.globl _IE1
                                     90 	.globl _IT1
                                     91 	.globl _IE0
                                     92 	.globl _IT0
                                     93 	.globl _P0_7
                                     94 	.globl _P0_6
                                     95 	.globl _P0_5
                                     96 	.globl _P0_4
                                     97 	.globl _P0_3
                                     98 	.globl _P0_2
                                     99 	.globl _P0_1
                                    100 	.globl _P0_0
                                    101 	.globl _TF2
                                    102 	.globl _EXF2
                                    103 	.globl _RCLK
                                    104 	.globl _TCLK
                                    105 	.globl _EXEN2
                                    106 	.globl _TR2
                                    107 	.globl _C_T2
                                    108 	.globl _CP_RL2
                                    109 	.globl _T2CON_7
                                    110 	.globl _T2CON_6
                                    111 	.globl _T2CON_5
                                    112 	.globl _T2CON_4
                                    113 	.globl _T2CON_3
                                    114 	.globl _T2CON_2
                                    115 	.globl _T2CON_1
                                    116 	.globl _T2CON_0
                                    117 	.globl _PT2
                                    118 	.globl _ET2
                                    119 	.globl _B
                                    120 	.globl _ACC
                                    121 	.globl _PSW
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 	.globl _TH2
                                    141 	.globl _TL2
                                    142 	.globl _RCAP2H
                                    143 	.globl _RCAP2L
                                    144 	.globl _T2CON
                                    145 	.globl _show_food
                                    146 	.globl _bit1
                                    147 	.globl _bit0
                                    148 	.globl _food
                                    149 	.globl _tail
                                    150 	.globl _head
                                    151 	.globl _key_pressed
                                    152 	.globl _data_mat
                                    153 	.globl _cur_dir
                                    154 	.globl _sqr_left
                                    155 	.globl _point
                                    156 	.globl _game_timer_counter
                                    157 	.globl _timer_counter
                                    158 ;--------------------------------------------------------
                                    159 ; special function registers
                                    160 ;--------------------------------------------------------
                                    161 	.area RSEG    (ABS,DATA)
      000000                        162 	.org 0x0000
                           0000C8   163 _T2CON	=	0x00c8
                           0000CA   164 _RCAP2L	=	0x00ca
                           0000CB   165 _RCAP2H	=	0x00cb
                           0000CC   166 _TL2	=	0x00cc
                           0000CD   167 _TH2	=	0x00cd
                           000080   168 _P0	=	0x0080
                           000081   169 _SP	=	0x0081
                           000082   170 _DPL	=	0x0082
                           000083   171 _DPH	=	0x0083
                           000087   172 _PCON	=	0x0087
                           000088   173 _TCON	=	0x0088
                           000089   174 _TMOD	=	0x0089
                           00008A   175 _TL0	=	0x008a
                           00008B   176 _TL1	=	0x008b
                           00008C   177 _TH0	=	0x008c
                           00008D   178 _TH1	=	0x008d
                           000090   179 _P1	=	0x0090
                           000098   180 _SCON	=	0x0098
                           000099   181 _SBUF	=	0x0099
                           0000A0   182 _P2	=	0x00a0
                           0000A8   183 _IE	=	0x00a8
                           0000B0   184 _P3	=	0x00b0
                           0000B8   185 _IP	=	0x00b8
                           0000D0   186 _PSW	=	0x00d0
                           0000E0   187 _ACC	=	0x00e0
                           0000F0   188 _B	=	0x00f0
                                    189 ;--------------------------------------------------------
                                    190 ; special function bits
                                    191 ;--------------------------------------------------------
                                    192 	.area RSEG    (ABS,DATA)
      000000                        193 	.org 0x0000
                           0000AD   194 _ET2	=	0x00ad
                           0000BD   195 _PT2	=	0x00bd
                           0000C8   196 _T2CON_0	=	0x00c8
                           0000C9   197 _T2CON_1	=	0x00c9
                           0000CA   198 _T2CON_2	=	0x00ca
                           0000CB   199 _T2CON_3	=	0x00cb
                           0000CC   200 _T2CON_4	=	0x00cc
                           0000CD   201 _T2CON_5	=	0x00cd
                           0000CE   202 _T2CON_6	=	0x00ce
                           0000CF   203 _T2CON_7	=	0x00cf
                           0000C8   204 _CP_RL2	=	0x00c8
                           0000C9   205 _C_T2	=	0x00c9
                           0000CA   206 _TR2	=	0x00ca
                           0000CB   207 _EXEN2	=	0x00cb
                           0000CC   208 _TCLK	=	0x00cc
                           0000CD   209 _RCLK	=	0x00cd
                           0000CE   210 _EXF2	=	0x00ce
                           0000CF   211 _TF2	=	0x00cf
                           000080   212 _P0_0	=	0x0080
                           000081   213 _P0_1	=	0x0081
                           000082   214 _P0_2	=	0x0082
                           000083   215 _P0_3	=	0x0083
                           000084   216 _P0_4	=	0x0084
                           000085   217 _P0_5	=	0x0085
                           000086   218 _P0_6	=	0x0086
                           000087   219 _P0_7	=	0x0087
                           000088   220 _IT0	=	0x0088
                           000089   221 _IE0	=	0x0089
                           00008A   222 _IT1	=	0x008a
                           00008B   223 _IE1	=	0x008b
                           00008C   224 _TR0	=	0x008c
                           00008D   225 _TF0	=	0x008d
                           00008E   226 _TR1	=	0x008e
                           00008F   227 _TF1	=	0x008f
                           000090   228 _P1_0	=	0x0090
                           000091   229 _P1_1	=	0x0091
                           000092   230 _P1_2	=	0x0092
                           000093   231 _P1_3	=	0x0093
                           000094   232 _P1_4	=	0x0094
                           000095   233 _P1_5	=	0x0095
                           000096   234 _P1_6	=	0x0096
                           000097   235 _P1_7	=	0x0097
                           000098   236 _RI	=	0x0098
                           000099   237 _TI	=	0x0099
                           00009A   238 _RB8	=	0x009a
                           00009B   239 _TB8	=	0x009b
                           00009C   240 _REN	=	0x009c
                           00009D   241 _SM2	=	0x009d
                           00009E   242 _SM1	=	0x009e
                           00009F   243 _SM0	=	0x009f
                           0000A0   244 _P2_0	=	0x00a0
                           0000A1   245 _P2_1	=	0x00a1
                           0000A2   246 _P2_2	=	0x00a2
                           0000A3   247 _P2_3	=	0x00a3
                           0000A4   248 _P2_4	=	0x00a4
                           0000A5   249 _P2_5	=	0x00a5
                           0000A6   250 _P2_6	=	0x00a6
                           0000A7   251 _P2_7	=	0x00a7
                           0000A8   252 _EX0	=	0x00a8
                           0000A9   253 _ET0	=	0x00a9
                           0000AA   254 _EX1	=	0x00aa
                           0000AB   255 _ET1	=	0x00ab
                           0000AC   256 _ES	=	0x00ac
                           0000AF   257 _EA	=	0x00af
                           0000B0   258 _P3_0	=	0x00b0
                           0000B1   259 _P3_1	=	0x00b1
                           0000B2   260 _P3_2	=	0x00b2
                           0000B3   261 _P3_3	=	0x00b3
                           0000B4   262 _P3_4	=	0x00b4
                           0000B5   263 _P3_5	=	0x00b5
                           0000B6   264 _P3_6	=	0x00b6
                           0000B7   265 _P3_7	=	0x00b7
                           0000B0   266 _RXD	=	0x00b0
                           0000B1   267 _TXD	=	0x00b1
                           0000B2   268 _INT0	=	0x00b2
                           0000B3   269 _INT1	=	0x00b3
                           0000B4   270 _T0	=	0x00b4
                           0000B5   271 _T1	=	0x00b5
                           0000B6   272 _WR	=	0x00b6
                           0000B7   273 _RD	=	0x00b7
                           0000B8   274 _PX0	=	0x00b8
                           0000B9   275 _PT0	=	0x00b9
                           0000BA   276 _PX1	=	0x00ba
                           0000BB   277 _PT1	=	0x00bb
                           0000BC   278 _PS	=	0x00bc
                           0000D0   279 _P	=	0x00d0
                           0000D1   280 _F1	=	0x00d1
                           0000D2   281 _OV	=	0x00d2
                           0000D3   282 _RS0	=	0x00d3
                           0000D4   283 _RS1	=	0x00d4
                           0000D5   284 _F0	=	0x00d5
                           0000D6   285 _AC	=	0x00d6
                           0000D7   286 _CY	=	0x00d7
                                    287 ;--------------------------------------------------------
                                    288 ; overlayable register banks
                                    289 ;--------------------------------------------------------
                                    290 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        291 	.ds 8
                                    292 ;--------------------------------------------------------
                                    293 ; overlayable bit register bank
                                    294 ;--------------------------------------------------------
                                    295 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        296 bits:
      000021                        297 	.ds 1
                           008000   298 	b0 = bits[0]
                           008100   299 	b1 = bits[1]
                           008200   300 	b2 = bits[2]
                           008300   301 	b3 = bits[3]
                           008400   302 	b4 = bits[4]
                           008500   303 	b5 = bits[5]
                           008600   304 	b6 = bits[6]
                           008700   305 	b7 = bits[7]
                                    306 ;--------------------------------------------------------
                                    307 ; internal ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area DSEG    (DATA)
      000022                        310 _display_number_led_65537_56:
      000022                        311 	.ds 1
      000023                        312 _display_number_neg_65537_56:
      000023                        313 	.ds 1
      000024                        314 _timer_counter::
      000024                        315 	.ds 4
      000028                        316 _game_timer_counter::
      000028                        317 	.ds 2
      00002A                        318 _point::
      00002A                        319 	.ds 1
      00002B                        320 _sqr_left::
      00002B                        321 	.ds 1
      00002C                        322 _cur_dir::
      00002C                        323 	.ds 1
      00002D                        324 _data_mat::
      00002D                        325 	.ds 8
      000035                        326 _key_pressed::
      000035                        327 	.ds 1
      000036                        328 _head::
      000036                        329 	.ds 1
      000037                        330 _tail::
      000037                        331 	.ds 1
      000038                        332 _food::
      000038                        333 	.ds 1
      000039                        334 _bit0::
      000039                        335 	.ds 8
      000041                        336 _bit1::
      000041                        337 	.ds 8
      000049                        338 _game_over_temp_65537_111:
      000049                        339 	.ds 1
      00004A                        340 _game_over_i_65537_111:
      00004A                        341 	.ds 1
      00004B                        342 _game_over_j_65537_111:
      00004B                        343 	.ds 1
      00004C                        344 _game_over_t_65537_111:
      00004C                        345 	.ds 1
      00004D                        346 _game_over_current_data_983041_136:
      00004D                        347 	.ds 1
      00004E                        348 _game_over_row_917505_148:
      00004E                        349 	.ds 1
      00004F                        350 _game_over_current_data_983041_149:
      00004F                        351 	.ds 1
      000050                        352 _game_over_i_1048577_150:
      000050                        353 	.ds 1
      000051                        354 _game_over_sloc0_1_0:
      000051                        355 	.ds 1
      000052                        356 _game_over_sloc1_1_0:
      000052                        357 	.ds 2
      000054                        358 _game_over_sloc2_1_0:
      000054                        359 	.ds 2
      000056                        360 _update_food_i_131072_157:
      000056                        361 	.ds 1
      000057                        362 _show_food::
      000057                        363 	.ds 1
      000058                        364 _main_current_data_655360_277:
      000058                        365 	.ds 1
                                    366 ;--------------------------------------------------------
                                    367 ; overlayable items in internal ram
                                    368 ;--------------------------------------------------------
                                    369 ;--------------------------------------------------------
                                    370 ; Stack segment in internal ram
                                    371 ;--------------------------------------------------------
                                    372 	.area SSEG
      000059                        373 __start__stack:
      000059                        374 	.ds	1
                                    375 
                                    376 ;--------------------------------------------------------
                                    377 ; indirectly addressable internal ram data
                                    378 ;--------------------------------------------------------
                                    379 	.area ISEG    (DATA)
                                    380 ;--------------------------------------------------------
                                    381 ; absolute internal ram data
                                    382 ;--------------------------------------------------------
                                    383 	.area IABS    (ABS,DATA)
                                    384 	.area IABS    (ABS,DATA)
                                    385 ;--------------------------------------------------------
                                    386 ; bit data
                                    387 ;--------------------------------------------------------
                                    388 	.area BSEG    (BIT)
      000000                        389 _update_food_sloc0_1_0:
      000000                        390 	.ds 1
      000001                        391 _update_game_sloc0_1_0:
      000001                        392 	.ds 1
                                    393 ;--------------------------------------------------------
                                    394 ; paged external ram data
                                    395 ;--------------------------------------------------------
                                    396 	.area PSEG    (PAG,XDATA)
                                    397 ;--------------------------------------------------------
                                    398 ; uninitialized external ram data
                                    399 ;--------------------------------------------------------
                                    400 	.area XSEG    (XDATA)
                                    401 ;--------------------------------------------------------
                                    402 ; absolute external ram data
                                    403 ;--------------------------------------------------------
                                    404 	.area XABS    (ABS,XDATA)
                                    405 ;--------------------------------------------------------
                                    406 ; initialized external ram data
                                    407 ;--------------------------------------------------------
                                    408 	.area XISEG   (XDATA)
                                    409 	.area HOME    (CODE)
                                    410 	.area GSINIT0 (CODE)
                                    411 	.area GSINIT1 (CODE)
                                    412 	.area GSINIT2 (CODE)
                                    413 	.area GSINIT3 (CODE)
                                    414 	.area GSINIT4 (CODE)
                                    415 	.area GSINIT5 (CODE)
                                    416 	.area GSINIT  (CODE)
                                    417 	.area GSFINAL (CODE)
                                    418 	.area CSEG    (CODE)
                                    419 ;--------------------------------------------------------
                                    420 ; interrupt vector
                                    421 ;--------------------------------------------------------
                                    422 	.area HOME    (CODE)
      000000                        423 __interrupt_vect:
      000000 02 00 21         [24]  424 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  425 	reti
      000004                        426 	.ds	7
      00000B 32               [24]  427 	reti
      00000C                        428 	.ds	7
      000013 32               [24]  429 	reti
      000014                        430 	.ds	7
      00001B 02 09 09         [24]  431 	ljmp	_timer1_interrupt
                                    432 ;--------------------------------------------------------
                                    433 ; global & static initialisations
                                    434 ;--------------------------------------------------------
                                    435 	.area HOME    (CODE)
                                    436 	.area GSINIT  (CODE)
                                    437 	.area GSFINAL (CODE)
                                    438 	.area GSINIT  (CODE)
                                    439 	.globl __sdcc_gsinit_startup
                                    440 	.globl __sdcc_program_startup
                                    441 	.globl __start__stack
                                    442 	.globl __mcs51_genXINIT
                                    443 	.globl __mcs51_genXRAMCLEAR
                                    444 	.globl __mcs51_genRAMCLEAR
                                    445 ;	ledmatrix.c:18: unsigned long timer_counter = 0;
      00007A E4               [12]  446 	clr	a
      00007B F5 24            [12]  447 	mov	_timer_counter,a
      00007D F5 25            [12]  448 	mov	(_timer_counter + 1),a
      00007F F5 26            [12]  449 	mov	(_timer_counter + 2),a
      000081 F5 27            [12]  450 	mov	(_timer_counter + 3),a
                                    451 ;	ledmatrix.c:19: int game_timer_counter = 0;
      000083 F5 28            [12]  452 	mov	_game_timer_counter,a
      000085 F5 29            [12]  453 	mov	(_game_timer_counter + 1),a
                                    454 ;	ledmatrix.c:20: char point = 0;
      000087 F5 2A            [12]  455 	mov	_point,a
                                    456 ;	ledmatrix.c:22: char sqr_left = 61;
      000089 75 2B 3D         [24]  457 	mov	_sqr_left,#0x3d
                                    458 ;	ledmatrix.c:23: char cur_dir = dir_right;
      00008C 75 2C 01         [24]  459 	mov	_cur_dir,#0x01
                                    460 ;	ledmatrix.c:25: char key_pressed = 0;
      00008F F5 35            [12]  461 	mov	_key_pressed,a
                                    462 ;	ledmatrix.c:411: char show_food = 1;
      000091 75 57 01         [24]  463 	mov	_show_food,#0x01
                                    464 	.area GSFINAL (CODE)
      00009F 02 00 1E         [24]  465 	ljmp	__sdcc_program_startup
                                    466 ;--------------------------------------------------------
                                    467 ; Home
                                    468 ;--------------------------------------------------------
                                    469 	.area HOME    (CODE)
                                    470 	.area HOME    (CODE)
      00001E                        471 __sdcc_program_startup:
      00001E 02 0A 2F         [24]  472 	ljmp	_main
                                    473 ;	return from main will return to caller
                                    474 ;--------------------------------------------------------
                                    475 ; code
                                    476 ;--------------------------------------------------------
                                    477 	.area CSEG    (CODE)
                                    478 ;------------------------------------------------------------
                                    479 ;Allocation info for local variables in function 'display_number'
                                    480 ;------------------------------------------------------------
                                    481 ;number                    Allocated to registers r4 r5 r6 r7 
                                    482 ;i                         Allocated to registers r3 
                                    483 ;led                       Allocated with name '_display_number_led_65537_56'
                                    484 ;neg                       Allocated with name '_display_number_neg_65537_56'
                                    485 ;__1966090004              Allocated to registers r3 
                                    486 ;__1966090005              Allocated to registers r0 
                                    487 ;led                       Allocated to registers 
                                    488 ;digit                     Allocated to registers 
                                    489 ;------------------------------------------------------------
                                    490 ;	led7seg.h:27: void display_number(long number)
                                    491 ;	-----------------------------------------
                                    492 ;	 function display_number
                                    493 ;	-----------------------------------------
      0000A2                        494 _display_number:
                           000007   495 	ar7 = 0x07
                           000006   496 	ar6 = 0x06
                           000005   497 	ar5 = 0x05
                           000004   498 	ar4 = 0x04
                           000003   499 	ar3 = 0x03
                           000002   500 	ar2 = 0x02
                           000001   501 	ar1 = 0x01
                           000000   502 	ar0 = 0x00
      0000A2 AC 82            [24]  503 	mov	r4,dpl
      0000A4 AD 83            [24]  504 	mov	r5,dph
      0000A6 AE F0            [24]  505 	mov	r6,b
      0000A8 FF               [12]  506 	mov	r7,a
                                    507 ;	led7seg.h:29: if (!number)
      0000A9 EC               [12]  508 	mov	a,r4
      0000AA 4D               [12]  509 	orl	a,r5
      0000AB 4E               [12]  510 	orl	a,r6
      0000AC 4F               [12]  511 	orl	a,r7
                                    512 ;	led7seg.h:31: P0 = 0;
      0000AD 70 17            [24]  513 	jnz	00103$
      0000AF F5 80            [12]  514 	mov	_P0,a
                                    515 ;	led7seg.h:32: P2 &= 0b11100011;
      0000B1 53 A0 E3         [24]  516 	anl	_P2,#0xe3
                                    517 ;	led7seg.h:33: P0 = number_string[0];
      0000B4 90 0F FE         [24]  518 	mov	dptr,#_number_string
      0000B7 E4               [12]  519 	clr	a
      0000B8 93               [24]  520 	movc	a,@a+dptr
      0000B9 F5 80            [12]  521 	mov	_P0,a
                                    522 ;	led7seg.h:34: for (char i = 0; i < 100; i++)
      0000BB 7B 00            [12]  523 	mov	r3,#0x00
      0000BD                        524 00113$:
      0000BD BB 64 00         [24]  525 	cjne	r3,#0x64,00148$
      0000C0                        526 00148$:
      0000C0 50 03            [24]  527 	jnc	00101$
      0000C2 0B               [12]  528 	inc	r3
      0000C3 80 F8            [24]  529 	sjmp	00113$
      0000C5                        530 00101$:
                                    531 ;	led7seg.h:36: return;
      0000C5 22               [24]  532 	ret
      0000C6                        533 00103$:
                                    534 ;	led7seg.h:39: char neg = 0;
      0000C6 75 23 00         [24]  535 	mov	_display_number_neg_65537_56,#0x00
                                    536 ;	led7seg.h:40: if (number < 0)
      0000C9 EF               [12]  537 	mov	a,r7
      0000CA 30 E7 10         [24]  538 	jnb	acc.7,00122$
                                    539 ;	led7seg.h:42: neg = 1;
      0000CD 75 23 01         [24]  540 	mov	_display_number_neg_65537_56,#0x01
                                    541 ;	led7seg.h:43: number = -number;
      0000D0 C3               [12]  542 	clr	c
      0000D1 E4               [12]  543 	clr	a
      0000D2 9C               [12]  544 	subb	a,r4
      0000D3 FC               [12]  545 	mov	r4,a
      0000D4 E4               [12]  546 	clr	a
      0000D5 9D               [12]  547 	subb	a,r5
      0000D6 FD               [12]  548 	mov	r5,a
      0000D7 E4               [12]  549 	clr	a
      0000D8 9E               [12]  550 	subb	a,r6
      0000D9 FE               [12]  551 	mov	r6,a
      0000DA E4               [12]  552 	clr	a
      0000DB 9F               [12]  553 	subb	a,r7
      0000DC FF               [12]  554 	mov	r7,a
                                    555 ;	led7seg.h:53: while (number)
      0000DD                        556 00122$:
      0000DD 75 22 00         [24]  557 	mov	_display_number_led_65537_56,#0x00
      0000E0                        558 00106$:
      0000E0 EC               [12]  559 	mov	a,r4
      0000E1 4D               [12]  560 	orl	a,r5
      0000E2 4E               [12]  561 	orl	a,r6
      0000E3 4F               [12]  562 	orl	a,r7
      0000E4 60 5A            [24]  563 	jz	00108$
                                    564 ;	led7seg.h:55: display_digit(led++, number % 10);
      0000E6 75 0C 0A         [24]  565 	mov	__modslong_PARM_2,#0x0a
      0000E9 E4               [12]  566 	clr	a
      0000EA F5 0D            [12]  567 	mov	(__modslong_PARM_2 + 1),a
      0000EC F5 0E            [12]  568 	mov	(__modslong_PARM_2 + 2),a
      0000EE F5 0F            [12]  569 	mov	(__modslong_PARM_2 + 3),a
      0000F0 8C 82            [24]  570 	mov	dpl,r4
      0000F2 8D 83            [24]  571 	mov	dph,r5
      0000F4 8E F0            [24]  572 	mov	b,r6
      0000F6 EF               [12]  573 	mov	a,r7
      0000F7 C0 07            [24]  574 	push	ar7
      0000F9 C0 06            [24]  575 	push	ar6
      0000FB C0 05            [24]  576 	push	ar5
      0000FD C0 04            [24]  577 	push	ar4
      0000FF 12 0E EB         [24]  578 	lcall	__modslong
      000102 A8 82            [24]  579 	mov	r0,dpl
      000104 D0 04            [24]  580 	pop	ar4
      000106 D0 05            [24]  581 	pop	ar5
      000108 D0 06            [24]  582 	pop	ar6
      00010A D0 07            [24]  583 	pop	ar7
      00010C AB 22            [24]  584 	mov	r3,_display_number_led_65537_56
      00010E 05 22            [12]  585 	inc	_display_number_led_65537_56
                                    586 ;	led7seg.h:19: P0 = 0;
      000110 75 80 00         [24]  587 	mov	_P0,#0x00
                                    588 ;	led7seg.h:20: P2 &= 0b11100011;
      000113 53 A0 E3         [24]  589 	anl	_P2,#0xe3
                                    590 ;	led7seg.h:21: P2 |= led << 2;
      000116 EB               [12]  591 	mov	a,r3
      000117 2B               [12]  592 	add	a,r3
      000118 25 E0            [12]  593 	add	a,acc
      00011A 42 A0            [12]  594 	orl	_P2,a
                                    595 ;	led7seg.h:24: P0 = number_string[digit];
      00011C E8               [12]  596 	mov	a,r0
      00011D 90 0F FE         [24]  597 	mov	dptr,#_number_string
      000120 93               [24]  598 	movc	a,@a+dptr
      000121 F5 80            [12]  599 	mov	_P0,a
                                    600 ;	led7seg.h:56: number /= 10;
      000123 75 0C 0A         [24]  601 	mov	__divslong_PARM_2,#0x0a
      000126 E4               [12]  602 	clr	a
      000127 F5 0D            [12]  603 	mov	(__divslong_PARM_2 + 1),a
      000129 F5 0E            [12]  604 	mov	(__divslong_PARM_2 + 2),a
      00012B F5 0F            [12]  605 	mov	(__divslong_PARM_2 + 3),a
      00012D 8C 82            [24]  606 	mov	dpl,r4
      00012F 8D 83            [24]  607 	mov	dph,r5
      000131 8E F0            [24]  608 	mov	b,r6
      000133 EF               [12]  609 	mov	a,r7
      000134 12 0F 3A         [24]  610 	lcall	__divslong
      000137 AC 82            [24]  611 	mov	r4,dpl
      000139 AD 83            [24]  612 	mov	r5,dph
      00013B AE F0            [24]  613 	mov	r6,b
      00013D FF               [12]  614 	mov	r7,a
      00013E 80 A0            [24]  615 	sjmp	00106$
      000140                        616 00108$:
                                    617 ;	led7seg.h:58: if (neg)
      000140 E5 23            [12]  618 	mov	a,_display_number_neg_65537_56
      000142 60 0F            [24]  619 	jz	00115$
                                    620 ;	led7seg.h:60: P0 = 0;
      000144 75 80 00         [24]  621 	mov	_P0,#0x00
                                    622 ;	led7seg.h:61: P2 = led << 2;
      000147 E5 22            [12]  623 	mov	a,_display_number_led_65537_56
      000149 FA               [12]  624 	mov	r2,a
      00014A 25 E0            [12]  625 	add	a,acc
      00014C 25 E0            [12]  626 	add	a,acc
      00014E F5 A0            [12]  627 	mov	_P2,a
                                    628 ;	led7seg.h:62: P0 = 0b01000000;
      000150 75 80 40         [24]  629 	mov	_P0,#0x40
      000153                        630 00115$:
                                    631 ;	led7seg.h:64: }
      000153 22               [24]  632 	ret
                                    633 ;------------------------------------------------------------
                                    634 ;Allocation info for local variables in function 'game_over'
                                    635 ;------------------------------------------------------------
                                    636 ;i                         Allocated to registers r6 r7 
                                    637 ;j                         Allocated to registers r4 r5 
                                    638 ;j                         Allocated to registers r4 r5 
                                    639 ;i                         Allocated to registers r7 
                                    640 ;temp                      Allocated with name '_game_over_temp_65537_111'
                                    641 ;i                         Allocated with name '_game_over_i_65537_111'
                                    642 ;j                         Allocated with name '_game_over_j_65537_111'
                                    643 ;t                         Allocated with name '_game_over_t_65537_111'
                                    644 ;row                       Allocated to registers r4 
                                    645 ;current_data              Allocated with name '_game_over_current_data_983041_136'
                                    646 ;i                         Allocated to registers r2 
                                    647 ;i                         Allocated to registers r6 
                                    648 ;i                         Allocated to registers r6 
                                    649 ;row                       Allocated with name '_game_over_row_917505_148'
                                    650 ;current_data              Allocated with name '_game_over_current_data_983041_149'
                                    651 ;i                         Allocated with name '_game_over_i_1048577_150'
                                    652 ;i                         Allocated to registers r3 
                                    653 ;i                         Allocated to registers r3 
                                    654 ;sloc0                     Allocated with name '_game_over_sloc0_1_0'
                                    655 ;sloc1                     Allocated with name '_game_over_sloc1_1_0'
                                    656 ;sloc2                     Allocated with name '_game_over_sloc2_1_0'
                                    657 ;------------------------------------------------------------
                                    658 ;	ledmatrix.c:129: void game_over(void)
                                    659 ;	-----------------------------------------
                                    660 ;	 function game_over
                                    661 ;	-----------------------------------------
      000154                        662 _game_over:
                                    663 ;	ledmatrix.c:131: EA = 0;
                                    664 ;	assignBit
      000154 C2 AF            [12]  665 	clr	_EA
                                    666 ;	ledmatrix.c:135: for (int i = 0; i < time * 1e3 / 200; i++)
      000156 7E 00            [12]  667 	mov	r6,#0x00
      000158 7F 00            [12]  668 	mov	r7,#0x00
      00015A                        669 00150$:
      00015A C3               [12]  670 	clr	c
      00015B EE               [12]  671 	mov	a,r6
      00015C 94 C8            [12]  672 	subb	a,#0xc8
      00015E EF               [12]  673 	mov	a,r7
      00015F 64 80            [12]  674 	xrl	a,#0x80
      000161 94 80            [12]  675 	subb	a,#0x80
      000163 50 37            [24]  676 	jnc	00103$
                                    677 ;	ledmatrix.c:137: buzzer_pin = 1;
                                    678 ;	assignBit
      000165 D2 95            [12]  679 	setb	_P1_5
                                    680 ;	ledmatrix.c:138: for (int j = 0; j < 90; j++)
      000167 7C 00            [12]  681 	mov	r4,#0x00
      000169 7D 00            [12]  682 	mov	r5,#0x00
      00016B                        683 00144$:
      00016B C3               [12]  684 	clr	c
      00016C EC               [12]  685 	mov	a,r4
      00016D 94 5A            [12]  686 	subb	a,#0x5a
      00016F ED               [12]  687 	mov	a,r5
      000170 64 80            [12]  688 	xrl	a,#0x80
      000172 94 80            [12]  689 	subb	a,#0x80
      000174 50 07            [24]  690 	jnc	00101$
      000176 0C               [12]  691 	inc	r4
      000177 BC 00 F1         [24]  692 	cjne	r4,#0x00,00144$
      00017A 0D               [12]  693 	inc	r5
      00017B 80 EE            [24]  694 	sjmp	00144$
      00017D                        695 00101$:
                                    696 ;	ledmatrix.c:140: buzzer_pin = 0;
                                    697 ;	assignBit
      00017D C2 95            [12]  698 	clr	_P1_5
                                    699 ;	ledmatrix.c:141: for (int j = 0; j < 90; j++)
      00017F 7C 00            [12]  700 	mov	r4,#0x00
      000181 7D 00            [12]  701 	mov	r5,#0x00
      000183                        702 00147$:
      000183 C3               [12]  703 	clr	c
      000184 EC               [12]  704 	mov	a,r4
      000185 94 5A            [12]  705 	subb	a,#0x5a
      000187 ED               [12]  706 	mov	a,r5
      000188 64 80            [12]  707 	xrl	a,#0x80
      00018A 94 80            [12]  708 	subb	a,#0x80
      00018C 50 07            [24]  709 	jnc	00151$
      00018E 0C               [12]  710 	inc	r4
      00018F BC 00 F1         [24]  711 	cjne	r4,#0x00,00147$
      000192 0D               [12]  712 	inc	r5
      000193 80 EE            [24]  713 	sjmp	00147$
      000195                        714 00151$:
                                    715 ;	ledmatrix.c:135: for (int i = 0; i < time * 1e3 / 200; i++)
      000195 0E               [12]  716 	inc	r6
      000196 BE 00 C1         [24]  717 	cjne	r6,#0x00,00150$
      000199 0F               [12]  718 	inc	r7
      00019A 80 BE            [24]  719 	sjmp	00150$
      00019C                        720 00103$:
                                    721 ;	ledmatrix.c:144: for (char i = 0; i < 8; i++)
      00019C 7F 00            [12]  722 	mov	r7,#0x00
      00019E                        723 00153$:
      00019E BF 08 00         [24]  724 	cjne	r7,#0x08,00403$
      0001A1                        725 00403$:
      0001A1 50 09            [24]  726 	jnc	00104$
                                    727 ;	ledmatrix.c:145: data_mat[i] = 0;
      0001A3 EF               [12]  728 	mov	a,r7
      0001A4 24 2D            [12]  729 	add	a,#_data_mat
      0001A6 F8               [12]  730 	mov	r0,a
      0001A7 76 00            [12]  731 	mov	@r0,#0x00
                                    732 ;	ledmatrix.c:144: for (char i = 0; i < 8; i++)
      0001A9 0F               [12]  733 	inc	r7
      0001AA 80 F2            [24]  734 	sjmp	00153$
      0001AC                        735 00104$:
                                    736 ;	ledmatrix.c:208: const char temp = rand() % 6;
      0001AC 12 0D 90         [24]  737 	lcall	_rand
      0001AF 75 0C 06         [24]  738 	mov	__modsint_PARM_2,#0x06
      0001B2 75 0D 00         [24]  739 	mov	(__modsint_PARM_2 + 1),#0x00
      0001B5 12 0F 8C         [24]  740 	lcall	__modsint
      0001B8 AE 82            [24]  741 	mov	r6,dpl
      0001BA AF 83            [24]  742 	mov	r7,dph
      0001BC 8E 49            [24]  743 	mov	_game_over_temp_65537_111,r6
                                    744 ;	ledmatrix.c:230: if (point > 2)
      0001BE E5 2A            [12]  745 	mov	a,_point
      0001C0 24 FD            [12]  746 	add	a,#0xff - 0x02
      0001C2 40 03            [24]  747 	jc	00405$
      0001C4 02 03 65         [24]  748 	ljmp	00239$
      0001C7                        749 00405$:
                                    750 ;	ledmatrix.c:235: for (i = 0; i < 8; i++)
      0001C7                        751 00219$:
      0001C7 E5 49            [12]  752 	mov	a,_game_over_temp_65537_111
      0001C9 75 F0 08         [24]  753 	mov	b,#0x08
      0001CC A4               [48]  754 	mul	ab
      0001CD 24 08            [12]  755 	add	a,#_game_over_floating_display_65537_111
      0001CF FD               [12]  756 	mov	r5,a
      0001D0 74 10            [12]  757 	mov	a,#(_game_over_floating_display_65537_111 >> 8)
      0001D2 35 F0            [12]  758 	addc	a,b
      0001D4 FF               [12]  759 	mov	r7,a
      0001D5 75 4A 00         [24]  760 	mov	_game_over_i_65537_111,#0x00
                                    761 ;	ledmatrix.c:237: for (j = 0; j < 8; j++)
      0001D8                        762 00205$:
      0001D8 75 4B 00         [24]  763 	mov	_game_over_j_65537_111,#0x00
      0001DB                        764 00155$:
                                    765 ;	ledmatrix.c:239: data_mat[j] = floating_display[temp][(j + i) % 8] & 0b11110000 |
      0001DB E5 4B            [12]  766 	mov	a,_game_over_j_65537_111
      0001DD 24 2D            [12]  767 	add	a,#_data_mat
      0001DF F5 51            [12]  768 	mov	_game_over_sloc0_1_0,a
      0001E1 E5 4B            [12]  769 	mov	a,_game_over_j_65537_111
      0001E3 FA               [12]  770 	mov	r2,a
      0001E4 33               [12]  771 	rlc	a
      0001E5 95 E0            [12]  772 	subb	a,acc
      0001E7 FE               [12]  773 	mov	r6,a
      0001E8 E5 4A            [12]  774 	mov	a,_game_over_i_65537_111
      0001EA F5 52            [12]  775 	mov	_game_over_sloc1_1_0,a
      0001EC 33               [12]  776 	rlc	a
      0001ED 95 E0            [12]  777 	subb	a,acc
      0001EF F5 53            [12]  778 	mov	(_game_over_sloc1_1_0 + 1),a
      0001F1 E5 52            [12]  779 	mov	a,_game_over_sloc1_1_0
      0001F3 2A               [12]  780 	add	a,r2
      0001F4 F5 82            [12]  781 	mov	dpl,a
      0001F6 E5 53            [12]  782 	mov	a,(_game_over_sloc1_1_0 + 1)
      0001F8 3E               [12]  783 	addc	a,r6
      0001F9 F5 83            [12]  784 	mov	dph,a
      0001FB 75 0C 08         [24]  785 	mov	__modsint_PARM_2,#0x08
      0001FE 75 0D 00         [24]  786 	mov	(__modsint_PARM_2 + 1),#0x00
      000201 C0 07            [24]  787 	push	ar7
      000203 C0 06            [24]  788 	push	ar6
      000205 C0 05            [24]  789 	push	ar5
      000207 C0 02            [24]  790 	push	ar2
      000209 12 0F 8C         [24]  791 	lcall	__modsint
      00020C AB 82            [24]  792 	mov	r3,dpl
      00020E AC 83            [24]  793 	mov	r4,dph
      000210 D0 02            [24]  794 	pop	ar2
      000212 D0 05            [24]  795 	pop	ar5
      000214 D0 06            [24]  796 	pop	ar6
      000216 D0 07            [24]  797 	pop	ar7
      000218 EB               [12]  798 	mov	a,r3
      000219 2D               [12]  799 	add	a,r5
      00021A F5 82            [12]  800 	mov	dpl,a
      00021C EC               [12]  801 	mov	a,r4
      00021D 3F               [12]  802 	addc	a,r7
      00021E F5 83            [12]  803 	mov	dph,a
      000220 E4               [12]  804 	clr	a
      000221 93               [24]  805 	movc	a,@a+dptr
      000222 FC               [12]  806 	mov	r4,a
      000223 53 04 F0         [24]  807 	anl	ar4,#0xf0
                                    808 ;	ledmatrix.c:240: floating_display[temp][(j - i + 8) % 8] & 0b00001111;
      000226 EA               [12]  809 	mov	a,r2
      000227 C3               [12]  810 	clr	c
      000228 95 52            [12]  811 	subb	a,_game_over_sloc1_1_0
      00022A FA               [12]  812 	mov	r2,a
      00022B EE               [12]  813 	mov	a,r6
      00022C 95 53            [12]  814 	subb	a,(_game_over_sloc1_1_0 + 1)
      00022E FE               [12]  815 	mov	r6,a
      00022F 74 08            [12]  816 	mov	a,#0x08
      000231 2A               [12]  817 	add	a,r2
      000232 F5 82            [12]  818 	mov	dpl,a
      000234 E4               [12]  819 	clr	a
      000235 3E               [12]  820 	addc	a,r6
      000236 F5 83            [12]  821 	mov	dph,a
      000238 75 0C 08         [24]  822 	mov	__modsint_PARM_2,#0x08
      00023B 75 0D 00         [24]  823 	mov	(__modsint_PARM_2 + 1),#0x00
      00023E C0 07            [24]  824 	push	ar7
      000240 C0 05            [24]  825 	push	ar5
      000242 C0 04            [24]  826 	push	ar4
      000244 12 0F 8C         [24]  827 	lcall	__modsint
      000247 AB 82            [24]  828 	mov	r3,dpl
      000249 AE 83            [24]  829 	mov	r6,dph
      00024B D0 04            [24]  830 	pop	ar4
      00024D D0 05            [24]  831 	pop	ar5
      00024F D0 07            [24]  832 	pop	ar7
      000251 EB               [12]  833 	mov	a,r3
      000252 2D               [12]  834 	add	a,r5
      000253 F5 82            [12]  835 	mov	dpl,a
      000255 EE               [12]  836 	mov	a,r6
      000256 3F               [12]  837 	addc	a,r7
      000257 F5 83            [12]  838 	mov	dph,a
      000259 E4               [12]  839 	clr	a
      00025A 93               [24]  840 	movc	a,@a+dptr
      00025B FE               [12]  841 	mov	r6,a
      00025C 74 0F            [12]  842 	mov	a,#0x0f
      00025E 5E               [12]  843 	anl	a,r6
      00025F 4C               [12]  844 	orl	a,r4
      000260 A8 51            [24]  845 	mov	r0,_game_over_sloc0_1_0
      000262 F6               [12]  846 	mov	@r0,a
                                    847 ;	ledmatrix.c:237: for (j = 0; j < 8; j++)
      000263 05 4B            [12]  848 	inc	_game_over_j_65537_111
      000265 C3               [12]  849 	clr	c
      000266 E5 4B            [12]  850 	mov	a,_game_over_j_65537_111
      000268 64 80            [12]  851 	xrl	a,#0x80
      00026A 94 88            [12]  852 	subb	a,#0x88
      00026C 50 03            [24]  853 	jnc	00406$
      00026E 02 01 DB         [24]  854 	ljmp	00155$
      000271                        855 00406$:
                                    856 ;	ledmatrix.c:243: for (t = 0; t < 30; t++)
      000271 75 4C 00         [24]  857 	mov	_game_over_t_65537_111,#0x00
      000274                        858 00171$:
                                    859 ;	ledmatrix.c:57: P2 = 0b11111111;
      000274 75 A0 FF         [24]  860 	mov	_P2,#0xff
                                    861 ;	ledmatrix.c:58: P0 = 0xFF;
      000277 75 80 FF         [24]  862 	mov	_P0,#0xff
                                    863 ;	ledmatrix.c:38: for (char row = 0; row < 8; row++)
      00027A 7C 00            [12]  864 	mov	r4,#0x00
      00027C                        865 00164$:
      00027C BC 08 00         [24]  866 	cjne	r4,#0x08,00407$
      00027F                        867 00407$:
      00027F 50 71            [24]  868 	jnc	00132$
                                    869 ;	ledmatrix.c:40: const char current_data = data_mat[row];
      000281 EC               [12]  870 	mov	a,r4
      000282 24 2D            [12]  871 	add	a,#_data_mat
      000284 F9               [12]  872 	mov	r1,a
      000285 87 4D            [24]  873 	mov	_game_over_current_data_983041_136,@r1
                                    874 ;	ledmatrix.c:41: for (char i = 0; i < 8; i++)
      000287 8C F0            [24]  875 	mov	b,r4
      000289 05 F0            [12]  876 	inc	b
      00028B 75 52 80         [24]  877 	mov	_game_over_sloc1_1_0,#0x80
      00028E E4               [12]  878 	clr	a
      00028F F5 53            [12]  879 	mov	(_game_over_sloc1_1_0 + 1),a
      000291 33               [12]  880 	rlc	a
      000292 92 D2            [24]  881 	mov	ov,c
      000294 80 0C            [24]  882 	sjmp	00410$
      000296                        883 00409$:
      000296 A2 D2            [12]  884 	mov	c,ov
      000298 E5 53            [12]  885 	mov	a,(_game_over_sloc1_1_0 + 1)
      00029A 13               [12]  886 	rrc	a
      00029B F5 53            [12]  887 	mov	(_game_over_sloc1_1_0 + 1),a
      00029D E5 52            [12]  888 	mov	a,_game_over_sloc1_1_0
      00029F 13               [12]  889 	rrc	a
      0002A0 F5 52            [12]  890 	mov	_game_over_sloc1_1_0,a
      0002A2                        891 00410$:
      0002A2 D5 F0 F1         [24]  892 	djnz	b,00409$
      0002A5 7A 00            [12]  893 	mov	r2,#0x00
      0002A7                        894 00158$:
      0002A7 BA 08 00         [24]  895 	cjne	r2,#0x08,00411$
      0002AA                        896 00411$:
      0002AA 50 2D            [24]  897 	jnc	00129$
                                    898 ;	ledmatrix.c:43: SER = (0x80 >> row) & (0x80 >> i);
      0002AC 8A F0            [24]  899 	mov	b,r2
      0002AE 05 F0            [12]  900 	inc	b
      0002B0 7B 80            [12]  901 	mov	r3,#0x80
      0002B2 E4               [12]  902 	clr	a
      0002B3 FE               [12]  903 	mov	r6,a
      0002B4 33               [12]  904 	rlc	a
      0002B5 92 D2            [24]  905 	mov	ov,c
      0002B7 80 08            [24]  906 	sjmp	00414$
      0002B9                        907 00413$:
      0002B9 A2 D2            [12]  908 	mov	c,ov
      0002BB EE               [12]  909 	mov	a,r6
      0002BC 13               [12]  910 	rrc	a
      0002BD FE               [12]  911 	mov	r6,a
      0002BE EB               [12]  912 	mov	a,r3
      0002BF 13               [12]  913 	rrc	a
      0002C0 FB               [12]  914 	mov	r3,a
      0002C1                        915 00414$:
      0002C1 D5 F0 F5         [24]  916 	djnz	b,00413$
      0002C4 E5 52            [12]  917 	mov	a,_game_over_sloc1_1_0
      0002C6 52 03            [12]  918 	anl	ar3,a
      0002C8 E5 53            [12]  919 	mov	a,(_game_over_sloc1_1_0 + 1)
      0002CA 52 06            [12]  920 	anl	ar6,a
                                    921 ;	assignBit
      0002CC EB               [12]  922 	mov	a,r3
      0002CD 4E               [12]  923 	orl	a,r6
      0002CE 24 FF            [12]  924 	add	a,#0xff
      0002D0 92 B4            [24]  925 	mov	_P3_4,c
                                    926 ;	ledmatrix.c:44: SCK = 1;
                                    927 ;	assignBit
      0002D2 D2 B6            [12]  928 	setb	_P3_6
                                    929 ;	ledmatrix.c:45: SCK = 0;
                                    930 ;	assignBit
      0002D4 C2 B6            [12]  931 	clr	_P3_6
                                    932 ;	ledmatrix.c:41: for (char i = 0; i < 8; i++)
      0002D6 0A               [12]  933 	inc	r2
      0002D7 80 CE            [24]  934 	sjmp	00158$
      0002D9                        935 00129$:
                                    936 ;	ledmatrix.c:47: P0 = 0xff;
      0002D9 75 80 FF         [24]  937 	mov	_P0,#0xff
                                    938 ;	ledmatrix.c:48: RCK = 1;
                                    939 ;	assignBit
      0002DC D2 B5            [12]  940 	setb	_P3_5
                                    941 ;	ledmatrix.c:49: RCK = 0;
                                    942 ;	assignBit
      0002DE C2 B5            [12]  943 	clr	_P3_5
                                    944 ;	ledmatrix.c:50: P0 = ~current_data;
      0002E0 E5 4D            [12]  945 	mov	a,_game_over_current_data_983041_136
      0002E2 F4               [12]  946 	cpl	a
      0002E3 F5 80            [12]  947 	mov	_P0,a
                                    948 ;	ledmatrix.c:51: for (char i = 0; i < 5; i++)
      0002E5 7E 00            [12]  949 	mov	r6,#0x00
      0002E7                        950 00161$:
      0002E7 BE 05 00         [24]  951 	cjne	r6,#0x05,00415$
      0002EA                        952 00415$:
      0002EA 50 03            [24]  953 	jnc	00165$
      0002EC 0E               [12]  954 	inc	r6
      0002ED 80 F8            [24]  955 	sjmp	00161$
      0002EF                        956 00165$:
                                    957 ;	ledmatrix.c:38: for (char row = 0; row < 8; row++)
      0002EF 0C               [12]  958 	inc	r4
                                    959 ;	ledmatrix.c:59: display_led_mat();
      0002F0 80 8A            [24]  960 	sjmp	00164$
      0002F2                        961 00132$:
                                    962 ;	ledmatrix.c:61: for (i = 0; i < 100; i++)
      0002F2 7E 64            [12]  963 	mov	r6,#0x64
      0002F4                        964 00168$:
      0002F4 DE FE            [24]  965 	djnz	r6,00168$
                                    966 ;	ledmatrix.c:63: SER = 0;
                                    967 ;	assignBit
      0002F6 C2 B4            [12]  968 	clr	_P3_4
                                    969 ;	ledmatrix.c:64: for (i = 0; i < 8; i++)
      0002F8 7E 00            [12]  970 	mov	r6,#0x00
      0002FA                        971 00169$:
                                    972 ;	ledmatrix.c:66: SCK = 1;
                                    973 ;	assignBit
      0002FA D2 B6            [12]  974 	setb	_P3_6
                                    975 ;	ledmatrix.c:67: SCK = 0;
                                    976 ;	assignBit
      0002FC C2 B6            [12]  977 	clr	_P3_6
                                    978 ;	ledmatrix.c:64: for (i = 0; i < 8; i++)
      0002FE 0E               [12]  979 	inc	r6
      0002FF BE 08 00         [24]  980 	cjne	r6,#0x08,00418$
      000302                        981 00418$:
      000302 40 F6            [24]  982 	jc	00169$
                                    983 ;	ledmatrix.c:69: RCK = 1;
                                    984 ;	assignBit
      000304 D2 B5            [12]  985 	setb	_P3_5
                                    986 ;	ledmatrix.c:70: RCK = 0;
                                    987 ;	assignBit
      000306 C2 B5            [12]  988 	clr	_P3_5
                                    989 ;	ledmatrix.c:71: display_number(point);
      000308 AA 2A            [24]  990 	mov	r2,_point
      00030A 7B 00            [12]  991 	mov	r3,#0x00
      00030C 7C 00            [12]  992 	mov	r4,#0x00
      00030E 7E 00            [12]  993 	mov	r6,#0x00
      000310 8A 82            [24]  994 	mov	dpl,r2
      000312 8B 83            [24]  995 	mov	dph,r3
      000314 8C F0            [24]  996 	mov	b,r4
      000316 EE               [12]  997 	mov	a,r6
      000317 C0 07            [24]  998 	push	ar7
      000319 C0 05            [24]  999 	push	ar5
      00031B 12 00 A2         [24] 1000 	lcall	_display_number
                                   1001 ;	ledmatrix.c:72: display_number(point);
      00031E AA 2A            [24] 1002 	mov	r2,_point
      000320 7B 00            [12] 1003 	mov	r3,#0x00
      000322 7C 00            [12] 1004 	mov	r4,#0x00
      000324 7E 00            [12] 1005 	mov	r6,#0x00
      000326 8A 82            [24] 1006 	mov	dpl,r2
      000328 8B 83            [24] 1007 	mov	dph,r3
      00032A 8C F0            [24] 1008 	mov	b,r4
      00032C EE               [12] 1009 	mov	a,r6
      00032D 12 00 A2         [24] 1010 	lcall	_display_number
                                   1011 ;	ledmatrix.c:73: display_number(point);
      000330 AA 2A            [24] 1012 	mov	r2,_point
      000332 7B 00            [12] 1013 	mov	r3,#0x00
      000334 7C 00            [12] 1014 	mov	r4,#0x00
      000336 7E 00            [12] 1015 	mov	r6,#0x00
      000338 8A 82            [24] 1016 	mov	dpl,r2
      00033A 8B 83            [24] 1017 	mov	dph,r3
      00033C 8C F0            [24] 1018 	mov	b,r4
      00033E EE               [12] 1019 	mov	a,r6
      00033F 12 00 A2         [24] 1020 	lcall	_display_number
      000342 D0 05            [24] 1021 	pop	ar5
      000344 D0 07            [24] 1022 	pop	ar7
                                   1023 ;	ledmatrix.c:243: for (t = 0; t < 30; t++)
      000346 05 4C            [12] 1024 	inc	_game_over_t_65537_111
      000348 C3               [12] 1025 	clr	c
      000349 E5 4C            [12] 1026 	mov	a,_game_over_t_65537_111
      00034B 64 80            [12] 1027 	xrl	a,#0x80
      00034D 94 9E            [12] 1028 	subb	a,#0x9e
      00034F 50 03            [24] 1029 	jnc	00420$
      000351 02 02 74         [24] 1030 	ljmp	00171$
      000354                       1031 00420$:
                                   1032 ;	ledmatrix.c:235: for (i = 0; i < 8; i++)
      000354 05 4A            [12] 1033 	inc	_game_over_i_65537_111
      000356 C3               [12] 1034 	clr	c
      000357 E5 4A            [12] 1035 	mov	a,_game_over_i_65537_111
      000359 64 80            [12] 1036 	xrl	a,#0x80
      00035B 94 88            [12] 1037 	subb	a,#0x88
      00035D 50 03            [24] 1038 	jnc	00421$
      00035F 02 01 D8         [24] 1039 	ljmp	00205$
      000362                       1040 00421$:
      000362 02 01 C7         [24] 1041 	ljmp	00219$
                                   1042 ;	ledmatrix.c:257: for (i = 0; i < 16; i++)
      000365                       1043 00239$:
      000365 E5 49            [12] 1044 	mov	a,_game_over_temp_65537_111
      000367 75 F0 08         [24] 1045 	mov	b,#0x08
      00036A A4               [48] 1046 	mul	ab
      00036B 24 08            [12] 1047 	add	a,#_game_over_floating_display_65537_111
      00036D FE               [12] 1048 	mov	r6,a
      00036E 74 10            [12] 1049 	mov	a,#(_game_over_floating_display_65537_111 >> 8)
      000370 35 F0            [12] 1050 	addc	a,b
      000372 FF               [12] 1051 	mov	r7,a
      000373 8E 04            [24] 1052 	mov	ar4,r6
      000375 8F 05            [24] 1053 	mov	ar5,r7
      000377 75 4A 00         [24] 1054 	mov	_game_over_i_65537_111,#0x00
                                   1055 ;	ledmatrix.c:259: for (j = 0; j < 8; j++)
      00037A                       1056 00225$:
      00037A 74 10            [12] 1057 	mov	a,#0x10
      00037C C3               [12] 1058 	clr	c
      00037D 95 4A            [12] 1059 	subb	a,_game_over_i_65537_111
      00037F FA               [12] 1060 	mov	r2,a
      000380 75 4B 00         [24] 1061 	mov	_game_over_j_65537_111,#0x00
      000383                       1062 00175$:
                                   1063 ;	ledmatrix.c:261: if (i + j < 8)
      000383 C0 02            [24] 1064 	push	ar2
      000385 E5 4A            [12] 1065 	mov	a,_game_over_i_65537_111
      000387 F5 52            [12] 1066 	mov	_game_over_sloc1_1_0,a
      000389 33               [12] 1067 	rlc	a
      00038A 95 E0            [12] 1068 	subb	a,acc
      00038C F5 53            [12] 1069 	mov	(_game_over_sloc1_1_0 + 1),a
      00038E E5 4B            [12] 1070 	mov	a,_game_over_j_65537_111
      000390 F5 54            [12] 1071 	mov	_game_over_sloc2_1_0,a
      000392 33               [12] 1072 	rlc	a
      000393 95 E0            [12] 1073 	subb	a,acc
      000395 F5 55            [12] 1074 	mov	(_game_over_sloc2_1_0 + 1),a
      000397 E5 54            [12] 1075 	mov	a,_game_over_sloc2_1_0
      000399 25 52            [12] 1076 	add	a,_game_over_sloc1_1_0
      00039B FA               [12] 1077 	mov	r2,a
      00039C E5 55            [12] 1078 	mov	a,(_game_over_sloc2_1_0 + 1)
      00039E 35 53            [12] 1079 	addc	a,(_game_over_sloc1_1_0 + 1)
      0003A0 FB               [12] 1080 	mov	r3,a
      0003A1 C3               [12] 1081 	clr	c
      0003A2 EA               [12] 1082 	mov	a,r2
      0003A3 94 08            [12] 1083 	subb	a,#0x08
      0003A5 EB               [12] 1084 	mov	a,r3
      0003A6 64 80            [12] 1085 	xrl	a,#0x80
      0003A8 94 80            [12] 1086 	subb	a,#0x80
      0003AA D0 02            [24] 1087 	pop	ar2
      0003AC 50 24            [24] 1088 	jnc	00118$
                                   1089 ;	ledmatrix.c:262: data_mat[j] = (floating_display[temp][(j + i)]) >> i;
      0003AE E5 4B            [12] 1090 	mov	a,_game_over_j_65537_111
      0003B0 24 2D            [12] 1091 	add	a,#_data_mat
      0003B2 F9               [12] 1092 	mov	r1,a
      0003B3 E5 4A            [12] 1093 	mov	a,_game_over_i_65537_111
      0003B5 25 4B            [12] 1094 	add	a,_game_over_j_65537_111
      0003B7 2C               [12] 1095 	add	a,r4
      0003B8 F5 82            [12] 1096 	mov	dpl,a
      0003BA E4               [12] 1097 	clr	a
      0003BB 3D               [12] 1098 	addc	a,r5
      0003BC F5 83            [12] 1099 	mov	dph,a
      0003BE E4               [12] 1100 	clr	a
      0003BF 93               [24] 1101 	movc	a,@a+dptr
      0003C0 FB               [12] 1102 	mov	r3,a
      0003C1 85 4A F0         [24] 1103 	mov	b,_game_over_i_65537_111
      0003C4 05 F0            [12] 1104 	inc	b
      0003C6 EB               [12] 1105 	mov	a,r3
      0003C7 80 02            [24] 1106 	sjmp	00424$
      0003C9                       1107 00423$:
      0003C9 C3               [12] 1108 	clr	c
      0003CA 13               [12] 1109 	rrc	a
      0003CB                       1110 00424$:
      0003CB D5 F0 FB         [24] 1111 	djnz	b,00423$
      0003CE F7               [12] 1112 	mov	@r1,a
      0003CF 02 04 68         [24] 1113 	ljmp	00176$
      0003D2                       1114 00118$:
                                   1115 ;	ledmatrix.c:263: else if (i + j >= 16)
      0003D2 C0 02            [24] 1116 	push	ar2
      0003D4 E5 54            [12] 1117 	mov	a,_game_over_sloc2_1_0
      0003D6 25 52            [12] 1118 	add	a,_game_over_sloc1_1_0
      0003D8 FA               [12] 1119 	mov	r2,a
      0003D9 E5 55            [12] 1120 	mov	a,(_game_over_sloc2_1_0 + 1)
      0003DB 35 53            [12] 1121 	addc	a,(_game_over_sloc1_1_0 + 1)
      0003DD FB               [12] 1122 	mov	r3,a
      0003DE C3               [12] 1123 	clr	c
      0003DF EA               [12] 1124 	mov	a,r2
      0003E0 94 10            [12] 1125 	subb	a,#0x10
      0003E2 EB               [12] 1126 	mov	a,r3
      0003E3 64 80            [12] 1127 	xrl	a,#0x80
      0003E5 94 80            [12] 1128 	subb	a,#0x80
      0003E7 D0 02            [24] 1129 	pop	ar2
      0003E9 40 76            [24] 1130 	jc	00115$
                                   1131 ;	ledmatrix.c:265: if (i + j >= 16)
      0003EB C0 02            [24] 1132 	push	ar2
      0003ED E5 54            [12] 1133 	mov	a,_game_over_sloc2_1_0
      0003EF 25 52            [12] 1134 	add	a,_game_over_sloc1_1_0
      0003F1 FA               [12] 1135 	mov	r2,a
      0003F2 E5 55            [12] 1136 	mov	a,(_game_over_sloc2_1_0 + 1)
      0003F4 35 53            [12] 1137 	addc	a,(_game_over_sloc1_1_0 + 1)
      0003F6 FB               [12] 1138 	mov	r3,a
      0003F7 C3               [12] 1139 	clr	c
      0003F8 EA               [12] 1140 	mov	a,r2
      0003F9 94 10            [12] 1141 	subb	a,#0x10
      0003FB EB               [12] 1142 	mov	a,r3
      0003FC 64 80            [12] 1143 	xrl	a,#0x80
      0003FE 94 80            [12] 1144 	subb	a,#0x80
      000400 D0 02            [24] 1145 	pop	ar2
      000402 40 54            [24] 1146 	jc	00112$
                                   1147 ;	ledmatrix.c:266: data_mat[j] = (floating_display[temp][(i + j) % 8]) << (16 - i);
      000404 C0 04            [24] 1148 	push	ar4
      000406 C0 05            [24] 1149 	push	ar5
      000408 E5 4B            [12] 1150 	mov	a,_game_over_j_65537_111
      00040A 24 2D            [12] 1151 	add	a,#_data_mat
      00040C F9               [12] 1152 	mov	r1,a
      00040D E5 54            [12] 1153 	mov	a,_game_over_sloc2_1_0
      00040F 25 52            [12] 1154 	add	a,_game_over_sloc1_1_0
      000411 F5 82            [12] 1155 	mov	dpl,a
      000413 E5 55            [12] 1156 	mov	a,(_game_over_sloc2_1_0 + 1)
      000415 35 53            [12] 1157 	addc	a,(_game_over_sloc1_1_0 + 1)
      000417 F5 83            [12] 1158 	mov	dph,a
      000419 75 0C 08         [24] 1159 	mov	__modsint_PARM_2,#0x08
      00041C 75 0D 00         [24] 1160 	mov	(__modsint_PARM_2 + 1),#0x00
      00041F C0 07            [24] 1161 	push	ar7
      000421 C0 06            [24] 1162 	push	ar6
      000423 C0 04            [24] 1163 	push	ar4
      000425 C0 02            [24] 1164 	push	ar2
      000427 C0 01            [24] 1165 	push	ar1
      000429 12 0F 8C         [24] 1166 	lcall	__modsint
      00042C AB 82            [24] 1167 	mov	r3,dpl
      00042E AD 83            [24] 1168 	mov	r5,dph
      000430 D0 01            [24] 1169 	pop	ar1
      000432 D0 02            [24] 1170 	pop	ar2
      000434 D0 04            [24] 1171 	pop	ar4
      000436 D0 06            [24] 1172 	pop	ar6
      000438 D0 07            [24] 1173 	pop	ar7
      00043A EB               [12] 1174 	mov	a,r3
      00043B 2E               [12] 1175 	add	a,r6
      00043C F5 82            [12] 1176 	mov	dpl,a
      00043E ED               [12] 1177 	mov	a,r5
      00043F 3F               [12] 1178 	addc	a,r7
      000440 F5 83            [12] 1179 	mov	dph,a
      000442 E4               [12] 1180 	clr	a
      000443 93               [24] 1181 	movc	a,@a+dptr
      000444 FD               [12] 1182 	mov	r5,a
      000445 8A F0            [24] 1183 	mov	b,r2
      000447 05 F0            [12] 1184 	inc	b
      000449 ED               [12] 1185 	mov	a,r5
      00044A 80 02            [24] 1186 	sjmp	00429$
      00044C                       1187 00427$:
      00044C 25 E0            [12] 1188 	add	a,acc
      00044E                       1189 00429$:
      00044E D5 F0 FB         [24] 1190 	djnz	b,00427$
      000451 F7               [12] 1191 	mov	@r1,a
      000452 D0 05            [24] 1192 	pop	ar5
      000454 D0 04            [24] 1193 	pop	ar4
      000456 80 10            [24] 1194 	sjmp	00176$
      000458                       1195 00112$:
                                   1196 ;	ledmatrix.c:268: data_mat[j] = 0;
      000458 E5 4B            [12] 1197 	mov	a,_game_over_j_65537_111
      00045A 24 2D            [12] 1198 	add	a,#_data_mat
      00045C F8               [12] 1199 	mov	r0,a
      00045D 76 00            [12] 1200 	mov	@r0,#0x00
      00045F 80 07            [24] 1201 	sjmp	00176$
      000461                       1202 00115$:
                                   1203 ;	ledmatrix.c:271: data_mat[j] = 0;
      000461 E5 4B            [12] 1204 	mov	a,_game_over_j_65537_111
      000463 24 2D            [12] 1205 	add	a,#_data_mat
      000465 F8               [12] 1206 	mov	r0,a
      000466 76 00            [12] 1207 	mov	@r0,#0x00
      000468                       1208 00176$:
                                   1209 ;	ledmatrix.c:259: for (j = 0; j < 8; j++)
      000468 05 4B            [12] 1210 	inc	_game_over_j_65537_111
      00046A C3               [12] 1211 	clr	c
      00046B E5 4B            [12] 1212 	mov	a,_game_over_j_65537_111
      00046D 64 80            [12] 1213 	xrl	a,#0x80
      00046F 94 88            [12] 1214 	subb	a,#0x88
      000471 50 03            [24] 1215 	jnc	00430$
      000473 02 03 83         [24] 1216 	ljmp	00175$
      000476                       1217 00430$:
                                   1218 ;	ledmatrix.c:277: for (t = 30; t; --t)
      000476 75 4C 1E         [24] 1219 	mov	_game_over_t_65537_111,#0x1e
      000479                       1220 00191$:
                                   1221 ;	ledmatrix.c:57: P2 = 0b11111111;
      000479 75 A0 FF         [24] 1222 	mov	_P2,#0xff
                                   1223 ;	ledmatrix.c:58: P0 = 0xFF;
      00047C 75 80 FF         [24] 1224 	mov	_P0,#0xff
                                   1225 ;	ledmatrix.c:38: for (char row = 0; row < 8; row++)
      00047F 75 4E 00         [24] 1226 	mov	_game_over_row_917505_148,#0x00
      000482                       1227 00184$:
      000482 74 F8            [12] 1228 	mov	a,#0x100 - 0x08
      000484 25 4E            [12] 1229 	add	a,_game_over_row_917505_148
      000486 40 78            [24] 1230 	jc	00139$
                                   1231 ;	ledmatrix.c:40: const char current_data = data_mat[row];
      000488 E5 4E            [12] 1232 	mov	a,_game_over_row_917505_148
      00048A 24 2D            [12] 1233 	add	a,#_data_mat
      00048C F9               [12] 1234 	mov	r1,a
      00048D 87 4F            [24] 1235 	mov	_game_over_current_data_983041_149,@r1
                                   1236 ;	ledmatrix.c:41: for (char i = 0; i < 8; i++)
      00048F 85 4E F0         [24] 1237 	mov	b,_game_over_row_917505_148
      000492 05 F0            [12] 1238 	inc	b
      000494 75 54 80         [24] 1239 	mov	_game_over_sloc2_1_0,#0x80
      000497 E4               [12] 1240 	clr	a
      000498 F5 55            [12] 1241 	mov	(_game_over_sloc2_1_0 + 1),a
      00049A 33               [12] 1242 	rlc	a
      00049B 92 D2            [24] 1243 	mov	ov,c
      00049D 80 0C            [24] 1244 	sjmp	00433$
      00049F                       1245 00432$:
      00049F A2 D2            [12] 1246 	mov	c,ov
      0004A1 E5 55            [12] 1247 	mov	a,(_game_over_sloc2_1_0 + 1)
      0004A3 13               [12] 1248 	rrc	a
      0004A4 F5 55            [12] 1249 	mov	(_game_over_sloc2_1_0 + 1),a
      0004A6 E5 54            [12] 1250 	mov	a,_game_over_sloc2_1_0
      0004A8 13               [12] 1251 	rrc	a
      0004A9 F5 54            [12] 1252 	mov	_game_over_sloc2_1_0,a
      0004AB                       1253 00433$:
      0004AB D5 F0 F1         [24] 1254 	djnz	b,00432$
      0004AE 75 50 00         [24] 1255 	mov	_game_over_i_1048577_150,#0x00
      0004B1                       1256 00178$:
      0004B1 74 F8            [12] 1257 	mov	a,#0x100 - 0x08
      0004B3 25 50            [12] 1258 	add	a,_game_over_i_1048577_150
      0004B5 40 2F            [24] 1259 	jc	00136$
                                   1260 ;	ledmatrix.c:43: SER = (0x80 >> row) & (0x80 >> i);
      0004B7 85 50 F0         [24] 1261 	mov	b,_game_over_i_1048577_150
      0004BA 05 F0            [12] 1262 	inc	b
      0004BC 7A 80            [12] 1263 	mov	r2,#0x80
      0004BE E4               [12] 1264 	clr	a
      0004BF FB               [12] 1265 	mov	r3,a
      0004C0 33               [12] 1266 	rlc	a
      0004C1 92 D2            [24] 1267 	mov	ov,c
      0004C3 80 08            [24] 1268 	sjmp	00436$
      0004C5                       1269 00435$:
      0004C5 A2 D2            [12] 1270 	mov	c,ov
      0004C7 EB               [12] 1271 	mov	a,r3
      0004C8 13               [12] 1272 	rrc	a
      0004C9 FB               [12] 1273 	mov	r3,a
      0004CA EA               [12] 1274 	mov	a,r2
      0004CB 13               [12] 1275 	rrc	a
      0004CC FA               [12] 1276 	mov	r2,a
      0004CD                       1277 00436$:
      0004CD D5 F0 F5         [24] 1278 	djnz	b,00435$
      0004D0 E5 54            [12] 1279 	mov	a,_game_over_sloc2_1_0
      0004D2 52 02            [12] 1280 	anl	ar2,a
      0004D4 E5 55            [12] 1281 	mov	a,(_game_over_sloc2_1_0 + 1)
      0004D6 52 03            [12] 1282 	anl	ar3,a
                                   1283 ;	assignBit
      0004D8 EA               [12] 1284 	mov	a,r2
      0004D9 4B               [12] 1285 	orl	a,r3
      0004DA 24 FF            [12] 1286 	add	a,#0xff
      0004DC 92 B4            [24] 1287 	mov	_P3_4,c
                                   1288 ;	ledmatrix.c:44: SCK = 1;
                                   1289 ;	assignBit
      0004DE D2 B6            [12] 1290 	setb	_P3_6
                                   1291 ;	ledmatrix.c:45: SCK = 0;
                                   1292 ;	assignBit
      0004E0 C2 B6            [12] 1293 	clr	_P3_6
                                   1294 ;	ledmatrix.c:41: for (char i = 0; i < 8; i++)
      0004E2 05 50            [12] 1295 	inc	_game_over_i_1048577_150
      0004E4 80 CB            [24] 1296 	sjmp	00178$
      0004E6                       1297 00136$:
                                   1298 ;	ledmatrix.c:47: P0 = 0xff;
      0004E6 75 80 FF         [24] 1299 	mov	_P0,#0xff
                                   1300 ;	ledmatrix.c:48: RCK = 1;
                                   1301 ;	assignBit
      0004E9 D2 B5            [12] 1302 	setb	_P3_5
                                   1303 ;	ledmatrix.c:49: RCK = 0;
                                   1304 ;	assignBit
      0004EB C2 B5            [12] 1305 	clr	_P3_5
                                   1306 ;	ledmatrix.c:50: P0 = ~current_data;
      0004ED E5 4F            [12] 1307 	mov	a,_game_over_current_data_983041_149
      0004EF F4               [12] 1308 	cpl	a
      0004F0 F5 80            [12] 1309 	mov	_P0,a
                                   1310 ;	ledmatrix.c:51: for (char i = 0; i < 5; i++)
      0004F2 7B 00            [12] 1311 	mov	r3,#0x00
      0004F4                       1312 00181$:
      0004F4 BB 05 00         [24] 1313 	cjne	r3,#0x05,00437$
      0004F7                       1314 00437$:
      0004F7 50 03            [24] 1315 	jnc	00185$
      0004F9 0B               [12] 1316 	inc	r3
      0004FA 80 F8            [24] 1317 	sjmp	00181$
      0004FC                       1318 00185$:
                                   1319 ;	ledmatrix.c:38: for (char row = 0; row < 8; row++)
      0004FC 05 4E            [12] 1320 	inc	_game_over_row_917505_148
                                   1321 ;	ledmatrix.c:59: display_led_mat();
      0004FE 80 82            [24] 1322 	sjmp	00184$
      000500                       1323 00139$:
                                   1324 ;	ledmatrix.c:61: for (i = 0; i < 100; i++)
      000500 7B 64            [12] 1325 	mov	r3,#0x64
      000502                       1326 00188$:
      000502 DB FE            [24] 1327 	djnz	r3,00188$
                                   1328 ;	ledmatrix.c:63: SER = 0;
                                   1329 ;	assignBit
      000504 C2 B4            [12] 1330 	clr	_P3_4
                                   1331 ;	ledmatrix.c:64: for (i = 0; i < 8; i++)
      000506 7B 00            [12] 1332 	mov	r3,#0x00
      000508                       1333 00189$:
                                   1334 ;	ledmatrix.c:66: SCK = 1;
                                   1335 ;	assignBit
      000508 D2 B6            [12] 1336 	setb	_P3_6
                                   1337 ;	ledmatrix.c:67: SCK = 0;
                                   1338 ;	assignBit
      00050A C2 B6            [12] 1339 	clr	_P3_6
                                   1340 ;	ledmatrix.c:64: for (i = 0; i < 8; i++)
      00050C 0B               [12] 1341 	inc	r3
      00050D BB 08 00         [24] 1342 	cjne	r3,#0x08,00440$
      000510                       1343 00440$:
      000510 40 F6            [24] 1344 	jc	00189$
                                   1345 ;	ledmatrix.c:69: RCK = 1;
      000512 C0 04            [24] 1346 	push	ar4
      000514 C0 05            [24] 1347 	push	ar5
                                   1348 ;	assignBit
      000516 D2 B5            [12] 1349 	setb	_P3_5
                                   1350 ;	ledmatrix.c:70: RCK = 0;
                                   1351 ;	assignBit
      000518 C2 B5            [12] 1352 	clr	_P3_5
                                   1353 ;	ledmatrix.c:71: display_number(point);
      00051A AA 2A            [24] 1354 	mov	r2,_point
      00051C 7B 00            [12] 1355 	mov	r3,#0x00
      00051E 7C 00            [12] 1356 	mov	r4,#0x00
      000520 7D 00            [12] 1357 	mov	r5,#0x00
      000522 8A 82            [24] 1358 	mov	dpl,r2
      000524 8B 83            [24] 1359 	mov	dph,r3
      000526 8C F0            [24] 1360 	mov	b,r4
      000528 ED               [12] 1361 	mov	a,r5
      000529 C0 07            [24] 1362 	push	ar7
      00052B C0 06            [24] 1363 	push	ar6
      00052D C0 05            [24] 1364 	push	ar5
      00052F C0 04            [24] 1365 	push	ar4
      000531 12 00 A2         [24] 1366 	lcall	_display_number
      000534 D0 04            [24] 1367 	pop	ar4
      000536 D0 05            [24] 1368 	pop	ar5
                                   1369 ;	ledmatrix.c:72: display_number(point);
      000538 AA 2A            [24] 1370 	mov	r2,_point
      00053A 7B 00            [12] 1371 	mov	r3,#0x00
      00053C 7C 00            [12] 1372 	mov	r4,#0x00
      00053E 7D 00            [12] 1373 	mov	r5,#0x00
      000540 8A 82            [24] 1374 	mov	dpl,r2
      000542 8B 83            [24] 1375 	mov	dph,r3
      000544 8C F0            [24] 1376 	mov	b,r4
      000546 ED               [12] 1377 	mov	a,r5
      000547 C0 05            [24] 1378 	push	ar5
      000549 C0 04            [24] 1379 	push	ar4
      00054B 12 00 A2         [24] 1380 	lcall	_display_number
      00054E D0 04            [24] 1381 	pop	ar4
      000550 D0 05            [24] 1382 	pop	ar5
                                   1383 ;	ledmatrix.c:73: display_number(point);
      000552 AA 2A            [24] 1384 	mov	r2,_point
      000554 7B 00            [12] 1385 	mov	r3,#0x00
      000556 7C 00            [12] 1386 	mov	r4,#0x00
      000558 7D 00            [12] 1387 	mov	r5,#0x00
      00055A 8A 82            [24] 1388 	mov	dpl,r2
      00055C 8B 83            [24] 1389 	mov	dph,r3
      00055E 8C F0            [24] 1390 	mov	b,r4
      000560 ED               [12] 1391 	mov	a,r5
      000561 C0 05            [24] 1392 	push	ar5
      000563 C0 04            [24] 1393 	push	ar4
      000565 12 00 A2         [24] 1394 	lcall	_display_number
      000568 D0 04            [24] 1395 	pop	ar4
      00056A D0 05            [24] 1396 	pop	ar5
      00056C D0 06            [24] 1397 	pop	ar6
      00056E D0 07            [24] 1398 	pop	ar7
                                   1399 ;	ledmatrix.c:277: for (t = 30; t; --t)
      000570 15 4C            [12] 1400 	dec	_game_over_t_65537_111
      000572 D0 05            [24] 1401 	pop	ar5
      000574 D0 04            [24] 1402 	pop	ar4
      000576 E5 4C            [12] 1403 	mov	a,_game_over_t_65537_111
      000578 60 03            [24] 1404 	jz	00442$
      00057A 02 04 79         [24] 1405 	ljmp	00191$
      00057D                       1406 00442$:
                                   1407 ;	ledmatrix.c:257: for (i = 0; i < 16; i++)
      00057D 05 4A            [12] 1408 	inc	_game_over_i_65537_111
      00057F C3               [12] 1409 	clr	c
      000580 E5 4A            [12] 1410 	mov	a,_game_over_i_65537_111
      000582 64 80            [12] 1411 	xrl	a,#0x80
      000584 94 90            [12] 1412 	subb	a,#0x90
      000586 50 03            [24] 1413 	jnc	00443$
      000588 02 03 7A         [24] 1414 	ljmp	00225$
      00058B                       1415 00443$:
                                   1416 ;	ledmatrix.c:284: }
      00058B 02 03 65         [24] 1417 	ljmp	00239$
                                   1418 ;------------------------------------------------------------
                                   1419 ;Allocation info for local variables in function 'update_food'
                                   1420 ;------------------------------------------------------------
                                   1421 ;cnt                       Allocated to registers 
                                   1422 ;i                         Allocated with name '_update_food_i_131072_157'
                                   1423 ;__2621440010              Allocated to registers 
                                   1424 ;__2621440011              Allocated to registers 
                                   1425 ;a                         Allocated to registers 
                                   1426 ;------------------------------------------------------------
                                   1427 ;	ledmatrix.c:285: void update_food(void)
                                   1428 ;	-----------------------------------------
                                   1429 ;	 function update_food
                                   1430 ;	-----------------------------------------
      00058E                       1431 _update_food:
                                   1432 ;	ledmatrix.c:287: char cnt = sqr_left;
      00058E AF 2B            [24] 1433 	mov	r7,_sqr_left
                                   1434 ;	ledmatrix.c:288: for (char i = 0; i < 64; i++)
      000590 7E 00            [12] 1435 	mov	r6,#0x00
      000592 8E 56            [24] 1436 	mov	_update_food_i_131072_157,r6
      000594                       1437 00109$:
      000594 74 C0            [12] 1438 	mov	a,#0x100 - 0x40
      000596 25 56            [12] 1439 	add	a,_update_food_i_131072_157
      000598 40 68            [24] 1440 	jc	00110$
                                   1441 ;	ledmatrix.c:105: return (data_mat[a >> 3] & (0x80 >> (a & 7))) != 0;
      00059A E5 56            [12] 1442 	mov	a,_update_food_i_131072_157
      00059C C4               [12] 1443 	swap	a
      00059D 23               [12] 1444 	rl	a
      00059E 54 1F            [12] 1445 	anl	a,#0x1f
      0005A0 24 2D            [12] 1446 	add	a,#_data_mat
      0005A2 F9               [12] 1447 	mov	r1,a
      0005A3 87 04            [24] 1448 	mov	ar4,@r1
      0005A5 74 07            [12] 1449 	mov	a,#0x07
      0005A7 55 56            [12] 1450 	anl	a,_update_food_i_131072_157
      0005A9 FB               [12] 1451 	mov	r3,a
      0005AA 8B F0            [24] 1452 	mov	b,r3
      0005AC 05 F0            [12] 1453 	inc	b
      0005AE 7B 80            [12] 1454 	mov	r3,#0x80
      0005B0 E4               [12] 1455 	clr	a
      0005B1 FA               [12] 1456 	mov	r2,a
      0005B2 33               [12] 1457 	rlc	a
      0005B3 92 D2            [24] 1458 	mov	ov,c
      0005B5 80 08            [24] 1459 	sjmp	00130$
      0005B7                       1460 00129$:
      0005B7 A2 D2            [12] 1461 	mov	c,ov
      0005B9 EA               [12] 1462 	mov	a,r2
      0005BA 13               [12] 1463 	rrc	a
      0005BB FA               [12] 1464 	mov	r2,a
      0005BC EB               [12] 1465 	mov	a,r3
      0005BD 13               [12] 1466 	rrc	a
      0005BE FB               [12] 1467 	mov	r3,a
      0005BF                       1468 00130$:
      0005BF D5 F0 F5         [24] 1469 	djnz	b,00129$
      0005C2 7D 00            [12] 1470 	mov	r5,#0x00
      0005C4 EC               [12] 1471 	mov	a,r4
      0005C5 52 03            [12] 1472 	anl	ar3,a
      0005C7 ED               [12] 1473 	mov	a,r5
      0005C8 52 02            [12] 1474 	anl	ar2,a
      0005CA EB               [12] 1475 	mov	a,r3
      0005CB 4A               [12] 1476 	orl	a,r2
      0005CC B4 01 00         [24] 1477 	cjne	a,#0x01,00131$
      0005CF                       1478 00131$:
      0005CF B3               [12] 1479 	cpl	c
                                   1480 ;	ledmatrix.c:290: if (value(i))
      0005D0 92 00            [24] 1481 	mov	_update_food_sloc0_1_0,c
      0005D2 40 28            [24] 1482 	jc	00105$
                                   1483 ;	ledmatrix.c:292: if (rand() % cnt == 0)
      0005D4 C0 07            [24] 1484 	push	ar7
      0005D6 C0 06            [24] 1485 	push	ar6
      0005D8 12 0D 90         [24] 1486 	lcall	_rand
      0005DB D0 06            [24] 1487 	pop	ar6
      0005DD D0 07            [24] 1488 	pop	ar7
      0005DF 8F 0C            [24] 1489 	mov	__modsint_PARM_2,r7
      0005E1 75 0D 00         [24] 1490 	mov	(__modsint_PARM_2 + 1),#0x00
      0005E4 C0 07            [24] 1491 	push	ar7
      0005E6 C0 06            [24] 1492 	push	ar6
      0005E8 12 0F 8C         [24] 1493 	lcall	__modsint
      0005EB E5 82            [12] 1494 	mov	a,dpl
      0005ED 85 83 F0         [24] 1495 	mov	b,dph
      0005F0 D0 06            [24] 1496 	pop	ar6
      0005F2 D0 07            [24] 1497 	pop	ar7
      0005F4 45 F0            [12] 1498 	orl	a,b
      0005F6 70 03            [24] 1499 	jnz	00104$
                                   1500 ;	ledmatrix.c:294: food = i;
      0005F8 8E 38            [24] 1501 	mov	_food,r6
                                   1502 ;	ledmatrix.c:295: return;
      0005FA 22               [24] 1503 	ret
      0005FB                       1504 00104$:
                                   1505 ;	ledmatrix.c:297: --cnt;
      0005FB 1F               [12] 1506 	dec	r7
      0005FC                       1507 00105$:
                                   1508 ;	ledmatrix.c:288: for (char i = 0; i < 64; i++)
      0005FC 05 56            [12] 1509 	inc	_update_food_i_131072_157
      0005FE AE 56            [24] 1510 	mov	r6,_update_food_i_131072_157
      000600 80 92            [24] 1511 	sjmp	00109$
      000602                       1512 00110$:
                                   1513 ;	ledmatrix.c:299: }
      000602 22               [24] 1514 	ret
                                   1515 ;------------------------------------------------------------
                                   1516 ;Allocation info for local variables in function 'update_game'
                                   1517 ;------------------------------------------------------------
                                   1518 ;__1310720013              Allocated to registers r7 
                                   1519 ;a                         Allocated to registers 
                                   1520 ;__1966080015              Allocated to registers r7 
                                   1521 ;a                         Allocated to registers 
                                   1522 ;__1966080017              Allocated to registers r7 
                                   1523 ;a                         Allocated to registers 
                                   1524 ;__1966080019              Allocated to registers r7 
                                   1525 ;dir                       Allocated to registers 
                                   1526 ;__1966090020              Allocated to registers r7 
                                   1527 ;tail                      Allocated to registers 
                                   1528 ;temp                      Allocated to registers r6 
                                   1529 ;------------------------------------------------------------
                                   1530 ;	ledmatrix.c:300: void update_game(void)
                                   1531 ;	-----------------------------------------
                                   1532 ;	 function update_game
                                   1533 ;	-----------------------------------------
      000603                       1534 _update_game:
                                   1535 ;	ledmatrix.c:302: if (head != food && (data_mat[(head / 8)] & (0x80 >> (head % 8))))
      000603 E5 38            [12] 1536 	mov	a,_food
      000605 B5 36 02         [24] 1537 	cjne	a,_head,00134$
      000608 80 4B            [24] 1538 	sjmp	00102$
      00060A                       1539 00134$:
      00060A AE 36            [24] 1540 	mov	r6,_head
      00060C 7F 00            [12] 1541 	mov	r7,#0x00
      00060E 75 0C 08         [24] 1542 	mov	__divsint_PARM_2,#0x08
      000611 8F 0D            [24] 1543 	mov	(__divsint_PARM_2 + 1),r7
      000613 8E 82            [24] 1544 	mov	dpl,r6
      000615 8F 83            [24] 1545 	mov	dph,r7
      000617 C0 07            [24] 1546 	push	ar7
      000619 C0 06            [24] 1547 	push	ar6
      00061B 12 0F C2         [24] 1548 	lcall	__divsint
      00061E AC 82            [24] 1549 	mov	r4,dpl
      000620 D0 06            [24] 1550 	pop	ar6
      000622 D0 07            [24] 1551 	pop	ar7
      000624 EC               [12] 1552 	mov	a,r4
      000625 24 2D            [12] 1553 	add	a,#_data_mat
      000627 F9               [12] 1554 	mov	r1,a
      000628 87 05            [24] 1555 	mov	ar5,@r1
      00062A 53 06 07         [24] 1556 	anl	ar6,#0x07
      00062D 7F 00            [12] 1557 	mov	r7,#0x00
      00062F 8E F0            [24] 1558 	mov	b,r6
      000631 05 F0            [12] 1559 	inc	b
      000633 7E 80            [12] 1560 	mov	r6,#0x80
      000635 E4               [12] 1561 	clr	a
      000636 33               [12] 1562 	rlc	a
      000637 92 D2            [24] 1563 	mov	ov,c
      000639 80 08            [24] 1564 	sjmp	00136$
      00063B                       1565 00135$:
      00063B A2 D2            [12] 1566 	mov	c,ov
      00063D EF               [12] 1567 	mov	a,r7
      00063E 13               [12] 1568 	rrc	a
      00063F FF               [12] 1569 	mov	r7,a
      000640 EE               [12] 1570 	mov	a,r6
      000641 13               [12] 1571 	rrc	a
      000642 FE               [12] 1572 	mov	r6,a
      000643                       1573 00136$:
      000643 D5 F0 F5         [24] 1574 	djnz	b,00135$
      000646 7C 00            [12] 1575 	mov	r4,#0x00
      000648 ED               [12] 1576 	mov	a,r5
      000649 52 06            [12] 1577 	anl	ar6,a
      00064B EC               [12] 1578 	mov	a,r4
      00064C 52 07            [12] 1579 	anl	ar7,a
      00064E EE               [12] 1580 	mov	a,r6
      00064F 4F               [12] 1581 	orl	a,r7
      000650 60 03            [24] 1582 	jz	00102$
                                   1583 ;	ledmatrix.c:304: game_over();
      000652 12 01 54         [24] 1584 	lcall	_game_over
      000655                       1585 00102$:
                                   1586 ;	ledmatrix.c:306: turn_on(head);
                                   1587 ;	ledmatrix.c:114: data_mat[a >> 3] |= 0x80 >> (a & 7);
      000655 E5 36            [12] 1588 	mov	a,_head
      000657 FF               [12] 1589 	mov	r7,a
      000658 C4               [12] 1590 	swap	a
      000659 23               [12] 1591 	rl	a
      00065A 54 1F            [12] 1592 	anl	a,#0x1f
      00065C 24 2D            [12] 1593 	add	a,#_data_mat
      00065E F9               [12] 1594 	mov	r1,a
      00065F 87 06            [24] 1595 	mov	ar6,@r1
      000661 53 07 07         [24] 1596 	anl	ar7,#0x07
      000664 8F F0            [24] 1597 	mov	b,r7
      000666 05 F0            [12] 1598 	inc	b
      000668 7F 80            [12] 1599 	mov	r7,#0x80
      00066A E4               [12] 1600 	clr	a
      00066B FD               [12] 1601 	mov	r5,a
      00066C 33               [12] 1602 	rlc	a
      00066D 92 D2            [24] 1603 	mov	ov,c
      00066F 80 08            [24] 1604 	sjmp	00139$
      000671                       1605 00138$:
      000671 A2 D2            [12] 1606 	mov	c,ov
      000673 ED               [12] 1607 	mov	a,r5
      000674 13               [12] 1608 	rrc	a
      000675 FD               [12] 1609 	mov	r5,a
      000676 EF               [12] 1610 	mov	a,r7
      000677 13               [12] 1611 	rrc	a
      000678 FF               [12] 1612 	mov	r7,a
      000679                       1613 00139$:
      000679 D5 F0 F5         [24] 1614 	djnz	b,00138$
      00067C EF               [12] 1615 	mov	a,r7
      00067D 4E               [12] 1616 	orl	a,r6
      00067E F7               [12] 1617 	mov	@r1,a
                                   1618 ;	ledmatrix.c:307: if (head == food)
      00067F E5 38            [12] 1619 	mov	a,_food
      000681 B5 36 32         [24] 1620 	cjne	a,_head,00110$
                                   1621 ;	ledmatrix.c:309: ++point;
      000684 05 2A            [12] 1622 	inc	_point
                                   1623 ;	ledmatrix.c:311: update_food();
      000686 12 05 8E         [24] 1624 	lcall	_update_food
                                   1625 ;	ledmatrix.c:313: turn_on(food);
                                   1626 ;	ledmatrix.c:114: data_mat[a >> 3] |= 0x80 >> (a & 7);
      000689 E5 38            [12] 1627 	mov	a,_food
      00068B FF               [12] 1628 	mov	r7,a
      00068C C4               [12] 1629 	swap	a
      00068D 23               [12] 1630 	rl	a
      00068E 54 1F            [12] 1631 	anl	a,#0x1f
      000690 24 2D            [12] 1632 	add	a,#_data_mat
      000692 F9               [12] 1633 	mov	r1,a
      000693 87 06            [24] 1634 	mov	ar6,@r1
      000695 53 07 07         [24] 1635 	anl	ar7,#0x07
      000698 8F F0            [24] 1636 	mov	b,r7
      00069A 05 F0            [12] 1637 	inc	b
      00069C 7F 80            [12] 1638 	mov	r7,#0x80
      00069E E4               [12] 1639 	clr	a
      00069F FD               [12] 1640 	mov	r5,a
      0006A0 33               [12] 1641 	rlc	a
      0006A1 92 D2            [24] 1642 	mov	ov,c
      0006A3 80 08            [24] 1643 	sjmp	00143$
      0006A5                       1644 00142$:
      0006A5 A2 D2            [12] 1645 	mov	c,ov
      0006A7 ED               [12] 1646 	mov	a,r5
      0006A8 13               [12] 1647 	rrc	a
      0006A9 FD               [12] 1648 	mov	r5,a
      0006AA EF               [12] 1649 	mov	a,r7
      0006AB 13               [12] 1650 	rrc	a
      0006AC FF               [12] 1651 	mov	r7,a
      0006AD                       1652 00143$:
      0006AD D5 F0 F5         [24] 1653 	djnz	b,00142$
      0006B0 EF               [12] 1654 	mov	a,r7
      0006B1 4E               [12] 1655 	orl	a,r6
      0006B2 F7               [12] 1656 	mov	@r1,a
                                   1657 ;	ledmatrix.c:314: --sqr_left;
      0006B3 15 2B            [12] 1658 	dec	_sqr_left
                                   1659 ;	ledmatrix.c:315: return;
      0006B5 22               [24] 1660 	ret
      0006B6                       1661 00110$:
                                   1662 ;	ledmatrix.c:319: turn_off(tail);
                                   1663 ;	ledmatrix.c:118: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
      0006B6 E5 37            [12] 1664 	mov	a,_tail
      0006B8 FF               [12] 1665 	mov	r7,a
      0006B9 C4               [12] 1666 	swap	a
      0006BA 23               [12] 1667 	rl	a
      0006BB 54 1F            [12] 1668 	anl	a,#0x1f
      0006BD 24 2D            [12] 1669 	add	a,#_data_mat
      0006BF F9               [12] 1670 	mov	r1,a
      0006C0 87 06            [24] 1671 	mov	ar6,@r1
      0006C2 53 07 07         [24] 1672 	anl	ar7,#0x07
      0006C5 8F F0            [24] 1673 	mov	b,r7
      0006C7 05 F0            [12] 1674 	inc	b
      0006C9 7F 80            [12] 1675 	mov	r7,#0x80
      0006CB E4               [12] 1676 	clr	a
      0006CC FD               [12] 1677 	mov	r5,a
      0006CD 33               [12] 1678 	rlc	a
      0006CE 92 D2            [24] 1679 	mov	ov,c
      0006D0 80 08            [24] 1680 	sjmp	00145$
      0006D2                       1681 00144$:
      0006D2 A2 D2            [12] 1682 	mov	c,ov
      0006D4 ED               [12] 1683 	mov	a,r5
      0006D5 13               [12] 1684 	rrc	a
      0006D6 FD               [12] 1685 	mov	r5,a
      0006D7 EF               [12] 1686 	mov	a,r7
      0006D8 13               [12] 1687 	rrc	a
      0006D9 FF               [12] 1688 	mov	r7,a
      0006DA                       1689 00145$:
      0006DA D5 F0 F5         [24] 1690 	djnz	b,00144$
      0006DD EF               [12] 1691 	mov	a,r7
      0006DE F4               [12] 1692 	cpl	a
      0006DF 5E               [12] 1693 	anl	a,r6
      0006E0 F7               [12] 1694 	mov	@r1,a
                                   1695 ;	ledmatrix.c:320: char dir = get_direction(tail);
      0006E1 AF 37            [24] 1696 	mov	r7,_tail
                                   1697 ;	ledmatrix.c:78: char temp = 0x80 >> (tail & 7);
      0006E3 74 07            [12] 1698 	mov	a,#0x07
      0006E5 5F               [12] 1699 	anl	a,r7
      0006E6 FE               [12] 1700 	mov	r6,a
      0006E7 8E F0            [24] 1701 	mov	b,r6
      0006E9 05 F0            [12] 1702 	inc	b
      0006EB 7E 80            [12] 1703 	mov	r6,#0x80
      0006ED E4               [12] 1704 	clr	a
      0006EE FD               [12] 1705 	mov	r5,a
      0006EF 33               [12] 1706 	rlc	a
      0006F0 92 D2            [24] 1707 	mov	ov,c
      0006F2 80 08            [24] 1708 	sjmp	00147$
      0006F4                       1709 00146$:
      0006F4 A2 D2            [12] 1710 	mov	c,ov
      0006F6 ED               [12] 1711 	mov	a,r5
      0006F7 13               [12] 1712 	rrc	a
      0006F8 FD               [12] 1713 	mov	r5,a
      0006F9 EE               [12] 1714 	mov	a,r6
      0006FA 13               [12] 1715 	rrc	a
      0006FB FE               [12] 1716 	mov	r6,a
      0006FC                       1717 00147$:
      0006FC D5 F0 F5         [24] 1718 	djnz	b,00146$
                                   1719 ;	ledmatrix.c:320: char dir = get_direction(tail);
      0006FF EF               [12] 1720 	mov	a,r7
      000700 C4               [12] 1721 	swap	a
      000701 23               [12] 1722 	rl	a
      000702 54 1F            [12] 1723 	anl	a,#0x1f
      000704 FF               [12] 1724 	mov	r7,a
      000705 24 41            [12] 1725 	add	a,#_bit1
      000707 F9               [12] 1726 	mov	r1,a
      000708 87 05            [24] 1727 	mov	ar5,@r1
      00070A EE               [12] 1728 	mov	a,r6
      00070B 52 05            [12] 1729 	anl	ar5,a
      00070D ED               [12] 1730 	mov	a,r5
      00070E B4 01 00         [24] 1731 	cjne	a,#0x01,00148$
      000711                       1732 00148$:
      000711 B3               [12] 1733 	cpl	c
      000712 92 01            [24] 1734 	mov	_update_game_sloc0_1_0,c
      000714 E4               [12] 1735 	clr	a
      000715 33               [12] 1736 	rlc	a
      000716 25 E0            [12] 1737 	add	a,acc
      000718 FD               [12] 1738 	mov	r5,a
      000719 EF               [12] 1739 	mov	a,r7
      00071A 24 39            [12] 1740 	add	a,#_bit0
      00071C F9               [12] 1741 	mov	r1,a
      00071D E7               [12] 1742 	mov	a,@r1
      00071E 52 06            [12] 1743 	anl	ar6,a
      000720 EE               [12] 1744 	mov	a,r6
      000721 B4 01 00         [24] 1745 	cjne	a,#0x01,00149$
      000724                       1746 00149$:
      000724 B3               [12] 1747 	cpl	c
      000725 92 01            [24] 1748 	mov	_update_game_sloc0_1_0,c
      000727 E4               [12] 1749 	clr	a
      000728 33               [12] 1750 	rlc	a
      000729 FF               [12] 1751 	mov	r7,a
      00072A ED               [12] 1752 	mov	a,r5
      00072B 42 07            [12] 1753 	orl	ar7,a
                                   1754 ;	ledmatrix.c:321: switch (dir)
      00072D EF               [12] 1755 	mov	a,r7
      00072E 24 FC            [12] 1756 	add	a,#0xff - 0x03
      000730 40 22            [24] 1757 	jc	00116$
      000732 EF               [12] 1758 	mov	a,r7
      000733 2F               [12] 1759 	add	a,r7
                                   1760 ;	ledmatrix.c:323: case dir_left:
      000734 90 07 38         [24] 1761 	mov	dptr,#00151$
      000737 73               [24] 1762 	jmp	@a+dptr
      000738                       1763 00151$:
      000738 80 06            [24] 1764 	sjmp	00104$
      00073A 80 07            [24] 1765 	sjmp	00105$
      00073C 80 08            [24] 1766 	sjmp	00106$
      00073E 80 0D            [24] 1767 	sjmp	00107$
      000740                       1768 00104$:
                                   1769 ;	ledmatrix.c:324: --tail;
      000740 15 37            [12] 1770 	dec	_tail
                                   1771 ;	ledmatrix.c:325: break;
                                   1772 ;	ledmatrix.c:326: case dir_right:
      000742 22               [24] 1773 	ret
      000743                       1774 00105$:
                                   1775 ;	ledmatrix.c:327: ++tail;
      000743 05 37            [12] 1776 	inc	_tail
                                   1777 ;	ledmatrix.c:328: break;
                                   1778 ;	ledmatrix.c:329: case dir_up:
      000745 22               [24] 1779 	ret
      000746                       1780 00106$:
                                   1781 ;	ledmatrix.c:330: tail -= 8;
      000746 E5 37            [12] 1782 	mov	a,_tail
      000748 24 F8            [12] 1783 	add	a,#0xf8
      00074A F5 37            [12] 1784 	mov	_tail,a
                                   1785 ;	ledmatrix.c:331: break;
                                   1786 ;	ledmatrix.c:332: case dir_down:
      00074C 22               [24] 1787 	ret
      00074D                       1788 00107$:
                                   1789 ;	ledmatrix.c:333: tail += 8;
      00074D AF 37            [24] 1790 	mov	r7,_tail
      00074F 74 08            [12] 1791 	mov	a,#0x08
      000751 2F               [12] 1792 	add	a,r7
      000752 F5 37            [12] 1793 	mov	_tail,a
                                   1794 ;	ledmatrix.c:335: }
      000754                       1795 00116$:
                                   1796 ;	ledmatrix.c:337: }
      000754 22               [24] 1797 	ret
                                   1798 ;------------------------------------------------------------
                                   1799 ;Allocation info for local variables in function 'go_up'
                                   1800 ;------------------------------------------------------------
                                   1801 ;__1310720022              Allocated to registers r7 
                                   1802 ;__1310720023              Allocated to registers 
                                   1803 ;tail                      Allocated to registers r6 
                                   1804 ;direction                 Allocated to registers 
                                   1805 ;temp                      Allocated to registers r5 
                                   1806 ;------------------------------------------------------------
                                   1807 ;	ledmatrix.c:339: void go_up(void)
                                   1808 ;	-----------------------------------------
                                   1809 ;	 function go_up
                                   1810 ;	-----------------------------------------
      000755                       1811 _go_up:
                                   1812 ;	ledmatrix.c:341: if (head < 8)
      000755 74 F8            [12] 1813 	mov	a,#0x100 - 0x08
      000757 25 36            [12] 1814 	add	a,_head
      000759 40 03            [24] 1815 	jc	00102$
                                   1816 ;	ledmatrix.c:342: game_over();
      00075B 12 01 54         [24] 1817 	lcall	_game_over
      00075E                       1818 00102$:
                                   1819 ;	ledmatrix.c:343: if (cur_dir == dir_down)
      00075E 74 03            [12] 1820 	mov	a,#0x03
      000760 B5 2C 01         [24] 1821 	cjne	a,_cur_dir,00104$
                                   1822 ;	ledmatrix.c:344: return;
      000763 22               [24] 1823 	ret
      000764                       1824 00104$:
                                   1825 ;	ledmatrix.c:345: update_direction(head, dir_up);
      000764 AF 36            [24] 1826 	mov	r7,_head
      000766 8F 06            [24] 1827 	mov	ar6,r7
                                   1828 ;	ledmatrix.c:84: char temp = 0x80 >> (tail & 7);
      000768 74 07            [12] 1829 	mov	a,#0x07
      00076A 5F               [12] 1830 	anl	a,r7
      00076B FD               [12] 1831 	mov	r5,a
      00076C 8D F0            [24] 1832 	mov	b,r5
      00076E 05 F0            [12] 1833 	inc	b
      000770 7D 80            [12] 1834 	mov	r5,#0x80
      000772 E4               [12] 1835 	clr	a
      000773 FC               [12] 1836 	mov	r4,a
      000774 33               [12] 1837 	rlc	a
      000775 92 D2            [24] 1838 	mov	ov,c
      000777 80 08            [24] 1839 	sjmp	00126$
      000779                       1840 00125$:
      000779 A2 D2            [12] 1841 	mov	c,ov
      00077B EC               [12] 1842 	mov	a,r4
      00077C 13               [12] 1843 	rrc	a
      00077D FC               [12] 1844 	mov	r4,a
      00077E ED               [12] 1845 	mov	a,r5
      00077F 13               [12] 1846 	rrc	a
      000780 FD               [12] 1847 	mov	r5,a
      000781                       1848 00126$:
      000781 D5 F0 F5         [24] 1849 	djnz	b,00125$
                                   1850 ;	ledmatrix.c:85: bit1[tail >> 3] &= ~temp;
      000784 EF               [12] 1851 	mov	a,r7
      000785 C4               [12] 1852 	swap	a
      000786 23               [12] 1853 	rl	a
      000787 54 1F            [12] 1854 	anl	a,#0x1f
      000789 24 41            [12] 1855 	add	a,#_bit1
      00078B F9               [12] 1856 	mov	r1,a
      00078C 87 07            [24] 1857 	mov	ar7,@r1
      00078E ED               [12] 1858 	mov	a,r5
      00078F F4               [12] 1859 	cpl	a
      000790 5F               [12] 1860 	anl	a,r7
      000791 F7               [12] 1861 	mov	@r1,a
                                   1862 ;	ledmatrix.c:88: bit1[tail >> 3] |= temp;
      000792 EE               [12] 1863 	mov	a,r6
      000793 C4               [12] 1864 	swap	a
      000794 23               [12] 1865 	rl	a
      000795 54 1F            [12] 1866 	anl	a,#0x1f
      000797 FE               [12] 1867 	mov	r6,a
      000798 24 41            [12] 1868 	add	a,#_bit1
      00079A F9               [12] 1869 	mov	r1,a
      00079B 87 07            [24] 1870 	mov	ar7,@r1
      00079D ED               [12] 1871 	mov	a,r5
      00079E 4F               [12] 1872 	orl	a,r7
      00079F F7               [12] 1873 	mov	@r1,a
                                   1874 ;	ledmatrix.c:93: bit0[tail >> 3] &= ~temp;
      0007A0 EE               [12] 1875 	mov	a,r6
      0007A1 24 39            [12] 1876 	add	a,#_bit0
      0007A3 F9               [12] 1877 	mov	r1,a
      0007A4 87 07            [24] 1878 	mov	ar7,@r1
      0007A6 ED               [12] 1879 	mov	a,r5
      0007A7 F4               [12] 1880 	cpl	a
      0007A8 5F               [12] 1881 	anl	a,r7
      0007A9 F7               [12] 1882 	mov	@r1,a
                                   1883 ;	ledmatrix.c:346: head = head - 8;
      0007AA E5 36            [12] 1884 	mov	a,_head
      0007AC 24 F8            [12] 1885 	add	a,#0xf8
      0007AE F5 36            [12] 1886 	mov	_head,a
                                   1887 ;	ledmatrix.c:347: cur_dir = dir_up;
      0007B0 75 2C 02         [24] 1888 	mov	_cur_dir,#0x02
                                   1889 ;	ledmatrix.c:348: update_game();
                                   1890 ;	ledmatrix.c:349: }
      0007B3 02 06 03         [24] 1891 	ljmp	_update_game
                                   1892 ;------------------------------------------------------------
                                   1893 ;Allocation info for local variables in function 'go_down'
                                   1894 ;------------------------------------------------------------
                                   1895 ;__1310720025              Allocated to registers r7 
                                   1896 ;__1310720026              Allocated to registers 
                                   1897 ;tail                      Allocated to registers r6 
                                   1898 ;direction                 Allocated to registers 
                                   1899 ;temp                      Allocated to registers r5 
                                   1900 ;------------------------------------------------------------
                                   1901 ;	ledmatrix.c:350: void go_down(void)
                                   1902 ;	-----------------------------------------
                                   1903 ;	 function go_down
                                   1904 ;	-----------------------------------------
      0007B6                       1905 _go_down:
                                   1906 ;	ledmatrix.c:352: if (head >= 56)
      0007B6 74 C8            [12] 1907 	mov	a,#0x100 - 0x38
      0007B8 25 36            [12] 1908 	add	a,_head
      0007BA 50 03            [24] 1909 	jnc	00102$
                                   1910 ;	ledmatrix.c:353: game_over();
      0007BC 12 01 54         [24] 1911 	lcall	_game_over
      0007BF                       1912 00102$:
                                   1913 ;	ledmatrix.c:354: if (cur_dir == dir_up)
      0007BF 74 02            [12] 1914 	mov	a,#0x02
      0007C1 B5 2C 01         [24] 1915 	cjne	a,_cur_dir,00104$
                                   1916 ;	ledmatrix.c:355: return;
      0007C4 22               [24] 1917 	ret
      0007C5                       1918 00104$:
                                   1919 ;	ledmatrix.c:356: update_direction(head, dir_down);
      0007C5 AF 36            [24] 1920 	mov	r7,_head
      0007C7 8F 06            [24] 1921 	mov	ar6,r7
                                   1922 ;	ledmatrix.c:84: char temp = 0x80 >> (tail & 7);
      0007C9 74 07            [12] 1923 	mov	a,#0x07
      0007CB 5F               [12] 1924 	anl	a,r7
      0007CC FD               [12] 1925 	mov	r5,a
      0007CD 8D F0            [24] 1926 	mov	b,r5
      0007CF 05 F0            [12] 1927 	inc	b
      0007D1 7D 80            [12] 1928 	mov	r5,#0x80
      0007D3 E4               [12] 1929 	clr	a
      0007D4 FC               [12] 1930 	mov	r4,a
      0007D5 33               [12] 1931 	rlc	a
      0007D6 92 D2            [24] 1932 	mov	ov,c
      0007D8 80 08            [24] 1933 	sjmp	00126$
      0007DA                       1934 00125$:
      0007DA A2 D2            [12] 1935 	mov	c,ov
      0007DC EC               [12] 1936 	mov	a,r4
      0007DD 13               [12] 1937 	rrc	a
      0007DE FC               [12] 1938 	mov	r4,a
      0007DF ED               [12] 1939 	mov	a,r5
      0007E0 13               [12] 1940 	rrc	a
      0007E1 FD               [12] 1941 	mov	r5,a
      0007E2                       1942 00126$:
      0007E2 D5 F0 F5         [24] 1943 	djnz	b,00125$
                                   1944 ;	ledmatrix.c:85: bit1[tail >> 3] &= ~temp;
      0007E5 EF               [12] 1945 	mov	a,r7
      0007E6 C4               [12] 1946 	swap	a
      0007E7 23               [12] 1947 	rl	a
      0007E8 54 1F            [12] 1948 	anl	a,#0x1f
      0007EA 24 41            [12] 1949 	add	a,#_bit1
      0007EC F9               [12] 1950 	mov	r1,a
      0007ED 87 07            [24] 1951 	mov	ar7,@r1
      0007EF ED               [12] 1952 	mov	a,r5
      0007F0 F4               [12] 1953 	cpl	a
      0007F1 5F               [12] 1954 	anl	a,r7
      0007F2 F7               [12] 1955 	mov	@r1,a
                                   1956 ;	ledmatrix.c:88: bit1[tail >> 3] |= temp;
      0007F3 EE               [12] 1957 	mov	a,r6
      0007F4 C4               [12] 1958 	swap	a
      0007F5 23               [12] 1959 	rl	a
      0007F6 54 1F            [12] 1960 	anl	a,#0x1f
      0007F8 FE               [12] 1961 	mov	r6,a
      0007F9 24 41            [12] 1962 	add	a,#_bit1
      0007FB F9               [12] 1963 	mov	r1,a
      0007FC 87 07            [24] 1964 	mov	ar7,@r1
      0007FE ED               [12] 1965 	mov	a,r5
      0007FF 4F               [12] 1966 	orl	a,r7
      000800 F7               [12] 1967 	mov	@r1,a
                                   1968 ;	ledmatrix.c:93: bit0[tail >> 3] &= ~temp;
      000801 EE               [12] 1969 	mov	a,r6
      000802 24 39            [12] 1970 	add	a,#_bit0
      000804 F9               [12] 1971 	mov	r1,a
      000805 87 07            [24] 1972 	mov	ar7,@r1
      000807 ED               [12] 1973 	mov	a,r5
      000808 F4               [12] 1974 	cpl	a
      000809 5F               [12] 1975 	anl	a,r7
      00080A F7               [12] 1976 	mov	@r1,a
                                   1977 ;	ledmatrix.c:96: bit0[tail >> 3] |= temp;
      00080B 87 07            [24] 1978 	mov	ar7,@r1
      00080D ED               [12] 1979 	mov	a,r5
      00080E 4F               [12] 1980 	orl	a,r7
      00080F F7               [12] 1981 	mov	@r1,a
                                   1982 ;	ledmatrix.c:357: head = head + 8;
      000810 AF 36            [24] 1983 	mov	r7,_head
      000812 74 08            [12] 1984 	mov	a,#0x08
      000814 2F               [12] 1985 	add	a,r7
      000815 F5 36            [12] 1986 	mov	_head,a
                                   1987 ;	ledmatrix.c:358: cur_dir = dir_down;
      000817 75 2C 03         [24] 1988 	mov	_cur_dir,#0x03
                                   1989 ;	ledmatrix.c:359: update_game();
                                   1990 ;	ledmatrix.c:360: }
      00081A 02 06 03         [24] 1991 	ljmp	_update_game
                                   1992 ;------------------------------------------------------------
                                   1993 ;Allocation info for local variables in function 'go_left'
                                   1994 ;------------------------------------------------------------
                                   1995 ;__1310720028              Allocated to registers r7 
                                   1996 ;__1310720029              Allocated to registers 
                                   1997 ;tail                      Allocated to registers r6 
                                   1998 ;direction                 Allocated to registers 
                                   1999 ;temp                      Allocated to registers r5 
                                   2000 ;------------------------------------------------------------
                                   2001 ;	ledmatrix.c:361: void go_left(void)
                                   2002 ;	-----------------------------------------
                                   2003 ;	 function go_left
                                   2004 ;	-----------------------------------------
      00081D                       2005 _go_left:
                                   2006 ;	ledmatrix.c:363: if (head % 8 == 0)
      00081D E5 36            [12] 2007 	mov	a,_head
      00081F 54 07            [12] 2008 	anl	a,#0x07
      000821 60 02            [24] 2009 	jz	00123$
      000823 80 03            [24] 2010 	sjmp	00102$
      000825                       2011 00123$:
                                   2012 ;	ledmatrix.c:364: game_over();
      000825 12 01 54         [24] 2013 	lcall	_game_over
      000828                       2014 00102$:
                                   2015 ;	ledmatrix.c:365: if (cur_dir == dir_right)
      000828 74 01            [12] 2016 	mov	a,#0x01
      00082A B5 2C 01         [24] 2017 	cjne	a,_cur_dir,00104$
                                   2018 ;	ledmatrix.c:366: return;
      00082D 22               [24] 2019 	ret
      00082E                       2020 00104$:
                                   2021 ;	ledmatrix.c:367: update_direction(head, dir_left);
      00082E AF 36            [24] 2022 	mov	r7,_head
      000830 8F 06            [24] 2023 	mov	ar6,r7
                                   2024 ;	ledmatrix.c:84: char temp = 0x80 >> (tail & 7);
      000832 74 07            [12] 2025 	mov	a,#0x07
      000834 5F               [12] 2026 	anl	a,r7
      000835 FD               [12] 2027 	mov	r5,a
      000836 8D F0            [24] 2028 	mov	b,r5
      000838 05 F0            [12] 2029 	inc	b
      00083A 7D 80            [12] 2030 	mov	r5,#0x80
      00083C E4               [12] 2031 	clr	a
      00083D FC               [12] 2032 	mov	r4,a
      00083E 33               [12] 2033 	rlc	a
      00083F 92 D2            [24] 2034 	mov	ov,c
      000841 80 08            [24] 2035 	sjmp	00127$
      000843                       2036 00126$:
      000843 A2 D2            [12] 2037 	mov	c,ov
      000845 EC               [12] 2038 	mov	a,r4
      000846 13               [12] 2039 	rrc	a
      000847 FC               [12] 2040 	mov	r4,a
      000848 ED               [12] 2041 	mov	a,r5
      000849 13               [12] 2042 	rrc	a
      00084A FD               [12] 2043 	mov	r5,a
      00084B                       2044 00127$:
      00084B D5 F0 F5         [24] 2045 	djnz	b,00126$
                                   2046 ;	ledmatrix.c:85: bit1[tail >> 3] &= ~temp;
      00084E EF               [12] 2047 	mov	a,r7
      00084F C4               [12] 2048 	swap	a
      000850 23               [12] 2049 	rl	a
      000851 54 1F            [12] 2050 	anl	a,#0x1f
      000853 24 41            [12] 2051 	add	a,#_bit1
      000855 F9               [12] 2052 	mov	r1,a
      000856 87 07            [24] 2053 	mov	ar7,@r1
      000858 ED               [12] 2054 	mov	a,r5
      000859 F4               [12] 2055 	cpl	a
      00085A 5F               [12] 2056 	anl	a,r7
      00085B F7               [12] 2057 	mov	@r1,a
                                   2058 ;	ledmatrix.c:93: bit0[tail >> 3] &= ~temp;
      00085C EE               [12] 2059 	mov	a,r6
      00085D C4               [12] 2060 	swap	a
      00085E 23               [12] 2061 	rl	a
      00085F 54 1F            [12] 2062 	anl	a,#0x1f
      000861 24 39            [12] 2063 	add	a,#_bit0
      000863 F9               [12] 2064 	mov	r1,a
      000864 87 07            [24] 2065 	mov	ar7,@r1
      000866 ED               [12] 2066 	mov	a,r5
      000867 F4               [12] 2067 	cpl	a
      000868 5F               [12] 2068 	anl	a,r7
      000869 F7               [12] 2069 	mov	@r1,a
                                   2070 ;	ledmatrix.c:368: --head;
      00086A 15 36            [12] 2071 	dec	_head
                                   2072 ;	ledmatrix.c:369: cur_dir = dir_left;
      00086C 75 2C 00         [24] 2073 	mov	_cur_dir,#0x00
                                   2074 ;	ledmatrix.c:370: update_game();
                                   2075 ;	ledmatrix.c:371: }
      00086F 02 06 03         [24] 2076 	ljmp	_update_game
                                   2077 ;------------------------------------------------------------
                                   2078 ;Allocation info for local variables in function 'go_right'
                                   2079 ;------------------------------------------------------------
                                   2080 ;__1310720031              Allocated to registers r7 
                                   2081 ;__1310720032              Allocated to registers 
                                   2082 ;tail                      Allocated to registers r6 
                                   2083 ;direction                 Allocated to registers 
                                   2084 ;temp                      Allocated to registers r5 
                                   2085 ;------------------------------------------------------------
                                   2086 ;	ledmatrix.c:372: void go_right(void)
                                   2087 ;	-----------------------------------------
                                   2088 ;	 function go_right
                                   2089 ;	-----------------------------------------
      000872                       2090 _go_right:
                                   2091 ;	ledmatrix.c:374: if (head % 8 == 7)
      000872 74 07            [12] 2092 	mov	a,#0x07
      000874 55 36            [12] 2093 	anl	a,_head
      000876 FE               [12] 2094 	mov	r6,a
      000877 7F 00            [12] 2095 	mov	r7,#0x00
      000879 BE 07 06         [24] 2096 	cjne	r6,#0x07,00102$
      00087C BF 00 03         [24] 2097 	cjne	r7,#0x00,00102$
                                   2098 ;	ledmatrix.c:375: game_over();
      00087F 12 01 54         [24] 2099 	lcall	_game_over
      000882                       2100 00102$:
                                   2101 ;	ledmatrix.c:376: if (cur_dir == dir_left)
      000882 E5 2C            [12] 2102 	mov	a,_cur_dir
      000884 70 01            [24] 2103 	jnz	00104$
                                   2104 ;	ledmatrix.c:377: return;
      000886 22               [24] 2105 	ret
      000887                       2106 00104$:
                                   2107 ;	ledmatrix.c:378: update_direction(head, dir_right);
      000887 AF 36            [24] 2108 	mov	r7,_head
      000889 8F 06            [24] 2109 	mov	ar6,r7
                                   2110 ;	ledmatrix.c:84: char temp = 0x80 >> (tail & 7);
      00088B 74 07            [12] 2111 	mov	a,#0x07
      00088D 5F               [12] 2112 	anl	a,r7
      00088E FD               [12] 2113 	mov	r5,a
      00088F 8D F0            [24] 2114 	mov	b,r5
      000891 05 F0            [12] 2115 	inc	b
      000893 7D 80            [12] 2116 	mov	r5,#0x80
      000895 E4               [12] 2117 	clr	a
      000896 FC               [12] 2118 	mov	r4,a
      000897 33               [12] 2119 	rlc	a
      000898 92 D2            [24] 2120 	mov	ov,c
      00089A 80 08            [24] 2121 	sjmp	00126$
      00089C                       2122 00125$:
      00089C A2 D2            [12] 2123 	mov	c,ov
      00089E EC               [12] 2124 	mov	a,r4
      00089F 13               [12] 2125 	rrc	a
      0008A0 FC               [12] 2126 	mov	r4,a
      0008A1 ED               [12] 2127 	mov	a,r5
      0008A2 13               [12] 2128 	rrc	a
      0008A3 FD               [12] 2129 	mov	r5,a
      0008A4                       2130 00126$:
      0008A4 D5 F0 F5         [24] 2131 	djnz	b,00125$
                                   2132 ;	ledmatrix.c:85: bit1[tail >> 3] &= ~temp;
      0008A7 EF               [12] 2133 	mov	a,r7
      0008A8 C4               [12] 2134 	swap	a
      0008A9 23               [12] 2135 	rl	a
      0008AA 54 1F            [12] 2136 	anl	a,#0x1f
      0008AC 24 41            [12] 2137 	add	a,#_bit1
      0008AE F9               [12] 2138 	mov	r1,a
      0008AF 87 07            [24] 2139 	mov	ar7,@r1
      0008B1 ED               [12] 2140 	mov	a,r5
      0008B2 F4               [12] 2141 	cpl	a
      0008B3 5F               [12] 2142 	anl	a,r7
      0008B4 F7               [12] 2143 	mov	@r1,a
                                   2144 ;	ledmatrix.c:93: bit0[tail >> 3] &= ~temp;
      0008B5 EE               [12] 2145 	mov	a,r6
      0008B6 C4               [12] 2146 	swap	a
      0008B7 23               [12] 2147 	rl	a
      0008B8 54 1F            [12] 2148 	anl	a,#0x1f
      0008BA 24 39            [12] 2149 	add	a,#_bit0
      0008BC F9               [12] 2150 	mov	r1,a
      0008BD 87 07            [24] 2151 	mov	ar7,@r1
      0008BF ED               [12] 2152 	mov	a,r5
      0008C0 F4               [12] 2153 	cpl	a
      0008C1 5F               [12] 2154 	anl	a,r7
      0008C2 F7               [12] 2155 	mov	@r1,a
                                   2156 ;	ledmatrix.c:96: bit0[tail >> 3] |= temp;
      0008C3 87 07            [24] 2157 	mov	ar7,@r1
      0008C5 ED               [12] 2158 	mov	a,r5
      0008C6 4F               [12] 2159 	orl	a,r7
      0008C7 F7               [12] 2160 	mov	@r1,a
                                   2161 ;	ledmatrix.c:379: ++head;
      0008C8 05 36            [12] 2162 	inc	_head
                                   2163 ;	ledmatrix.c:380: cur_dir = dir_right;
      0008CA 75 2C 01         [24] 2164 	mov	_cur_dir,#0x01
                                   2165 ;	ledmatrix.c:381: update_game();
                                   2166 ;	ledmatrix.c:382: }
      0008CD 02 06 03         [24] 2167 	ljmp	_update_game
                                   2168 ;------------------------------------------------------------
                                   2169 ;Allocation info for local variables in function 'reset_timer_1'
                                   2170 ;------------------------------------------------------------
                                   2171 ;	ledmatrix.c:383: void reset_timer_1(void)
                                   2172 ;	-----------------------------------------
                                   2173 ;	 function reset_timer_1
                                   2174 ;	-----------------------------------------
      0008D0                       2175 _reset_timer_1:
                                   2176 ;	ledmatrix.c:386: TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
      0008D0 75 8D 4B         [24] 2177 	mov	_TH1,#0x4b
                                   2178 ;	ledmatrix.c:387: TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
      0008D3 75 8B FF         [24] 2179 	mov	_TL1,#0xff
                                   2180 ;	ledmatrix.c:388: }
      0008D6 22               [24] 2181 	ret
                                   2182 ;------------------------------------------------------------
                                   2183 ;Allocation info for local variables in function 'key_pressed_handle'
                                   2184 ;------------------------------------------------------------
                                   2185 ;	ledmatrix.c:390: void key_pressed_handle(void)
                                   2186 ;	-----------------------------------------
                                   2187 ;	 function key_pressed_handle
                                   2188 ;	-----------------------------------------
      0008D7                       2189 _key_pressed_handle:
                                   2190 ;	ledmatrix.c:392: reset_timer_1();
      0008D7 12 08 D0         [24] 2191 	lcall	_reset_timer_1
                                   2192 ;	ledmatrix.c:393: game_timer_counter = -7;
      0008DA 75 28 F9         [24] 2193 	mov	_game_timer_counter,#0xf9
      0008DD 75 29 FF         [24] 2194 	mov	(_game_timer_counter + 1),#0xff
                                   2195 ;	ledmatrix.c:394: switch (key_pressed)
      0008E0 74 02            [12] 2196 	mov	a,#0x02
      0008E2 B5 35 02         [24] 2197 	cjne	a,_key_pressed,00124$
      0008E5 80 15            [24] 2198 	sjmp	00101$
      0008E7                       2199 00124$:
      0008E7 74 05            [12] 2200 	mov	a,#0x05
      0008E9 B5 35 02         [24] 2201 	cjne	a,_key_pressed,00125$
      0008EC 80 14            [24] 2202 	sjmp	00103$
      0008EE                       2203 00125$:
      0008EE 74 06            [12] 2204 	mov	a,#0x06
      0008F0 B5 35 02         [24] 2205 	cjne	a,_key_pressed,00126$
      0008F3 80 0A            [24] 2206 	sjmp	00102$
      0008F5                       2207 00126$:
      0008F5 74 07            [12] 2208 	mov	a,#0x07
                                   2209 ;	ledmatrix.c:396: case 2:
      0008F7 B5 35 0E         [24] 2210 	cjne	a,_key_pressed,00106$
      0008FA 80 09            [24] 2211 	sjmp	00104$
      0008FC                       2212 00101$:
                                   2213 ;	ledmatrix.c:397: go_up();
                                   2214 ;	ledmatrix.c:398: break;
                                   2215 ;	ledmatrix.c:399: case 6:
      0008FC 02 07 55         [24] 2216 	ljmp	_go_up
      0008FF                       2217 00102$:
                                   2218 ;	ledmatrix.c:400: go_down();
                                   2219 ;	ledmatrix.c:401: break;
                                   2220 ;	ledmatrix.c:402: case 5:
      0008FF 02 07 B6         [24] 2221 	ljmp	_go_down
      000902                       2222 00103$:
                                   2223 ;	ledmatrix.c:403: go_left();
                                   2224 ;	ledmatrix.c:404: break;
                                   2225 ;	ledmatrix.c:405: case 7:
      000902 02 08 1D         [24] 2226 	ljmp	_go_left
      000905                       2227 00104$:
                                   2228 ;	ledmatrix.c:406: go_right();
                                   2229 ;	ledmatrix.c:408: }
                                   2230 ;	ledmatrix.c:409: }
      000905 02 08 72         [24] 2231 	ljmp	_go_right
      000908                       2232 00106$:
      000908 22               [24] 2233 	ret
                                   2234 ;------------------------------------------------------------
                                   2235 ;Allocation info for local variables in function 'timer1_interrupt'
                                   2236 ;------------------------------------------------------------
                                   2237 ;__2621440034              Allocated to registers r7 
                                   2238 ;a                         Allocated to registers 
                                   2239 ;__2621440036              Allocated to registers r7 
                                   2240 ;a                         Allocated to registers 
                                   2241 ;------------------------------------------------------------
                                   2242 ;	ledmatrix.c:412: void timer1_interrupt(void) __interrupt(3)
                                   2243 ;	-----------------------------------------
                                   2244 ;	 function timer1_interrupt
                                   2245 ;	-----------------------------------------
      000909                       2246 _timer1_interrupt:
      000909 C0 21            [24] 2247 	push	bits
      00090B C0 E0            [24] 2248 	push	acc
      00090D C0 F0            [24] 2249 	push	b
      00090F C0 82            [24] 2250 	push	dpl
      000911 C0 83            [24] 2251 	push	dph
      000913 C0 07            [24] 2252 	push	(0+7)
      000915 C0 06            [24] 2253 	push	(0+6)
      000917 C0 05            [24] 2254 	push	(0+5)
      000919 C0 04            [24] 2255 	push	(0+4)
      00091B C0 03            [24] 2256 	push	(0+3)
      00091D C0 02            [24] 2257 	push	(0+2)
      00091F C0 01            [24] 2258 	push	(0+1)
      000921 C0 00            [24] 2259 	push	(0+0)
      000923 C0 D0            [24] 2260 	push	psw
      000925 75 D0 00         [24] 2261 	mov	psw,#0x00
                                   2262 ;	ledmatrix.c:415: ++timer_counter;
      000928 05 24            [12] 2263 	inc	_timer_counter
      00092A E4               [12] 2264 	clr	a
      00092B B5 24 0C         [24] 2265 	cjne	a,_timer_counter,00133$
      00092E 05 25            [12] 2266 	inc	(_timer_counter + 1)
      000930 B5 25 07         [24] 2267 	cjne	a,(_timer_counter + 1),00133$
      000933 05 26            [12] 2268 	inc	(_timer_counter + 2)
      000935 B5 26 02         [24] 2269 	cjne	a,(_timer_counter + 2),00133$
      000938 05 27            [12] 2270 	inc	(_timer_counter + 3)
      00093A                       2271 00133$:
                                   2272 ;	ledmatrix.c:416: reset_timer_1();
      00093A 12 08 D0         [24] 2273 	lcall	_reset_timer_1
                                   2274 ;	ledmatrix.c:417: ++game_timer_counter;
      00093D 05 28            [12] 2275 	inc	_game_timer_counter
      00093F E4               [12] 2276 	clr	a
      000940 B5 28 02         [24] 2277 	cjne	a,_game_timer_counter,00134$
      000943 05 29            [12] 2278 	inc	(_game_timer_counter + 1)
      000945                       2279 00134$:
                                   2280 ;	ledmatrix.c:418: if (!(timer_counter % 3))
      000945 75 0C 03         [24] 2281 	mov	__modulong_PARM_2,#0x03
      000948 E4               [12] 2282 	clr	a
      000949 F5 0D            [12] 2283 	mov	(__modulong_PARM_2 + 1),a
      00094B F5 0E            [12] 2284 	mov	(__modulong_PARM_2 + 2),a
      00094D F5 0F            [12] 2285 	mov	(__modulong_PARM_2 + 3),a
      00094F 85 24 82         [24] 2286 	mov	dpl,_timer_counter
      000952 85 25 83         [24] 2287 	mov	dph,(_timer_counter + 1)
      000955 85 26 F0         [24] 2288 	mov	b,(_timer_counter + 2)
      000958 E5 27            [12] 2289 	mov	a,(_timer_counter + 3)
      00095A 12 0D 0D         [24] 2290 	lcall	__modulong
      00095D AC 82            [24] 2291 	mov	r4,dpl
      00095F AD 83            [24] 2292 	mov	r5,dph
      000961 AE F0            [24] 2293 	mov	r6,b
      000963 FF               [12] 2294 	mov	r7,a
      000964 EC               [12] 2295 	mov	a,r4
      000965 4D               [12] 2296 	orl	a,r5
      000966 4E               [12] 2297 	orl	a,r6
      000967 4F               [12] 2298 	orl	a,r7
      000968 70 62            [24] 2299 	jnz	00105$
                                   2300 ;	ledmatrix.c:420: if (show_food)
      00096A E5 57            [12] 2301 	mov	a,_show_food
      00096C 60 31            [24] 2302 	jz	00102$
                                   2303 ;	ledmatrix.c:422: turn_off(food);
                                   2304 ;	ledmatrix.c:118: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
      00096E E5 38            [12] 2305 	mov	a,_food
      000970 FF               [12] 2306 	mov	r7,a
      000971 C4               [12] 2307 	swap	a
      000972 23               [12] 2308 	rl	a
      000973 54 1F            [12] 2309 	anl	a,#0x1f
      000975 24 2D            [12] 2310 	add	a,#_data_mat
      000977 F9               [12] 2311 	mov	r1,a
      000978 87 06            [24] 2312 	mov	ar6,@r1
      00097A 53 07 07         [24] 2313 	anl	ar7,#0x07
      00097D 8F F0            [24] 2314 	mov	b,r7
      00097F 05 F0            [12] 2315 	inc	b
      000981 7F 80            [12] 2316 	mov	r7,#0x80
      000983 E4               [12] 2317 	clr	a
      000984 FD               [12] 2318 	mov	r5,a
      000985 33               [12] 2319 	rlc	a
      000986 92 D2            [24] 2320 	mov	ov,c
      000988 80 08            [24] 2321 	sjmp	00138$
      00098A                       2322 00137$:
      00098A A2 D2            [12] 2323 	mov	c,ov
      00098C ED               [12] 2324 	mov	a,r5
      00098D 13               [12] 2325 	rrc	a
      00098E FD               [12] 2326 	mov	r5,a
      00098F EF               [12] 2327 	mov	a,r7
      000990 13               [12] 2328 	rrc	a
      000991 FF               [12] 2329 	mov	r7,a
      000992                       2330 00138$:
      000992 D5 F0 F5         [24] 2331 	djnz	b,00137$
      000995 EF               [12] 2332 	mov	a,r7
      000996 F4               [12] 2333 	cpl	a
      000997 FF               [12] 2334 	mov	r7,a
      000998 5E               [12] 2335 	anl	a,r6
      000999 F7               [12] 2336 	mov	@r1,a
                                   2337 ;	ledmatrix.c:423: show_food = 0;
      00099A 75 57 00         [24] 2338 	mov	_show_food,#0x00
      00099D 80 2D            [24] 2339 	sjmp	00105$
      00099F                       2340 00102$:
                                   2341 ;	ledmatrix.c:427: turn_on(food);
                                   2342 ;	ledmatrix.c:114: data_mat[a >> 3] |= 0x80 >> (a & 7);
      00099F E5 38            [12] 2343 	mov	a,_food
      0009A1 FF               [12] 2344 	mov	r7,a
      0009A2 C4               [12] 2345 	swap	a
      0009A3 23               [12] 2346 	rl	a
      0009A4 54 1F            [12] 2347 	anl	a,#0x1f
      0009A6 24 2D            [12] 2348 	add	a,#_data_mat
      0009A8 F9               [12] 2349 	mov	r1,a
      0009A9 87 06            [24] 2350 	mov	ar6,@r1
      0009AB 53 07 07         [24] 2351 	anl	ar7,#0x07
      0009AE 8F F0            [24] 2352 	mov	b,r7
      0009B0 05 F0            [12] 2353 	inc	b
      0009B2 7F 80            [12] 2354 	mov	r7,#0x80
      0009B4 E4               [12] 2355 	clr	a
      0009B5 FD               [12] 2356 	mov	r5,a
      0009B6 33               [12] 2357 	rlc	a
      0009B7 92 D2            [24] 2358 	mov	ov,c
      0009B9 80 08            [24] 2359 	sjmp	00140$
      0009BB                       2360 00139$:
      0009BB A2 D2            [12] 2361 	mov	c,ov
      0009BD ED               [12] 2362 	mov	a,r5
      0009BE 13               [12] 2363 	rrc	a
      0009BF FD               [12] 2364 	mov	r5,a
      0009C0 EF               [12] 2365 	mov	a,r7
      0009C1 13               [12] 2366 	rrc	a
      0009C2 FF               [12] 2367 	mov	r7,a
      0009C3                       2368 00140$:
      0009C3 D5 F0 F5         [24] 2369 	djnz	b,00139$
      0009C6 EF               [12] 2370 	mov	a,r7
      0009C7 4E               [12] 2371 	orl	a,r6
      0009C8 F7               [12] 2372 	mov	@r1,a
                                   2373 ;	ledmatrix.c:428: show_food = 1;
      0009C9 75 57 01         [24] 2374 	mov	_show_food,#0x01
      0009CC                       2375 00105$:
                                   2376 ;	ledmatrix.c:431: if (!(game_timer_counter % 10))
      0009CC 75 0C 0A         [24] 2377 	mov	__modsint_PARM_2,#0x0a
      0009CF 75 0D 00         [24] 2378 	mov	(__modsint_PARM_2 + 1),#0x00
      0009D2 85 28 82         [24] 2379 	mov	dpl,_game_timer_counter
      0009D5 85 29 83         [24] 2380 	mov	dph,(_game_timer_counter + 1)
      0009D8 12 0F 8C         [24] 2381 	lcall	__modsint
      0009DB E5 82            [12] 2382 	mov	a,dpl
      0009DD 85 83 F0         [24] 2383 	mov	b,dph
      0009E0 45 F0            [12] 2384 	orl	a,b
      0009E2 70 2E            [24] 2385 	jnz	00115$
                                   2386 ;	ledmatrix.c:433: switch (cur_dir)
      0009E4 E5 2C            [12] 2387 	mov	a,_cur_dir
      0009E6 24 FC            [12] 2388 	add	a,#0xff - 0x03
      0009E8 40 28            [24] 2389 	jc	00115$
      0009EA E5 2C            [12] 2390 	mov	a,_cur_dir
      0009EC 75 F0 03         [24] 2391 	mov	b,#0x03
      0009EF A4               [48] 2392 	mul	ab
      0009F0 90 09 F4         [24] 2393 	mov	dptr,#00143$
      0009F3 73               [24] 2394 	jmp	@a+dptr
      0009F4                       2395 00143$:
      0009F4 02 0A 0A         [24] 2396 	ljmp	00108$
      0009F7 02 0A 0F         [24] 2397 	ljmp	00109$
      0009FA 02 0A 00         [24] 2398 	ljmp	00106$
      0009FD 02 0A 05         [24] 2399 	ljmp	00107$
                                   2400 ;	ledmatrix.c:435: case (dir_up):
      000A00                       2401 00106$:
                                   2402 ;	ledmatrix.c:436: go_up();
      000A00 12 07 55         [24] 2403 	lcall	_go_up
                                   2404 ;	ledmatrix.c:437: break;
                                   2405 ;	ledmatrix.c:438: case (dir_down):
      000A03 80 0D            [24] 2406 	sjmp	00115$
      000A05                       2407 00107$:
                                   2408 ;	ledmatrix.c:439: go_down();
      000A05 12 07 B6         [24] 2409 	lcall	_go_down
                                   2410 ;	ledmatrix.c:440: break;
                                   2411 ;	ledmatrix.c:441: case (dir_left):
      000A08 80 08            [24] 2412 	sjmp	00115$
      000A0A                       2413 00108$:
                                   2414 ;	ledmatrix.c:442: go_left();
      000A0A 12 08 1D         [24] 2415 	lcall	_go_left
                                   2416 ;	ledmatrix.c:443: break;
                                   2417 ;	ledmatrix.c:444: case (dir_right):
      000A0D 80 03            [24] 2418 	sjmp	00115$
      000A0F                       2419 00109$:
                                   2420 ;	ledmatrix.c:445: go_right();
      000A0F 12 08 72         [24] 2421 	lcall	_go_right
                                   2422 ;	ledmatrix.c:447: }
      000A12                       2423 00115$:
                                   2424 ;	ledmatrix.c:450: }
      000A12 D0 D0            [24] 2425 	pop	psw
      000A14 D0 00            [24] 2426 	pop	(0+0)
      000A16 D0 01            [24] 2427 	pop	(0+1)
      000A18 D0 02            [24] 2428 	pop	(0+2)
      000A1A D0 03            [24] 2429 	pop	(0+3)
      000A1C D0 04            [24] 2430 	pop	(0+4)
      000A1E D0 05            [24] 2431 	pop	(0+5)
      000A20 D0 06            [24] 2432 	pop	(0+6)
      000A22 D0 07            [24] 2433 	pop	(0+7)
      000A24 D0 83            [24] 2434 	pop	dph
      000A26 D0 82            [24] 2435 	pop	dpl
      000A28 D0 F0            [24] 2436 	pop	b
      000A2A D0 E0            [24] 2437 	pop	acc
      000A2C D0 21            [24] 2438 	pop	bits
      000A2E 32               [24] 2439 	reti
                                   2440 ;------------------------------------------------------------
                                   2441 ;Allocation info for local variables in function 'main'
                                   2442 ;------------------------------------------------------------
                                   2443 ;__1310720038              Allocated to registers r7 
                                   2444 ;__1310720040              Allocated to registers 
                                   2445 ;__1310720041              Allocated to registers 
                                   2446 ;tail                      Allocated to registers 
                                   2447 ;direction                 Allocated to registers 
                                   2448 ;temp                      Allocated to registers 
                                   2449 ;__1310720043              Allocated to registers 
                                   2450 ;__1310720044              Allocated to registers 
                                   2451 ;tail                      Allocated to registers 
                                   2452 ;direction                 Allocated to registers 
                                   2453 ;temp                      Allocated to registers 
                                   2454 ;__1310720046              Allocated to registers 
                                   2455 ;__1310720047              Allocated to registers 
                                   2456 ;tail                      Allocated to registers 
                                   2457 ;direction                 Allocated to registers 
                                   2458 ;temp                      Allocated to registers 
                                   2459 ;__1310720049              Allocated to registers r7 
                                   2460 ;a                         Allocated to registers 
                                   2461 ;__1966080052              Allocated to registers r7 
                                   2462 ;row                       Allocated to registers r7 
                                   2463 ;current_data              Allocated with name '_main_current_data_655360_277'
                                   2464 ;i                         Allocated to registers r3 
                                   2465 ;i                         Allocated to registers r6 
                                   2466 ;i                         Allocated to registers r7 
                                   2467 ;------------------------------------------------------------
                                   2468 ;	ledmatrix.c:452: void main(void)
                                   2469 ;	-----------------------------------------
                                   2470 ;	 function main
                                   2471 ;	-----------------------------------------
      000A2F                       2472 _main:
                                   2473 ;	ledmatrix.c:455: IT0 = 1; // Falling edge trigger
                                   2474 ;	assignBit
      000A2F D2 88            [12] 2475 	setb	_IT0
                                   2476 ;	ledmatrix.c:456: EX0 = 1; // Enable INT0 interrupt
                                   2477 ;	assignBit
      000A31 D2 A8            [12] 2478 	setb	_EX0
                                   2479 ;	ledmatrix.c:457: EA = 1;  // Enable global interrupt flag
                                   2480 ;	assignBit
      000A33 D2 AF            [12] 2481 	setb	_EA
                                   2482 ;	ledmatrix.c:459: TMOD = 0x12; // Timer 0 mode 1 (16-bit timer
      000A35 75 89 12         [24] 2483 	mov	_TMOD,#0x12
                                   2484 ;	ledmatrix.c:461: TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
      000A38 75 8D 4B         [24] 2485 	mov	_TH1,#0x4b
                                   2486 ;	ledmatrix.c:462: TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
      000A3B 75 8B FF         [24] 2487 	mov	_TL1,#0xff
                                   2488 ;	ledmatrix.c:465: ET1 = 1;
                                   2489 ;	assignBit
      000A3E D2 AB            [12] 2490 	setb	_ET1
                                   2491 ;	ledmatrix.c:467: reset_timer_1();
      000A40 12 08 D0         [24] 2492 	lcall	_reset_timer_1
                                   2493 ;	ledmatrix.c:468: TR1 = 1;
                                   2494 ;	assignBit
      000A43 D2 8E            [12] 2495 	setb	_TR1
                                   2496 ;	ledmatrix.c:470: while (get_pressed_key() == 0)
      000A45                       2497 00101$:
                                   2498 ;	keymatrix.h:12: P1 = 0xff;
      000A45 75 90 FF         [24] 2499 	mov	_P1,#0xff
                                   2500 ;	keymatrix.h:13: P1_3 = 0;
                                   2501 ;	assignBit
      000A48 C2 93            [12] 2502 	clr	_P1_3
                                   2503 ;	ledmatrix.c:14: #define dir_right 1
      000A4A 20 97 08         [24] 2504 	jb	_P1_7,00113$
      000A4D                       2505 00109$:
      000A4D 30 97 FD         [24] 2506 	jnb	_P1_7,00109$
      000A50 7F 01            [12] 2507 	mov	r7,#0x01
      000A52 02 0B 00         [24] 2508 	ljmp	00189$
      000A55                       2509 00113$:
                                   2510 ;	ledmatrix.c:15: #define dir_up 2
      000A55 20 96 08         [24] 2511 	jb	_P1_6,00118$
      000A58                       2512 00114$:
      000A58 30 96 FD         [24] 2513 	jnb	_P1_6,00114$
      000A5B 7F 05            [12] 2514 	mov	r7,#0x05
      000A5D 02 0B 00         [24] 2515 	ljmp	00189$
      000A60                       2516 00118$:
                                   2517 ;	ledmatrix.c:16: #define dir_down 3
      000A60 20 95 08         [24] 2518 	jb	_P1_5,00123$
      000A63                       2519 00119$:
      000A63 30 95 FD         [24] 2520 	jnb	_P1_5,00119$
      000A66 7F 09            [12] 2521 	mov	r7,#0x09
      000A68 02 0B 00         [24] 2522 	ljmp	00189$
      000A6B                       2523 00123$:
                                   2524 ;	ledmatrix.c:17: 
      000A6B 20 94 08         [24] 2525 	jb	_P1_4,00128$
      000A6E                       2526 00124$:
      000A6E 30 94 FD         [24] 2527 	jnb	_P1_4,00124$
      000A71 7F 0D            [12] 2528 	mov	r7,#0x0d
      000A73 02 0B 00         [24] 2529 	ljmp	00189$
      000A76                       2530 00128$:
                                   2531 ;	keymatrix.h:19: P1 = 0xff;
      000A76 75 90 FF         [24] 2532 	mov	_P1,#0xff
                                   2533 ;	keymatrix.h:20: P1_2 = 0;
                                   2534 ;	assignBit
      000A79 C2 92            [12] 2535 	clr	_P1_2
                                   2536 ;	ledmatrix.c:21: 
      000A7B 20 97 08         [24] 2537 	jb	_P1_7,00133$
      000A7E                       2538 00129$:
      000A7E 30 97 FD         [24] 2539 	jnb	_P1_7,00129$
      000A81 7F 02            [12] 2540 	mov	r7,#0x02
      000A83 02 0B 00         [24] 2541 	ljmp	00189$
      000A86                       2542 00133$:
                                   2543 ;	ledmatrix.c:22: char sqr_left = 61;
      000A86 20 96 07         [24] 2544 	jb	_P1_6,00138$
      000A89                       2545 00134$:
      000A89 30 96 FD         [24] 2546 	jnb	_P1_6,00134$
      000A8C 7F 06            [12] 2547 	mov	r7,#0x06
      000A8E 80 70            [24] 2548 	sjmp	00189$
      000A90                       2549 00138$:
                                   2550 ;	ledmatrix.c:23: char cur_dir = dir_right;
      000A90 20 95 07         [24] 2551 	jb	_P1_5,00143$
      000A93                       2552 00139$:
      000A93 30 95 FD         [24] 2553 	jnb	_P1_5,00139$
      000A96 7F 0A            [12] 2554 	mov	r7,#0x0a
      000A98 80 66            [24] 2555 	sjmp	00189$
      000A9A                       2556 00143$:
                                   2557 ;	ledmatrix.c:24: char data_mat[8];
      000A9A 20 94 07         [24] 2558 	jb	_P1_4,00148$
      000A9D                       2559 00144$:
      000A9D 30 94 FD         [24] 2560 	jnb	_P1_4,00144$
      000AA0 7F 0E            [12] 2561 	mov	r7,#0x0e
      000AA2 80 5C            [24] 2562 	sjmp	00189$
      000AA4                       2563 00148$:
                                   2564 ;	keymatrix.h:26: P1 = 0xff;
      000AA4 75 90 FF         [24] 2565 	mov	_P1,#0xff
                                   2566 ;	keymatrix.h:27: P1_1 = 0;
                                   2567 ;	assignBit
      000AA7 C2 91            [12] 2568 	clr	_P1_1
                                   2569 ;	ledmatrix.c:28: char food;
      000AA9 20 97 07         [24] 2570 	jb	_P1_7,00153$
      000AAC                       2571 00149$:
      000AAC 30 97 FD         [24] 2572 	jnb	_P1_7,00149$
      000AAF 7F 03            [12] 2573 	mov	r7,#0x03
      000AB1 80 4D            [24] 2574 	sjmp	00189$
      000AB3                       2575 00153$:
                                   2576 ;	ledmatrix.c:29: char bit0[8];
      000AB3 20 96 07         [24] 2577 	jb	_P1_6,00158$
      000AB6                       2578 00154$:
      000AB6 30 96 FD         [24] 2579 	jnb	_P1_6,00154$
      000AB9 7F 07            [12] 2580 	mov	r7,#0x07
      000ABB 80 43            [24] 2581 	sjmp	00189$
      000ABD                       2582 00158$:
                                   2583 ;	ledmatrix.c:30: char bit1[8]; // 0 : horizontal 1: vertical
      000ABD 20 95 07         [24] 2584 	jb	_P1_5,00163$
      000AC0                       2585 00159$:
      000AC0 30 95 FD         [24] 2586 	jnb	_P1_5,00159$
      000AC3 7F 0B            [12] 2587 	mov	r7,#0x0b
      000AC5 80 39            [24] 2588 	sjmp	00189$
      000AC7                       2589 00163$:
                                   2590 ;	ledmatrix.c:31: 
      000AC7 20 94 07         [24] 2591 	jb	_P1_4,00168$
      000ACA                       2592 00164$:
      000ACA 30 94 FD         [24] 2593 	jnb	_P1_4,00164$
      000ACD 7F 0F            [12] 2594 	mov	r7,#0x0f
      000ACF 80 2F            [24] 2595 	sjmp	00189$
      000AD1                       2596 00168$:
                                   2597 ;	keymatrix.h:33: P1 = 0xff;
      000AD1 75 90 FF         [24] 2598 	mov	_P1,#0xff
                                   2599 ;	keymatrix.h:34: P1_0 = 0;
                                   2600 ;	assignBit
      000AD4 C2 90            [12] 2601 	clr	_P1_0
                                   2602 ;	ledmatrix.c:35: // 11: down
      000AD6 20 97 07         [24] 2603 	jb	_P1_7,00173$
      000AD9                       2604 00169$:
      000AD9 30 97 FD         [24] 2605 	jnb	_P1_7,00169$
      000ADC 7F 04            [12] 2606 	mov	r7,#0x04
      000ADE 80 20            [24] 2607 	sjmp	00189$
      000AE0                       2608 00173$:
                                   2609 ;	ledmatrix.c:36: inline void display_led_mat(void)
      000AE0 20 96 07         [24] 2610 	jb	_P1_6,00178$
      000AE3                       2611 00174$:
      000AE3 30 96 FD         [24] 2612 	jnb	_P1_6,00174$
      000AE6 7F 08            [12] 2613 	mov	r7,#0x08
      000AE8 80 16            [24] 2614 	sjmp	00189$
      000AEA                       2615 00178$:
                                   2616 ;	ledmatrix.c:37: {
      000AEA 20 95 07         [24] 2617 	jb	_P1_5,00183$
      000AED                       2618 00179$:
      000AED 30 95 FD         [24] 2619 	jnb	_P1_5,00179$
      000AF0 7F 0C            [12] 2620 	mov	r7,#0x0c
      000AF2 80 0C            [24] 2621 	sjmp	00189$
      000AF4                       2622 00183$:
                                   2623 ;	ledmatrix.c:38: for (char row = 0; row < 8; row++)
      000AF4 20 94 07         [24] 2624 	jb	_P1_4,00188$
      000AF7                       2625 00184$:
      000AF7 30 94 FD         [24] 2626 	jnb	_P1_4,00184$
      000AFA 7F 10            [12] 2627 	mov	r7,#0x10
      000AFC 80 02            [24] 2628 	sjmp	00189$
      000AFE                       2629 00188$:
                                   2630 ;	keymatrix.h:39: return 0;
      000AFE 7F 00            [12] 2631 	mov	r7,#0x00
                                   2632 ;	ledmatrix.c:470: while (get_pressed_key() == 0)
      000B00                       2633 00189$:
      000B00 EF               [12] 2634 	mov	a,r7
      000B01 70 03            [24] 2635 	jnz	00665$
      000B03 02 0A 45         [24] 2636 	ljmp	00101$
      000B06                       2637 00665$:
                                   2638 ;	ledmatrix.c:473: srand(timer_counter);
      000B06 85 24 82         [24] 2639 	mov	dpl,_timer_counter
      000B09 85 25 83         [24] 2640 	mov	dph,(_timer_counter + 1)
      000B0C 12 0D FC         [24] 2641 	lcall	_srand
                                   2642 ;	ledmatrix.c:475: P0 = 0x00;
      000B0F 75 80 00         [24] 2643 	mov	_P0,#0x00
                                   2644 ;	ledmatrix.c:476: SCK = 0;
                                   2645 ;	assignBit
      000B12 C2 B6            [12] 2646 	clr	_P3_6
                                   2647 ;	ledmatrix.c:477: RCK = 0;
                                   2648 ;	assignBit
      000B14 C2 B5            [12] 2649 	clr	_P3_5
                                   2650 ;	ledmatrix.c:478: data_mat[0] = 0xE0;
      000B16 75 2D E0         [24] 2651 	mov	_data_mat,#0xe0
                                   2652 ;	ledmatrix.c:479: head = 2;
      000B19 75 36 02         [24] 2653 	mov	_head,#0x02
                                   2654 ;	ledmatrix.c:85: bit1[tail >> 3] &= ~temp;
      000B1C 74 7F            [12] 2655 	mov	a,#0x7f
      000B1E 55 41            [12] 2656 	anl	a,_bit1
      000B20 F5 41            [12] 2657 	mov	_bit1,a
                                   2658 ;	ledmatrix.c:93: bit0[tail >> 3] &= ~temp;
      000B22 74 7F            [12] 2659 	mov	a,#0x7f
      000B24 55 39            [12] 2660 	anl	a,_bit0
      000B26 F5 39            [12] 2661 	mov	_bit0,a
                                   2662 ;	ledmatrix.c:96: bit0[tail >> 3] |= temp;
      000B28 74 80            [12] 2663 	mov	a,#0x80
      000B2A 45 39            [12] 2664 	orl	a,_bit0
      000B2C F5 39            [12] 2665 	mov	_bit0,a
                                   2666 ;	ledmatrix.c:85: bit1[tail >> 3] &= ~temp;
      000B2E 74 BF            [12] 2667 	mov	a,#0xbf
      000B30 55 41            [12] 2668 	anl	a,_bit1
      000B32 F5 41            [12] 2669 	mov	_bit1,a
                                   2670 ;	ledmatrix.c:93: bit0[tail >> 3] &= ~temp;
      000B34 74 BF            [12] 2671 	mov	a,#0xbf
      000B36 55 39            [12] 2672 	anl	a,_bit0
      000B38 F5 39            [12] 2673 	mov	_bit0,a
                                   2674 ;	ledmatrix.c:96: bit0[tail >> 3] |= temp;
      000B3A 74 40            [12] 2675 	mov	a,#0x40
      000B3C 45 39            [12] 2676 	orl	a,_bit0
      000B3E F5 39            [12] 2677 	mov	_bit0,a
                                   2678 ;	ledmatrix.c:85: bit1[tail >> 3] &= ~temp;
      000B40 74 DF            [12] 2679 	mov	a,#0xdf
      000B42 55 41            [12] 2680 	anl	a,_bit1
      000B44 F5 41            [12] 2681 	mov	_bit1,a
                                   2682 ;	ledmatrix.c:93: bit0[tail >> 3] &= ~temp;
      000B46 74 DF            [12] 2683 	mov	a,#0xdf
      000B48 55 39            [12] 2684 	anl	a,_bit0
      000B4A F5 39            [12] 2685 	mov	_bit0,a
                                   2686 ;	ledmatrix.c:96: bit0[tail >> 3] |= temp;
      000B4C 74 20            [12] 2687 	mov	a,#0x20
      000B4E 45 39            [12] 2688 	orl	a,_bit0
      000B50 F5 39            [12] 2689 	mov	_bit0,a
                                   2690 ;	ledmatrix.c:484: tail = 0;
      000B52 75 37 00         [24] 2691 	mov	_tail,#0x00
                                   2692 ;	ledmatrix.c:486: update_food();
      000B55 12 05 8E         [24] 2693 	lcall	_update_food
                                   2694 ;	ledmatrix.c:487: turn_on(food);
                                   2695 ;	ledmatrix.c:114: data_mat[a >> 3] |= 0x80 >> (a & 7);
      000B58 E5 38            [12] 2696 	mov	a,_food
      000B5A FF               [12] 2697 	mov	r7,a
      000B5B C4               [12] 2698 	swap	a
      000B5C 23               [12] 2699 	rl	a
      000B5D 54 1F            [12] 2700 	anl	a,#0x1f
      000B5F 24 2D            [12] 2701 	add	a,#_data_mat
      000B61 F9               [12] 2702 	mov	r1,a
      000B62 87 06            [24] 2703 	mov	ar6,@r1
      000B64 53 07 07         [24] 2704 	anl	ar7,#0x07
      000B67 8F F0            [24] 2705 	mov	b,r7
      000B69 05 F0            [12] 2706 	inc	b
      000B6B 7F 80            [12] 2707 	mov	r7,#0x80
      000B6D E4               [12] 2708 	clr	a
      000B6E FD               [12] 2709 	mov	r5,a
      000B6F 33               [12] 2710 	rlc	a
      000B70 92 D2            [24] 2711 	mov	ov,c
      000B72 80 08            [24] 2712 	sjmp	00667$
      000B74                       2713 00666$:
      000B74 A2 D2            [12] 2714 	mov	c,ov
      000B76 ED               [12] 2715 	mov	a,r5
      000B77 13               [12] 2716 	rrc	a
      000B78 FD               [12] 2717 	mov	r5,a
      000B79 EF               [12] 2718 	mov	a,r7
      000B7A 13               [12] 2719 	rrc	a
      000B7B FF               [12] 2720 	mov	r7,a
      000B7C                       2721 00667$:
      000B7C D5 F0 F5         [24] 2722 	djnz	b,00666$
      000B7F EF               [12] 2723 	mov	a,r7
      000B80 4E               [12] 2724 	orl	a,r6
      000B81 F7               [12] 2725 	mov	@r1,a
                                   2726 ;	ledmatrix.c:489: while (1)
      000B82                       2727 00107$:
                                   2728 ;	ledmatrix.c:57: P2 = 0b11111111;
      000B82 75 A0 FF         [24] 2729 	mov	_P2,#0xff
                                   2730 ;	ledmatrix.c:58: P0 = 0xFF;
      000B85 75 80 FF         [24] 2731 	mov	_P0,#0xff
                                   2732 ;	ledmatrix.c:38: for (char row = 0; row < 8; row++)
      000B88 7F 00            [12] 2733 	mov	r7,#0x00
      000B8A                       2734 00301$:
      000B8A BF 08 00         [24] 2735 	cjne	r7,#0x08,00668$
      000B8D                       2736 00668$:
      000B8D 50 69            [24] 2737 	jnc	00209$
                                   2738 ;	ledmatrix.c:40: const char current_data = data_mat[row];
      000B8F EF               [12] 2739 	mov	a,r7
      000B90 24 2D            [12] 2740 	add	a,#_data_mat
      000B92 F9               [12] 2741 	mov	r1,a
      000B93 87 58            [24] 2742 	mov	_main_current_data_655360_277,@r1
                                   2743 ;	ledmatrix.c:41: for (char i = 0; i < 8; i++)
      000B95 8F F0            [24] 2744 	mov	b,r7
      000B97 05 F0            [12] 2745 	inc	b
      000B99 7C 80            [12] 2746 	mov	r4,#0x80
      000B9B E4               [12] 2747 	clr	a
      000B9C FD               [12] 2748 	mov	r5,a
      000B9D 33               [12] 2749 	rlc	a
      000B9E 92 D2            [24] 2750 	mov	ov,c
      000BA0 80 08            [24] 2751 	sjmp	00671$
      000BA2                       2752 00670$:
      000BA2 A2 D2            [12] 2753 	mov	c,ov
      000BA4 ED               [12] 2754 	mov	a,r5
      000BA5 13               [12] 2755 	rrc	a
      000BA6 FD               [12] 2756 	mov	r5,a
      000BA7 EC               [12] 2757 	mov	a,r4
      000BA8 13               [12] 2758 	rrc	a
      000BA9 FC               [12] 2759 	mov	r4,a
      000BAA                       2760 00671$:
      000BAA D5 F0 F5         [24] 2761 	djnz	b,00670$
      000BAD 7B 00            [12] 2762 	mov	r3,#0x00
      000BAF                       2763 00295$:
      000BAF BB 08 00         [24] 2764 	cjne	r3,#0x08,00672$
      000BB2                       2765 00672$:
      000BB2 50 2B            [24] 2766 	jnc	00206$
                                   2767 ;	ledmatrix.c:43: SER = (0x80 >> row) & (0x80 >> i);
      000BB4 8B F0            [24] 2768 	mov	b,r3
      000BB6 05 F0            [12] 2769 	inc	b
      000BB8 7A 80            [12] 2770 	mov	r2,#0x80
      000BBA E4               [12] 2771 	clr	a
      000BBB FE               [12] 2772 	mov	r6,a
      000BBC 33               [12] 2773 	rlc	a
      000BBD 92 D2            [24] 2774 	mov	ov,c
      000BBF 80 08            [24] 2775 	sjmp	00675$
      000BC1                       2776 00674$:
      000BC1 A2 D2            [12] 2777 	mov	c,ov
      000BC3 EE               [12] 2778 	mov	a,r6
      000BC4 13               [12] 2779 	rrc	a
      000BC5 FE               [12] 2780 	mov	r6,a
      000BC6 EA               [12] 2781 	mov	a,r2
      000BC7 13               [12] 2782 	rrc	a
      000BC8 FA               [12] 2783 	mov	r2,a
      000BC9                       2784 00675$:
      000BC9 D5 F0 F5         [24] 2785 	djnz	b,00674$
      000BCC EC               [12] 2786 	mov	a,r4
      000BCD 52 02            [12] 2787 	anl	ar2,a
      000BCF ED               [12] 2788 	mov	a,r5
      000BD0 52 06            [12] 2789 	anl	ar6,a
                                   2790 ;	assignBit
      000BD2 EA               [12] 2791 	mov	a,r2
      000BD3 4E               [12] 2792 	orl	a,r6
      000BD4 24 FF            [12] 2793 	add	a,#0xff
      000BD6 92 B4            [24] 2794 	mov	_P3_4,c
                                   2795 ;	ledmatrix.c:44: SCK = 1;
                                   2796 ;	assignBit
      000BD8 D2 B6            [12] 2797 	setb	_P3_6
                                   2798 ;	ledmatrix.c:45: SCK = 0;
                                   2799 ;	assignBit
      000BDA C2 B6            [12] 2800 	clr	_P3_6
                                   2801 ;	ledmatrix.c:41: for (char i = 0; i < 8; i++)
      000BDC 0B               [12] 2802 	inc	r3
      000BDD 80 D0            [24] 2803 	sjmp	00295$
      000BDF                       2804 00206$:
                                   2805 ;	ledmatrix.c:47: P0 = 0xff;
      000BDF 75 80 FF         [24] 2806 	mov	_P0,#0xff
                                   2807 ;	ledmatrix.c:48: RCK = 1;
                                   2808 ;	assignBit
      000BE2 D2 B5            [12] 2809 	setb	_P3_5
                                   2810 ;	ledmatrix.c:49: RCK = 0;
                                   2811 ;	assignBit
      000BE4 C2 B5            [12] 2812 	clr	_P3_5
                                   2813 ;	ledmatrix.c:50: P0 = ~current_data;
      000BE6 E5 58            [12] 2814 	mov	a,_main_current_data_655360_277
      000BE8 F4               [12] 2815 	cpl	a
      000BE9 F5 80            [12] 2816 	mov	_P0,a
                                   2817 ;	ledmatrix.c:51: for (char i = 0; i < 5; i++)
      000BEB 7E 00            [12] 2818 	mov	r6,#0x00
      000BED                       2819 00298$:
      000BED BE 05 00         [24] 2820 	cjne	r6,#0x05,00676$
      000BF0                       2821 00676$:
      000BF0 50 03            [24] 2822 	jnc	00302$
      000BF2 0E               [12] 2823 	inc	r6
      000BF3 80 F8            [24] 2824 	sjmp	00298$
      000BF5                       2825 00302$:
                                   2826 ;	ledmatrix.c:38: for (char row = 0; row < 8; row++)
      000BF5 0F               [12] 2827 	inc	r7
                                   2828 ;	ledmatrix.c:59: display_led_mat();
      000BF6 80 92            [24] 2829 	sjmp	00301$
      000BF8                       2830 00209$:
                                   2831 ;	ledmatrix.c:61: for (i = 0; i < 100; i++)
      000BF8 7F 64            [12] 2832 	mov	r7,#0x64
      000BFA                       2833 00305$:
      000BFA DF FE            [24] 2834 	djnz	r7,00305$
                                   2835 ;	ledmatrix.c:63: SER = 0;
                                   2836 ;	assignBit
      000BFC C2 B4            [12] 2837 	clr	_P3_4
                                   2838 ;	ledmatrix.c:64: for (i = 0; i < 8; i++)
      000BFE 7F 00            [12] 2839 	mov	r7,#0x00
      000C00                       2840 00306$:
                                   2841 ;	ledmatrix.c:66: SCK = 1;
                                   2842 ;	assignBit
      000C00 D2 B6            [12] 2843 	setb	_P3_6
                                   2844 ;	ledmatrix.c:67: SCK = 0;
                                   2845 ;	assignBit
      000C02 C2 B6            [12] 2846 	clr	_P3_6
                                   2847 ;	ledmatrix.c:64: for (i = 0; i < 8; i++)
      000C04 0F               [12] 2848 	inc	r7
      000C05 BF 08 00         [24] 2849 	cjne	r7,#0x08,00679$
      000C08                       2850 00679$:
      000C08 40 F6            [24] 2851 	jc	00306$
                                   2852 ;	ledmatrix.c:69: RCK = 1;
                                   2853 ;	assignBit
      000C0A D2 B5            [12] 2854 	setb	_P3_5
                                   2855 ;	ledmatrix.c:70: RCK = 0;
                                   2856 ;	assignBit
      000C0C C2 B5            [12] 2857 	clr	_P3_5
                                   2858 ;	ledmatrix.c:71: display_number(point);
      000C0E AC 2A            [24] 2859 	mov	r4,_point
      000C10 7D 00            [12] 2860 	mov	r5,#0x00
      000C12 7E 00            [12] 2861 	mov	r6,#0x00
      000C14 7F 00            [12] 2862 	mov	r7,#0x00
      000C16 8C 82            [24] 2863 	mov	dpl,r4
      000C18 8D 83            [24] 2864 	mov	dph,r5
      000C1A 8E F0            [24] 2865 	mov	b,r6
      000C1C EF               [12] 2866 	mov	a,r7
      000C1D 12 00 A2         [24] 2867 	lcall	_display_number
                                   2868 ;	ledmatrix.c:72: display_number(point);
      000C20 AC 2A            [24] 2869 	mov	r4,_point
      000C22 7D 00            [12] 2870 	mov	r5,#0x00
      000C24 7E 00            [12] 2871 	mov	r6,#0x00
      000C26 7F 00            [12] 2872 	mov	r7,#0x00
      000C28 8C 82            [24] 2873 	mov	dpl,r4
      000C2A 8D 83            [24] 2874 	mov	dph,r5
      000C2C 8E F0            [24] 2875 	mov	b,r6
      000C2E EF               [12] 2876 	mov	a,r7
      000C2F 12 00 A2         [24] 2877 	lcall	_display_number
                                   2878 ;	ledmatrix.c:73: display_number(point);
      000C32 AC 2A            [24] 2879 	mov	r4,_point
      000C34 7D 00            [12] 2880 	mov	r5,#0x00
      000C36 7E 00            [12] 2881 	mov	r6,#0x00
      000C38 7F 00            [12] 2882 	mov	r7,#0x00
      000C3A 8C 82            [24] 2883 	mov	dpl,r4
      000C3C 8D 83            [24] 2884 	mov	dph,r5
      000C3E 8E F0            [24] 2885 	mov	b,r6
      000C40 EF               [12] 2886 	mov	a,r7
      000C41 12 00 A2         [24] 2887 	lcall	_display_number
                                   2888 ;	keymatrix.h:12: P1 = 0xff;
      000C44 75 90 FF         [24] 2889 	mov	_P1,#0xff
                                   2890 ;	keymatrix.h:13: P1_3 = 0;
                                   2891 ;	assignBit
      000C47 C2 93            [12] 2892 	clr	_P1_3
                                   2893 ;	ledmatrix.c:14: #define dir_right 1
      000C49 20 97 08         [24] 2894 	jb	_P1_7,00217$
      000C4C                       2895 00213$:
      000C4C 30 97 FD         [24] 2896 	jnb	_P1_7,00213$
      000C4F 7F 01            [12] 2897 	mov	r7,#0x01
      000C51 02 0C FF         [24] 2898 	ljmp	00293$
      000C54                       2899 00217$:
                                   2900 ;	ledmatrix.c:15: #define dir_up 2
      000C54 20 96 08         [24] 2901 	jb	_P1_6,00222$
      000C57                       2902 00218$:
      000C57 30 96 FD         [24] 2903 	jnb	_P1_6,00218$
      000C5A 7F 05            [12] 2904 	mov	r7,#0x05
      000C5C 02 0C FF         [24] 2905 	ljmp	00293$
      000C5F                       2906 00222$:
                                   2907 ;	ledmatrix.c:16: #define dir_down 3
      000C5F 20 95 08         [24] 2908 	jb	_P1_5,00227$
      000C62                       2909 00223$:
      000C62 30 95 FD         [24] 2910 	jnb	_P1_5,00223$
      000C65 7F 09            [12] 2911 	mov	r7,#0x09
      000C67 02 0C FF         [24] 2912 	ljmp	00293$
      000C6A                       2913 00227$:
                                   2914 ;	ledmatrix.c:17: 
      000C6A 20 94 08         [24] 2915 	jb	_P1_4,00232$
      000C6D                       2916 00228$:
      000C6D 30 94 FD         [24] 2917 	jnb	_P1_4,00228$
      000C70 7F 0D            [12] 2918 	mov	r7,#0x0d
      000C72 02 0C FF         [24] 2919 	ljmp	00293$
      000C75                       2920 00232$:
                                   2921 ;	keymatrix.h:19: P1 = 0xff;
      000C75 75 90 FF         [24] 2922 	mov	_P1,#0xff
                                   2923 ;	keymatrix.h:20: P1_2 = 0;
                                   2924 ;	assignBit
      000C78 C2 92            [12] 2925 	clr	_P1_2
                                   2926 ;	ledmatrix.c:21: 
      000C7A 20 97 08         [24] 2927 	jb	_P1_7,00237$
      000C7D                       2928 00233$:
      000C7D 30 97 FD         [24] 2929 	jnb	_P1_7,00233$
      000C80 7F 02            [12] 2930 	mov	r7,#0x02
      000C82 02 0C FF         [24] 2931 	ljmp	00293$
      000C85                       2932 00237$:
                                   2933 ;	ledmatrix.c:22: char sqr_left = 61;
      000C85 20 96 07         [24] 2934 	jb	_P1_6,00242$
      000C88                       2935 00238$:
      000C88 30 96 FD         [24] 2936 	jnb	_P1_6,00238$
      000C8B 7F 06            [12] 2937 	mov	r7,#0x06
      000C8D 80 70            [24] 2938 	sjmp	00293$
      000C8F                       2939 00242$:
                                   2940 ;	ledmatrix.c:23: char cur_dir = dir_right;
      000C8F 20 95 07         [24] 2941 	jb	_P1_5,00247$
      000C92                       2942 00243$:
      000C92 30 95 FD         [24] 2943 	jnb	_P1_5,00243$
      000C95 7F 0A            [12] 2944 	mov	r7,#0x0a
      000C97 80 66            [24] 2945 	sjmp	00293$
      000C99                       2946 00247$:
                                   2947 ;	ledmatrix.c:24: char data_mat[8];
      000C99 20 94 07         [24] 2948 	jb	_P1_4,00252$
      000C9C                       2949 00248$:
      000C9C 30 94 FD         [24] 2950 	jnb	_P1_4,00248$
      000C9F 7F 0E            [12] 2951 	mov	r7,#0x0e
      000CA1 80 5C            [24] 2952 	sjmp	00293$
      000CA3                       2953 00252$:
                                   2954 ;	keymatrix.h:26: P1 = 0xff;
      000CA3 75 90 FF         [24] 2955 	mov	_P1,#0xff
                                   2956 ;	keymatrix.h:27: P1_1 = 0;
                                   2957 ;	assignBit
      000CA6 C2 91            [12] 2958 	clr	_P1_1
                                   2959 ;	ledmatrix.c:28: char food;
      000CA8 20 97 07         [24] 2960 	jb	_P1_7,00257$
      000CAB                       2961 00253$:
      000CAB 30 97 FD         [24] 2962 	jnb	_P1_7,00253$
      000CAE 7F 03            [12] 2963 	mov	r7,#0x03
      000CB0 80 4D            [24] 2964 	sjmp	00293$
      000CB2                       2965 00257$:
                                   2966 ;	ledmatrix.c:29: char bit0[8];
      000CB2 20 96 07         [24] 2967 	jb	_P1_6,00262$
      000CB5                       2968 00258$:
      000CB5 30 96 FD         [24] 2969 	jnb	_P1_6,00258$
      000CB8 7F 07            [12] 2970 	mov	r7,#0x07
      000CBA 80 43            [24] 2971 	sjmp	00293$
      000CBC                       2972 00262$:
                                   2973 ;	ledmatrix.c:30: char bit1[8]; // 0 : horizontal 1: vertical
      000CBC 20 95 07         [24] 2974 	jb	_P1_5,00267$
      000CBF                       2975 00263$:
      000CBF 30 95 FD         [24] 2976 	jnb	_P1_5,00263$
      000CC2 7F 0B            [12] 2977 	mov	r7,#0x0b
      000CC4 80 39            [24] 2978 	sjmp	00293$
      000CC6                       2979 00267$:
                                   2980 ;	ledmatrix.c:31: 
      000CC6 20 94 07         [24] 2981 	jb	_P1_4,00272$
      000CC9                       2982 00268$:
      000CC9 30 94 FD         [24] 2983 	jnb	_P1_4,00268$
      000CCC 7F 0F            [12] 2984 	mov	r7,#0x0f
      000CCE 80 2F            [24] 2985 	sjmp	00293$
      000CD0                       2986 00272$:
                                   2987 ;	keymatrix.h:33: P1 = 0xff;
      000CD0 75 90 FF         [24] 2988 	mov	_P1,#0xff
                                   2989 ;	keymatrix.h:34: P1_0 = 0;
                                   2990 ;	assignBit
      000CD3 C2 90            [12] 2991 	clr	_P1_0
                                   2992 ;	ledmatrix.c:35: // 11: down
      000CD5 20 97 07         [24] 2993 	jb	_P1_7,00277$
      000CD8                       2994 00273$:
      000CD8 30 97 FD         [24] 2995 	jnb	_P1_7,00273$
      000CDB 7F 04            [12] 2996 	mov	r7,#0x04
      000CDD 80 20            [24] 2997 	sjmp	00293$
      000CDF                       2998 00277$:
                                   2999 ;	ledmatrix.c:36: inline void display_led_mat(void)
      000CDF 20 96 07         [24] 3000 	jb	_P1_6,00282$
      000CE2                       3001 00278$:
      000CE2 30 96 FD         [24] 3002 	jnb	_P1_6,00278$
      000CE5 7F 08            [12] 3003 	mov	r7,#0x08
      000CE7 80 16            [24] 3004 	sjmp	00293$
      000CE9                       3005 00282$:
                                   3006 ;	ledmatrix.c:37: {
      000CE9 20 95 07         [24] 3007 	jb	_P1_5,00287$
      000CEC                       3008 00283$:
      000CEC 30 95 FD         [24] 3009 	jnb	_P1_5,00283$
      000CEF 7F 0C            [12] 3010 	mov	r7,#0x0c
      000CF1 80 0C            [24] 3011 	sjmp	00293$
      000CF3                       3012 00287$:
                                   3013 ;	ledmatrix.c:38: for (char row = 0; row < 8; row++)
      000CF3 20 94 07         [24] 3014 	jb	_P1_4,00292$
      000CF6                       3015 00288$:
      000CF6 30 94 FD         [24] 3016 	jnb	_P1_4,00288$
      000CF9 7F 10            [12] 3017 	mov	r7,#0x10
      000CFB 80 02            [24] 3018 	sjmp	00293$
      000CFD                       3019 00292$:
                                   3020 ;	keymatrix.h:39: return 0;
      000CFD 7F 00            [12] 3021 	mov	r7,#0x00
                                   3022 ;	ledmatrix.c:492: key_pressed = get_pressed_key();
      000CFF                       3023 00293$:
                                   3024 ;	ledmatrix.c:493: if (key_pressed)
      000CFF EF               [12] 3025 	mov	a,r7
      000D00 F5 35            [12] 3026 	mov	_key_pressed,a
      000D02 70 03            [24] 3027 	jnz	00713$
      000D04 02 0B 82         [24] 3028 	ljmp	00107$
      000D07                       3029 00713$:
                                   3030 ;	ledmatrix.c:495: key_pressed_handle();
      000D07 12 08 D7         [24] 3031 	lcall	_key_pressed_handle
                                   3032 ;	ledmatrix.c:498: }
      000D0A 02 0B 82         [24] 3033 	ljmp	00107$
                                   3034 	.area CSEG    (CODE)
                                   3035 	.area CONST   (CODE)
      000FFE                       3036 _number_string:
      000FFE 3F                    3037 	.db #0x3f	; 63
      000FFF 06                    3038 	.db #0x06	; 6
      001000 5B                    3039 	.db #0x5b	; 91
      001001 4F                    3040 	.db #0x4f	; 79	'O'
      001002 66                    3041 	.db #0x66	; 102	'f'
      001003 6D                    3042 	.db #0x6d	; 109	'm'
      001004 7D                    3043 	.db #0x7d	; 125
      001005 07                    3044 	.db #0x07	; 7
      001006 7F                    3045 	.db #0x7f	; 127
      001007 6F                    3046 	.db #0x6f	; 111	'o'
      001008                       3047 _game_over_floating_display_65537_111:
      001008 81                    3048 	.db #0x81	; 129
      001009 42                    3049 	.db #0x42	; 66	'B'
      00100A 24                    3050 	.db #0x24	; 36
      00100B 18                    3051 	.db #0x18	; 24
      00100C 18                    3052 	.db #0x18	; 24
      00100D 24                    3053 	.db #0x24	; 36
      00100E 42                    3054 	.db #0x42	; 66	'B'
      00100F 81                    3055 	.db #0x81	; 129
      001010 18                    3056 	.db #0x18	; 24
      001011 3C                    3057 	.db #0x3c	; 60
      001012 7E                    3058 	.db #0x7e	; 126
      001013 FF                    3059 	.db #0xff	; 255
      001014 FF                    3060 	.db #0xff	; 255
      001015 7E                    3061 	.db #0x7e	; 126
      001016 3C                    3062 	.db #0x3c	; 60
      001017 18                    3063 	.db #0x18	; 24
      001018 00                    3064 	.db #0x00	; 0
      001019 66                    3065 	.db #0x66	; 102	'f'
      00101A FF                    3066 	.db #0xff	; 255
      00101B FF                    3067 	.db #0xff	; 255
      00101C 7E                    3068 	.db #0x7e	; 126
      00101D 3C                    3069 	.db #0x3c	; 60
      00101E 18                    3070 	.db #0x18	; 24
      00101F 00                    3071 	.db #0x00	; 0
      001020 3C                    3072 	.db #0x3c	; 60
      001021 42                    3073 	.db #0x42	; 66	'B'
      001022 81                    3074 	.db #0x81	; 129
      001023 A5                    3075 	.db #0xa5	; 165
      001024 81                    3076 	.db #0x81	; 129
      001025 99                    3077 	.db #0x99	; 153
      001026 42                    3078 	.db #0x42	; 66	'B'
      001027 3C                    3079 	.db #0x3c	; 60
      001028 3C                    3080 	.db #0x3c	; 60
      001029 42                    3081 	.db #0x42	; 66	'B'
      00102A 81                    3082 	.db #0x81	; 129
      00102B 81                    3083 	.db #0x81	; 129
      00102C 81                    3084 	.db #0x81	; 129
      00102D 81                    3085 	.db #0x81	; 129
      00102E 42                    3086 	.db #0x42	; 66	'B'
      00102F 3C                    3087 	.db #0x3c	; 60
      001030 60                    3088 	.db #0x60	; 96
      001031 50                    3089 	.db #0x50	; 80	'P'
      001032 50                    3090 	.db #0x50	; 80	'P'
      001033 10                    3091 	.db #0x10	; 16
      001034 10                    3092 	.db #0x10	; 16
      001035 10                    3093 	.db #0x10	; 16
      001036 10                    3094 	.db #0x10	; 16
      001037 1F                    3095 	.db #0x1f	; 31
      001038 00                    3096 	.db 0x00
      001039 00                    3097 	.db 0x00
      00103A 00                    3098 	.db 0x00
      00103B 00                    3099 	.db 0x00
      00103C 00                    3100 	.db 0x00
      00103D 00                    3101 	.db 0x00
      00103E 00                    3102 	.db 0x00
      00103F 00                    3103 	.db 0x00
      001040 00                    3104 	.db 0x00
      001041 00                    3105 	.db 0x00
      001042 00                    3106 	.db 0x00
      001043 00                    3107 	.db 0x00
      001044 00                    3108 	.db 0x00
      001045 00                    3109 	.db 0x00
      001046 00                    3110 	.db 0x00
      001047 00                    3111 	.db 0x00
      001048 00                    3112 	.db 0x00
      001049 00                    3113 	.db 0x00
      00104A 00                    3114 	.db 0x00
      00104B 00                    3115 	.db 0x00
      00104C 00                    3116 	.db 0x00
      00104D 00                    3117 	.db 0x00
      00104E 00                    3118 	.db 0x00
      00104F 00                    3119 	.db 0x00
      001050 00                    3120 	.db 0x00
      001051 00                    3121 	.db 0x00
      001052 00                    3122 	.db 0x00
      001053 00                    3123 	.db 0x00
      001054 00                    3124 	.db 0x00
      001055 00                    3125 	.db 0x00
      001056 00                    3126 	.db 0x00
      001057 00                    3127 	.db 0x00
      001058 00                    3128 	.db 0x00
      001059 00                    3129 	.db 0x00
      00105A 00                    3130 	.db 0x00
      00105B 00                    3131 	.db 0x00
      00105C 00                    3132 	.db 0x00
      00105D 00                    3133 	.db 0x00
      00105E 00                    3134 	.db 0x00
      00105F 00                    3135 	.db 0x00
      001060 00                    3136 	.db 0x00
      001061 00                    3137 	.db 0x00
      001062 00                    3138 	.db 0x00
      001063 00                    3139 	.db 0x00
      001064 00                    3140 	.db 0x00
      001065 00                    3141 	.db 0x00
      001066 00                    3142 	.db 0x00
      001067 00                    3143 	.db 0x00
      001068                       3144 _game_over_firework_65537_111:
      001068 00                    3145 	.db #0x00	; 0
      001069 00                    3146 	.db #0x00	; 0
      00106A 00                    3147 	.db #0x00	; 0
      00106B 00                    3148 	.db #0x00	; 0
      00106C 00                    3149 	.db #0x00	; 0
      00106D 00                    3150 	.db #0x00	; 0
      00106E 18                    3151 	.db #0x18	; 24
      00106F 18                    3152 	.db #0x18	; 24
      001070 00                    3153 	.db #0x00	; 0
      001071 00                    3154 	.db #0x00	; 0
      001072 00                    3155 	.db #0x00	; 0
      001073 18                    3156 	.db #0x18	; 24
      001074 18                    3157 	.db #0x18	; 24
      001075 00                    3158 	.db #0x00	; 0
      001076 00                    3159 	.db #0x00	; 0
      001077 00                    3160 	.db #0x00	; 0
      001078 00                    3161 	.db #0x00	; 0
      001079 00                    3162 	.db #0x00	; 0
      00107A 18                    3163 	.db #0x18	; 24
      00107B 18                    3164 	.db #0x18	; 24
      00107C 00                    3165 	.db #0x00	; 0
      00107D 00                    3166 	.db #0x00	; 0
      00107E 00                    3167 	.db #0x00	; 0
      00107F 00                    3168 	.db #0x00	; 0
      001080 24                    3169 	.db #0x24	; 36
      001081 00                    3170 	.db #0x00	; 0
      001082 81                    3171 	.db #0x81	; 129
      001083 18                    3172 	.db #0x18	; 24
      001084 18                    3173 	.db #0x18	; 24
      001085 81                    3174 	.db #0x81	; 129
      001086 00                    3175 	.db #0x00	; 0
      001087 24                    3176 	.db #0x24	; 36
      001088 00                    3177 	.db #0x00	; 0
      001089 24                    3178 	.db #0x24	; 36
      00108A 00                    3179 	.db #0x00	; 0
      00108B 81                    3180 	.db #0x81	; 129
      00108C 81                    3181 	.db #0x81	; 129
      00108D 00                    3182 	.db #0x00	; 0
      00108E 24                    3183 	.db #0x24	; 36
      00108F 00                    3184 	.db #0x00	; 0
      001090 24                    3185 	.db #0x24	; 36
      001091 00                    3186 	.db #0x00	; 0
      001092 81                    3187 	.db #0x81	; 129
      001093 00                    3188 	.db #0x00	; 0
      001094 00                    3189 	.db #0x00	; 0
      001095 81                    3190 	.db #0x81	; 129
      001096 00                    3191 	.db #0x00	; 0
      001097 24                    3192 	.db #0x24	; 36
      001098 00                    3193 	.db #0x00	; 0
      001099 24                    3194 	.db #0x24	; 36
      00109A 00                    3195 	.db #0x00	; 0
      00109B 00                    3196 	.db #0x00	; 0
      00109C 00                    3197 	.db #0x00	; 0
      00109D 00                    3198 	.db #0x00	; 0
      00109E 24                    3199 	.db #0x24	; 36
      00109F 00                    3200 	.db #0x00	; 0
      0010A0 00                    3201 	.db #0x00	; 0
      0010A1 00                    3202 	.db #0x00	; 0
      0010A2 24                    3203 	.db #0x24	; 36
      0010A3 00                    3204 	.db #0x00	; 0
      0010A4 00                    3205 	.db #0x00	; 0
      0010A5 24                    3206 	.db #0x24	; 36
      0010A6 00                    3207 	.db #0x00	; 0
      0010A7 00                    3208 	.db #0x00	; 0
      0010A8 00                    3209 	.db #0x00	; 0
      0010A9 00                    3210 	.db #0x00	; 0
      0010AA 00                    3211 	.db #0x00	; 0
      0010AB 24                    3212 	.db #0x24	; 36
      0010AC 24                    3213 	.db #0x24	; 36
      0010AD 00                    3214 	.db #0x00	; 0
      0010AE 00                    3215 	.db #0x00	; 0
      0010AF 00                    3216 	.db #0x00	; 0
      0010B0 00                    3217 	.db #0x00	; 0
      0010B1 00                    3218 	.db #0x00	; 0
      0010B2 00                    3219 	.db #0x00	; 0
      0010B3 00                    3220 	.db #0x00	; 0
      0010B4 00                    3221 	.db #0x00	; 0
      0010B5 24                    3222 	.db #0x24	; 36
      0010B6 24                    3223 	.db #0x24	; 36
      0010B7 00                    3224 	.db #0x00	; 0
      0010B8 00                    3225 	.db #0x00	; 0
      0010B9 00                    3226 	.db #0x00	; 0
      0010BA 00                    3227 	.db #0x00	; 0
      0010BB 00                    3228 	.db #0x00	; 0
      0010BC 00                    3229 	.db #0x00	; 0
      0010BD 00                    3230 	.db #0x00	; 0
      0010BE 00                    3231 	.db #0x00	; 0
      0010BF 00                    3232 	.db #0x00	; 0
                                   3233 	.area XINIT   (CODE)
                                   3234 	.area CABS    (ABS,CODE)
