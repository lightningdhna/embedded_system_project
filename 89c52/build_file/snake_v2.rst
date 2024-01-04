                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module snake_v2
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _number_string
                                     12 	.globl _main
                                     13 	.globl _timer0_interrupt
                                     14 	.globl _UART_Receive
                                     15 	.globl _uart_init
                                     16 	.globl _key_pressed_handle
                                     17 	.globl _reset_timer_0
                                     18 	.globl _go_right
                                     19 	.globl _go_left
                                     20 	.globl _go_down
                                     21 	.globl _go_up
                                     22 	.globl _update_game
                                     23 	.globl _update_food
                                     24 	.globl _game_over
                                     25 	.globl _display_number
                                     26 	.globl _srand
                                     27 	.globl _rand
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _PS
                                     37 	.globl _PT1
                                     38 	.globl _PX1
                                     39 	.globl _PT0
                                     40 	.globl _PX0
                                     41 	.globl _RD
                                     42 	.globl _WR
                                     43 	.globl _T1
                                     44 	.globl _T0
                                     45 	.globl _INT1
                                     46 	.globl _INT0
                                     47 	.globl _TXD
                                     48 	.globl _RXD
                                     49 	.globl _P3_7
                                     50 	.globl _P3_6
                                     51 	.globl _P3_5
                                     52 	.globl _P3_4
                                     53 	.globl _P3_3
                                     54 	.globl _P3_2
                                     55 	.globl _P3_1
                                     56 	.globl _P3_0
                                     57 	.globl _EA
                                     58 	.globl _ES
                                     59 	.globl _ET1
                                     60 	.globl _EX1
                                     61 	.globl _ET0
                                     62 	.globl _EX0
                                     63 	.globl _P2_7
                                     64 	.globl _P2_6
                                     65 	.globl _P2_5
                                     66 	.globl _P2_4
                                     67 	.globl _P2_3
                                     68 	.globl _P2_2
                                     69 	.globl _P2_1
                                     70 	.globl _P2_0
                                     71 	.globl _SM0
                                     72 	.globl _SM1
                                     73 	.globl _SM2
                                     74 	.globl _REN
                                     75 	.globl _TB8
                                     76 	.globl _RB8
                                     77 	.globl _TI
                                     78 	.globl _RI
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _TF1
                                     88 	.globl _TR1
                                     89 	.globl _TF0
                                     90 	.globl _TR0
                                     91 	.globl _IE1
                                     92 	.globl _IT1
                                     93 	.globl _IE0
                                     94 	.globl _IT0
                                     95 	.globl _P0_7
                                     96 	.globl _P0_6
                                     97 	.globl _P0_5
                                     98 	.globl _P0_4
                                     99 	.globl _P0_3
                                    100 	.globl _P0_2
                                    101 	.globl _P0_1
                                    102 	.globl _P0_0
                                    103 	.globl _TF2
                                    104 	.globl _EXF2
                                    105 	.globl _RCLK
                                    106 	.globl _TCLK
                                    107 	.globl _EXEN2
                                    108 	.globl _TR2
                                    109 	.globl _C_T2
                                    110 	.globl _CP_RL2
                                    111 	.globl _T2CON_7
                                    112 	.globl _T2CON_6
                                    113 	.globl _T2CON_5
                                    114 	.globl _T2CON_4
                                    115 	.globl _T2CON_3
                                    116 	.globl _T2CON_2
                                    117 	.globl _T2CON_1
                                    118 	.globl _T2CON_0
                                    119 	.globl _PT2
                                    120 	.globl _ET2
                                    121 	.globl _B
                                    122 	.globl _ACC
                                    123 	.globl _PSW
                                    124 	.globl _IP
                                    125 	.globl _P3
                                    126 	.globl _IE
                                    127 	.globl _P2
                                    128 	.globl _SBUF
                                    129 	.globl _SCON
                                    130 	.globl _P1
                                    131 	.globl _TH1
                                    132 	.globl _TH0
                                    133 	.globl _TL1
                                    134 	.globl _TL0
                                    135 	.globl _TMOD
                                    136 	.globl _TCON
                                    137 	.globl _PCON
                                    138 	.globl _DPH
                                    139 	.globl _DPL
                                    140 	.globl _SP
                                    141 	.globl _P0
                                    142 	.globl _TH2
                                    143 	.globl _TL2
                                    144 	.globl _RCAP2H
                                    145 	.globl _RCAP2L
                                    146 	.globl _T2CON
                                    147 	.globl _show_food
                                    148 	.globl _bit1
                                    149 	.globl _bit0
                                    150 	.globl _food
                                    151 	.globl _tail
                                    152 	.globl _head
                                    153 	.globl _key_pressed
                                    154 	.globl _data_mat
                                    155 	.globl _cur_dir
                                    156 	.globl _sqr_left
                                    157 	.globl _point
                                    158 	.globl _game_timer_counter
                                    159 	.globl _timer_counter
                                    160 	.globl _received_data
                                    161 ;--------------------------------------------------------
                                    162 ; special function registers
                                    163 ;--------------------------------------------------------
                                    164 	.area RSEG    (ABS,DATA)
      000000                        165 	.org 0x0000
                           0000C8   166 _T2CON	=	0x00c8
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                           000080   171 _P0	=	0x0080
                           000081   172 _SP	=	0x0081
                           000082   173 _DPL	=	0x0082
                           000083   174 _DPH	=	0x0083
                           000087   175 _PCON	=	0x0087
                           000088   176 _TCON	=	0x0088
                           000089   177 _TMOD	=	0x0089
                           00008A   178 _TL0	=	0x008a
                           00008B   179 _TL1	=	0x008b
                           00008C   180 _TH0	=	0x008c
                           00008D   181 _TH1	=	0x008d
                           000090   182 _P1	=	0x0090
                           000098   183 _SCON	=	0x0098
                           000099   184 _SBUF	=	0x0099
                           0000A0   185 _P2	=	0x00a0
                           0000A8   186 _IE	=	0x00a8
                           0000B0   187 _P3	=	0x00b0
                           0000B8   188 _IP	=	0x00b8
                           0000D0   189 _PSW	=	0x00d0
                           0000E0   190 _ACC	=	0x00e0
                           0000F0   191 _B	=	0x00f0
                                    192 ;--------------------------------------------------------
                                    193 ; special function bits
                                    194 ;--------------------------------------------------------
                                    195 	.area RSEG    (ABS,DATA)
      000000                        196 	.org 0x0000
                           0000AD   197 _ET2	=	0x00ad
                           0000BD   198 _PT2	=	0x00bd
                           0000C8   199 _T2CON_0	=	0x00c8
                           0000C9   200 _T2CON_1	=	0x00c9
                           0000CA   201 _T2CON_2	=	0x00ca
                           0000CB   202 _T2CON_3	=	0x00cb
                           0000CC   203 _T2CON_4	=	0x00cc
                           0000CD   204 _T2CON_5	=	0x00cd
                           0000CE   205 _T2CON_6	=	0x00ce
                           0000CF   206 _T2CON_7	=	0x00cf
                           0000C8   207 _CP_RL2	=	0x00c8
                           0000C9   208 _C_T2	=	0x00c9
                           0000CA   209 _TR2	=	0x00ca
                           0000CB   210 _EXEN2	=	0x00cb
                           0000CC   211 _TCLK	=	0x00cc
                           0000CD   212 _RCLK	=	0x00cd
                           0000CE   213 _EXF2	=	0x00ce
                           0000CF   214 _TF2	=	0x00cf
                           000080   215 _P0_0	=	0x0080
                           000081   216 _P0_1	=	0x0081
                           000082   217 _P0_2	=	0x0082
                           000083   218 _P0_3	=	0x0083
                           000084   219 _P0_4	=	0x0084
                           000085   220 _P0_5	=	0x0085
                           000086   221 _P0_6	=	0x0086
                           000087   222 _P0_7	=	0x0087
                           000088   223 _IT0	=	0x0088
                           000089   224 _IE0	=	0x0089
                           00008A   225 _IT1	=	0x008a
                           00008B   226 _IE1	=	0x008b
                           00008C   227 _TR0	=	0x008c
                           00008D   228 _TF0	=	0x008d
                           00008E   229 _TR1	=	0x008e
                           00008F   230 _TF1	=	0x008f
                           000090   231 _P1_0	=	0x0090
                           000091   232 _P1_1	=	0x0091
                           000092   233 _P1_2	=	0x0092
                           000093   234 _P1_3	=	0x0093
                           000094   235 _P1_4	=	0x0094
                           000095   236 _P1_5	=	0x0095
                           000096   237 _P1_6	=	0x0096
                           000097   238 _P1_7	=	0x0097
                           000098   239 _RI	=	0x0098
                           000099   240 _TI	=	0x0099
                           00009A   241 _RB8	=	0x009a
                           00009B   242 _TB8	=	0x009b
                           00009C   243 _REN	=	0x009c
                           00009D   244 _SM2	=	0x009d
                           00009E   245 _SM1	=	0x009e
                           00009F   246 _SM0	=	0x009f
                           0000A0   247 _P2_0	=	0x00a0
                           0000A1   248 _P2_1	=	0x00a1
                           0000A2   249 _P2_2	=	0x00a2
                           0000A3   250 _P2_3	=	0x00a3
                           0000A4   251 _P2_4	=	0x00a4
                           0000A5   252 _P2_5	=	0x00a5
                           0000A6   253 _P2_6	=	0x00a6
                           0000A7   254 _P2_7	=	0x00a7
                           0000A8   255 _EX0	=	0x00a8
                           0000A9   256 _ET0	=	0x00a9
                           0000AA   257 _EX1	=	0x00aa
                           0000AB   258 _ET1	=	0x00ab
                           0000AC   259 _ES	=	0x00ac
                           0000AF   260 _EA	=	0x00af
                           0000B0   261 _P3_0	=	0x00b0
                           0000B1   262 _P3_1	=	0x00b1
                           0000B2   263 _P3_2	=	0x00b2
                           0000B3   264 _P3_3	=	0x00b3
                           0000B4   265 _P3_4	=	0x00b4
                           0000B5   266 _P3_5	=	0x00b5
                           0000B6   267 _P3_6	=	0x00b6
                           0000B7   268 _P3_7	=	0x00b7
                           0000B0   269 _RXD	=	0x00b0
                           0000B1   270 _TXD	=	0x00b1
                           0000B2   271 _INT0	=	0x00b2
                           0000B3   272 _INT1	=	0x00b3
                           0000B4   273 _T0	=	0x00b4
                           0000B5   274 _T1	=	0x00b5
                           0000B6   275 _WR	=	0x00b6
                           0000B7   276 _RD	=	0x00b7
                           0000B8   277 _PX0	=	0x00b8
                           0000B9   278 _PT0	=	0x00b9
                           0000BA   279 _PX1	=	0x00ba
                           0000BB   280 _PT1	=	0x00bb
                           0000BC   281 _PS	=	0x00bc
                           0000D0   282 _P	=	0x00d0
                           0000D1   283 _F1	=	0x00d1
                           0000D2   284 _OV	=	0x00d2
                           0000D3   285 _RS0	=	0x00d3
                           0000D4   286 _RS1	=	0x00d4
                           0000D5   287 _F0	=	0x00d5
                           0000D6   288 _AC	=	0x00d6
                           0000D7   289 _CY	=	0x00d7
                                    290 ;--------------------------------------------------------
                                    291 ; overlayable register banks
                                    292 ;--------------------------------------------------------
                                    293 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        294 	.ds 8
                                    295 ;--------------------------------------------------------
                                    296 ; overlayable bit register bank
                                    297 ;--------------------------------------------------------
                                    298 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        299 bits:
      000021                        300 	.ds 1
                           008000   301 	b0 = bits[0]
                           008100   302 	b1 = bits[1]
                           008200   303 	b2 = bits[2]
                           008300   304 	b3 = bits[3]
                           008400   305 	b4 = bits[4]
                           008500   306 	b5 = bits[5]
                           008600   307 	b6 = bits[6]
                           008700   308 	b7 = bits[7]
                                    309 ;--------------------------------------------------------
                                    310 ; internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area DSEG    (DATA)
      000022                        313 _display_number_led_65537_56:
      000022                        314 	.ds 1
      000023                        315 _display_number_neg_65537_56:
      000023                        316 	.ds 1
      000024                        317 _received_data::
      000024                        318 	.ds 1
      000025                        319 _timer_counter::
      000025                        320 	.ds 4
      000029                        321 _game_timer_counter::
      000029                        322 	.ds 2
      00002B                        323 _point::
      00002B                        324 	.ds 1
      00002C                        325 _sqr_left::
      00002C                        326 	.ds 1
      00002D                        327 _cur_dir::
      00002D                        328 	.ds 1
      00002E                        329 _data_mat::
      00002E                        330 	.ds 8
      000036                        331 _key_pressed::
      000036                        332 	.ds 1
      000037                        333 _head::
      000037                        334 	.ds 1
      000038                        335 _tail::
      000038                        336 	.ds 1
      000039                        337 _food::
      000039                        338 	.ds 1
      00003A                        339 _bit0::
      00003A                        340 	.ds 8
      000042                        341 _bit1::
      000042                        342 	.ds 8
      00004A                        343 _game_over_temp_65537_111:
      00004A                        344 	.ds 1
      00004B                        345 _game_over_i_65537_111:
      00004B                        346 	.ds 1
      00004C                        347 _game_over_j_65537_111:
      00004C                        348 	.ds 1
      00004D                        349 _game_over_t_65537_111:
      00004D                        350 	.ds 1
      00004E                        351 _game_over_current_data_983041_136:
      00004E                        352 	.ds 1
      00004F                        353 _game_over_row_917505_148:
      00004F                        354 	.ds 1
      000050                        355 _game_over_current_data_983041_149:
      000050                        356 	.ds 1
      000051                        357 _game_over_i_1048577_150:
      000051                        358 	.ds 1
      000052                        359 _game_over_sloc0_1_0:
      000052                        360 	.ds 1
      000053                        361 _game_over_sloc1_1_0:
      000053                        362 	.ds 2
      000055                        363 _game_over_sloc2_1_0:
      000055                        364 	.ds 2
      000057                        365 _update_food_i_131072_157:
      000057                        366 	.ds 1
      000058                        367 _show_food::
      000058                        368 	.ds 1
      000059                        369 _main_current_data_655360_262:
      000059                        370 	.ds 1
                                    371 ;--------------------------------------------------------
                                    372 ; overlayable items in internal ram
                                    373 ;--------------------------------------------------------
                                    374 ;--------------------------------------------------------
                                    375 ; Stack segment in internal ram
                                    376 ;--------------------------------------------------------
                                    377 	.area SSEG
      00005A                        378 __start__stack:
      00005A                        379 	.ds	1
                                    380 
                                    381 ;--------------------------------------------------------
                                    382 ; indirectly addressable internal ram data
                                    383 ;--------------------------------------------------------
                                    384 	.area ISEG    (DATA)
                                    385 ;--------------------------------------------------------
                                    386 ; absolute internal ram data
                                    387 ;--------------------------------------------------------
                                    388 	.area IABS    (ABS,DATA)
                                    389 	.area IABS    (ABS,DATA)
                                    390 ;--------------------------------------------------------
                                    391 ; bit data
                                    392 ;--------------------------------------------------------
                                    393 	.area BSEG    (BIT)
      000000                        394 _update_food_sloc0_1_0:
      000000                        395 	.ds 1
      000001                        396 _update_game_sloc0_1_0:
      000001                        397 	.ds 1
                                    398 ;--------------------------------------------------------
                                    399 ; paged external ram data
                                    400 ;--------------------------------------------------------
                                    401 	.area PSEG    (PAG,XDATA)
                                    402 ;--------------------------------------------------------
                                    403 ; uninitialized external ram data
                                    404 ;--------------------------------------------------------
                                    405 	.area XSEG    (XDATA)
                                    406 ;--------------------------------------------------------
                                    407 ; absolute external ram data
                                    408 ;--------------------------------------------------------
                                    409 	.area XABS    (ABS,XDATA)
                                    410 ;--------------------------------------------------------
                                    411 ; initialized external ram data
                                    412 ;--------------------------------------------------------
                                    413 	.area XISEG   (XDATA)
                                    414 	.area HOME    (CODE)
                                    415 	.area GSINIT0 (CODE)
                                    416 	.area GSINIT1 (CODE)
                                    417 	.area GSINIT2 (CODE)
                                    418 	.area GSINIT3 (CODE)
                                    419 	.area GSINIT4 (CODE)
                                    420 	.area GSINIT5 (CODE)
                                    421 	.area GSINIT  (CODE)
                                    422 	.area GSFINAL (CODE)
                                    423 	.area CSEG    (CODE)
                                    424 ;--------------------------------------------------------
                                    425 ; interrupt vector
                                    426 ;--------------------------------------------------------
                                    427 	.area HOME    (CODE)
      000000                        428 __interrupt_vect:
      000000 02 00 29         [24]  429 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  430 	reti
      000004                        431 	.ds	7
      00000B 02 09 8C         [24]  432 	ljmp	_timer0_interrupt
      00000E                        433 	.ds	5
      000013 32               [24]  434 	reti
      000014                        435 	.ds	7
      00001B 32               [24]  436 	reti
      00001C                        437 	.ds	7
      000023 02 09 30         [24]  438 	ljmp	_UART_Receive
                                    439 ;--------------------------------------------------------
                                    440 ; global & static initialisations
                                    441 ;--------------------------------------------------------
                                    442 	.area HOME    (CODE)
                                    443 	.area GSINIT  (CODE)
                                    444 	.area GSFINAL (CODE)
                                    445 	.area GSINIT  (CODE)
                                    446 	.globl __sdcc_gsinit_startup
                                    447 	.globl __sdcc_program_startup
                                    448 	.globl __start__stack
                                    449 	.globl __mcs51_genXINIT
                                    450 	.globl __mcs51_genXRAMCLEAR
                                    451 	.globl __mcs51_genRAMCLEAR
                                    452 ;	snake_v2.c:20: unsigned long timer_counter = 0;
      000082 E4               [12]  453 	clr	a
      000083 F5 25            [12]  454 	mov	_timer_counter,a
      000085 F5 26            [12]  455 	mov	(_timer_counter + 1),a
      000087 F5 27            [12]  456 	mov	(_timer_counter + 2),a
      000089 F5 28            [12]  457 	mov	(_timer_counter + 3),a
                                    458 ;	snake_v2.c:21: int game_timer_counter = 0;
      00008B F5 29            [12]  459 	mov	_game_timer_counter,a
      00008D F5 2A            [12]  460 	mov	(_game_timer_counter + 1),a
                                    461 ;	snake_v2.c:22: char point = 0;
      00008F F5 2B            [12]  462 	mov	_point,a
                                    463 ;	snake_v2.c:24: char sqr_left = 61;
      000091 75 2C 3D         [24]  464 	mov	_sqr_left,#0x3d
                                    465 ;	snake_v2.c:25: char cur_dir = dir_right;
      000094 75 2D 01         [24]  466 	mov	_cur_dir,#0x01
                                    467 ;	snake_v2.c:27: char key_pressed = 20;
      000097 75 36 14         [24]  468 	mov	_key_pressed,#0x14
                                    469 ;	snake_v2.c:449: char show_food = 1;
      00009A 75 58 01         [24]  470 	mov	_show_food,#0x01
                                    471 	.area GSFINAL (CODE)
      0000A8 02 00 26         [24]  472 	ljmp	__sdcc_program_startup
                                    473 ;--------------------------------------------------------
                                    474 ; Home
                                    475 ;--------------------------------------------------------
                                    476 	.area HOME    (CODE)
                                    477 	.area HOME    (CODE)
      000026                        478 __sdcc_program_startup:
      000026 02 0A B2         [24]  479 	ljmp	_main
                                    480 ;	return from main will return to caller
                                    481 ;--------------------------------------------------------
                                    482 ; code
                                    483 ;--------------------------------------------------------
                                    484 	.area CSEG    (CODE)
                                    485 ;------------------------------------------------------------
                                    486 ;Allocation info for local variables in function 'display_number'
                                    487 ;------------------------------------------------------------
                                    488 ;number                    Allocated to registers r4 r5 r6 r7 
                                    489 ;i                         Allocated to registers r3 
                                    490 ;led                       Allocated with name '_display_number_led_65537_56'
                                    491 ;neg                       Allocated with name '_display_number_neg_65537_56'
                                    492 ;__1966090004              Allocated to registers r3 
                                    493 ;__1966090005              Allocated to registers r0 
                                    494 ;led                       Allocated to registers 
                                    495 ;digit                     Allocated to registers 
                                    496 ;------------------------------------------------------------
                                    497 ;	led7seg.h:27: void display_number(long number)
                                    498 ;	-----------------------------------------
                                    499 ;	 function display_number
                                    500 ;	-----------------------------------------
      0000AB                        501 _display_number:
                           000007   502 	ar7 = 0x07
                           000006   503 	ar6 = 0x06
                           000005   504 	ar5 = 0x05
                           000004   505 	ar4 = 0x04
                           000003   506 	ar3 = 0x03
                           000002   507 	ar2 = 0x02
                           000001   508 	ar1 = 0x01
                           000000   509 	ar0 = 0x00
      0000AB AC 82            [24]  510 	mov	r4,dpl
      0000AD AD 83            [24]  511 	mov	r5,dph
      0000AF AE F0            [24]  512 	mov	r6,b
      0000B1 FF               [12]  513 	mov	r7,a
                                    514 ;	led7seg.h:29: if (!number)
      0000B2 EC               [12]  515 	mov	a,r4
      0000B3 4D               [12]  516 	orl	a,r5
      0000B4 4E               [12]  517 	orl	a,r6
      0000B5 4F               [12]  518 	orl	a,r7
                                    519 ;	led7seg.h:31: P0 = 0;
      0000B6 70 17            [24]  520 	jnz	00103$
      0000B8 F5 80            [12]  521 	mov	_P0,a
                                    522 ;	led7seg.h:32: P2 &= 0b11100011;
      0000BA 53 A0 E3         [24]  523 	anl	_P2,#0xe3
                                    524 ;	led7seg.h:33: P0 = number_string[0];
      0000BD 90 0F 02         [24]  525 	mov	dptr,#_number_string
      0000C0 E4               [12]  526 	clr	a
      0000C1 93               [24]  527 	movc	a,@a+dptr
      0000C2 F5 80            [12]  528 	mov	_P0,a
                                    529 ;	led7seg.h:34: for (char i = 0; i < 100; i++)
      0000C4 7B 00            [12]  530 	mov	r3,#0x00
      0000C6                        531 00113$:
      0000C6 BB 64 00         [24]  532 	cjne	r3,#0x64,00148$
      0000C9                        533 00148$:
      0000C9 50 03            [24]  534 	jnc	00101$
      0000CB 0B               [12]  535 	inc	r3
      0000CC 80 F8            [24]  536 	sjmp	00113$
      0000CE                        537 00101$:
                                    538 ;	led7seg.h:36: return;
      0000CE 22               [24]  539 	ret
      0000CF                        540 00103$:
                                    541 ;	led7seg.h:39: char neg = 0;
      0000CF 75 23 00         [24]  542 	mov	_display_number_neg_65537_56,#0x00
                                    543 ;	led7seg.h:40: if (number < 0)
      0000D2 EF               [12]  544 	mov	a,r7
      0000D3 30 E7 10         [24]  545 	jnb	acc.7,00122$
                                    546 ;	led7seg.h:42: neg = 1;
      0000D6 75 23 01         [24]  547 	mov	_display_number_neg_65537_56,#0x01
                                    548 ;	led7seg.h:43: number = -number;
      0000D9 C3               [12]  549 	clr	c
      0000DA E4               [12]  550 	clr	a
      0000DB 9C               [12]  551 	subb	a,r4
      0000DC FC               [12]  552 	mov	r4,a
      0000DD E4               [12]  553 	clr	a
      0000DE 9D               [12]  554 	subb	a,r5
      0000DF FD               [12]  555 	mov	r5,a
      0000E0 E4               [12]  556 	clr	a
      0000E1 9E               [12]  557 	subb	a,r6
      0000E2 FE               [12]  558 	mov	r6,a
      0000E3 E4               [12]  559 	clr	a
      0000E4 9F               [12]  560 	subb	a,r7
      0000E5 FF               [12]  561 	mov	r7,a
                                    562 ;	led7seg.h:53: while (number)
      0000E6                        563 00122$:
      0000E6 75 22 00         [24]  564 	mov	_display_number_led_65537_56,#0x00
      0000E9                        565 00106$:
      0000E9 EC               [12]  566 	mov	a,r4
      0000EA 4D               [12]  567 	orl	a,r5
      0000EB 4E               [12]  568 	orl	a,r6
      0000EC 4F               [12]  569 	orl	a,r7
      0000ED 60 5A            [24]  570 	jz	00108$
                                    571 ;	led7seg.h:55: display_digit(led++, number % 10);
      0000EF 75 0C 0A         [24]  572 	mov	__modslong_PARM_2,#0x0a
      0000F2 E4               [12]  573 	clr	a
      0000F3 F5 0D            [12]  574 	mov	(__modslong_PARM_2 + 1),a
      0000F5 F5 0E            [12]  575 	mov	(__modslong_PARM_2 + 2),a
      0000F7 F5 0F            [12]  576 	mov	(__modslong_PARM_2 + 3),a
      0000F9 8C 82            [24]  577 	mov	dpl,r4
      0000FB 8D 83            [24]  578 	mov	dph,r5
      0000FD 8E F0            [24]  579 	mov	b,r6
      0000FF EF               [12]  580 	mov	a,r7
      000100 C0 07            [24]  581 	push	ar7
      000102 C0 06            [24]  582 	push	ar6
      000104 C0 05            [24]  583 	push	ar5
      000106 C0 04            [24]  584 	push	ar4
      000108 12 0D EF         [24]  585 	lcall	__modslong
      00010B A8 82            [24]  586 	mov	r0,dpl
      00010D D0 04            [24]  587 	pop	ar4
      00010F D0 05            [24]  588 	pop	ar5
      000111 D0 06            [24]  589 	pop	ar6
      000113 D0 07            [24]  590 	pop	ar7
      000115 AB 22            [24]  591 	mov	r3,_display_number_led_65537_56
      000117 05 22            [12]  592 	inc	_display_number_led_65537_56
                                    593 ;	led7seg.h:19: P0 = 0;
      000119 75 80 00         [24]  594 	mov	_P0,#0x00
                                    595 ;	led7seg.h:20: P2 &= 0b11100011;
      00011C 53 A0 E3         [24]  596 	anl	_P2,#0xe3
                                    597 ;	led7seg.h:21: P2 |= led << 2;
      00011F EB               [12]  598 	mov	a,r3
      000120 2B               [12]  599 	add	a,r3
      000121 25 E0            [12]  600 	add	a,acc
      000123 42 A0            [12]  601 	orl	_P2,a
                                    602 ;	led7seg.h:24: P0 = number_string[digit];
      000125 E8               [12]  603 	mov	a,r0
      000126 90 0F 02         [24]  604 	mov	dptr,#_number_string
      000129 93               [24]  605 	movc	a,@a+dptr
      00012A F5 80            [12]  606 	mov	_P0,a
                                    607 ;	led7seg.h:56: number /= 10;
      00012C 75 0C 0A         [24]  608 	mov	__divslong_PARM_2,#0x0a
      00012F E4               [12]  609 	clr	a
      000130 F5 0D            [12]  610 	mov	(__divslong_PARM_2 + 1),a
      000132 F5 0E            [12]  611 	mov	(__divslong_PARM_2 + 2),a
      000134 F5 0F            [12]  612 	mov	(__divslong_PARM_2 + 3),a
      000136 8C 82            [24]  613 	mov	dpl,r4
      000138 8D 83            [24]  614 	mov	dph,r5
      00013A 8E F0            [24]  615 	mov	b,r6
      00013C EF               [12]  616 	mov	a,r7
      00013D 12 0E 3E         [24]  617 	lcall	__divslong
      000140 AC 82            [24]  618 	mov	r4,dpl
      000142 AD 83            [24]  619 	mov	r5,dph
      000144 AE F0            [24]  620 	mov	r6,b
      000146 FF               [12]  621 	mov	r7,a
      000147 80 A0            [24]  622 	sjmp	00106$
      000149                        623 00108$:
                                    624 ;	led7seg.h:58: if (neg)
      000149 E5 23            [12]  625 	mov	a,_display_number_neg_65537_56
      00014B 60 0F            [24]  626 	jz	00115$
                                    627 ;	led7seg.h:60: P0 = 0;
      00014D 75 80 00         [24]  628 	mov	_P0,#0x00
                                    629 ;	led7seg.h:61: P2 = led << 2;
      000150 E5 22            [12]  630 	mov	a,_display_number_led_65537_56
      000152 FA               [12]  631 	mov	r2,a
      000153 25 E0            [12]  632 	add	a,acc
      000155 25 E0            [12]  633 	add	a,acc
      000157 F5 A0            [12]  634 	mov	_P2,a
                                    635 ;	led7seg.h:62: P0 = 0b01000000;
      000159 75 80 40         [24]  636 	mov	_P0,#0x40
      00015C                        637 00115$:
                                    638 ;	led7seg.h:64: }
      00015C 22               [24]  639 	ret
                                    640 ;------------------------------------------------------------
                                    641 ;Allocation info for local variables in function 'game_over'
                                    642 ;------------------------------------------------------------
                                    643 ;i                         Allocated to registers r6 r7 
                                    644 ;j                         Allocated to registers r4 r5 
                                    645 ;j                         Allocated to registers r4 r5 
                                    646 ;i                         Allocated to registers r7 
                                    647 ;temp                      Allocated with name '_game_over_temp_65537_111'
                                    648 ;i                         Allocated with name '_game_over_i_65537_111'
                                    649 ;j                         Allocated with name '_game_over_j_65537_111'
                                    650 ;t                         Allocated with name '_game_over_t_65537_111'
                                    651 ;row                       Allocated to registers r4 
                                    652 ;current_data              Allocated with name '_game_over_current_data_983041_136'
                                    653 ;i                         Allocated to registers r2 
                                    654 ;i                         Allocated to registers r6 
                                    655 ;i                         Allocated to registers r6 
                                    656 ;row                       Allocated with name '_game_over_row_917505_148'
                                    657 ;current_data              Allocated with name '_game_over_current_data_983041_149'
                                    658 ;i                         Allocated with name '_game_over_i_1048577_150'
                                    659 ;i                         Allocated to registers r3 
                                    660 ;i                         Allocated to registers r3 
                                    661 ;sloc0                     Allocated with name '_game_over_sloc0_1_0'
                                    662 ;sloc1                     Allocated with name '_game_over_sloc1_1_0'
                                    663 ;sloc2                     Allocated with name '_game_over_sloc2_1_0'
                                    664 ;------------------------------------------------------------
                                    665 ;	snake_v2.c:131: void game_over(void)
                                    666 ;	-----------------------------------------
                                    667 ;	 function game_over
                                    668 ;	-----------------------------------------
      00015D                        669 _game_over:
                                    670 ;	snake_v2.c:133: EA = 0;
                                    671 ;	assignBit
      00015D C2 AF            [12]  672 	clr	_EA
                                    673 ;	snake_v2.c:137: for (int i = 0; i < time * 1e3 / 200; i++)
      00015F 7E 00            [12]  674 	mov	r6,#0x00
      000161 7F 00            [12]  675 	mov	r7,#0x00
      000163                        676 00150$:
      000163 C3               [12]  677 	clr	c
      000164 EE               [12]  678 	mov	a,r6
      000165 94 C8            [12]  679 	subb	a,#0xc8
      000167 EF               [12]  680 	mov	a,r7
      000168 64 80            [12]  681 	xrl	a,#0x80
      00016A 94 80            [12]  682 	subb	a,#0x80
      00016C 50 37            [24]  683 	jnc	00103$
                                    684 ;	snake_v2.c:139: buzzer_pin = 1;
                                    685 ;	assignBit
      00016E D2 95            [12]  686 	setb	_P1_5
                                    687 ;	snake_v2.c:140: for (int j = 0; j < 90; j++)
      000170 7C 00            [12]  688 	mov	r4,#0x00
      000172 7D 00            [12]  689 	mov	r5,#0x00
      000174                        690 00144$:
      000174 C3               [12]  691 	clr	c
      000175 EC               [12]  692 	mov	a,r4
      000176 94 5A            [12]  693 	subb	a,#0x5a
      000178 ED               [12]  694 	mov	a,r5
      000179 64 80            [12]  695 	xrl	a,#0x80
      00017B 94 80            [12]  696 	subb	a,#0x80
      00017D 50 07            [24]  697 	jnc	00101$
      00017F 0C               [12]  698 	inc	r4
      000180 BC 00 F1         [24]  699 	cjne	r4,#0x00,00144$
      000183 0D               [12]  700 	inc	r5
      000184 80 EE            [24]  701 	sjmp	00144$
      000186                        702 00101$:
                                    703 ;	snake_v2.c:142: buzzer_pin = 0;
                                    704 ;	assignBit
      000186 C2 95            [12]  705 	clr	_P1_5
                                    706 ;	snake_v2.c:143: for (int j = 0; j < 90; j++)
      000188 7C 00            [12]  707 	mov	r4,#0x00
      00018A 7D 00            [12]  708 	mov	r5,#0x00
      00018C                        709 00147$:
      00018C C3               [12]  710 	clr	c
      00018D EC               [12]  711 	mov	a,r4
      00018E 94 5A            [12]  712 	subb	a,#0x5a
      000190 ED               [12]  713 	mov	a,r5
      000191 64 80            [12]  714 	xrl	a,#0x80
      000193 94 80            [12]  715 	subb	a,#0x80
      000195 50 07            [24]  716 	jnc	00151$
      000197 0C               [12]  717 	inc	r4
      000198 BC 00 F1         [24]  718 	cjne	r4,#0x00,00147$
      00019B 0D               [12]  719 	inc	r5
      00019C 80 EE            [24]  720 	sjmp	00147$
      00019E                        721 00151$:
                                    722 ;	snake_v2.c:137: for (int i = 0; i < time * 1e3 / 200; i++)
      00019E 0E               [12]  723 	inc	r6
      00019F BE 00 C1         [24]  724 	cjne	r6,#0x00,00150$
      0001A2 0F               [12]  725 	inc	r7
      0001A3 80 BE            [24]  726 	sjmp	00150$
      0001A5                        727 00103$:
                                    728 ;	snake_v2.c:146: for (char i = 0; i < 8; i++)
      0001A5 7F 00            [12]  729 	mov	r7,#0x00
      0001A7                        730 00153$:
      0001A7 BF 08 00         [24]  731 	cjne	r7,#0x08,00403$
      0001AA                        732 00403$:
      0001AA 50 09            [24]  733 	jnc	00104$
                                    734 ;	snake_v2.c:147: data_mat[i] = 0;
      0001AC EF               [12]  735 	mov	a,r7
      0001AD 24 2E            [12]  736 	add	a,#_data_mat
      0001AF F8               [12]  737 	mov	r0,a
      0001B0 76 00            [12]  738 	mov	@r0,#0x00
                                    739 ;	snake_v2.c:146: for (char i = 0; i < 8; i++)
      0001B2 0F               [12]  740 	inc	r7
      0001B3 80 F2            [24]  741 	sjmp	00153$
      0001B5                        742 00104$:
                                    743 ;	snake_v2.c:210: const char temp = rand() % 6;
      0001B5 12 0C 94         [24]  744 	lcall	_rand
      0001B8 75 0C 06         [24]  745 	mov	__modsint_PARM_2,#0x06
      0001BB 75 0D 00         [24]  746 	mov	(__modsint_PARM_2 + 1),#0x00
      0001BE 12 0E 90         [24]  747 	lcall	__modsint
      0001C1 AE 82            [24]  748 	mov	r6,dpl
      0001C3 AF 83            [24]  749 	mov	r7,dph
      0001C5 8E 4A            [24]  750 	mov	_game_over_temp_65537_111,r6
                                    751 ;	snake_v2.c:232: if (point > 2)
      0001C7 E5 2B            [12]  752 	mov	a,_point
      0001C9 24 FD            [12]  753 	add	a,#0xff - 0x02
      0001CB 40 03            [24]  754 	jc	00405$
      0001CD 02 03 6E         [24]  755 	ljmp	00239$
      0001D0                        756 00405$:
                                    757 ;	snake_v2.c:237: for (i = 0; i < 8; i++)
      0001D0                        758 00219$:
      0001D0 E5 4A            [12]  759 	mov	a,_game_over_temp_65537_111
      0001D2 75 F0 08         [24]  760 	mov	b,#0x08
      0001D5 A4               [48]  761 	mul	ab
      0001D6 24 0C            [12]  762 	add	a,#_game_over_floating_display_65537_111
      0001D8 FD               [12]  763 	mov	r5,a
      0001D9 74 0F            [12]  764 	mov	a,#(_game_over_floating_display_65537_111 >> 8)
      0001DB 35 F0            [12]  765 	addc	a,b
      0001DD FF               [12]  766 	mov	r7,a
      0001DE 75 4B 00         [24]  767 	mov	_game_over_i_65537_111,#0x00
                                    768 ;	snake_v2.c:239: for (j = 0; j < 8; j++)
      0001E1                        769 00205$:
      0001E1 75 4C 00         [24]  770 	mov	_game_over_j_65537_111,#0x00
      0001E4                        771 00155$:
                                    772 ;	snake_v2.c:241: data_mat[j] = floating_display[temp][(j + i) % 8] & 0b11110000 |
      0001E4 E5 4C            [12]  773 	mov	a,_game_over_j_65537_111
      0001E6 24 2E            [12]  774 	add	a,#_data_mat
      0001E8 F5 52            [12]  775 	mov	_game_over_sloc0_1_0,a
      0001EA E5 4C            [12]  776 	mov	a,_game_over_j_65537_111
      0001EC FA               [12]  777 	mov	r2,a
      0001ED 33               [12]  778 	rlc	a
      0001EE 95 E0            [12]  779 	subb	a,acc
      0001F0 FE               [12]  780 	mov	r6,a
      0001F1 E5 4B            [12]  781 	mov	a,_game_over_i_65537_111
      0001F3 F5 53            [12]  782 	mov	_game_over_sloc1_1_0,a
      0001F5 33               [12]  783 	rlc	a
      0001F6 95 E0            [12]  784 	subb	a,acc
      0001F8 F5 54            [12]  785 	mov	(_game_over_sloc1_1_0 + 1),a
      0001FA E5 53            [12]  786 	mov	a,_game_over_sloc1_1_0
      0001FC 2A               [12]  787 	add	a,r2
      0001FD F5 82            [12]  788 	mov	dpl,a
      0001FF E5 54            [12]  789 	mov	a,(_game_over_sloc1_1_0 + 1)
      000201 3E               [12]  790 	addc	a,r6
      000202 F5 83            [12]  791 	mov	dph,a
      000204 75 0C 08         [24]  792 	mov	__modsint_PARM_2,#0x08
      000207 75 0D 00         [24]  793 	mov	(__modsint_PARM_2 + 1),#0x00
      00020A C0 07            [24]  794 	push	ar7
      00020C C0 06            [24]  795 	push	ar6
      00020E C0 05            [24]  796 	push	ar5
      000210 C0 02            [24]  797 	push	ar2
      000212 12 0E 90         [24]  798 	lcall	__modsint
      000215 AB 82            [24]  799 	mov	r3,dpl
      000217 AC 83            [24]  800 	mov	r4,dph
      000219 D0 02            [24]  801 	pop	ar2
      00021B D0 05            [24]  802 	pop	ar5
      00021D D0 06            [24]  803 	pop	ar6
      00021F D0 07            [24]  804 	pop	ar7
      000221 EB               [12]  805 	mov	a,r3
      000222 2D               [12]  806 	add	a,r5
      000223 F5 82            [12]  807 	mov	dpl,a
      000225 EC               [12]  808 	mov	a,r4
      000226 3F               [12]  809 	addc	a,r7
      000227 F5 83            [12]  810 	mov	dph,a
      000229 E4               [12]  811 	clr	a
      00022A 93               [24]  812 	movc	a,@a+dptr
      00022B FC               [12]  813 	mov	r4,a
      00022C 53 04 F0         [24]  814 	anl	ar4,#0xf0
                                    815 ;	snake_v2.c:242: floating_display[temp][(j - i + 8) % 8] & 0b00001111;
      00022F EA               [12]  816 	mov	a,r2
      000230 C3               [12]  817 	clr	c
      000231 95 53            [12]  818 	subb	a,_game_over_sloc1_1_0
      000233 FA               [12]  819 	mov	r2,a
      000234 EE               [12]  820 	mov	a,r6
      000235 95 54            [12]  821 	subb	a,(_game_over_sloc1_1_0 + 1)
      000237 FE               [12]  822 	mov	r6,a
      000238 74 08            [12]  823 	mov	a,#0x08
      00023A 2A               [12]  824 	add	a,r2
      00023B F5 82            [12]  825 	mov	dpl,a
      00023D E4               [12]  826 	clr	a
      00023E 3E               [12]  827 	addc	a,r6
      00023F F5 83            [12]  828 	mov	dph,a
      000241 75 0C 08         [24]  829 	mov	__modsint_PARM_2,#0x08
      000244 75 0D 00         [24]  830 	mov	(__modsint_PARM_2 + 1),#0x00
      000247 C0 07            [24]  831 	push	ar7
      000249 C0 05            [24]  832 	push	ar5
      00024B C0 04            [24]  833 	push	ar4
      00024D 12 0E 90         [24]  834 	lcall	__modsint
      000250 AB 82            [24]  835 	mov	r3,dpl
      000252 AE 83            [24]  836 	mov	r6,dph
      000254 D0 04            [24]  837 	pop	ar4
      000256 D0 05            [24]  838 	pop	ar5
      000258 D0 07            [24]  839 	pop	ar7
      00025A EB               [12]  840 	mov	a,r3
      00025B 2D               [12]  841 	add	a,r5
      00025C F5 82            [12]  842 	mov	dpl,a
      00025E EE               [12]  843 	mov	a,r6
      00025F 3F               [12]  844 	addc	a,r7
      000260 F5 83            [12]  845 	mov	dph,a
      000262 E4               [12]  846 	clr	a
      000263 93               [24]  847 	movc	a,@a+dptr
      000264 FE               [12]  848 	mov	r6,a
      000265 74 0F            [12]  849 	mov	a,#0x0f
      000267 5E               [12]  850 	anl	a,r6
      000268 4C               [12]  851 	orl	a,r4
      000269 A8 52            [24]  852 	mov	r0,_game_over_sloc0_1_0
      00026B F6               [12]  853 	mov	@r0,a
                                    854 ;	snake_v2.c:239: for (j = 0; j < 8; j++)
      00026C 05 4C            [12]  855 	inc	_game_over_j_65537_111
      00026E C3               [12]  856 	clr	c
      00026F E5 4C            [12]  857 	mov	a,_game_over_j_65537_111
      000271 64 80            [12]  858 	xrl	a,#0x80
      000273 94 88            [12]  859 	subb	a,#0x88
      000275 50 03            [24]  860 	jnc	00406$
      000277 02 01 E4         [24]  861 	ljmp	00155$
      00027A                        862 00406$:
                                    863 ;	snake_v2.c:245: for (t = 0; t < 30; t++)
      00027A 75 4D 00         [24]  864 	mov	_game_over_t_65537_111,#0x00
      00027D                        865 00171$:
                                    866 ;	snake_v2.c:59: P2 = 0b11111111;
      00027D 75 A0 FF         [24]  867 	mov	_P2,#0xff
                                    868 ;	snake_v2.c:60: P0 = 0xFF;
      000280 75 80 FF         [24]  869 	mov	_P0,#0xff
                                    870 ;	snake_v2.c:40: for (char row = 0; row < 8; row++)
      000283 7C 00            [12]  871 	mov	r4,#0x00
      000285                        872 00164$:
      000285 BC 08 00         [24]  873 	cjne	r4,#0x08,00407$
      000288                        874 00407$:
      000288 50 71            [24]  875 	jnc	00132$
                                    876 ;	snake_v2.c:42: const char current_data = data_mat[row];
      00028A EC               [12]  877 	mov	a,r4
      00028B 24 2E            [12]  878 	add	a,#_data_mat
      00028D F9               [12]  879 	mov	r1,a
      00028E 87 4E            [24]  880 	mov	_game_over_current_data_983041_136,@r1
                                    881 ;	snake_v2.c:43: for (char i = 0; i < 8; i++)
      000290 8C F0            [24]  882 	mov	b,r4
      000292 05 F0            [12]  883 	inc	b
      000294 75 53 80         [24]  884 	mov	_game_over_sloc1_1_0,#0x80
      000297 E4               [12]  885 	clr	a
      000298 F5 54            [12]  886 	mov	(_game_over_sloc1_1_0 + 1),a
      00029A 33               [12]  887 	rlc	a
      00029B 92 D2            [24]  888 	mov	ov,c
      00029D 80 0C            [24]  889 	sjmp	00410$
      00029F                        890 00409$:
      00029F A2 D2            [12]  891 	mov	c,ov
      0002A1 E5 54            [12]  892 	mov	a,(_game_over_sloc1_1_0 + 1)
      0002A3 13               [12]  893 	rrc	a
      0002A4 F5 54            [12]  894 	mov	(_game_over_sloc1_1_0 + 1),a
      0002A6 E5 53            [12]  895 	mov	a,_game_over_sloc1_1_0
      0002A8 13               [12]  896 	rrc	a
      0002A9 F5 53            [12]  897 	mov	_game_over_sloc1_1_0,a
      0002AB                        898 00410$:
      0002AB D5 F0 F1         [24]  899 	djnz	b,00409$
      0002AE 7A 00            [12]  900 	mov	r2,#0x00
      0002B0                        901 00158$:
      0002B0 BA 08 00         [24]  902 	cjne	r2,#0x08,00411$
      0002B3                        903 00411$:
      0002B3 50 2D            [24]  904 	jnc	00129$
                                    905 ;	snake_v2.c:45: SER = (0x80 >> row) & (0x80 >> i);
      0002B5 8A F0            [24]  906 	mov	b,r2
      0002B7 05 F0            [12]  907 	inc	b
      0002B9 7B 80            [12]  908 	mov	r3,#0x80
      0002BB E4               [12]  909 	clr	a
      0002BC FE               [12]  910 	mov	r6,a
      0002BD 33               [12]  911 	rlc	a
      0002BE 92 D2            [24]  912 	mov	ov,c
      0002C0 80 08            [24]  913 	sjmp	00414$
      0002C2                        914 00413$:
      0002C2 A2 D2            [12]  915 	mov	c,ov
      0002C4 EE               [12]  916 	mov	a,r6
      0002C5 13               [12]  917 	rrc	a
      0002C6 FE               [12]  918 	mov	r6,a
      0002C7 EB               [12]  919 	mov	a,r3
      0002C8 13               [12]  920 	rrc	a
      0002C9 FB               [12]  921 	mov	r3,a
      0002CA                        922 00414$:
      0002CA D5 F0 F5         [24]  923 	djnz	b,00413$
      0002CD E5 53            [12]  924 	mov	a,_game_over_sloc1_1_0
      0002CF 52 03            [12]  925 	anl	ar3,a
      0002D1 E5 54            [12]  926 	mov	a,(_game_over_sloc1_1_0 + 1)
      0002D3 52 06            [12]  927 	anl	ar6,a
                                    928 ;	assignBit
      0002D5 EB               [12]  929 	mov	a,r3
      0002D6 4E               [12]  930 	orl	a,r6
      0002D7 24 FF            [12]  931 	add	a,#0xff
      0002D9 92 B4            [24]  932 	mov	_P3_4,c
                                    933 ;	snake_v2.c:46: SCK = 1;
                                    934 ;	assignBit
      0002DB D2 B6            [12]  935 	setb	_P3_6
                                    936 ;	snake_v2.c:47: SCK = 0;
                                    937 ;	assignBit
      0002DD C2 B6            [12]  938 	clr	_P3_6
                                    939 ;	snake_v2.c:43: for (char i = 0; i < 8; i++)
      0002DF 0A               [12]  940 	inc	r2
      0002E0 80 CE            [24]  941 	sjmp	00158$
      0002E2                        942 00129$:
                                    943 ;	snake_v2.c:49: P0 = 0xff;
      0002E2 75 80 FF         [24]  944 	mov	_P0,#0xff
                                    945 ;	snake_v2.c:50: RCK = 1;
                                    946 ;	assignBit
      0002E5 D2 B5            [12]  947 	setb	_P3_5
                                    948 ;	snake_v2.c:51: RCK = 0;
                                    949 ;	assignBit
      0002E7 C2 B5            [12]  950 	clr	_P3_5
                                    951 ;	snake_v2.c:52: P0 = ~current_data;
      0002E9 E5 4E            [12]  952 	mov	a,_game_over_current_data_983041_136
      0002EB F4               [12]  953 	cpl	a
      0002EC F5 80            [12]  954 	mov	_P0,a
                                    955 ;	snake_v2.c:53: for (char i = 0; i < 5; i++)
      0002EE 7E 00            [12]  956 	mov	r6,#0x00
      0002F0                        957 00161$:
      0002F0 BE 05 00         [24]  958 	cjne	r6,#0x05,00415$
      0002F3                        959 00415$:
      0002F3 50 03            [24]  960 	jnc	00165$
      0002F5 0E               [12]  961 	inc	r6
      0002F6 80 F8            [24]  962 	sjmp	00161$
      0002F8                        963 00165$:
                                    964 ;	snake_v2.c:40: for (char row = 0; row < 8; row++)
      0002F8 0C               [12]  965 	inc	r4
                                    966 ;	snake_v2.c:61: display_led_mat();
      0002F9 80 8A            [24]  967 	sjmp	00164$
      0002FB                        968 00132$:
                                    969 ;	snake_v2.c:63: for (i = 0; i < 100; i++)
      0002FB 7E 64            [12]  970 	mov	r6,#0x64
      0002FD                        971 00168$:
      0002FD DE FE            [24]  972 	djnz	r6,00168$
                                    973 ;	snake_v2.c:65: SER = 0;
                                    974 ;	assignBit
      0002FF C2 B4            [12]  975 	clr	_P3_4
                                    976 ;	snake_v2.c:66: for (i = 0; i < 8; i++)
      000301 7E 00            [12]  977 	mov	r6,#0x00
      000303                        978 00169$:
                                    979 ;	snake_v2.c:68: SCK = 1;
                                    980 ;	assignBit
      000303 D2 B6            [12]  981 	setb	_P3_6
                                    982 ;	snake_v2.c:69: SCK = 0;
                                    983 ;	assignBit
      000305 C2 B6            [12]  984 	clr	_P3_6
                                    985 ;	snake_v2.c:66: for (i = 0; i < 8; i++)
      000307 0E               [12]  986 	inc	r6
      000308 BE 08 00         [24]  987 	cjne	r6,#0x08,00418$
      00030B                        988 00418$:
      00030B 40 F6            [24]  989 	jc	00169$
                                    990 ;	snake_v2.c:71: RCK = 1;
                                    991 ;	assignBit
      00030D D2 B5            [12]  992 	setb	_P3_5
                                    993 ;	snake_v2.c:72: RCK = 0;
                                    994 ;	assignBit
      00030F C2 B5            [12]  995 	clr	_P3_5
                                    996 ;	snake_v2.c:73: display_number(point);
      000311 AA 2B            [24]  997 	mov	r2,_point
      000313 7B 00            [12]  998 	mov	r3,#0x00
      000315 7C 00            [12]  999 	mov	r4,#0x00
      000317 7E 00            [12] 1000 	mov	r6,#0x00
      000319 8A 82            [24] 1001 	mov	dpl,r2
      00031B 8B 83            [24] 1002 	mov	dph,r3
      00031D 8C F0            [24] 1003 	mov	b,r4
      00031F EE               [12] 1004 	mov	a,r6
      000320 C0 07            [24] 1005 	push	ar7
      000322 C0 05            [24] 1006 	push	ar5
      000324 12 00 AB         [24] 1007 	lcall	_display_number
                                   1008 ;	snake_v2.c:74: display_number(point);
      000327 AA 2B            [24] 1009 	mov	r2,_point
      000329 7B 00            [12] 1010 	mov	r3,#0x00
      00032B 7C 00            [12] 1011 	mov	r4,#0x00
      00032D 7E 00            [12] 1012 	mov	r6,#0x00
      00032F 8A 82            [24] 1013 	mov	dpl,r2
      000331 8B 83            [24] 1014 	mov	dph,r3
      000333 8C F0            [24] 1015 	mov	b,r4
      000335 EE               [12] 1016 	mov	a,r6
      000336 12 00 AB         [24] 1017 	lcall	_display_number
                                   1018 ;	snake_v2.c:75: display_number(point);
      000339 AA 2B            [24] 1019 	mov	r2,_point
      00033B 7B 00            [12] 1020 	mov	r3,#0x00
      00033D 7C 00            [12] 1021 	mov	r4,#0x00
      00033F 7E 00            [12] 1022 	mov	r6,#0x00
      000341 8A 82            [24] 1023 	mov	dpl,r2
      000343 8B 83            [24] 1024 	mov	dph,r3
      000345 8C F0            [24] 1025 	mov	b,r4
      000347 EE               [12] 1026 	mov	a,r6
      000348 12 00 AB         [24] 1027 	lcall	_display_number
      00034B D0 05            [24] 1028 	pop	ar5
      00034D D0 07            [24] 1029 	pop	ar7
                                   1030 ;	snake_v2.c:245: for (t = 0; t < 30; t++)
      00034F 05 4D            [12] 1031 	inc	_game_over_t_65537_111
      000351 C3               [12] 1032 	clr	c
      000352 E5 4D            [12] 1033 	mov	a,_game_over_t_65537_111
      000354 64 80            [12] 1034 	xrl	a,#0x80
      000356 94 9E            [12] 1035 	subb	a,#0x9e
      000358 50 03            [24] 1036 	jnc	00420$
      00035A 02 02 7D         [24] 1037 	ljmp	00171$
      00035D                       1038 00420$:
                                   1039 ;	snake_v2.c:237: for (i = 0; i < 8; i++)
      00035D 05 4B            [12] 1040 	inc	_game_over_i_65537_111
      00035F C3               [12] 1041 	clr	c
      000360 E5 4B            [12] 1042 	mov	a,_game_over_i_65537_111
      000362 64 80            [12] 1043 	xrl	a,#0x80
      000364 94 88            [12] 1044 	subb	a,#0x88
      000366 50 03            [24] 1045 	jnc	00421$
      000368 02 01 E1         [24] 1046 	ljmp	00205$
      00036B                       1047 00421$:
      00036B 02 01 D0         [24] 1048 	ljmp	00219$
                                   1049 ;	snake_v2.c:259: for (i = 0; i < 16; i++)
      00036E                       1050 00239$:
      00036E E5 4A            [12] 1051 	mov	a,_game_over_temp_65537_111
      000370 75 F0 08         [24] 1052 	mov	b,#0x08
      000373 A4               [48] 1053 	mul	ab
      000374 24 0C            [12] 1054 	add	a,#_game_over_floating_display_65537_111
      000376 FE               [12] 1055 	mov	r6,a
      000377 74 0F            [12] 1056 	mov	a,#(_game_over_floating_display_65537_111 >> 8)
      000379 35 F0            [12] 1057 	addc	a,b
      00037B FF               [12] 1058 	mov	r7,a
      00037C 8E 04            [24] 1059 	mov	ar4,r6
      00037E 8F 05            [24] 1060 	mov	ar5,r7
      000380 75 4B 00         [24] 1061 	mov	_game_over_i_65537_111,#0x00
                                   1062 ;	snake_v2.c:261: for (j = 0; j < 8; j++)
      000383                       1063 00225$:
      000383 74 10            [12] 1064 	mov	a,#0x10
      000385 C3               [12] 1065 	clr	c
      000386 95 4B            [12] 1066 	subb	a,_game_over_i_65537_111
      000388 FA               [12] 1067 	mov	r2,a
      000389 75 4C 00         [24] 1068 	mov	_game_over_j_65537_111,#0x00
      00038C                       1069 00175$:
                                   1070 ;	snake_v2.c:263: if (i + j < 8)
      00038C C0 02            [24] 1071 	push	ar2
      00038E E5 4B            [12] 1072 	mov	a,_game_over_i_65537_111
      000390 F5 53            [12] 1073 	mov	_game_over_sloc1_1_0,a
      000392 33               [12] 1074 	rlc	a
      000393 95 E0            [12] 1075 	subb	a,acc
      000395 F5 54            [12] 1076 	mov	(_game_over_sloc1_1_0 + 1),a
      000397 E5 4C            [12] 1077 	mov	a,_game_over_j_65537_111
      000399 F5 55            [12] 1078 	mov	_game_over_sloc2_1_0,a
      00039B 33               [12] 1079 	rlc	a
      00039C 95 E0            [12] 1080 	subb	a,acc
      00039E F5 56            [12] 1081 	mov	(_game_over_sloc2_1_0 + 1),a
      0003A0 E5 55            [12] 1082 	mov	a,_game_over_sloc2_1_0
      0003A2 25 53            [12] 1083 	add	a,_game_over_sloc1_1_0
      0003A4 FA               [12] 1084 	mov	r2,a
      0003A5 E5 56            [12] 1085 	mov	a,(_game_over_sloc2_1_0 + 1)
      0003A7 35 54            [12] 1086 	addc	a,(_game_over_sloc1_1_0 + 1)
      0003A9 FB               [12] 1087 	mov	r3,a
      0003AA C3               [12] 1088 	clr	c
      0003AB EA               [12] 1089 	mov	a,r2
      0003AC 94 08            [12] 1090 	subb	a,#0x08
      0003AE EB               [12] 1091 	mov	a,r3
      0003AF 64 80            [12] 1092 	xrl	a,#0x80
      0003B1 94 80            [12] 1093 	subb	a,#0x80
      0003B3 D0 02            [24] 1094 	pop	ar2
      0003B5 50 24            [24] 1095 	jnc	00118$
                                   1096 ;	snake_v2.c:264: data_mat[j] = (floating_display[temp][(j + i)]) >> i;
      0003B7 E5 4C            [12] 1097 	mov	a,_game_over_j_65537_111
      0003B9 24 2E            [12] 1098 	add	a,#_data_mat
      0003BB F9               [12] 1099 	mov	r1,a
      0003BC E5 4B            [12] 1100 	mov	a,_game_over_i_65537_111
      0003BE 25 4C            [12] 1101 	add	a,_game_over_j_65537_111
      0003C0 2C               [12] 1102 	add	a,r4
      0003C1 F5 82            [12] 1103 	mov	dpl,a
      0003C3 E4               [12] 1104 	clr	a
      0003C4 3D               [12] 1105 	addc	a,r5
      0003C5 F5 83            [12] 1106 	mov	dph,a
      0003C7 E4               [12] 1107 	clr	a
      0003C8 93               [24] 1108 	movc	a,@a+dptr
      0003C9 FB               [12] 1109 	mov	r3,a
      0003CA 85 4B F0         [24] 1110 	mov	b,_game_over_i_65537_111
      0003CD 05 F0            [12] 1111 	inc	b
      0003CF EB               [12] 1112 	mov	a,r3
      0003D0 80 02            [24] 1113 	sjmp	00424$
      0003D2                       1114 00423$:
      0003D2 C3               [12] 1115 	clr	c
      0003D3 13               [12] 1116 	rrc	a
      0003D4                       1117 00424$:
      0003D4 D5 F0 FB         [24] 1118 	djnz	b,00423$
      0003D7 F7               [12] 1119 	mov	@r1,a
      0003D8 02 04 71         [24] 1120 	ljmp	00176$
      0003DB                       1121 00118$:
                                   1122 ;	snake_v2.c:265: else if (i + j >= 16)
      0003DB C0 02            [24] 1123 	push	ar2
      0003DD E5 55            [12] 1124 	mov	a,_game_over_sloc2_1_0
      0003DF 25 53            [12] 1125 	add	a,_game_over_sloc1_1_0
      0003E1 FA               [12] 1126 	mov	r2,a
      0003E2 E5 56            [12] 1127 	mov	a,(_game_over_sloc2_1_0 + 1)
      0003E4 35 54            [12] 1128 	addc	a,(_game_over_sloc1_1_0 + 1)
      0003E6 FB               [12] 1129 	mov	r3,a
      0003E7 C3               [12] 1130 	clr	c
      0003E8 EA               [12] 1131 	mov	a,r2
      0003E9 94 10            [12] 1132 	subb	a,#0x10
      0003EB EB               [12] 1133 	mov	a,r3
      0003EC 64 80            [12] 1134 	xrl	a,#0x80
      0003EE 94 80            [12] 1135 	subb	a,#0x80
      0003F0 D0 02            [24] 1136 	pop	ar2
      0003F2 40 76            [24] 1137 	jc	00115$
                                   1138 ;	snake_v2.c:267: if (i + j >= 16)
      0003F4 C0 02            [24] 1139 	push	ar2
      0003F6 E5 55            [12] 1140 	mov	a,_game_over_sloc2_1_0
      0003F8 25 53            [12] 1141 	add	a,_game_over_sloc1_1_0
      0003FA FA               [12] 1142 	mov	r2,a
      0003FB E5 56            [12] 1143 	mov	a,(_game_over_sloc2_1_0 + 1)
      0003FD 35 54            [12] 1144 	addc	a,(_game_over_sloc1_1_0 + 1)
      0003FF FB               [12] 1145 	mov	r3,a
      000400 C3               [12] 1146 	clr	c
      000401 EA               [12] 1147 	mov	a,r2
      000402 94 10            [12] 1148 	subb	a,#0x10
      000404 EB               [12] 1149 	mov	a,r3
      000405 64 80            [12] 1150 	xrl	a,#0x80
      000407 94 80            [12] 1151 	subb	a,#0x80
      000409 D0 02            [24] 1152 	pop	ar2
      00040B 40 54            [24] 1153 	jc	00112$
                                   1154 ;	snake_v2.c:268: data_mat[j] = (floating_display[temp][(i + j) % 8]) << (16 - i);
      00040D C0 04            [24] 1155 	push	ar4
      00040F C0 05            [24] 1156 	push	ar5
      000411 E5 4C            [12] 1157 	mov	a,_game_over_j_65537_111
      000413 24 2E            [12] 1158 	add	a,#_data_mat
      000415 F9               [12] 1159 	mov	r1,a
      000416 E5 55            [12] 1160 	mov	a,_game_over_sloc2_1_0
      000418 25 53            [12] 1161 	add	a,_game_over_sloc1_1_0
      00041A F5 82            [12] 1162 	mov	dpl,a
      00041C E5 56            [12] 1163 	mov	a,(_game_over_sloc2_1_0 + 1)
      00041E 35 54            [12] 1164 	addc	a,(_game_over_sloc1_1_0 + 1)
      000420 F5 83            [12] 1165 	mov	dph,a
      000422 75 0C 08         [24] 1166 	mov	__modsint_PARM_2,#0x08
      000425 75 0D 00         [24] 1167 	mov	(__modsint_PARM_2 + 1),#0x00
      000428 C0 07            [24] 1168 	push	ar7
      00042A C0 06            [24] 1169 	push	ar6
      00042C C0 04            [24] 1170 	push	ar4
      00042E C0 02            [24] 1171 	push	ar2
      000430 C0 01            [24] 1172 	push	ar1
      000432 12 0E 90         [24] 1173 	lcall	__modsint
      000435 AB 82            [24] 1174 	mov	r3,dpl
      000437 AD 83            [24] 1175 	mov	r5,dph
      000439 D0 01            [24] 1176 	pop	ar1
      00043B D0 02            [24] 1177 	pop	ar2
      00043D D0 04            [24] 1178 	pop	ar4
      00043F D0 06            [24] 1179 	pop	ar6
      000441 D0 07            [24] 1180 	pop	ar7
      000443 EB               [12] 1181 	mov	a,r3
      000444 2E               [12] 1182 	add	a,r6
      000445 F5 82            [12] 1183 	mov	dpl,a
      000447 ED               [12] 1184 	mov	a,r5
      000448 3F               [12] 1185 	addc	a,r7
      000449 F5 83            [12] 1186 	mov	dph,a
      00044B E4               [12] 1187 	clr	a
      00044C 93               [24] 1188 	movc	a,@a+dptr
      00044D FD               [12] 1189 	mov	r5,a
      00044E 8A F0            [24] 1190 	mov	b,r2
      000450 05 F0            [12] 1191 	inc	b
      000452 ED               [12] 1192 	mov	a,r5
      000453 80 02            [24] 1193 	sjmp	00429$
      000455                       1194 00427$:
      000455 25 E0            [12] 1195 	add	a,acc
      000457                       1196 00429$:
      000457 D5 F0 FB         [24] 1197 	djnz	b,00427$
      00045A F7               [12] 1198 	mov	@r1,a
      00045B D0 05            [24] 1199 	pop	ar5
      00045D D0 04            [24] 1200 	pop	ar4
      00045F 80 10            [24] 1201 	sjmp	00176$
      000461                       1202 00112$:
                                   1203 ;	snake_v2.c:270: data_mat[j] = 0;
      000461 E5 4C            [12] 1204 	mov	a,_game_over_j_65537_111
      000463 24 2E            [12] 1205 	add	a,#_data_mat
      000465 F8               [12] 1206 	mov	r0,a
      000466 76 00            [12] 1207 	mov	@r0,#0x00
      000468 80 07            [24] 1208 	sjmp	00176$
      00046A                       1209 00115$:
                                   1210 ;	snake_v2.c:273: data_mat[j] = 0;
      00046A E5 4C            [12] 1211 	mov	a,_game_over_j_65537_111
      00046C 24 2E            [12] 1212 	add	a,#_data_mat
      00046E F8               [12] 1213 	mov	r0,a
      00046F 76 00            [12] 1214 	mov	@r0,#0x00
      000471                       1215 00176$:
                                   1216 ;	snake_v2.c:261: for (j = 0; j < 8; j++)
      000471 05 4C            [12] 1217 	inc	_game_over_j_65537_111
      000473 C3               [12] 1218 	clr	c
      000474 E5 4C            [12] 1219 	mov	a,_game_over_j_65537_111
      000476 64 80            [12] 1220 	xrl	a,#0x80
      000478 94 88            [12] 1221 	subb	a,#0x88
      00047A 50 03            [24] 1222 	jnc	00430$
      00047C 02 03 8C         [24] 1223 	ljmp	00175$
      00047F                       1224 00430$:
                                   1225 ;	snake_v2.c:279: for (t = 30; t; --t)
      00047F 75 4D 1E         [24] 1226 	mov	_game_over_t_65537_111,#0x1e
      000482                       1227 00191$:
                                   1228 ;	snake_v2.c:59: P2 = 0b11111111;
      000482 75 A0 FF         [24] 1229 	mov	_P2,#0xff
                                   1230 ;	snake_v2.c:60: P0 = 0xFF;
      000485 75 80 FF         [24] 1231 	mov	_P0,#0xff
                                   1232 ;	snake_v2.c:40: for (char row = 0; row < 8; row++)
      000488 75 4F 00         [24] 1233 	mov	_game_over_row_917505_148,#0x00
      00048B                       1234 00184$:
      00048B 74 F8            [12] 1235 	mov	a,#0x100 - 0x08
      00048D 25 4F            [12] 1236 	add	a,_game_over_row_917505_148
      00048F 40 78            [24] 1237 	jc	00139$
                                   1238 ;	snake_v2.c:42: const char current_data = data_mat[row];
      000491 E5 4F            [12] 1239 	mov	a,_game_over_row_917505_148
      000493 24 2E            [12] 1240 	add	a,#_data_mat
      000495 F9               [12] 1241 	mov	r1,a
      000496 87 50            [24] 1242 	mov	_game_over_current_data_983041_149,@r1
                                   1243 ;	snake_v2.c:43: for (char i = 0; i < 8; i++)
      000498 85 4F F0         [24] 1244 	mov	b,_game_over_row_917505_148
      00049B 05 F0            [12] 1245 	inc	b
      00049D 75 55 80         [24] 1246 	mov	_game_over_sloc2_1_0,#0x80
      0004A0 E4               [12] 1247 	clr	a
      0004A1 F5 56            [12] 1248 	mov	(_game_over_sloc2_1_0 + 1),a
      0004A3 33               [12] 1249 	rlc	a
      0004A4 92 D2            [24] 1250 	mov	ov,c
      0004A6 80 0C            [24] 1251 	sjmp	00433$
      0004A8                       1252 00432$:
      0004A8 A2 D2            [12] 1253 	mov	c,ov
      0004AA E5 56            [12] 1254 	mov	a,(_game_over_sloc2_1_0 + 1)
      0004AC 13               [12] 1255 	rrc	a
      0004AD F5 56            [12] 1256 	mov	(_game_over_sloc2_1_0 + 1),a
      0004AF E5 55            [12] 1257 	mov	a,_game_over_sloc2_1_0
      0004B1 13               [12] 1258 	rrc	a
      0004B2 F5 55            [12] 1259 	mov	_game_over_sloc2_1_0,a
      0004B4                       1260 00433$:
      0004B4 D5 F0 F1         [24] 1261 	djnz	b,00432$
      0004B7 75 51 00         [24] 1262 	mov	_game_over_i_1048577_150,#0x00
      0004BA                       1263 00178$:
      0004BA 74 F8            [12] 1264 	mov	a,#0x100 - 0x08
      0004BC 25 51            [12] 1265 	add	a,_game_over_i_1048577_150
      0004BE 40 2F            [24] 1266 	jc	00136$
                                   1267 ;	snake_v2.c:45: SER = (0x80 >> row) & (0x80 >> i);
      0004C0 85 51 F0         [24] 1268 	mov	b,_game_over_i_1048577_150
      0004C3 05 F0            [12] 1269 	inc	b
      0004C5 7A 80            [12] 1270 	mov	r2,#0x80
      0004C7 E4               [12] 1271 	clr	a
      0004C8 FB               [12] 1272 	mov	r3,a
      0004C9 33               [12] 1273 	rlc	a
      0004CA 92 D2            [24] 1274 	mov	ov,c
      0004CC 80 08            [24] 1275 	sjmp	00436$
      0004CE                       1276 00435$:
      0004CE A2 D2            [12] 1277 	mov	c,ov
      0004D0 EB               [12] 1278 	mov	a,r3
      0004D1 13               [12] 1279 	rrc	a
      0004D2 FB               [12] 1280 	mov	r3,a
      0004D3 EA               [12] 1281 	mov	a,r2
      0004D4 13               [12] 1282 	rrc	a
      0004D5 FA               [12] 1283 	mov	r2,a
      0004D6                       1284 00436$:
      0004D6 D5 F0 F5         [24] 1285 	djnz	b,00435$
      0004D9 E5 55            [12] 1286 	mov	a,_game_over_sloc2_1_0
      0004DB 52 02            [12] 1287 	anl	ar2,a
      0004DD E5 56            [12] 1288 	mov	a,(_game_over_sloc2_1_0 + 1)
      0004DF 52 03            [12] 1289 	anl	ar3,a
                                   1290 ;	assignBit
      0004E1 EA               [12] 1291 	mov	a,r2
      0004E2 4B               [12] 1292 	orl	a,r3
      0004E3 24 FF            [12] 1293 	add	a,#0xff
      0004E5 92 B4            [24] 1294 	mov	_P3_4,c
                                   1295 ;	snake_v2.c:46: SCK = 1;
                                   1296 ;	assignBit
      0004E7 D2 B6            [12] 1297 	setb	_P3_6
                                   1298 ;	snake_v2.c:47: SCK = 0;
                                   1299 ;	assignBit
      0004E9 C2 B6            [12] 1300 	clr	_P3_6
                                   1301 ;	snake_v2.c:43: for (char i = 0; i < 8; i++)
      0004EB 05 51            [12] 1302 	inc	_game_over_i_1048577_150
      0004ED 80 CB            [24] 1303 	sjmp	00178$
      0004EF                       1304 00136$:
                                   1305 ;	snake_v2.c:49: P0 = 0xff;
      0004EF 75 80 FF         [24] 1306 	mov	_P0,#0xff
                                   1307 ;	snake_v2.c:50: RCK = 1;
                                   1308 ;	assignBit
      0004F2 D2 B5            [12] 1309 	setb	_P3_5
                                   1310 ;	snake_v2.c:51: RCK = 0;
                                   1311 ;	assignBit
      0004F4 C2 B5            [12] 1312 	clr	_P3_5
                                   1313 ;	snake_v2.c:52: P0 = ~current_data;
      0004F6 E5 50            [12] 1314 	mov	a,_game_over_current_data_983041_149
      0004F8 F4               [12] 1315 	cpl	a
      0004F9 F5 80            [12] 1316 	mov	_P0,a
                                   1317 ;	snake_v2.c:53: for (char i = 0; i < 5; i++)
      0004FB 7B 00            [12] 1318 	mov	r3,#0x00
      0004FD                       1319 00181$:
      0004FD BB 05 00         [24] 1320 	cjne	r3,#0x05,00437$
      000500                       1321 00437$:
      000500 50 03            [24] 1322 	jnc	00185$
      000502 0B               [12] 1323 	inc	r3
      000503 80 F8            [24] 1324 	sjmp	00181$
      000505                       1325 00185$:
                                   1326 ;	snake_v2.c:40: for (char row = 0; row < 8; row++)
      000505 05 4F            [12] 1327 	inc	_game_over_row_917505_148
                                   1328 ;	snake_v2.c:61: display_led_mat();
      000507 80 82            [24] 1329 	sjmp	00184$
      000509                       1330 00139$:
                                   1331 ;	snake_v2.c:63: for (i = 0; i < 100; i++)
      000509 7B 64            [12] 1332 	mov	r3,#0x64
      00050B                       1333 00188$:
      00050B DB FE            [24] 1334 	djnz	r3,00188$
                                   1335 ;	snake_v2.c:65: SER = 0;
                                   1336 ;	assignBit
      00050D C2 B4            [12] 1337 	clr	_P3_4
                                   1338 ;	snake_v2.c:66: for (i = 0; i < 8; i++)
      00050F 7B 00            [12] 1339 	mov	r3,#0x00
      000511                       1340 00189$:
                                   1341 ;	snake_v2.c:68: SCK = 1;
                                   1342 ;	assignBit
      000511 D2 B6            [12] 1343 	setb	_P3_6
                                   1344 ;	snake_v2.c:69: SCK = 0;
                                   1345 ;	assignBit
      000513 C2 B6            [12] 1346 	clr	_P3_6
                                   1347 ;	snake_v2.c:66: for (i = 0; i < 8; i++)
      000515 0B               [12] 1348 	inc	r3
      000516 BB 08 00         [24] 1349 	cjne	r3,#0x08,00440$
      000519                       1350 00440$:
      000519 40 F6            [24] 1351 	jc	00189$
                                   1352 ;	snake_v2.c:71: RCK = 1;
      00051B C0 04            [24] 1353 	push	ar4
      00051D C0 05            [24] 1354 	push	ar5
                                   1355 ;	assignBit
      00051F D2 B5            [12] 1356 	setb	_P3_5
                                   1357 ;	snake_v2.c:72: RCK = 0;
                                   1358 ;	assignBit
      000521 C2 B5            [12] 1359 	clr	_P3_5
                                   1360 ;	snake_v2.c:73: display_number(point);
      000523 AA 2B            [24] 1361 	mov	r2,_point
      000525 7B 00            [12] 1362 	mov	r3,#0x00
      000527 7C 00            [12] 1363 	mov	r4,#0x00
      000529 7D 00            [12] 1364 	mov	r5,#0x00
      00052B 8A 82            [24] 1365 	mov	dpl,r2
      00052D 8B 83            [24] 1366 	mov	dph,r3
      00052F 8C F0            [24] 1367 	mov	b,r4
      000531 ED               [12] 1368 	mov	a,r5
      000532 C0 07            [24] 1369 	push	ar7
      000534 C0 06            [24] 1370 	push	ar6
      000536 C0 05            [24] 1371 	push	ar5
      000538 C0 04            [24] 1372 	push	ar4
      00053A 12 00 AB         [24] 1373 	lcall	_display_number
      00053D D0 04            [24] 1374 	pop	ar4
      00053F D0 05            [24] 1375 	pop	ar5
                                   1376 ;	snake_v2.c:74: display_number(point);
      000541 AA 2B            [24] 1377 	mov	r2,_point
      000543 7B 00            [12] 1378 	mov	r3,#0x00
      000545 7C 00            [12] 1379 	mov	r4,#0x00
      000547 7D 00            [12] 1380 	mov	r5,#0x00
      000549 8A 82            [24] 1381 	mov	dpl,r2
      00054B 8B 83            [24] 1382 	mov	dph,r3
      00054D 8C F0            [24] 1383 	mov	b,r4
      00054F ED               [12] 1384 	mov	a,r5
      000550 C0 05            [24] 1385 	push	ar5
      000552 C0 04            [24] 1386 	push	ar4
      000554 12 00 AB         [24] 1387 	lcall	_display_number
      000557 D0 04            [24] 1388 	pop	ar4
      000559 D0 05            [24] 1389 	pop	ar5
                                   1390 ;	snake_v2.c:75: display_number(point);
      00055B AA 2B            [24] 1391 	mov	r2,_point
      00055D 7B 00            [12] 1392 	mov	r3,#0x00
      00055F 7C 00            [12] 1393 	mov	r4,#0x00
      000561 7D 00            [12] 1394 	mov	r5,#0x00
      000563 8A 82            [24] 1395 	mov	dpl,r2
      000565 8B 83            [24] 1396 	mov	dph,r3
      000567 8C F0            [24] 1397 	mov	b,r4
      000569 ED               [12] 1398 	mov	a,r5
      00056A C0 05            [24] 1399 	push	ar5
      00056C C0 04            [24] 1400 	push	ar4
      00056E 12 00 AB         [24] 1401 	lcall	_display_number
      000571 D0 04            [24] 1402 	pop	ar4
      000573 D0 05            [24] 1403 	pop	ar5
      000575 D0 06            [24] 1404 	pop	ar6
      000577 D0 07            [24] 1405 	pop	ar7
                                   1406 ;	snake_v2.c:279: for (t = 30; t; --t)
      000579 15 4D            [12] 1407 	dec	_game_over_t_65537_111
      00057B D0 05            [24] 1408 	pop	ar5
      00057D D0 04            [24] 1409 	pop	ar4
      00057F E5 4D            [12] 1410 	mov	a,_game_over_t_65537_111
      000581 60 03            [24] 1411 	jz	00442$
      000583 02 04 82         [24] 1412 	ljmp	00191$
      000586                       1413 00442$:
                                   1414 ;	snake_v2.c:259: for (i = 0; i < 16; i++)
      000586 05 4B            [12] 1415 	inc	_game_over_i_65537_111
      000588 C3               [12] 1416 	clr	c
      000589 E5 4B            [12] 1417 	mov	a,_game_over_i_65537_111
      00058B 64 80            [12] 1418 	xrl	a,#0x80
      00058D 94 90            [12] 1419 	subb	a,#0x90
      00058F 50 03            [24] 1420 	jnc	00443$
      000591 02 03 83         [24] 1421 	ljmp	00225$
      000594                       1422 00443$:
                                   1423 ;	snake_v2.c:286: }
      000594 02 03 6E         [24] 1424 	ljmp	00239$
                                   1425 ;------------------------------------------------------------
                                   1426 ;Allocation info for local variables in function 'update_food'
                                   1427 ;------------------------------------------------------------
                                   1428 ;cnt                       Allocated to registers 
                                   1429 ;i                         Allocated with name '_update_food_i_131072_157'
                                   1430 ;__2621440010              Allocated to registers 
                                   1431 ;__2621440011              Allocated to registers 
                                   1432 ;a                         Allocated to registers 
                                   1433 ;------------------------------------------------------------
                                   1434 ;	snake_v2.c:287: void update_food(void)
                                   1435 ;	-----------------------------------------
                                   1436 ;	 function update_food
                                   1437 ;	-----------------------------------------
      000597                       1438 _update_food:
                                   1439 ;	snake_v2.c:289: char cnt = sqr_left;
      000597 AF 2C            [24] 1440 	mov	r7,_sqr_left
                                   1441 ;	snake_v2.c:290: for (char i = 0; i < 64; i++)
      000599 7E 00            [12] 1442 	mov	r6,#0x00
      00059B 8E 57            [24] 1443 	mov	_update_food_i_131072_157,r6
      00059D                       1444 00109$:
      00059D 74 C0            [12] 1445 	mov	a,#0x100 - 0x40
      00059F 25 57            [12] 1446 	add	a,_update_food_i_131072_157
      0005A1 40 68            [24] 1447 	jc	00110$
                                   1448 ;	snake_v2.c:107: return (data_mat[a >> 3] & (0x80 >> (a & 7))) != 0;
      0005A3 E5 57            [12] 1449 	mov	a,_update_food_i_131072_157
      0005A5 C4               [12] 1450 	swap	a
      0005A6 23               [12] 1451 	rl	a
      0005A7 54 1F            [12] 1452 	anl	a,#0x1f
      0005A9 24 2E            [12] 1453 	add	a,#_data_mat
      0005AB F9               [12] 1454 	mov	r1,a
      0005AC 87 04            [24] 1455 	mov	ar4,@r1
      0005AE 74 07            [12] 1456 	mov	a,#0x07
      0005B0 55 57            [12] 1457 	anl	a,_update_food_i_131072_157
      0005B2 FB               [12] 1458 	mov	r3,a
      0005B3 8B F0            [24] 1459 	mov	b,r3
      0005B5 05 F0            [12] 1460 	inc	b
      0005B7 7B 80            [12] 1461 	mov	r3,#0x80
      0005B9 E4               [12] 1462 	clr	a
      0005BA FA               [12] 1463 	mov	r2,a
      0005BB 33               [12] 1464 	rlc	a
      0005BC 92 D2            [24] 1465 	mov	ov,c
      0005BE 80 08            [24] 1466 	sjmp	00130$
      0005C0                       1467 00129$:
      0005C0 A2 D2            [12] 1468 	mov	c,ov
      0005C2 EA               [12] 1469 	mov	a,r2
      0005C3 13               [12] 1470 	rrc	a
      0005C4 FA               [12] 1471 	mov	r2,a
      0005C5 EB               [12] 1472 	mov	a,r3
      0005C6 13               [12] 1473 	rrc	a
      0005C7 FB               [12] 1474 	mov	r3,a
      0005C8                       1475 00130$:
      0005C8 D5 F0 F5         [24] 1476 	djnz	b,00129$
      0005CB 7D 00            [12] 1477 	mov	r5,#0x00
      0005CD EC               [12] 1478 	mov	a,r4
      0005CE 52 03            [12] 1479 	anl	ar3,a
      0005D0 ED               [12] 1480 	mov	a,r5
      0005D1 52 02            [12] 1481 	anl	ar2,a
      0005D3 EB               [12] 1482 	mov	a,r3
      0005D4 4A               [12] 1483 	orl	a,r2
      0005D5 B4 01 00         [24] 1484 	cjne	a,#0x01,00131$
      0005D8                       1485 00131$:
      0005D8 B3               [12] 1486 	cpl	c
                                   1487 ;	snake_v2.c:292: if (value(i))
      0005D9 92 00            [24] 1488 	mov	_update_food_sloc0_1_0,c
      0005DB 40 28            [24] 1489 	jc	00105$
                                   1490 ;	snake_v2.c:294: if (rand() % cnt == 0)
      0005DD C0 07            [24] 1491 	push	ar7
      0005DF C0 06            [24] 1492 	push	ar6
      0005E1 12 0C 94         [24] 1493 	lcall	_rand
      0005E4 D0 06            [24] 1494 	pop	ar6
      0005E6 D0 07            [24] 1495 	pop	ar7
      0005E8 8F 0C            [24] 1496 	mov	__modsint_PARM_2,r7
      0005EA 75 0D 00         [24] 1497 	mov	(__modsint_PARM_2 + 1),#0x00
      0005ED C0 07            [24] 1498 	push	ar7
      0005EF C0 06            [24] 1499 	push	ar6
      0005F1 12 0E 90         [24] 1500 	lcall	__modsint
      0005F4 E5 82            [12] 1501 	mov	a,dpl
      0005F6 85 83 F0         [24] 1502 	mov	b,dph
      0005F9 D0 06            [24] 1503 	pop	ar6
      0005FB D0 07            [24] 1504 	pop	ar7
      0005FD 45 F0            [12] 1505 	orl	a,b
      0005FF 70 03            [24] 1506 	jnz	00104$
                                   1507 ;	snake_v2.c:296: food = i;
      000601 8E 39            [24] 1508 	mov	_food,r6
                                   1509 ;	snake_v2.c:297: return;
      000603 22               [24] 1510 	ret
      000604                       1511 00104$:
                                   1512 ;	snake_v2.c:299: --cnt;
      000604 1F               [12] 1513 	dec	r7
      000605                       1514 00105$:
                                   1515 ;	snake_v2.c:290: for (char i = 0; i < 64; i++)
      000605 05 57            [12] 1516 	inc	_update_food_i_131072_157
      000607 AE 57            [24] 1517 	mov	r6,_update_food_i_131072_157
      000609 80 92            [24] 1518 	sjmp	00109$
      00060B                       1519 00110$:
                                   1520 ;	snake_v2.c:301: }
      00060B 22               [24] 1521 	ret
                                   1522 ;------------------------------------------------------------
                                   1523 ;Allocation info for local variables in function 'update_game'
                                   1524 ;------------------------------------------------------------
                                   1525 ;__1310720013              Allocated to registers r7 
                                   1526 ;a                         Allocated to registers 
                                   1527 ;__1966080015              Allocated to registers r7 
                                   1528 ;a                         Allocated to registers 
                                   1529 ;__1966080017              Allocated to registers r7 
                                   1530 ;a                         Allocated to registers 
                                   1531 ;__1966080019              Allocated to registers r7 
                                   1532 ;dir                       Allocated to registers 
                                   1533 ;__1966090020              Allocated to registers r7 
                                   1534 ;tail                      Allocated to registers 
                                   1535 ;temp                      Allocated to registers r6 
                                   1536 ;------------------------------------------------------------
                                   1537 ;	snake_v2.c:302: void update_game(void)
                                   1538 ;	-----------------------------------------
                                   1539 ;	 function update_game
                                   1540 ;	-----------------------------------------
      00060C                       1541 _update_game:
                                   1542 ;	snake_v2.c:304: if (head != food && (data_mat[(head / 8)] & (0x80 >> (head % 8))))
      00060C E5 39            [12] 1543 	mov	a,_food
      00060E B5 37 02         [24] 1544 	cjne	a,_head,00134$
      000611 80 4B            [24] 1545 	sjmp	00102$
      000613                       1546 00134$:
      000613 AE 37            [24] 1547 	mov	r6,_head
      000615 7F 00            [12] 1548 	mov	r7,#0x00
      000617 75 0C 08         [24] 1549 	mov	__divsint_PARM_2,#0x08
      00061A 8F 0D            [24] 1550 	mov	(__divsint_PARM_2 + 1),r7
      00061C 8E 82            [24] 1551 	mov	dpl,r6
      00061E 8F 83            [24] 1552 	mov	dph,r7
      000620 C0 07            [24] 1553 	push	ar7
      000622 C0 06            [24] 1554 	push	ar6
      000624 12 0E C6         [24] 1555 	lcall	__divsint
      000627 AC 82            [24] 1556 	mov	r4,dpl
      000629 D0 06            [24] 1557 	pop	ar6
      00062B D0 07            [24] 1558 	pop	ar7
      00062D EC               [12] 1559 	mov	a,r4
      00062E 24 2E            [12] 1560 	add	a,#_data_mat
      000630 F9               [12] 1561 	mov	r1,a
      000631 87 05            [24] 1562 	mov	ar5,@r1
      000633 53 06 07         [24] 1563 	anl	ar6,#0x07
      000636 7F 00            [12] 1564 	mov	r7,#0x00
      000638 8E F0            [24] 1565 	mov	b,r6
      00063A 05 F0            [12] 1566 	inc	b
      00063C 7E 80            [12] 1567 	mov	r6,#0x80
      00063E E4               [12] 1568 	clr	a
      00063F 33               [12] 1569 	rlc	a
      000640 92 D2            [24] 1570 	mov	ov,c
      000642 80 08            [24] 1571 	sjmp	00136$
      000644                       1572 00135$:
      000644 A2 D2            [12] 1573 	mov	c,ov
      000646 EF               [12] 1574 	mov	a,r7
      000647 13               [12] 1575 	rrc	a
      000648 FF               [12] 1576 	mov	r7,a
      000649 EE               [12] 1577 	mov	a,r6
      00064A 13               [12] 1578 	rrc	a
      00064B FE               [12] 1579 	mov	r6,a
      00064C                       1580 00136$:
      00064C D5 F0 F5         [24] 1581 	djnz	b,00135$
      00064F 7C 00            [12] 1582 	mov	r4,#0x00
      000651 ED               [12] 1583 	mov	a,r5
      000652 52 06            [12] 1584 	anl	ar6,a
      000654 EC               [12] 1585 	mov	a,r4
      000655 52 07            [12] 1586 	anl	ar7,a
      000657 EE               [12] 1587 	mov	a,r6
      000658 4F               [12] 1588 	orl	a,r7
      000659 60 03            [24] 1589 	jz	00102$
                                   1590 ;	snake_v2.c:306: game_over();
      00065B 12 01 5D         [24] 1591 	lcall	_game_over
      00065E                       1592 00102$:
                                   1593 ;	snake_v2.c:308: turn_on(head);
                                   1594 ;	snake_v2.c:116: data_mat[a >> 3] |= 0x80 >> (a & 7);
      00065E E5 37            [12] 1595 	mov	a,_head
      000660 FF               [12] 1596 	mov	r7,a
      000661 C4               [12] 1597 	swap	a
      000662 23               [12] 1598 	rl	a
      000663 54 1F            [12] 1599 	anl	a,#0x1f
      000665 24 2E            [12] 1600 	add	a,#_data_mat
      000667 F9               [12] 1601 	mov	r1,a
      000668 87 06            [24] 1602 	mov	ar6,@r1
      00066A 53 07 07         [24] 1603 	anl	ar7,#0x07
      00066D 8F F0            [24] 1604 	mov	b,r7
      00066F 05 F0            [12] 1605 	inc	b
      000671 7F 80            [12] 1606 	mov	r7,#0x80
      000673 E4               [12] 1607 	clr	a
      000674 FD               [12] 1608 	mov	r5,a
      000675 33               [12] 1609 	rlc	a
      000676 92 D2            [24] 1610 	mov	ov,c
      000678 80 08            [24] 1611 	sjmp	00139$
      00067A                       1612 00138$:
      00067A A2 D2            [12] 1613 	mov	c,ov
      00067C ED               [12] 1614 	mov	a,r5
      00067D 13               [12] 1615 	rrc	a
      00067E FD               [12] 1616 	mov	r5,a
      00067F EF               [12] 1617 	mov	a,r7
      000680 13               [12] 1618 	rrc	a
      000681 FF               [12] 1619 	mov	r7,a
      000682                       1620 00139$:
      000682 D5 F0 F5         [24] 1621 	djnz	b,00138$
      000685 EF               [12] 1622 	mov	a,r7
      000686 4E               [12] 1623 	orl	a,r6
      000687 F7               [12] 1624 	mov	@r1,a
                                   1625 ;	snake_v2.c:309: if (head == food)
      000688 E5 39            [12] 1626 	mov	a,_food
      00068A B5 37 32         [24] 1627 	cjne	a,_head,00110$
                                   1628 ;	snake_v2.c:311: ++point;
      00068D 05 2B            [12] 1629 	inc	_point
                                   1630 ;	snake_v2.c:313: update_food();
      00068F 12 05 97         [24] 1631 	lcall	_update_food
                                   1632 ;	snake_v2.c:315: turn_on(food);
                                   1633 ;	snake_v2.c:116: data_mat[a >> 3] |= 0x80 >> (a & 7);
      000692 E5 39            [12] 1634 	mov	a,_food
      000694 FF               [12] 1635 	mov	r7,a
      000695 C4               [12] 1636 	swap	a
      000696 23               [12] 1637 	rl	a
      000697 54 1F            [12] 1638 	anl	a,#0x1f
      000699 24 2E            [12] 1639 	add	a,#_data_mat
      00069B F9               [12] 1640 	mov	r1,a
      00069C 87 06            [24] 1641 	mov	ar6,@r1
      00069E 53 07 07         [24] 1642 	anl	ar7,#0x07
      0006A1 8F F0            [24] 1643 	mov	b,r7
      0006A3 05 F0            [12] 1644 	inc	b
      0006A5 7F 80            [12] 1645 	mov	r7,#0x80
      0006A7 E4               [12] 1646 	clr	a
      0006A8 FD               [12] 1647 	mov	r5,a
      0006A9 33               [12] 1648 	rlc	a
      0006AA 92 D2            [24] 1649 	mov	ov,c
      0006AC 80 08            [24] 1650 	sjmp	00143$
      0006AE                       1651 00142$:
      0006AE A2 D2            [12] 1652 	mov	c,ov
      0006B0 ED               [12] 1653 	mov	a,r5
      0006B1 13               [12] 1654 	rrc	a
      0006B2 FD               [12] 1655 	mov	r5,a
      0006B3 EF               [12] 1656 	mov	a,r7
      0006B4 13               [12] 1657 	rrc	a
      0006B5 FF               [12] 1658 	mov	r7,a
      0006B6                       1659 00143$:
      0006B6 D5 F0 F5         [24] 1660 	djnz	b,00142$
      0006B9 EF               [12] 1661 	mov	a,r7
      0006BA 4E               [12] 1662 	orl	a,r6
      0006BB F7               [12] 1663 	mov	@r1,a
                                   1664 ;	snake_v2.c:316: --sqr_left;
      0006BC 15 2C            [12] 1665 	dec	_sqr_left
                                   1666 ;	snake_v2.c:317: return;
      0006BE 22               [24] 1667 	ret
      0006BF                       1668 00110$:
                                   1669 ;	snake_v2.c:321: turn_off(tail);
                                   1670 ;	snake_v2.c:120: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
      0006BF E5 38            [12] 1671 	mov	a,_tail
      0006C1 FF               [12] 1672 	mov	r7,a
      0006C2 C4               [12] 1673 	swap	a
      0006C3 23               [12] 1674 	rl	a
      0006C4 54 1F            [12] 1675 	anl	a,#0x1f
      0006C6 24 2E            [12] 1676 	add	a,#_data_mat
      0006C8 F9               [12] 1677 	mov	r1,a
      0006C9 87 06            [24] 1678 	mov	ar6,@r1
      0006CB 53 07 07         [24] 1679 	anl	ar7,#0x07
      0006CE 8F F0            [24] 1680 	mov	b,r7
      0006D0 05 F0            [12] 1681 	inc	b
      0006D2 7F 80            [12] 1682 	mov	r7,#0x80
      0006D4 E4               [12] 1683 	clr	a
      0006D5 FD               [12] 1684 	mov	r5,a
      0006D6 33               [12] 1685 	rlc	a
      0006D7 92 D2            [24] 1686 	mov	ov,c
      0006D9 80 08            [24] 1687 	sjmp	00145$
      0006DB                       1688 00144$:
      0006DB A2 D2            [12] 1689 	mov	c,ov
      0006DD ED               [12] 1690 	mov	a,r5
      0006DE 13               [12] 1691 	rrc	a
      0006DF FD               [12] 1692 	mov	r5,a
      0006E0 EF               [12] 1693 	mov	a,r7
      0006E1 13               [12] 1694 	rrc	a
      0006E2 FF               [12] 1695 	mov	r7,a
      0006E3                       1696 00145$:
      0006E3 D5 F0 F5         [24] 1697 	djnz	b,00144$
      0006E6 EF               [12] 1698 	mov	a,r7
      0006E7 F4               [12] 1699 	cpl	a
      0006E8 5E               [12] 1700 	anl	a,r6
      0006E9 F7               [12] 1701 	mov	@r1,a
                                   1702 ;	snake_v2.c:322: char dir = get_direction(tail);
      0006EA AF 38            [24] 1703 	mov	r7,_tail
                                   1704 ;	snake_v2.c:80: char temp = 0x80 >> (tail & 7);
      0006EC 74 07            [12] 1705 	mov	a,#0x07
      0006EE 5F               [12] 1706 	anl	a,r7
      0006EF FE               [12] 1707 	mov	r6,a
      0006F0 8E F0            [24] 1708 	mov	b,r6
      0006F2 05 F0            [12] 1709 	inc	b
      0006F4 7E 80            [12] 1710 	mov	r6,#0x80
      0006F6 E4               [12] 1711 	clr	a
      0006F7 FD               [12] 1712 	mov	r5,a
      0006F8 33               [12] 1713 	rlc	a
      0006F9 92 D2            [24] 1714 	mov	ov,c
      0006FB 80 08            [24] 1715 	sjmp	00147$
      0006FD                       1716 00146$:
      0006FD A2 D2            [12] 1717 	mov	c,ov
      0006FF ED               [12] 1718 	mov	a,r5
      000700 13               [12] 1719 	rrc	a
      000701 FD               [12] 1720 	mov	r5,a
      000702 EE               [12] 1721 	mov	a,r6
      000703 13               [12] 1722 	rrc	a
      000704 FE               [12] 1723 	mov	r6,a
      000705                       1724 00147$:
      000705 D5 F0 F5         [24] 1725 	djnz	b,00146$
                                   1726 ;	snake_v2.c:322: char dir = get_direction(tail);
      000708 EF               [12] 1727 	mov	a,r7
      000709 C4               [12] 1728 	swap	a
      00070A 23               [12] 1729 	rl	a
      00070B 54 1F            [12] 1730 	anl	a,#0x1f
      00070D FF               [12] 1731 	mov	r7,a
      00070E 24 42            [12] 1732 	add	a,#_bit1
      000710 F9               [12] 1733 	mov	r1,a
      000711 87 05            [24] 1734 	mov	ar5,@r1
      000713 EE               [12] 1735 	mov	a,r6
      000714 52 05            [12] 1736 	anl	ar5,a
      000716 ED               [12] 1737 	mov	a,r5
      000717 B4 01 00         [24] 1738 	cjne	a,#0x01,00148$
      00071A                       1739 00148$:
      00071A B3               [12] 1740 	cpl	c
      00071B 92 01            [24] 1741 	mov	_update_game_sloc0_1_0,c
      00071D E4               [12] 1742 	clr	a
      00071E 33               [12] 1743 	rlc	a
      00071F 25 E0            [12] 1744 	add	a,acc
      000721 FD               [12] 1745 	mov	r5,a
      000722 EF               [12] 1746 	mov	a,r7
      000723 24 3A            [12] 1747 	add	a,#_bit0
      000725 F9               [12] 1748 	mov	r1,a
      000726 E7               [12] 1749 	mov	a,@r1
      000727 52 06            [12] 1750 	anl	ar6,a
      000729 EE               [12] 1751 	mov	a,r6
      00072A B4 01 00         [24] 1752 	cjne	a,#0x01,00149$
      00072D                       1753 00149$:
      00072D B3               [12] 1754 	cpl	c
      00072E 92 01            [24] 1755 	mov	_update_game_sloc0_1_0,c
      000730 E4               [12] 1756 	clr	a
      000731 33               [12] 1757 	rlc	a
      000732 FF               [12] 1758 	mov	r7,a
      000733 ED               [12] 1759 	mov	a,r5
      000734 42 07            [12] 1760 	orl	ar7,a
                                   1761 ;	snake_v2.c:323: switch (dir)
      000736 EF               [12] 1762 	mov	a,r7
      000737 24 FC            [12] 1763 	add	a,#0xff - 0x03
      000739 40 22            [24] 1764 	jc	00116$
      00073B EF               [12] 1765 	mov	a,r7
      00073C 2F               [12] 1766 	add	a,r7
                                   1767 ;	snake_v2.c:325: case dir_left:
      00073D 90 07 41         [24] 1768 	mov	dptr,#00151$
      000740 73               [24] 1769 	jmp	@a+dptr
      000741                       1770 00151$:
      000741 80 06            [24] 1771 	sjmp	00104$
      000743 80 07            [24] 1772 	sjmp	00105$
      000745 80 08            [24] 1773 	sjmp	00106$
      000747 80 0D            [24] 1774 	sjmp	00107$
      000749                       1775 00104$:
                                   1776 ;	snake_v2.c:326: --tail;
      000749 15 38            [12] 1777 	dec	_tail
                                   1778 ;	snake_v2.c:327: break;
                                   1779 ;	snake_v2.c:328: case dir_right:
      00074B 22               [24] 1780 	ret
      00074C                       1781 00105$:
                                   1782 ;	snake_v2.c:329: ++tail;
      00074C 05 38            [12] 1783 	inc	_tail
                                   1784 ;	snake_v2.c:330: break;
                                   1785 ;	snake_v2.c:331: case dir_up:
      00074E 22               [24] 1786 	ret
      00074F                       1787 00106$:
                                   1788 ;	snake_v2.c:332: tail -= 8;
      00074F E5 38            [12] 1789 	mov	a,_tail
      000751 24 F8            [12] 1790 	add	a,#0xf8
      000753 F5 38            [12] 1791 	mov	_tail,a
                                   1792 ;	snake_v2.c:333: break;
                                   1793 ;	snake_v2.c:334: case dir_down:
      000755 22               [24] 1794 	ret
      000756                       1795 00107$:
                                   1796 ;	snake_v2.c:335: tail += 8;
      000756 AF 38            [24] 1797 	mov	r7,_tail
      000758 74 08            [12] 1798 	mov	a,#0x08
      00075A 2F               [12] 1799 	add	a,r7
      00075B F5 38            [12] 1800 	mov	_tail,a
                                   1801 ;	snake_v2.c:337: }
      00075D                       1802 00116$:
                                   1803 ;	snake_v2.c:339: }
      00075D 22               [24] 1804 	ret
                                   1805 ;------------------------------------------------------------
                                   1806 ;Allocation info for local variables in function 'go_up'
                                   1807 ;------------------------------------------------------------
                                   1808 ;__1310720022              Allocated to registers r7 
                                   1809 ;__1310720023              Allocated to registers 
                                   1810 ;tail                      Allocated to registers r6 
                                   1811 ;direction                 Allocated to registers 
                                   1812 ;temp                      Allocated to registers r5 
                                   1813 ;------------------------------------------------------------
                                   1814 ;	snake_v2.c:341: void go_up(void)
                                   1815 ;	-----------------------------------------
                                   1816 ;	 function go_up
                                   1817 ;	-----------------------------------------
      00075E                       1818 _go_up:
                                   1819 ;	snake_v2.c:343: if (head < 8)
      00075E 74 F8            [12] 1820 	mov	a,#0x100 - 0x08
      000760 25 37            [12] 1821 	add	a,_head
      000762 40 03            [24] 1822 	jc	00102$
                                   1823 ;	snake_v2.c:344: game_over();
      000764 12 01 5D         [24] 1824 	lcall	_game_over
      000767                       1825 00102$:
                                   1826 ;	snake_v2.c:345: if (cur_dir == dir_down)
      000767 74 03            [12] 1827 	mov	a,#0x03
      000769 B5 2D 01         [24] 1828 	cjne	a,_cur_dir,00104$
                                   1829 ;	snake_v2.c:346: return;
      00076C 22               [24] 1830 	ret
      00076D                       1831 00104$:
                                   1832 ;	snake_v2.c:347: update_direction(head, dir_up);
      00076D AF 37            [24] 1833 	mov	r7,_head
      00076F 8F 06            [24] 1834 	mov	ar6,r7
                                   1835 ;	snake_v2.c:86: char temp = 0x80 >> (tail & 7);
      000771 74 07            [12] 1836 	mov	a,#0x07
      000773 5F               [12] 1837 	anl	a,r7
      000774 FD               [12] 1838 	mov	r5,a
      000775 8D F0            [24] 1839 	mov	b,r5
      000777 05 F0            [12] 1840 	inc	b
      000779 7D 80            [12] 1841 	mov	r5,#0x80
      00077B E4               [12] 1842 	clr	a
      00077C FC               [12] 1843 	mov	r4,a
      00077D 33               [12] 1844 	rlc	a
      00077E 92 D2            [24] 1845 	mov	ov,c
      000780 80 08            [24] 1846 	sjmp	00126$
      000782                       1847 00125$:
      000782 A2 D2            [12] 1848 	mov	c,ov
      000784 EC               [12] 1849 	mov	a,r4
      000785 13               [12] 1850 	rrc	a
      000786 FC               [12] 1851 	mov	r4,a
      000787 ED               [12] 1852 	mov	a,r5
      000788 13               [12] 1853 	rrc	a
      000789 FD               [12] 1854 	mov	r5,a
      00078A                       1855 00126$:
      00078A D5 F0 F5         [24] 1856 	djnz	b,00125$
                                   1857 ;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
      00078D EF               [12] 1858 	mov	a,r7
      00078E C4               [12] 1859 	swap	a
      00078F 23               [12] 1860 	rl	a
      000790 54 1F            [12] 1861 	anl	a,#0x1f
      000792 24 42            [12] 1862 	add	a,#_bit1
      000794 F9               [12] 1863 	mov	r1,a
      000795 87 07            [24] 1864 	mov	ar7,@r1
      000797 ED               [12] 1865 	mov	a,r5
      000798 F4               [12] 1866 	cpl	a
      000799 5F               [12] 1867 	anl	a,r7
      00079A F7               [12] 1868 	mov	@r1,a
                                   1869 ;	snake_v2.c:90: bit1[tail >> 3] |= temp;
      00079B EE               [12] 1870 	mov	a,r6
      00079C C4               [12] 1871 	swap	a
      00079D 23               [12] 1872 	rl	a
      00079E 54 1F            [12] 1873 	anl	a,#0x1f
      0007A0 FE               [12] 1874 	mov	r6,a
      0007A1 24 42            [12] 1875 	add	a,#_bit1
      0007A3 F9               [12] 1876 	mov	r1,a
      0007A4 87 07            [24] 1877 	mov	ar7,@r1
      0007A6 ED               [12] 1878 	mov	a,r5
      0007A7 4F               [12] 1879 	orl	a,r7
      0007A8 F7               [12] 1880 	mov	@r1,a
                                   1881 ;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
      0007A9 EE               [12] 1882 	mov	a,r6
      0007AA 24 3A            [12] 1883 	add	a,#_bit0
      0007AC F9               [12] 1884 	mov	r1,a
      0007AD 87 07            [24] 1885 	mov	ar7,@r1
      0007AF ED               [12] 1886 	mov	a,r5
      0007B0 F4               [12] 1887 	cpl	a
      0007B1 5F               [12] 1888 	anl	a,r7
      0007B2 F7               [12] 1889 	mov	@r1,a
                                   1890 ;	snake_v2.c:348: head = head - 8;
      0007B3 E5 37            [12] 1891 	mov	a,_head
      0007B5 24 F8            [12] 1892 	add	a,#0xf8
      0007B7 F5 37            [12] 1893 	mov	_head,a
                                   1894 ;	snake_v2.c:349: cur_dir = dir_up;
      0007B9 75 2D 02         [24] 1895 	mov	_cur_dir,#0x02
                                   1896 ;	snake_v2.c:350: update_game();
                                   1897 ;	snake_v2.c:351: }
      0007BC 02 06 0C         [24] 1898 	ljmp	_update_game
                                   1899 ;------------------------------------------------------------
                                   1900 ;Allocation info for local variables in function 'go_down'
                                   1901 ;------------------------------------------------------------
                                   1902 ;__1310720025              Allocated to registers r7 
                                   1903 ;__1310720026              Allocated to registers 
                                   1904 ;tail                      Allocated to registers r6 
                                   1905 ;direction                 Allocated to registers 
                                   1906 ;temp                      Allocated to registers r5 
                                   1907 ;------------------------------------------------------------
                                   1908 ;	snake_v2.c:352: void go_down(void)
                                   1909 ;	-----------------------------------------
                                   1910 ;	 function go_down
                                   1911 ;	-----------------------------------------
      0007BF                       1912 _go_down:
                                   1913 ;	snake_v2.c:354: if (head >= 56)
      0007BF 74 C8            [12] 1914 	mov	a,#0x100 - 0x38
      0007C1 25 37            [12] 1915 	add	a,_head
      0007C3 50 03            [24] 1916 	jnc	00102$
                                   1917 ;	snake_v2.c:355: game_over();
      0007C5 12 01 5D         [24] 1918 	lcall	_game_over
      0007C8                       1919 00102$:
                                   1920 ;	snake_v2.c:356: if (cur_dir == dir_up)
      0007C8 74 02            [12] 1921 	mov	a,#0x02
      0007CA B5 2D 01         [24] 1922 	cjne	a,_cur_dir,00104$
                                   1923 ;	snake_v2.c:357: return;
      0007CD 22               [24] 1924 	ret
      0007CE                       1925 00104$:
                                   1926 ;	snake_v2.c:358: update_direction(head, dir_down);
      0007CE AF 37            [24] 1927 	mov	r7,_head
      0007D0 8F 06            [24] 1928 	mov	ar6,r7
                                   1929 ;	snake_v2.c:86: char temp = 0x80 >> (tail & 7);
      0007D2 74 07            [12] 1930 	mov	a,#0x07
      0007D4 5F               [12] 1931 	anl	a,r7
      0007D5 FD               [12] 1932 	mov	r5,a
      0007D6 8D F0            [24] 1933 	mov	b,r5
      0007D8 05 F0            [12] 1934 	inc	b
      0007DA 7D 80            [12] 1935 	mov	r5,#0x80
      0007DC E4               [12] 1936 	clr	a
      0007DD FC               [12] 1937 	mov	r4,a
      0007DE 33               [12] 1938 	rlc	a
      0007DF 92 D2            [24] 1939 	mov	ov,c
      0007E1 80 08            [24] 1940 	sjmp	00126$
      0007E3                       1941 00125$:
      0007E3 A2 D2            [12] 1942 	mov	c,ov
      0007E5 EC               [12] 1943 	mov	a,r4
      0007E6 13               [12] 1944 	rrc	a
      0007E7 FC               [12] 1945 	mov	r4,a
      0007E8 ED               [12] 1946 	mov	a,r5
      0007E9 13               [12] 1947 	rrc	a
      0007EA FD               [12] 1948 	mov	r5,a
      0007EB                       1949 00126$:
      0007EB D5 F0 F5         [24] 1950 	djnz	b,00125$
                                   1951 ;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
      0007EE EF               [12] 1952 	mov	a,r7
      0007EF C4               [12] 1953 	swap	a
      0007F0 23               [12] 1954 	rl	a
      0007F1 54 1F            [12] 1955 	anl	a,#0x1f
      0007F3 24 42            [12] 1956 	add	a,#_bit1
      0007F5 F9               [12] 1957 	mov	r1,a
      0007F6 87 07            [24] 1958 	mov	ar7,@r1
      0007F8 ED               [12] 1959 	mov	a,r5
      0007F9 F4               [12] 1960 	cpl	a
      0007FA 5F               [12] 1961 	anl	a,r7
      0007FB F7               [12] 1962 	mov	@r1,a
                                   1963 ;	snake_v2.c:90: bit1[tail >> 3] |= temp;
      0007FC EE               [12] 1964 	mov	a,r6
      0007FD C4               [12] 1965 	swap	a
      0007FE 23               [12] 1966 	rl	a
      0007FF 54 1F            [12] 1967 	anl	a,#0x1f
      000801 FE               [12] 1968 	mov	r6,a
      000802 24 42            [12] 1969 	add	a,#_bit1
      000804 F9               [12] 1970 	mov	r1,a
      000805 87 07            [24] 1971 	mov	ar7,@r1
      000807 ED               [12] 1972 	mov	a,r5
      000808 4F               [12] 1973 	orl	a,r7
      000809 F7               [12] 1974 	mov	@r1,a
                                   1975 ;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
      00080A EE               [12] 1976 	mov	a,r6
      00080B 24 3A            [12] 1977 	add	a,#_bit0
      00080D F9               [12] 1978 	mov	r1,a
      00080E 87 07            [24] 1979 	mov	ar7,@r1
      000810 ED               [12] 1980 	mov	a,r5
      000811 F4               [12] 1981 	cpl	a
      000812 5F               [12] 1982 	anl	a,r7
      000813 F7               [12] 1983 	mov	@r1,a
                                   1984 ;	snake_v2.c:98: bit0[tail >> 3] |= temp;
      000814 87 07            [24] 1985 	mov	ar7,@r1
      000816 ED               [12] 1986 	mov	a,r5
      000817 4F               [12] 1987 	orl	a,r7
      000818 F7               [12] 1988 	mov	@r1,a
                                   1989 ;	snake_v2.c:359: head = head + 8;
      000819 AF 37            [24] 1990 	mov	r7,_head
      00081B 74 08            [12] 1991 	mov	a,#0x08
      00081D 2F               [12] 1992 	add	a,r7
      00081E F5 37            [12] 1993 	mov	_head,a
                                   1994 ;	snake_v2.c:360: cur_dir = dir_down;
      000820 75 2D 03         [24] 1995 	mov	_cur_dir,#0x03
                                   1996 ;	snake_v2.c:361: update_game();
                                   1997 ;	snake_v2.c:362: }
      000823 02 06 0C         [24] 1998 	ljmp	_update_game
                                   1999 ;------------------------------------------------------------
                                   2000 ;Allocation info for local variables in function 'go_left'
                                   2001 ;------------------------------------------------------------
                                   2002 ;__1310720028              Allocated to registers r7 
                                   2003 ;__1310720029              Allocated to registers 
                                   2004 ;tail                      Allocated to registers r6 
                                   2005 ;direction                 Allocated to registers 
                                   2006 ;temp                      Allocated to registers r5 
                                   2007 ;------------------------------------------------------------
                                   2008 ;	snake_v2.c:363: void go_left(void)
                                   2009 ;	-----------------------------------------
                                   2010 ;	 function go_left
                                   2011 ;	-----------------------------------------
      000826                       2012 _go_left:
                                   2013 ;	snake_v2.c:365: if (head % 8 == 0)
      000826 E5 37            [12] 2014 	mov	a,_head
      000828 54 07            [12] 2015 	anl	a,#0x07
      00082A 60 02            [24] 2016 	jz	00123$
      00082C 80 03            [24] 2017 	sjmp	00102$
      00082E                       2018 00123$:
                                   2019 ;	snake_v2.c:366: game_over();
      00082E 12 01 5D         [24] 2020 	lcall	_game_over
      000831                       2021 00102$:
                                   2022 ;	snake_v2.c:367: if (cur_dir == dir_right)
      000831 74 01            [12] 2023 	mov	a,#0x01
      000833 B5 2D 01         [24] 2024 	cjne	a,_cur_dir,00104$
                                   2025 ;	snake_v2.c:368: return;
      000836 22               [24] 2026 	ret
      000837                       2027 00104$:
                                   2028 ;	snake_v2.c:369: update_direction(head, dir_left);
      000837 AF 37            [24] 2029 	mov	r7,_head
      000839 8F 06            [24] 2030 	mov	ar6,r7
                                   2031 ;	snake_v2.c:86: char temp = 0x80 >> (tail & 7);
      00083B 74 07            [12] 2032 	mov	a,#0x07
      00083D 5F               [12] 2033 	anl	a,r7
      00083E FD               [12] 2034 	mov	r5,a
      00083F 8D F0            [24] 2035 	mov	b,r5
      000841 05 F0            [12] 2036 	inc	b
      000843 7D 80            [12] 2037 	mov	r5,#0x80
      000845 E4               [12] 2038 	clr	a
      000846 FC               [12] 2039 	mov	r4,a
      000847 33               [12] 2040 	rlc	a
      000848 92 D2            [24] 2041 	mov	ov,c
      00084A 80 08            [24] 2042 	sjmp	00127$
      00084C                       2043 00126$:
      00084C A2 D2            [12] 2044 	mov	c,ov
      00084E EC               [12] 2045 	mov	a,r4
      00084F 13               [12] 2046 	rrc	a
      000850 FC               [12] 2047 	mov	r4,a
      000851 ED               [12] 2048 	mov	a,r5
      000852 13               [12] 2049 	rrc	a
      000853 FD               [12] 2050 	mov	r5,a
      000854                       2051 00127$:
      000854 D5 F0 F5         [24] 2052 	djnz	b,00126$
                                   2053 ;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
      000857 EF               [12] 2054 	mov	a,r7
      000858 C4               [12] 2055 	swap	a
      000859 23               [12] 2056 	rl	a
      00085A 54 1F            [12] 2057 	anl	a,#0x1f
      00085C 24 42            [12] 2058 	add	a,#_bit1
      00085E F9               [12] 2059 	mov	r1,a
      00085F 87 07            [24] 2060 	mov	ar7,@r1
      000861 ED               [12] 2061 	mov	a,r5
      000862 F4               [12] 2062 	cpl	a
      000863 5F               [12] 2063 	anl	a,r7
      000864 F7               [12] 2064 	mov	@r1,a
                                   2065 ;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
      000865 EE               [12] 2066 	mov	a,r6
      000866 C4               [12] 2067 	swap	a
      000867 23               [12] 2068 	rl	a
      000868 54 1F            [12] 2069 	anl	a,#0x1f
      00086A 24 3A            [12] 2070 	add	a,#_bit0
      00086C F9               [12] 2071 	mov	r1,a
      00086D 87 07            [24] 2072 	mov	ar7,@r1
      00086F ED               [12] 2073 	mov	a,r5
      000870 F4               [12] 2074 	cpl	a
      000871 5F               [12] 2075 	anl	a,r7
      000872 F7               [12] 2076 	mov	@r1,a
                                   2077 ;	snake_v2.c:370: --head;
      000873 15 37            [12] 2078 	dec	_head
                                   2079 ;	snake_v2.c:371: cur_dir = dir_left;
      000875 75 2D 00         [24] 2080 	mov	_cur_dir,#0x00
                                   2081 ;	snake_v2.c:372: update_game();
                                   2082 ;	snake_v2.c:373: }
      000878 02 06 0C         [24] 2083 	ljmp	_update_game
                                   2084 ;------------------------------------------------------------
                                   2085 ;Allocation info for local variables in function 'go_right'
                                   2086 ;------------------------------------------------------------
                                   2087 ;__1310720031              Allocated to registers r7 
                                   2088 ;__1310720032              Allocated to registers 
                                   2089 ;tail                      Allocated to registers r6 
                                   2090 ;direction                 Allocated to registers 
                                   2091 ;temp                      Allocated to registers r5 
                                   2092 ;------------------------------------------------------------
                                   2093 ;	snake_v2.c:374: void go_right(void)
                                   2094 ;	-----------------------------------------
                                   2095 ;	 function go_right
                                   2096 ;	-----------------------------------------
      00087B                       2097 _go_right:
                                   2098 ;	snake_v2.c:376: if (head % 8 == 7)
      00087B 74 07            [12] 2099 	mov	a,#0x07
      00087D 55 37            [12] 2100 	anl	a,_head
      00087F FE               [12] 2101 	mov	r6,a
      000880 7F 00            [12] 2102 	mov	r7,#0x00
      000882 BE 07 06         [24] 2103 	cjne	r6,#0x07,00102$
      000885 BF 00 03         [24] 2104 	cjne	r7,#0x00,00102$
                                   2105 ;	snake_v2.c:377: game_over();
      000888 12 01 5D         [24] 2106 	lcall	_game_over
      00088B                       2107 00102$:
                                   2108 ;	snake_v2.c:378: if (cur_dir == dir_left)
      00088B E5 2D            [12] 2109 	mov	a,_cur_dir
      00088D 70 01            [24] 2110 	jnz	00104$
                                   2111 ;	snake_v2.c:379: return;
      00088F 22               [24] 2112 	ret
      000890                       2113 00104$:
                                   2114 ;	snake_v2.c:380: update_direction(head, dir_right);
      000890 AF 37            [24] 2115 	mov	r7,_head
      000892 8F 06            [24] 2116 	mov	ar6,r7
                                   2117 ;	snake_v2.c:86: char temp = 0x80 >> (tail & 7);
      000894 74 07            [12] 2118 	mov	a,#0x07
      000896 5F               [12] 2119 	anl	a,r7
      000897 FD               [12] 2120 	mov	r5,a
      000898 8D F0            [24] 2121 	mov	b,r5
      00089A 05 F0            [12] 2122 	inc	b
      00089C 7D 80            [12] 2123 	mov	r5,#0x80
      00089E E4               [12] 2124 	clr	a
      00089F FC               [12] 2125 	mov	r4,a
      0008A0 33               [12] 2126 	rlc	a
      0008A1 92 D2            [24] 2127 	mov	ov,c
      0008A3 80 08            [24] 2128 	sjmp	00126$
      0008A5                       2129 00125$:
      0008A5 A2 D2            [12] 2130 	mov	c,ov
      0008A7 EC               [12] 2131 	mov	a,r4
      0008A8 13               [12] 2132 	rrc	a
      0008A9 FC               [12] 2133 	mov	r4,a
      0008AA ED               [12] 2134 	mov	a,r5
      0008AB 13               [12] 2135 	rrc	a
      0008AC FD               [12] 2136 	mov	r5,a
      0008AD                       2137 00126$:
      0008AD D5 F0 F5         [24] 2138 	djnz	b,00125$
                                   2139 ;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
      0008B0 EF               [12] 2140 	mov	a,r7
      0008B1 C4               [12] 2141 	swap	a
      0008B2 23               [12] 2142 	rl	a
      0008B3 54 1F            [12] 2143 	anl	a,#0x1f
      0008B5 24 42            [12] 2144 	add	a,#_bit1
      0008B7 F9               [12] 2145 	mov	r1,a
      0008B8 87 07            [24] 2146 	mov	ar7,@r1
      0008BA ED               [12] 2147 	mov	a,r5
      0008BB F4               [12] 2148 	cpl	a
      0008BC 5F               [12] 2149 	anl	a,r7
      0008BD F7               [12] 2150 	mov	@r1,a
                                   2151 ;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
      0008BE EE               [12] 2152 	mov	a,r6
      0008BF C4               [12] 2153 	swap	a
      0008C0 23               [12] 2154 	rl	a
      0008C1 54 1F            [12] 2155 	anl	a,#0x1f
      0008C3 24 3A            [12] 2156 	add	a,#_bit0
      0008C5 F9               [12] 2157 	mov	r1,a
      0008C6 87 07            [24] 2158 	mov	ar7,@r1
      0008C8 ED               [12] 2159 	mov	a,r5
      0008C9 F4               [12] 2160 	cpl	a
      0008CA 5F               [12] 2161 	anl	a,r7
      0008CB F7               [12] 2162 	mov	@r1,a
                                   2163 ;	snake_v2.c:98: bit0[tail >> 3] |= temp;
      0008CC 87 07            [24] 2164 	mov	ar7,@r1
      0008CE ED               [12] 2165 	mov	a,r5
      0008CF 4F               [12] 2166 	orl	a,r7
      0008D0 F7               [12] 2167 	mov	@r1,a
                                   2168 ;	snake_v2.c:381: ++head;
      0008D1 05 37            [12] 2169 	inc	_head
                                   2170 ;	snake_v2.c:382: cur_dir = dir_right;
      0008D3 75 2D 01         [24] 2171 	mov	_cur_dir,#0x01
                                   2172 ;	snake_v2.c:383: update_game();
                                   2173 ;	snake_v2.c:384: }
      0008D6 02 06 0C         [24] 2174 	ljmp	_update_game
                                   2175 ;------------------------------------------------------------
                                   2176 ;Allocation info for local variables in function 'reset_timer_0'
                                   2177 ;------------------------------------------------------------
                                   2178 ;	snake_v2.c:385: void reset_timer_0(void)
                                   2179 ;	-----------------------------------------
                                   2180 ;	 function reset_timer_0
                                   2181 ;	-----------------------------------------
      0008D9                       2182 _reset_timer_0:
                                   2183 ;	snake_v2.c:388: TH0 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
      0008D9 75 8C 4B         [24] 2184 	mov	_TH0,#0x4b
                                   2185 ;	snake_v2.c:389: TL0 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
      0008DC 75 8A FF         [24] 2186 	mov	_TL0,#0xff
                                   2187 ;	snake_v2.c:390: }
      0008DF 22               [24] 2188 	ret
                                   2189 ;------------------------------------------------------------
                                   2190 ;Allocation info for local variables in function 'key_pressed_handle'
                                   2191 ;------------------------------------------------------------
                                   2192 ;	snake_v2.c:392: void key_pressed_handle(void)
                                   2193 ;	-----------------------------------------
                                   2194 ;	 function key_pressed_handle
                                   2195 ;	-----------------------------------------
      0008E0                       2196 _key_pressed_handle:
                                   2197 ;	snake_v2.c:394: reset_timer_0();
      0008E0 12 08 D9         [24] 2198 	lcall	_reset_timer_0
                                   2199 ;	snake_v2.c:395: game_timer_counter = -7;
      0008E3 75 29 F9         [24] 2200 	mov	_game_timer_counter,#0xf9
      0008E6 75 2A FF         [24] 2201 	mov	(_game_timer_counter + 1),#0xff
                                   2202 ;	snake_v2.c:396: switch (key_pressed)
      0008E9 E5 36            [12] 2203 	mov	a,_key_pressed
      0008EB 24 FC            [12] 2204 	add	a,#0xff - 0x03
      0008ED 40 22            [24] 2205 	jc	00105$
      0008EF E5 36            [12] 2206 	mov	a,_key_pressed
      0008F1 75 F0 03         [24] 2207 	mov	b,#0x03
      0008F4 A4               [48] 2208 	mul	ab
      0008F5 90 08 F9         [24] 2209 	mov	dptr,#00114$
      0008F8 73               [24] 2210 	jmp	@a+dptr
      0008F9                       2211 00114$:
      0008F9 02 09 0E         [24] 2212 	ljmp	00104$
      0008FC 02 09 05         [24] 2213 	ljmp	00101$
      0008FF 02 09 0B         [24] 2214 	ljmp	00103$
      000902 02 09 08         [24] 2215 	ljmp	00102$
                                   2216 ;	snake_v2.c:398: case 1:
      000905                       2217 00101$:
                                   2218 ;	snake_v2.c:399: go_up();
                                   2219 ;	snake_v2.c:400: break;
                                   2220 ;	snake_v2.c:401: case 3:
      000905 02 07 5E         [24] 2221 	ljmp	_go_up
      000908                       2222 00102$:
                                   2223 ;	snake_v2.c:402: go_down();
                                   2224 ;	snake_v2.c:403: break;
                                   2225 ;	snake_v2.c:404: case 2:
      000908 02 07 BF         [24] 2226 	ljmp	_go_down
      00090B                       2227 00103$:
                                   2228 ;	snake_v2.c:405: go_left();
                                   2229 ;	snake_v2.c:406: break;
                                   2230 ;	snake_v2.c:407: case 0:
      00090B 02 08 26         [24] 2231 	ljmp	_go_left
      00090E                       2232 00104$:
                                   2233 ;	snake_v2.c:408: go_right();
                                   2234 ;	snake_v2.c:409: break;
                                   2235 ;	snake_v2.c:410: default:
      00090E 02 08 7B         [24] 2236 	ljmp	_go_right
      000911                       2237 00105$:
                                   2238 ;	snake_v2.c:411: point = key_pressed;
      000911 85 36 2B         [24] 2239 	mov	_point,_key_pressed
                                   2240 ;	snake_v2.c:413: }
                                   2241 ;	snake_v2.c:414: }
      000914 22               [24] 2242 	ret
                                   2243 ;------------------------------------------------------------
                                   2244 ;Allocation info for local variables in function 'uart_init'
                                   2245 ;------------------------------------------------------------
                                   2246 ;	snake_v2.c:415: void uart_init(void)
                                   2247 ;	-----------------------------------------
                                   2248 ;	 function uart_init
                                   2249 ;	-----------------------------------------
      000915                       2250 _uart_init:
                                   2251 ;	snake_v2.c:419: TMOD &= 0x0f;
      000915 53 89 0F         [24] 2252 	anl	_TMOD,#0x0f
                                   2253 ;	snake_v2.c:420: TMOD |= 0x20;
      000918 43 89 20         [24] 2254 	orl	_TMOD,#0x20
                                   2255 ;	snake_v2.c:421: TH1 = 0xfd;
      00091B 75 8D FD         [24] 2256 	mov	_TH1,#0xfd
                                   2257 ;	snake_v2.c:422: TL1 = 0xfd;
      00091E 75 8B FD         [24] 2258 	mov	_TL1,#0xfd
                                   2259 ;	snake_v2.c:423: ET1 = 0;
                                   2260 ;	assignBit
      000921 C2 AB            [12] 2261 	clr	_ET1
                                   2262 ;	snake_v2.c:424: TR1 = 1;
                                   2263 ;	assignBit
      000923 D2 8E            [12] 2264 	setb	_TR1
                                   2265 ;	snake_v2.c:426: SM0 = 0;
                                   2266 ;	assignBit
      000925 C2 9F            [12] 2267 	clr	_SM0
                                   2268 ;	snake_v2.c:427: SM1 = 1;
                                   2269 ;	assignBit
      000927 D2 9E            [12] 2270 	setb	_SM1
                                   2271 ;	snake_v2.c:429: ES = 1;
                                   2272 ;	assignBit
      000929 D2 AC            [12] 2273 	setb	_ES
                                   2274 ;	snake_v2.c:430: EA = 1;
                                   2275 ;	assignBit
      00092B D2 AF            [12] 2276 	setb	_EA
                                   2277 ;	snake_v2.c:431: REN = 1;
                                   2278 ;	assignBit
      00092D D2 9C            [12] 2279 	setb	_REN
                                   2280 ;	snake_v2.c:432: }
      00092F 22               [24] 2281 	ret
                                   2282 ;------------------------------------------------------------
                                   2283 ;Allocation info for local variables in function 'UART_Receive'
                                   2284 ;------------------------------------------------------------
                                   2285 ;	snake_v2.c:433: void UART_Receive(void) __interrupt(4)
                                   2286 ;	-----------------------------------------
                                   2287 ;	 function UART_Receive
                                   2288 ;	-----------------------------------------
      000930                       2289 _UART_Receive:
      000930 C0 21            [24] 2290 	push	bits
      000932 C0 E0            [24] 2291 	push	acc
      000934 C0 F0            [24] 2292 	push	b
      000936 C0 82            [24] 2293 	push	dpl
      000938 C0 83            [24] 2294 	push	dph
      00093A C0 07            [24] 2295 	push	(0+7)
      00093C C0 06            [24] 2296 	push	(0+6)
      00093E C0 05            [24] 2297 	push	(0+5)
      000940 C0 04            [24] 2298 	push	(0+4)
      000942 C0 03            [24] 2299 	push	(0+3)
      000944 C0 02            [24] 2300 	push	(0+2)
      000946 C0 01            [24] 2301 	push	(0+1)
      000948 C0 00            [24] 2302 	push	(0+0)
      00094A C0 D0            [24] 2303 	push	psw
      00094C 75 D0 00         [24] 2304 	mov	psw,#0x00
                                   2305 ;	snake_v2.c:435: P2 = 0x10;
      00094F 75 A0 10         [24] 2306 	mov	_P2,#0x10
                                   2307 ;	snake_v2.c:436: if (RI)
      000952 30 98 1A         [24] 2308 	jnb	_RI,00105$
                                   2309 ;	snake_v2.c:438: P2 = ~SBUF;
      000955 E5 99            [12] 2310 	mov	a,_SBUF
      000957 F4               [12] 2311 	cpl	a
      000958 F5 A0            [12] 2312 	mov	_P2,a
                                   2313 ;	snake_v2.c:440: received_data = SBUF; // Get received data
      00095A 85 99 24         [24] 2314 	mov	_received_data,_SBUF
                                   2315 ;	snake_v2.c:441: point = received_data + 10;
      00095D AF 24            [24] 2316 	mov	r7,_received_data
      00095F 74 0A            [12] 2317 	mov	a,#0x0a
      000961 2F               [12] 2318 	add	a,r7
      000962 F5 2B            [12] 2319 	mov	_point,a
                                   2320 ;	snake_v2.c:443: key_pressed = received_data;
      000964 85 24 36         [24] 2321 	mov	_key_pressed,_received_data
                                   2322 ;	snake_v2.c:444: if (TR0)
      000967 30 8C 03         [24] 2323 	jnb	_TR0,00102$
                                   2324 ;	snake_v2.c:445: key_pressed_handle();
      00096A 12 08 E0         [24] 2325 	lcall	_key_pressed_handle
      00096D                       2326 00102$:
                                   2327 ;	snake_v2.c:446: RI = 0; // Clear receive interrupt flag
                                   2328 ;	assignBit
      00096D C2 98            [12] 2329 	clr	_RI
      00096F                       2330 00105$:
                                   2331 ;	snake_v2.c:448: }
      00096F D0 D0            [24] 2332 	pop	psw
      000971 D0 00            [24] 2333 	pop	(0+0)
      000973 D0 01            [24] 2334 	pop	(0+1)
      000975 D0 02            [24] 2335 	pop	(0+2)
      000977 D0 03            [24] 2336 	pop	(0+3)
      000979 D0 04            [24] 2337 	pop	(0+4)
      00097B D0 05            [24] 2338 	pop	(0+5)
      00097D D0 06            [24] 2339 	pop	(0+6)
      00097F D0 07            [24] 2340 	pop	(0+7)
      000981 D0 83            [24] 2341 	pop	dph
      000983 D0 82            [24] 2342 	pop	dpl
      000985 D0 F0            [24] 2343 	pop	b
      000987 D0 E0            [24] 2344 	pop	acc
      000989 D0 21            [24] 2345 	pop	bits
      00098B 32               [24] 2346 	reti
                                   2347 ;------------------------------------------------------------
                                   2348 ;Allocation info for local variables in function 'timer0_interrupt'
                                   2349 ;------------------------------------------------------------
                                   2350 ;__2621440034              Allocated to registers r7 
                                   2351 ;a                         Allocated to registers 
                                   2352 ;__2621440036              Allocated to registers r7 
                                   2353 ;a                         Allocated to registers 
                                   2354 ;------------------------------------------------------------
                                   2355 ;	snake_v2.c:450: void timer0_interrupt(void) __interrupt(1)
                                   2356 ;	-----------------------------------------
                                   2357 ;	 function timer0_interrupt
                                   2358 ;	-----------------------------------------
      00098C                       2359 _timer0_interrupt:
      00098C C0 21            [24] 2360 	push	bits
      00098E C0 E0            [24] 2361 	push	acc
      000990 C0 F0            [24] 2362 	push	b
      000992 C0 82            [24] 2363 	push	dpl
      000994 C0 83            [24] 2364 	push	dph
      000996 C0 07            [24] 2365 	push	(0+7)
      000998 C0 06            [24] 2366 	push	(0+6)
      00099A C0 05            [24] 2367 	push	(0+5)
      00099C C0 04            [24] 2368 	push	(0+4)
      00099E C0 03            [24] 2369 	push	(0+3)
      0009A0 C0 02            [24] 2370 	push	(0+2)
      0009A2 C0 01            [24] 2371 	push	(0+1)
      0009A4 C0 00            [24] 2372 	push	(0+0)
      0009A6 C0 D0            [24] 2373 	push	psw
      0009A8 75 D0 00         [24] 2374 	mov	psw,#0x00
                                   2375 ;	snake_v2.c:453: ++timer_counter;
      0009AB 05 25            [12] 2376 	inc	_timer_counter
      0009AD E4               [12] 2377 	clr	a
      0009AE B5 25 0C         [24] 2378 	cjne	a,_timer_counter,00133$
      0009B1 05 26            [12] 2379 	inc	(_timer_counter + 1)
      0009B3 B5 26 07         [24] 2380 	cjne	a,(_timer_counter + 1),00133$
      0009B6 05 27            [12] 2381 	inc	(_timer_counter + 2)
      0009B8 B5 27 02         [24] 2382 	cjne	a,(_timer_counter + 2),00133$
      0009BB 05 28            [12] 2383 	inc	(_timer_counter + 3)
      0009BD                       2384 00133$:
                                   2385 ;	snake_v2.c:454: reset_timer_0();
      0009BD 12 08 D9         [24] 2386 	lcall	_reset_timer_0
                                   2387 ;	snake_v2.c:455: ++game_timer_counter;
      0009C0 05 29            [12] 2388 	inc	_game_timer_counter
      0009C2 E4               [12] 2389 	clr	a
      0009C3 B5 29 02         [24] 2390 	cjne	a,_game_timer_counter,00134$
      0009C6 05 2A            [12] 2391 	inc	(_game_timer_counter + 1)
      0009C8                       2392 00134$:
                                   2393 ;	snake_v2.c:456: if (!(timer_counter % 3))
      0009C8 75 0C 03         [24] 2394 	mov	__modulong_PARM_2,#0x03
      0009CB E4               [12] 2395 	clr	a
      0009CC F5 0D            [12] 2396 	mov	(__modulong_PARM_2 + 1),a
      0009CE F5 0E            [12] 2397 	mov	(__modulong_PARM_2 + 2),a
      0009D0 F5 0F            [12] 2398 	mov	(__modulong_PARM_2 + 3),a
      0009D2 85 25 82         [24] 2399 	mov	dpl,_timer_counter
      0009D5 85 26 83         [24] 2400 	mov	dph,(_timer_counter + 1)
      0009D8 85 27 F0         [24] 2401 	mov	b,(_timer_counter + 2)
      0009DB E5 28            [12] 2402 	mov	a,(_timer_counter + 3)
      0009DD 12 0C 11         [24] 2403 	lcall	__modulong
      0009E0 AC 82            [24] 2404 	mov	r4,dpl
      0009E2 AD 83            [24] 2405 	mov	r5,dph
      0009E4 AE F0            [24] 2406 	mov	r6,b
      0009E6 FF               [12] 2407 	mov	r7,a
      0009E7 EC               [12] 2408 	mov	a,r4
      0009E8 4D               [12] 2409 	orl	a,r5
      0009E9 4E               [12] 2410 	orl	a,r6
      0009EA 4F               [12] 2411 	orl	a,r7
      0009EB 70 62            [24] 2412 	jnz	00105$
                                   2413 ;	snake_v2.c:458: if (show_food)
      0009ED E5 58            [12] 2414 	mov	a,_show_food
      0009EF 60 31            [24] 2415 	jz	00102$
                                   2416 ;	snake_v2.c:460: turn_off(food);
                                   2417 ;	snake_v2.c:120: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
      0009F1 E5 39            [12] 2418 	mov	a,_food
      0009F3 FF               [12] 2419 	mov	r7,a
      0009F4 C4               [12] 2420 	swap	a
      0009F5 23               [12] 2421 	rl	a
      0009F6 54 1F            [12] 2422 	anl	a,#0x1f
      0009F8 24 2E            [12] 2423 	add	a,#_data_mat
      0009FA F9               [12] 2424 	mov	r1,a
      0009FB 87 06            [24] 2425 	mov	ar6,@r1
      0009FD 53 07 07         [24] 2426 	anl	ar7,#0x07
      000A00 8F F0            [24] 2427 	mov	b,r7
      000A02 05 F0            [12] 2428 	inc	b
      000A04 7F 80            [12] 2429 	mov	r7,#0x80
      000A06 E4               [12] 2430 	clr	a
      000A07 FD               [12] 2431 	mov	r5,a
      000A08 33               [12] 2432 	rlc	a
      000A09 92 D2            [24] 2433 	mov	ov,c
      000A0B 80 08            [24] 2434 	sjmp	00138$
      000A0D                       2435 00137$:
      000A0D A2 D2            [12] 2436 	mov	c,ov
      000A0F ED               [12] 2437 	mov	a,r5
      000A10 13               [12] 2438 	rrc	a
      000A11 FD               [12] 2439 	mov	r5,a
      000A12 EF               [12] 2440 	mov	a,r7
      000A13 13               [12] 2441 	rrc	a
      000A14 FF               [12] 2442 	mov	r7,a
      000A15                       2443 00138$:
      000A15 D5 F0 F5         [24] 2444 	djnz	b,00137$
      000A18 EF               [12] 2445 	mov	a,r7
      000A19 F4               [12] 2446 	cpl	a
      000A1A FF               [12] 2447 	mov	r7,a
      000A1B 5E               [12] 2448 	anl	a,r6
      000A1C F7               [12] 2449 	mov	@r1,a
                                   2450 ;	snake_v2.c:461: show_food = 0;
      000A1D 75 58 00         [24] 2451 	mov	_show_food,#0x00
      000A20 80 2D            [24] 2452 	sjmp	00105$
      000A22                       2453 00102$:
                                   2454 ;	snake_v2.c:465: turn_on(food);
                                   2455 ;	snake_v2.c:116: data_mat[a >> 3] |= 0x80 >> (a & 7);
      000A22 E5 39            [12] 2456 	mov	a,_food
      000A24 FF               [12] 2457 	mov	r7,a
      000A25 C4               [12] 2458 	swap	a
      000A26 23               [12] 2459 	rl	a
      000A27 54 1F            [12] 2460 	anl	a,#0x1f
      000A29 24 2E            [12] 2461 	add	a,#_data_mat
      000A2B F9               [12] 2462 	mov	r1,a
      000A2C 87 06            [24] 2463 	mov	ar6,@r1
      000A2E 53 07 07         [24] 2464 	anl	ar7,#0x07
      000A31 8F F0            [24] 2465 	mov	b,r7
      000A33 05 F0            [12] 2466 	inc	b
      000A35 7F 80            [12] 2467 	mov	r7,#0x80
      000A37 E4               [12] 2468 	clr	a
      000A38 FD               [12] 2469 	mov	r5,a
      000A39 33               [12] 2470 	rlc	a
      000A3A 92 D2            [24] 2471 	mov	ov,c
      000A3C 80 08            [24] 2472 	sjmp	00140$
      000A3E                       2473 00139$:
      000A3E A2 D2            [12] 2474 	mov	c,ov
      000A40 ED               [12] 2475 	mov	a,r5
      000A41 13               [12] 2476 	rrc	a
      000A42 FD               [12] 2477 	mov	r5,a
      000A43 EF               [12] 2478 	mov	a,r7
      000A44 13               [12] 2479 	rrc	a
      000A45 FF               [12] 2480 	mov	r7,a
      000A46                       2481 00140$:
      000A46 D5 F0 F5         [24] 2482 	djnz	b,00139$
      000A49 EF               [12] 2483 	mov	a,r7
      000A4A 4E               [12] 2484 	orl	a,r6
      000A4B F7               [12] 2485 	mov	@r1,a
                                   2486 ;	snake_v2.c:466: show_food = 1;
      000A4C 75 58 01         [24] 2487 	mov	_show_food,#0x01
      000A4F                       2488 00105$:
                                   2489 ;	snake_v2.c:469: if (!(game_timer_counter % 10))
      000A4F 75 0C 0A         [24] 2490 	mov	__modsint_PARM_2,#0x0a
      000A52 75 0D 00         [24] 2491 	mov	(__modsint_PARM_2 + 1),#0x00
      000A55 85 29 82         [24] 2492 	mov	dpl,_game_timer_counter
      000A58 85 2A 83         [24] 2493 	mov	dph,(_game_timer_counter + 1)
      000A5B 12 0E 90         [24] 2494 	lcall	__modsint
      000A5E E5 82            [12] 2495 	mov	a,dpl
      000A60 85 83 F0         [24] 2496 	mov	b,dph
      000A63 45 F0            [12] 2497 	orl	a,b
      000A65 70 2E            [24] 2498 	jnz	00115$
                                   2499 ;	snake_v2.c:471: switch (cur_dir)
      000A67 E5 2D            [12] 2500 	mov	a,_cur_dir
      000A69 24 FC            [12] 2501 	add	a,#0xff - 0x03
      000A6B 40 28            [24] 2502 	jc	00115$
      000A6D E5 2D            [12] 2503 	mov	a,_cur_dir
      000A6F 75 F0 03         [24] 2504 	mov	b,#0x03
      000A72 A4               [48] 2505 	mul	ab
      000A73 90 0A 77         [24] 2506 	mov	dptr,#00143$
      000A76 73               [24] 2507 	jmp	@a+dptr
      000A77                       2508 00143$:
      000A77 02 0A 8D         [24] 2509 	ljmp	00108$
      000A7A 02 0A 92         [24] 2510 	ljmp	00109$
      000A7D 02 0A 83         [24] 2511 	ljmp	00106$
      000A80 02 0A 88         [24] 2512 	ljmp	00107$
                                   2513 ;	snake_v2.c:473: case (dir_up):
      000A83                       2514 00106$:
                                   2515 ;	snake_v2.c:474: go_up();
      000A83 12 07 5E         [24] 2516 	lcall	_go_up
                                   2517 ;	snake_v2.c:475: break;
                                   2518 ;	snake_v2.c:476: case (dir_down):
      000A86 80 0D            [24] 2519 	sjmp	00115$
      000A88                       2520 00107$:
                                   2521 ;	snake_v2.c:477: go_down();
      000A88 12 07 BF         [24] 2522 	lcall	_go_down
                                   2523 ;	snake_v2.c:478: break;
                                   2524 ;	snake_v2.c:479: case (dir_left):
      000A8B 80 08            [24] 2525 	sjmp	00115$
      000A8D                       2526 00108$:
                                   2527 ;	snake_v2.c:480: go_left();
      000A8D 12 08 26         [24] 2528 	lcall	_go_left
                                   2529 ;	snake_v2.c:481: break;
                                   2530 ;	snake_v2.c:482: case (dir_right):
      000A90 80 03            [24] 2531 	sjmp	00115$
      000A92                       2532 00109$:
                                   2533 ;	snake_v2.c:483: go_right();
      000A92 12 08 7B         [24] 2534 	lcall	_go_right
                                   2535 ;	snake_v2.c:485: }
      000A95                       2536 00115$:
                                   2537 ;	snake_v2.c:488: }
      000A95 D0 D0            [24] 2538 	pop	psw
      000A97 D0 00            [24] 2539 	pop	(0+0)
      000A99 D0 01            [24] 2540 	pop	(0+1)
      000A9B D0 02            [24] 2541 	pop	(0+2)
      000A9D D0 03            [24] 2542 	pop	(0+3)
      000A9F D0 04            [24] 2543 	pop	(0+4)
      000AA1 D0 05            [24] 2544 	pop	(0+5)
      000AA3 D0 06            [24] 2545 	pop	(0+6)
      000AA5 D0 07            [24] 2546 	pop	(0+7)
      000AA7 D0 83            [24] 2547 	pop	dph
      000AA9 D0 82            [24] 2548 	pop	dpl
      000AAB D0 F0            [24] 2549 	pop	b
      000AAD D0 E0            [24] 2550 	pop	acc
      000AAF D0 21            [24] 2551 	pop	bits
      000AB1 32               [24] 2552 	reti
                                   2553 ;------------------------------------------------------------
                                   2554 ;Allocation info for local variables in function 'main'
                                   2555 ;------------------------------------------------------------
                                   2556 ;__1310720038              Allocated to registers 
                                   2557 ;__1310720039              Allocated to registers 
                                   2558 ;tail                      Allocated to registers 
                                   2559 ;direction                 Allocated to registers 
                                   2560 ;temp                      Allocated to registers 
                                   2561 ;__1310720041              Allocated to registers 
                                   2562 ;__1310720042              Allocated to registers 
                                   2563 ;tail                      Allocated to registers 
                                   2564 ;direction                 Allocated to registers 
                                   2565 ;temp                      Allocated to registers 
                                   2566 ;__1310720044              Allocated to registers 
                                   2567 ;__1310720045              Allocated to registers 
                                   2568 ;tail                      Allocated to registers 
                                   2569 ;direction                 Allocated to registers 
                                   2570 ;temp                      Allocated to registers 
                                   2571 ;__1310720047              Allocated to registers r7 
                                   2572 ;a                         Allocated to registers 
                                   2573 ;row                       Allocated to registers r7 
                                   2574 ;current_data              Allocated with name '_main_current_data_655360_262'
                                   2575 ;i                         Allocated to registers r3 
                                   2576 ;i                         Allocated to registers r6 
                                   2577 ;i                         Allocated to registers r7 
                                   2578 ;------------------------------------------------------------
                                   2579 ;	snake_v2.c:490: void main(void)
                                   2580 ;	-----------------------------------------
                                   2581 ;	 function main
                                   2582 ;	-----------------------------------------
      000AB2                       2583 _main:
                                   2584 ;	snake_v2.c:492: uart_init();
      000AB2 12 09 15         [24] 2585 	lcall	_uart_init
                                   2586 ;	snake_v2.c:493: IT0 = 1; // Falling edge trigger
                                   2587 ;	assignBit
      000AB5 D2 88            [12] 2588 	setb	_IT0
                                   2589 ;	snake_v2.c:494: EX0 = 1; // Enable INT0 interrupt
                                   2590 ;	assignBit
      000AB7 D2 A8            [12] 2591 	setb	_EX0
                                   2592 ;	snake_v2.c:495: EA = 1;  // Enable global interrupt flag
                                   2593 ;	assignBit
      000AB9 D2 AF            [12] 2594 	setb	_EA
                                   2595 ;	snake_v2.c:497: TMOD = 0x21; // Timer 0 mode 1 (16-bit timer
      000ABB 75 89 21         [24] 2596 	mov	_TMOD,#0x21
                                   2597 ;	snake_v2.c:499: TH0 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
      000ABE 75 8C 4B         [24] 2598 	mov	_TH0,#0x4b
                                   2599 ;	snake_v2.c:500: TL0 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
      000AC1 75 8A FF         [24] 2600 	mov	_TL0,#0xff
                                   2601 ;	snake_v2.c:504: reset_timer_0();
      000AC4 12 08 D9         [24] 2602 	lcall	_reset_timer_0
                                   2603 ;	snake_v2.c:506: while (key_pressed != 5)
      000AC7                       2604 00101$:
      000AC7 74 05            [12] 2605 	mov	a,#0x05
      000AC9 B5 36 FB         [24] 2606 	cjne	a,_key_pressed,00101$
                                   2607 ;	snake_v2.c:509: ET0 = 1; // Enable timer 0 interrupt'
                                   2608 ;	assignBit
      000ACC D2 A9            [12] 2609 	setb	_ET0
                                   2610 ;	snake_v2.c:510: TR0 = 1; // Start timer 0
                                   2611 ;	assignBit
      000ACE D2 8C            [12] 2612 	setb	_TR0
                                   2613 ;	snake_v2.c:511: srand(timer_counter);
      000AD0 85 25 82         [24] 2614 	mov	dpl,_timer_counter
      000AD3 85 26 83         [24] 2615 	mov	dph,(_timer_counter + 1)
      000AD6 12 0D 00         [24] 2616 	lcall	_srand
                                   2617 ;	snake_v2.c:513: P0 = 0x00;
      000AD9 75 80 00         [24] 2618 	mov	_P0,#0x00
                                   2619 ;	snake_v2.c:514: SCK = 0;
                                   2620 ;	assignBit
      000ADC C2 B6            [12] 2621 	clr	_P3_6
                                   2622 ;	snake_v2.c:515: RCK = 0;
                                   2623 ;	assignBit
      000ADE C2 B5            [12] 2624 	clr	_P3_5
                                   2625 ;	snake_v2.c:516: data_mat[0] = 0xE0;
      000AE0 75 2E E0         [24] 2626 	mov	_data_mat,#0xe0
                                   2627 ;	snake_v2.c:517: head = 2;
      000AE3 75 37 02         [24] 2628 	mov	_head,#0x02
                                   2629 ;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
      000AE6 74 7F            [12] 2630 	mov	a,#0x7f
      000AE8 55 42            [12] 2631 	anl	a,_bit1
      000AEA F5 42            [12] 2632 	mov	_bit1,a
                                   2633 ;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
      000AEC 74 7F            [12] 2634 	mov	a,#0x7f
      000AEE 55 3A            [12] 2635 	anl	a,_bit0
      000AF0 F5 3A            [12] 2636 	mov	_bit0,a
                                   2637 ;	snake_v2.c:98: bit0[tail >> 3] |= temp;
      000AF2 74 80            [12] 2638 	mov	a,#0x80
      000AF4 45 3A            [12] 2639 	orl	a,_bit0
      000AF6 F5 3A            [12] 2640 	mov	_bit0,a
                                   2641 ;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
      000AF8 74 BF            [12] 2642 	mov	a,#0xbf
      000AFA 55 42            [12] 2643 	anl	a,_bit1
      000AFC F5 42            [12] 2644 	mov	_bit1,a
                                   2645 ;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
      000AFE 74 BF            [12] 2646 	mov	a,#0xbf
      000B00 55 3A            [12] 2647 	anl	a,_bit0
      000B02 F5 3A            [12] 2648 	mov	_bit0,a
                                   2649 ;	snake_v2.c:98: bit0[tail >> 3] |= temp;
      000B04 74 40            [12] 2650 	mov	a,#0x40
      000B06 45 3A            [12] 2651 	orl	a,_bit0
      000B08 F5 3A            [12] 2652 	mov	_bit0,a
                                   2653 ;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
      000B0A 74 DF            [12] 2654 	mov	a,#0xdf
      000B0C 55 42            [12] 2655 	anl	a,_bit1
      000B0E F5 42            [12] 2656 	mov	_bit1,a
                                   2657 ;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
      000B10 74 DF            [12] 2658 	mov	a,#0xdf
      000B12 55 3A            [12] 2659 	anl	a,_bit0
      000B14 F5 3A            [12] 2660 	mov	_bit0,a
                                   2661 ;	snake_v2.c:98: bit0[tail >> 3] |= temp;
      000B16 74 20            [12] 2662 	mov	a,#0x20
      000B18 45 3A            [12] 2663 	orl	a,_bit0
      000B1A F5 3A            [12] 2664 	mov	_bit0,a
                                   2665 ;	snake_v2.c:522: tail = 0;
      000B1C 75 38 00         [24] 2666 	mov	_tail,#0x00
                                   2667 ;	snake_v2.c:524: update_food();
      000B1F 12 05 97         [24] 2668 	lcall	_update_food
                                   2669 ;	snake_v2.c:525: turn_on(food);
                                   2670 ;	snake_v2.c:116: data_mat[a >> 3] |= 0x80 >> (a & 7);
      000B22 E5 39            [12] 2671 	mov	a,_food
      000B24 FF               [12] 2672 	mov	r7,a
      000B25 C4               [12] 2673 	swap	a
      000B26 23               [12] 2674 	rl	a
      000B27 54 1F            [12] 2675 	anl	a,#0x1f
      000B29 24 2E            [12] 2676 	add	a,#_data_mat
      000B2B F9               [12] 2677 	mov	r1,a
      000B2C 87 06            [24] 2678 	mov	ar6,@r1
      000B2E 53 07 07         [24] 2679 	anl	ar7,#0x07
      000B31 8F F0            [24] 2680 	mov	b,r7
      000B33 05 F0            [12] 2681 	inc	b
      000B35 7F 80            [12] 2682 	mov	r7,#0x80
      000B37 E4               [12] 2683 	clr	a
      000B38 FD               [12] 2684 	mov	r5,a
      000B39 33               [12] 2685 	rlc	a
      000B3A 92 D2            [24] 2686 	mov	ov,c
      000B3C 80 08            [24] 2687 	sjmp	00212$
      000B3E                       2688 00211$:
      000B3E A2 D2            [12] 2689 	mov	c,ov
      000B40 ED               [12] 2690 	mov	a,r5
      000B41 13               [12] 2691 	rrc	a
      000B42 FD               [12] 2692 	mov	r5,a
      000B43 EF               [12] 2693 	mov	a,r7
      000B44 13               [12] 2694 	rrc	a
      000B45 FF               [12] 2695 	mov	r7,a
      000B46                       2696 00212$:
      000B46 D5 F0 F5         [24] 2697 	djnz	b,00211$
      000B49 EF               [12] 2698 	mov	a,r7
      000B4A 4E               [12] 2699 	orl	a,r6
      000B4B F7               [12] 2700 	mov	@r1,a
                                   2701 ;	snake_v2.c:527: while (1)
      000B4C                       2702 00105$:
                                   2703 ;	snake_v2.c:59: P2 = 0b11111111;
      000B4C 75 A0 FF         [24] 2704 	mov	_P2,#0xff
                                   2705 ;	snake_v2.c:60: P0 = 0xFF;
      000B4F 75 80 FF         [24] 2706 	mov	_P0,#0xff
                                   2707 ;	snake_v2.c:40: for (char row = 0; row < 8; row++)
      000B52 7F 00            [12] 2708 	mov	r7,#0x00
      000B54                       2709 00137$:
      000B54 BF 08 00         [24] 2710 	cjne	r7,#0x08,00213$
      000B57                       2711 00213$:
      000B57 50 69            [24] 2712 	jnc	00126$
                                   2713 ;	snake_v2.c:42: const char current_data = data_mat[row];
      000B59 EF               [12] 2714 	mov	a,r7
      000B5A 24 2E            [12] 2715 	add	a,#_data_mat
      000B5C F9               [12] 2716 	mov	r1,a
      000B5D 87 59            [24] 2717 	mov	_main_current_data_655360_262,@r1
                                   2718 ;	snake_v2.c:43: for (char i = 0; i < 8; i++)
      000B5F 8F F0            [24] 2719 	mov	b,r7
      000B61 05 F0            [12] 2720 	inc	b
      000B63 7C 80            [12] 2721 	mov	r4,#0x80
      000B65 E4               [12] 2722 	clr	a
      000B66 FD               [12] 2723 	mov	r5,a
      000B67 33               [12] 2724 	rlc	a
      000B68 92 D2            [24] 2725 	mov	ov,c
      000B6A 80 08            [24] 2726 	sjmp	00216$
      000B6C                       2727 00215$:
      000B6C A2 D2            [12] 2728 	mov	c,ov
      000B6E ED               [12] 2729 	mov	a,r5
      000B6F 13               [12] 2730 	rrc	a
      000B70 FD               [12] 2731 	mov	r5,a
      000B71 EC               [12] 2732 	mov	a,r4
      000B72 13               [12] 2733 	rrc	a
      000B73 FC               [12] 2734 	mov	r4,a
      000B74                       2735 00216$:
      000B74 D5 F0 F5         [24] 2736 	djnz	b,00215$
      000B77 7B 00            [12] 2737 	mov	r3,#0x00
      000B79                       2738 00131$:
      000B79 BB 08 00         [24] 2739 	cjne	r3,#0x08,00217$
      000B7C                       2740 00217$:
      000B7C 50 2B            [24] 2741 	jnc	00123$
                                   2742 ;	snake_v2.c:45: SER = (0x80 >> row) & (0x80 >> i);
      000B7E 8B F0            [24] 2743 	mov	b,r3
      000B80 05 F0            [12] 2744 	inc	b
      000B82 7A 80            [12] 2745 	mov	r2,#0x80
      000B84 E4               [12] 2746 	clr	a
      000B85 FE               [12] 2747 	mov	r6,a
      000B86 33               [12] 2748 	rlc	a
      000B87 92 D2            [24] 2749 	mov	ov,c
      000B89 80 08            [24] 2750 	sjmp	00220$
      000B8B                       2751 00219$:
      000B8B A2 D2            [12] 2752 	mov	c,ov
      000B8D EE               [12] 2753 	mov	a,r6
      000B8E 13               [12] 2754 	rrc	a
      000B8F FE               [12] 2755 	mov	r6,a
      000B90 EA               [12] 2756 	mov	a,r2
      000B91 13               [12] 2757 	rrc	a
      000B92 FA               [12] 2758 	mov	r2,a
      000B93                       2759 00220$:
      000B93 D5 F0 F5         [24] 2760 	djnz	b,00219$
      000B96 EC               [12] 2761 	mov	a,r4
      000B97 52 02            [12] 2762 	anl	ar2,a
      000B99 ED               [12] 2763 	mov	a,r5
      000B9A 52 06            [12] 2764 	anl	ar6,a
                                   2765 ;	assignBit
      000B9C EA               [12] 2766 	mov	a,r2
      000B9D 4E               [12] 2767 	orl	a,r6
      000B9E 24 FF            [12] 2768 	add	a,#0xff
      000BA0 92 B4            [24] 2769 	mov	_P3_4,c
                                   2770 ;	snake_v2.c:46: SCK = 1;
                                   2771 ;	assignBit
      000BA2 D2 B6            [12] 2772 	setb	_P3_6
                                   2773 ;	snake_v2.c:47: SCK = 0;
                                   2774 ;	assignBit
      000BA4 C2 B6            [12] 2775 	clr	_P3_6
                                   2776 ;	snake_v2.c:43: for (char i = 0; i < 8; i++)
      000BA6 0B               [12] 2777 	inc	r3
      000BA7 80 D0            [24] 2778 	sjmp	00131$
      000BA9                       2779 00123$:
                                   2780 ;	snake_v2.c:49: P0 = 0xff;
      000BA9 75 80 FF         [24] 2781 	mov	_P0,#0xff
                                   2782 ;	snake_v2.c:50: RCK = 1;
                                   2783 ;	assignBit
      000BAC D2 B5            [12] 2784 	setb	_P3_5
                                   2785 ;	snake_v2.c:51: RCK = 0;
                                   2786 ;	assignBit
      000BAE C2 B5            [12] 2787 	clr	_P3_5
                                   2788 ;	snake_v2.c:52: P0 = ~current_data;
      000BB0 E5 59            [12] 2789 	mov	a,_main_current_data_655360_262
      000BB2 F4               [12] 2790 	cpl	a
      000BB3 F5 80            [12] 2791 	mov	_P0,a
                                   2792 ;	snake_v2.c:53: for (char i = 0; i < 5; i++)
      000BB5 7E 00            [12] 2793 	mov	r6,#0x00
      000BB7                       2794 00134$:
      000BB7 BE 05 00         [24] 2795 	cjne	r6,#0x05,00221$
      000BBA                       2796 00221$:
      000BBA 50 03            [24] 2797 	jnc	00138$
      000BBC 0E               [12] 2798 	inc	r6
      000BBD 80 F8            [24] 2799 	sjmp	00134$
      000BBF                       2800 00138$:
                                   2801 ;	snake_v2.c:40: for (char row = 0; row < 8; row++)
      000BBF 0F               [12] 2802 	inc	r7
                                   2803 ;	snake_v2.c:61: display_led_mat();
      000BC0 80 92            [24] 2804 	sjmp	00137$
      000BC2                       2805 00126$:
                                   2806 ;	snake_v2.c:63: for (i = 0; i < 100; i++)
      000BC2 7F 64            [12] 2807 	mov	r7,#0x64
      000BC4                       2808 00141$:
      000BC4 DF FE            [24] 2809 	djnz	r7,00141$
                                   2810 ;	snake_v2.c:65: SER = 0;
                                   2811 ;	assignBit
      000BC6 C2 B4            [12] 2812 	clr	_P3_4
                                   2813 ;	snake_v2.c:66: for (i = 0; i < 8; i++)
      000BC8 7F 00            [12] 2814 	mov	r7,#0x00
      000BCA                       2815 00142$:
                                   2816 ;	snake_v2.c:68: SCK = 1;
                                   2817 ;	assignBit
      000BCA D2 B6            [12] 2818 	setb	_P3_6
                                   2819 ;	snake_v2.c:69: SCK = 0;
                                   2820 ;	assignBit
      000BCC C2 B6            [12] 2821 	clr	_P3_6
                                   2822 ;	snake_v2.c:66: for (i = 0; i < 8; i++)
      000BCE 0F               [12] 2823 	inc	r7
      000BCF BF 08 00         [24] 2824 	cjne	r7,#0x08,00224$
      000BD2                       2825 00224$:
      000BD2 40 F6            [24] 2826 	jc	00142$
                                   2827 ;	snake_v2.c:71: RCK = 1;
                                   2828 ;	assignBit
      000BD4 D2 B5            [12] 2829 	setb	_P3_5
                                   2830 ;	snake_v2.c:72: RCK = 0;
                                   2831 ;	assignBit
      000BD6 C2 B5            [12] 2832 	clr	_P3_5
                                   2833 ;	snake_v2.c:73: display_number(point);
      000BD8 AC 2B            [24] 2834 	mov	r4,_point
      000BDA 7D 00            [12] 2835 	mov	r5,#0x00
      000BDC 7E 00            [12] 2836 	mov	r6,#0x00
      000BDE 7F 00            [12] 2837 	mov	r7,#0x00
      000BE0 8C 82            [24] 2838 	mov	dpl,r4
      000BE2 8D 83            [24] 2839 	mov	dph,r5
      000BE4 8E F0            [24] 2840 	mov	b,r6
      000BE6 EF               [12] 2841 	mov	a,r7
      000BE7 12 00 AB         [24] 2842 	lcall	_display_number
                                   2843 ;	snake_v2.c:74: display_number(point);
      000BEA AC 2B            [24] 2844 	mov	r4,_point
      000BEC 7D 00            [12] 2845 	mov	r5,#0x00
      000BEE 7E 00            [12] 2846 	mov	r6,#0x00
      000BF0 7F 00            [12] 2847 	mov	r7,#0x00
      000BF2 8C 82            [24] 2848 	mov	dpl,r4
      000BF4 8D 83            [24] 2849 	mov	dph,r5
      000BF6 8E F0            [24] 2850 	mov	b,r6
      000BF8 EF               [12] 2851 	mov	a,r7
      000BF9 12 00 AB         [24] 2852 	lcall	_display_number
                                   2853 ;	snake_v2.c:75: display_number(point);
      000BFC AC 2B            [24] 2854 	mov	r4,_point
      000BFE 7D 00            [12] 2855 	mov	r5,#0x00
      000C00 7E 00            [12] 2856 	mov	r6,#0x00
      000C02 7F 00            [12] 2857 	mov	r7,#0x00
      000C04 8C 82            [24] 2858 	mov	dpl,r4
      000C06 8D 83            [24] 2859 	mov	dph,r5
      000C08 8E F0            [24] 2860 	mov	b,r6
      000C0A EF               [12] 2861 	mov	a,r7
      000C0B 12 00 AB         [24] 2862 	lcall	_display_number
                                   2863 ;	snake_v2.c:529: display_game_and_point();
                                   2864 ;	snake_v2.c:531: }
      000C0E 02 0B 4C         [24] 2865 	ljmp	00105$
                                   2866 	.area CSEG    (CODE)
                                   2867 	.area CONST   (CODE)
      000F02                       2868 _number_string:
      000F02 3F                    2869 	.db #0x3f	; 63
      000F03 06                    2870 	.db #0x06	; 6
      000F04 5B                    2871 	.db #0x5b	; 91
      000F05 4F                    2872 	.db #0x4f	; 79	'O'
      000F06 66                    2873 	.db #0x66	; 102	'f'
      000F07 6D                    2874 	.db #0x6d	; 109	'm'
      000F08 7D                    2875 	.db #0x7d	; 125
      000F09 07                    2876 	.db #0x07	; 7
      000F0A 7F                    2877 	.db #0x7f	; 127
      000F0B 6F                    2878 	.db #0x6f	; 111	'o'
      000F0C                       2879 _game_over_floating_display_65537_111:
      000F0C 81                    2880 	.db #0x81	; 129
      000F0D 42                    2881 	.db #0x42	; 66	'B'
      000F0E 24                    2882 	.db #0x24	; 36
      000F0F 18                    2883 	.db #0x18	; 24
      000F10 18                    2884 	.db #0x18	; 24
      000F11 24                    2885 	.db #0x24	; 36
      000F12 42                    2886 	.db #0x42	; 66	'B'
      000F13 81                    2887 	.db #0x81	; 129
      000F14 18                    2888 	.db #0x18	; 24
      000F15 3C                    2889 	.db #0x3c	; 60
      000F16 7E                    2890 	.db #0x7e	; 126
      000F17 FF                    2891 	.db #0xff	; 255
      000F18 FF                    2892 	.db #0xff	; 255
      000F19 7E                    2893 	.db #0x7e	; 126
      000F1A 3C                    2894 	.db #0x3c	; 60
      000F1B 18                    2895 	.db #0x18	; 24
      000F1C 00                    2896 	.db #0x00	; 0
      000F1D 66                    2897 	.db #0x66	; 102	'f'
      000F1E FF                    2898 	.db #0xff	; 255
      000F1F FF                    2899 	.db #0xff	; 255
      000F20 7E                    2900 	.db #0x7e	; 126
      000F21 3C                    2901 	.db #0x3c	; 60
      000F22 18                    2902 	.db #0x18	; 24
      000F23 00                    2903 	.db #0x00	; 0
      000F24 3C                    2904 	.db #0x3c	; 60
      000F25 42                    2905 	.db #0x42	; 66	'B'
      000F26 81                    2906 	.db #0x81	; 129
      000F27 A5                    2907 	.db #0xa5	; 165
      000F28 81                    2908 	.db #0x81	; 129
      000F29 99                    2909 	.db #0x99	; 153
      000F2A 42                    2910 	.db #0x42	; 66	'B'
      000F2B 3C                    2911 	.db #0x3c	; 60
      000F2C 3C                    2912 	.db #0x3c	; 60
      000F2D 42                    2913 	.db #0x42	; 66	'B'
      000F2E 81                    2914 	.db #0x81	; 129
      000F2F 81                    2915 	.db #0x81	; 129
      000F30 81                    2916 	.db #0x81	; 129
      000F31 81                    2917 	.db #0x81	; 129
      000F32 42                    2918 	.db #0x42	; 66	'B'
      000F33 3C                    2919 	.db #0x3c	; 60
      000F34 60                    2920 	.db #0x60	; 96
      000F35 50                    2921 	.db #0x50	; 80	'P'
      000F36 50                    2922 	.db #0x50	; 80	'P'
      000F37 10                    2923 	.db #0x10	; 16
      000F38 10                    2924 	.db #0x10	; 16
      000F39 10                    2925 	.db #0x10	; 16
      000F3A 10                    2926 	.db #0x10	; 16
      000F3B 1F                    2927 	.db #0x1f	; 31
      000F3C 00                    2928 	.db 0x00
      000F3D 00                    2929 	.db 0x00
      000F3E 00                    2930 	.db 0x00
      000F3F 00                    2931 	.db 0x00
      000F40 00                    2932 	.db 0x00
      000F41 00                    2933 	.db 0x00
      000F42 00                    2934 	.db 0x00
      000F43 00                    2935 	.db 0x00
      000F44 00                    2936 	.db 0x00
      000F45 00                    2937 	.db 0x00
      000F46 00                    2938 	.db 0x00
      000F47 00                    2939 	.db 0x00
      000F48 00                    2940 	.db 0x00
      000F49 00                    2941 	.db 0x00
      000F4A 00                    2942 	.db 0x00
      000F4B 00                    2943 	.db 0x00
      000F4C 00                    2944 	.db 0x00
      000F4D 00                    2945 	.db 0x00
      000F4E 00                    2946 	.db 0x00
      000F4F 00                    2947 	.db 0x00
      000F50 00                    2948 	.db 0x00
      000F51 00                    2949 	.db 0x00
      000F52 00                    2950 	.db 0x00
      000F53 00                    2951 	.db 0x00
      000F54 00                    2952 	.db 0x00
      000F55 00                    2953 	.db 0x00
      000F56 00                    2954 	.db 0x00
      000F57 00                    2955 	.db 0x00
      000F58 00                    2956 	.db 0x00
      000F59 00                    2957 	.db 0x00
      000F5A 00                    2958 	.db 0x00
      000F5B 00                    2959 	.db 0x00
      000F5C 00                    2960 	.db 0x00
      000F5D 00                    2961 	.db 0x00
      000F5E 00                    2962 	.db 0x00
      000F5F 00                    2963 	.db 0x00
      000F60 00                    2964 	.db 0x00
      000F61 00                    2965 	.db 0x00
      000F62 00                    2966 	.db 0x00
      000F63 00                    2967 	.db 0x00
      000F64 00                    2968 	.db 0x00
      000F65 00                    2969 	.db 0x00
      000F66 00                    2970 	.db 0x00
      000F67 00                    2971 	.db 0x00
      000F68 00                    2972 	.db 0x00
      000F69 00                    2973 	.db 0x00
      000F6A 00                    2974 	.db 0x00
      000F6B 00                    2975 	.db 0x00
      000F6C                       2976 _game_over_firework_65537_111:
      000F6C 00                    2977 	.db #0x00	; 0
      000F6D 00                    2978 	.db #0x00	; 0
      000F6E 00                    2979 	.db #0x00	; 0
      000F6F 00                    2980 	.db #0x00	; 0
      000F70 00                    2981 	.db #0x00	; 0
      000F71 00                    2982 	.db #0x00	; 0
      000F72 18                    2983 	.db #0x18	; 24
      000F73 18                    2984 	.db #0x18	; 24
      000F74 00                    2985 	.db #0x00	; 0
      000F75 00                    2986 	.db #0x00	; 0
      000F76 00                    2987 	.db #0x00	; 0
      000F77 18                    2988 	.db #0x18	; 24
      000F78 18                    2989 	.db #0x18	; 24
      000F79 00                    2990 	.db #0x00	; 0
      000F7A 00                    2991 	.db #0x00	; 0
      000F7B 00                    2992 	.db #0x00	; 0
      000F7C 00                    2993 	.db #0x00	; 0
      000F7D 00                    2994 	.db #0x00	; 0
      000F7E 18                    2995 	.db #0x18	; 24
      000F7F 18                    2996 	.db #0x18	; 24
      000F80 00                    2997 	.db #0x00	; 0
      000F81 00                    2998 	.db #0x00	; 0
      000F82 00                    2999 	.db #0x00	; 0
      000F83 00                    3000 	.db #0x00	; 0
      000F84 24                    3001 	.db #0x24	; 36
      000F85 00                    3002 	.db #0x00	; 0
      000F86 81                    3003 	.db #0x81	; 129
      000F87 18                    3004 	.db #0x18	; 24
      000F88 18                    3005 	.db #0x18	; 24
      000F89 81                    3006 	.db #0x81	; 129
      000F8A 00                    3007 	.db #0x00	; 0
      000F8B 24                    3008 	.db #0x24	; 36
      000F8C 00                    3009 	.db #0x00	; 0
      000F8D 24                    3010 	.db #0x24	; 36
      000F8E 00                    3011 	.db #0x00	; 0
      000F8F 81                    3012 	.db #0x81	; 129
      000F90 81                    3013 	.db #0x81	; 129
      000F91 00                    3014 	.db #0x00	; 0
      000F92 24                    3015 	.db #0x24	; 36
      000F93 00                    3016 	.db #0x00	; 0
      000F94 24                    3017 	.db #0x24	; 36
      000F95 00                    3018 	.db #0x00	; 0
      000F96 81                    3019 	.db #0x81	; 129
      000F97 00                    3020 	.db #0x00	; 0
      000F98 00                    3021 	.db #0x00	; 0
      000F99 81                    3022 	.db #0x81	; 129
      000F9A 00                    3023 	.db #0x00	; 0
      000F9B 24                    3024 	.db #0x24	; 36
      000F9C 00                    3025 	.db #0x00	; 0
      000F9D 24                    3026 	.db #0x24	; 36
      000F9E 00                    3027 	.db #0x00	; 0
      000F9F 00                    3028 	.db #0x00	; 0
      000FA0 00                    3029 	.db #0x00	; 0
      000FA1 00                    3030 	.db #0x00	; 0
      000FA2 24                    3031 	.db #0x24	; 36
      000FA3 00                    3032 	.db #0x00	; 0
      000FA4 00                    3033 	.db #0x00	; 0
      000FA5 00                    3034 	.db #0x00	; 0
      000FA6 24                    3035 	.db #0x24	; 36
      000FA7 00                    3036 	.db #0x00	; 0
      000FA8 00                    3037 	.db #0x00	; 0
      000FA9 24                    3038 	.db #0x24	; 36
      000FAA 00                    3039 	.db #0x00	; 0
      000FAB 00                    3040 	.db #0x00	; 0
      000FAC 00                    3041 	.db #0x00	; 0
      000FAD 00                    3042 	.db #0x00	; 0
      000FAE 00                    3043 	.db #0x00	; 0
      000FAF 24                    3044 	.db #0x24	; 36
      000FB0 24                    3045 	.db #0x24	; 36
      000FB1 00                    3046 	.db #0x00	; 0
      000FB2 00                    3047 	.db #0x00	; 0
      000FB3 00                    3048 	.db #0x00	; 0
      000FB4 00                    3049 	.db #0x00	; 0
      000FB5 00                    3050 	.db #0x00	; 0
      000FB6 00                    3051 	.db #0x00	; 0
      000FB7 00                    3052 	.db #0x00	; 0
      000FB8 00                    3053 	.db #0x00	; 0
      000FB9 24                    3054 	.db #0x24	; 36
      000FBA 24                    3055 	.db #0x24	; 36
      000FBB 00                    3056 	.db #0x00	; 0
      000FBC 00                    3057 	.db #0x00	; 0
      000FBD 00                    3058 	.db #0x00	; 0
      000FBE 00                    3059 	.db #0x00	; 0
      000FBF 00                    3060 	.db #0x00	; 0
      000FC0 00                    3061 	.db #0x00	; 0
      000FC1 00                    3062 	.db #0x00	; 0
      000FC2 00                    3063 	.db #0x00	; 0
      000FC3 00                    3064 	.db #0x00	; 0
                                   3065 	.area XINIT   (CODE)
                                   3066 	.area CABS    (ABS,CODE)
