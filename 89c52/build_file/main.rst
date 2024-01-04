                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.0 #14184 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _infrared_num
                                     12 	.globl _key_map
                                     13 	.globl _number_string
                                     14 	.globl _cal_num
                                     15 	.globl _main
                                     16 	.globl _ex1_interrupt
                                     17 	.globl _exec_key_pressed
                                     18 	.globl _timer1_interrupt
                                     19 	.globl _timer0_interrupt
                                     20 	.globl _timer_fan_off
                                     21 	.globl _count_up
                                     22 	.globl _count_down
                                     23 	.globl _start_time_1
                                     24 	.globl _reset_timer_1
                                     25 	.globl _infrared_interrupt
                                     26 	.globl _exec_infrared_signal
                                     27 	.globl _add_space
                                     28 	.globl _delete_one_char
                                     29 	.globl _input_handler
                                     30 	.globl _command_first_line
                                     31 	.globl _command_second_line
                                     32 	.globl _fan_loop
                                     33 	.globl _fan_off
                                     34 	.globl _fan_on
                                     35 	.globl _buzzer
                                     36 	.globl _get_temp
                                     37 	.globl _init_ds18b20
                                     38 	.globl _one_write_receive_byte
                                     39 	.globl _one_write_send_byte
                                     40 	.globl _one_write_receive_bit
                                     41 	.globl _one_write_send_bit
                                     42 	.globl _one_write_init
                                     43 	.globl _lcd_write_string
                                     44 	.globl _lcd_write_char
                                     45 	.globl _lcd_init
                                     46 	.globl _lcd_send_command
                                     47 	.globl _strlen
                                     48 	.globl _strchr
                                     49 	.globl _strncmp
                                     50 	.globl _display_number
                                     51 	.globl _CY
                                     52 	.globl _AC
                                     53 	.globl _F0
                                     54 	.globl _RS1
                                     55 	.globl _RS0
                                     56 	.globl _OV
                                     57 	.globl _F1
                                     58 	.globl _P
                                     59 	.globl _PS
                                     60 	.globl _PT1
                                     61 	.globl _PX1
                                     62 	.globl _PT0
                                     63 	.globl _PX0
                                     64 	.globl _RD
                                     65 	.globl _WR
                                     66 	.globl _T1
                                     67 	.globl _T0
                                     68 	.globl _INT1
                                     69 	.globl _INT0
                                     70 	.globl _TXD
                                     71 	.globl _RXD
                                     72 	.globl _P3_7
                                     73 	.globl _P3_6
                                     74 	.globl _P3_5
                                     75 	.globl _P3_4
                                     76 	.globl _P3_3
                                     77 	.globl _P3_2
                                     78 	.globl _P3_1
                                     79 	.globl _P3_0
                                     80 	.globl _EA
                                     81 	.globl _ES
                                     82 	.globl _ET1
                                     83 	.globl _EX1
                                     84 	.globl _ET0
                                     85 	.globl _EX0
                                     86 	.globl _P2_7
                                     87 	.globl _P2_6
                                     88 	.globl _P2_5
                                     89 	.globl _P2_4
                                     90 	.globl _P2_3
                                     91 	.globl _P2_2
                                     92 	.globl _P2_1
                                     93 	.globl _P2_0
                                     94 	.globl _SM0
                                     95 	.globl _SM1
                                     96 	.globl _SM2
                                     97 	.globl _REN
                                     98 	.globl _TB8
                                     99 	.globl _RB8
                                    100 	.globl _TI
                                    101 	.globl _RI
                                    102 	.globl _P1_7
                                    103 	.globl _P1_6
                                    104 	.globl _P1_5
                                    105 	.globl _P1_4
                                    106 	.globl _P1_3
                                    107 	.globl _P1_2
                                    108 	.globl _P1_1
                                    109 	.globl _P1_0
                                    110 	.globl _TF1
                                    111 	.globl _TR1
                                    112 	.globl _TF0
                                    113 	.globl _TR0
                                    114 	.globl _IE1
                                    115 	.globl _IT1
                                    116 	.globl _IE0
                                    117 	.globl _IT0
                                    118 	.globl _P0_7
                                    119 	.globl _P0_6
                                    120 	.globl _P0_5
                                    121 	.globl _P0_4
                                    122 	.globl _P0_3
                                    123 	.globl _P0_2
                                    124 	.globl _P0_1
                                    125 	.globl _P0_0
                                    126 	.globl _TF2
                                    127 	.globl _EXF2
                                    128 	.globl _RCLK
                                    129 	.globl _TCLK
                                    130 	.globl _EXEN2
                                    131 	.globl _TR2
                                    132 	.globl _C_T2
                                    133 	.globl _CP_RL2
                                    134 	.globl _T2CON_7
                                    135 	.globl _T2CON_6
                                    136 	.globl _T2CON_5
                                    137 	.globl _T2CON_4
                                    138 	.globl _T2CON_3
                                    139 	.globl _T2CON_2
                                    140 	.globl _T2CON_1
                                    141 	.globl _T2CON_0
                                    142 	.globl _PT2
                                    143 	.globl _ET2
                                    144 	.globl _B
                                    145 	.globl _ACC
                                    146 	.globl _PSW
                                    147 	.globl _IP
                                    148 	.globl _P3
                                    149 	.globl _IE
                                    150 	.globl _P2
                                    151 	.globl _SBUF
                                    152 	.globl _SCON
                                    153 	.globl _P1
                                    154 	.globl _TH1
                                    155 	.globl _TH0
                                    156 	.globl _TL1
                                    157 	.globl _TL0
                                    158 	.globl _TMOD
                                    159 	.globl _TCON
                                    160 	.globl _PCON
                                    161 	.globl _DPH
                                    162 	.globl _DPL
                                    163 	.globl _SP
                                    164 	.globl _P0
                                    165 	.globl _TH2
                                    166 	.globl _TL2
                                    167 	.globl _RCAP2H
                                    168 	.globl _RCAP2L
                                    169 	.globl _T2CON
                                    170 	.globl _key_pressed
                                    171 	.globl _prev_key_pressed
                                    172 	.globl _last_time_key_pressed
                                    173 	.globl _a
                                    174 	.globl _do_something_1
                                    175 	.globl _timer1_counter
                                    176 	.globl _input_handler_PARM_2
                                    177 	.globl _prev_num
                                    178 	.globl _command_index
                                    179 	.globl _command
                                    180 	.globl _last_signal_received
                                    181 	.globl _bits_counter
                                    182 	.globl _infrared_code
                                    183 	.globl _infrared_counter
                                    184 	.globl _time_counter
                                    185 	.globl _unread_code_counter
                                    186 	.globl _read_code_index
                                    187 	.globl _code_index
                                    188 	.globl _interval_type
                                    189 	.globl _signal_codes
                                    190 	.globl _fan_state
                                    191 	.globl _check
                                    192 	.globl _stop_timer_1
                                    193 	.globl _reset
                                    194 	.globl _exec
                                    195 ;--------------------------------------------------------
                                    196 ; special function registers
                                    197 ;--------------------------------------------------------
                                    198 	.area RSEG    (ABS,DATA)
      000000                        199 	.org 0x0000
                           0000C8   200 _T2CON	=	0x00c8
                           0000CA   201 _RCAP2L	=	0x00ca
                           0000CB   202 _RCAP2H	=	0x00cb
                           0000CC   203 _TL2	=	0x00cc
                           0000CD   204 _TH2	=	0x00cd
                           000080   205 _P0	=	0x0080
                           000081   206 _SP	=	0x0081
                           000082   207 _DPL	=	0x0082
                           000083   208 _DPH	=	0x0083
                           000087   209 _PCON	=	0x0087
                           000088   210 _TCON	=	0x0088
                           000089   211 _TMOD	=	0x0089
                           00008A   212 _TL0	=	0x008a
                           00008B   213 _TL1	=	0x008b
                           00008C   214 _TH0	=	0x008c
                           00008D   215 _TH1	=	0x008d
                           000090   216 _P1	=	0x0090
                           000098   217 _SCON	=	0x0098
                           000099   218 _SBUF	=	0x0099
                           0000A0   219 _P2	=	0x00a0
                           0000A8   220 _IE	=	0x00a8
                           0000B0   221 _P3	=	0x00b0
                           0000B8   222 _IP	=	0x00b8
                           0000D0   223 _PSW	=	0x00d0
                           0000E0   224 _ACC	=	0x00e0
                           0000F0   225 _B	=	0x00f0
                                    226 ;--------------------------------------------------------
                                    227 ; special function bits
                                    228 ;--------------------------------------------------------
                                    229 	.area RSEG    (ABS,DATA)
      000000                        230 	.org 0x0000
                           0000AD   231 _ET2	=	0x00ad
                           0000BD   232 _PT2	=	0x00bd
                           0000C8   233 _T2CON_0	=	0x00c8
                           0000C9   234 _T2CON_1	=	0x00c9
                           0000CA   235 _T2CON_2	=	0x00ca
                           0000CB   236 _T2CON_3	=	0x00cb
                           0000CC   237 _T2CON_4	=	0x00cc
                           0000CD   238 _T2CON_5	=	0x00cd
                           0000CE   239 _T2CON_6	=	0x00ce
                           0000CF   240 _T2CON_7	=	0x00cf
                           0000C8   241 _CP_RL2	=	0x00c8
                           0000C9   242 _C_T2	=	0x00c9
                           0000CA   243 _TR2	=	0x00ca
                           0000CB   244 _EXEN2	=	0x00cb
                           0000CC   245 _TCLK	=	0x00cc
                           0000CD   246 _RCLK	=	0x00cd
                           0000CE   247 _EXF2	=	0x00ce
                           0000CF   248 _TF2	=	0x00cf
                           000080   249 _P0_0	=	0x0080
                           000081   250 _P0_1	=	0x0081
                           000082   251 _P0_2	=	0x0082
                           000083   252 _P0_3	=	0x0083
                           000084   253 _P0_4	=	0x0084
                           000085   254 _P0_5	=	0x0085
                           000086   255 _P0_6	=	0x0086
                           000087   256 _P0_7	=	0x0087
                           000088   257 _IT0	=	0x0088
                           000089   258 _IE0	=	0x0089
                           00008A   259 _IT1	=	0x008a
                           00008B   260 _IE1	=	0x008b
                           00008C   261 _TR0	=	0x008c
                           00008D   262 _TF0	=	0x008d
                           00008E   263 _TR1	=	0x008e
                           00008F   264 _TF1	=	0x008f
                           000090   265 _P1_0	=	0x0090
                           000091   266 _P1_1	=	0x0091
                           000092   267 _P1_2	=	0x0092
                           000093   268 _P1_3	=	0x0093
                           000094   269 _P1_4	=	0x0094
                           000095   270 _P1_5	=	0x0095
                           000096   271 _P1_6	=	0x0096
                           000097   272 _P1_7	=	0x0097
                           000098   273 _RI	=	0x0098
                           000099   274 _TI	=	0x0099
                           00009A   275 _RB8	=	0x009a
                           00009B   276 _TB8	=	0x009b
                           00009C   277 _REN	=	0x009c
                           00009D   278 _SM2	=	0x009d
                           00009E   279 _SM1	=	0x009e
                           00009F   280 _SM0	=	0x009f
                           0000A0   281 _P2_0	=	0x00a0
                           0000A1   282 _P2_1	=	0x00a1
                           0000A2   283 _P2_2	=	0x00a2
                           0000A3   284 _P2_3	=	0x00a3
                           0000A4   285 _P2_4	=	0x00a4
                           0000A5   286 _P2_5	=	0x00a5
                           0000A6   287 _P2_6	=	0x00a6
                           0000A7   288 _P2_7	=	0x00a7
                           0000A8   289 _EX0	=	0x00a8
                           0000A9   290 _ET0	=	0x00a9
                           0000AA   291 _EX1	=	0x00aa
                           0000AB   292 _ET1	=	0x00ab
                           0000AC   293 _ES	=	0x00ac
                           0000AF   294 _EA	=	0x00af
                           0000B0   295 _P3_0	=	0x00b0
                           0000B1   296 _P3_1	=	0x00b1
                           0000B2   297 _P3_2	=	0x00b2
                           0000B3   298 _P3_3	=	0x00b3
                           0000B4   299 _P3_4	=	0x00b4
                           0000B5   300 _P3_5	=	0x00b5
                           0000B6   301 _P3_6	=	0x00b6
                           0000B7   302 _P3_7	=	0x00b7
                           0000B0   303 _RXD	=	0x00b0
                           0000B1   304 _TXD	=	0x00b1
                           0000B2   305 _INT0	=	0x00b2
                           0000B3   306 _INT1	=	0x00b3
                           0000B4   307 _T0	=	0x00b4
                           0000B5   308 _T1	=	0x00b5
                           0000B6   309 _WR	=	0x00b6
                           0000B7   310 _RD	=	0x00b7
                           0000B8   311 _PX0	=	0x00b8
                           0000B9   312 _PT0	=	0x00b9
                           0000BA   313 _PX1	=	0x00ba
                           0000BB   314 _PT1	=	0x00bb
                           0000BC   315 _PS	=	0x00bc
                           0000D0   316 _P	=	0x00d0
                           0000D1   317 _F1	=	0x00d1
                           0000D2   318 _OV	=	0x00d2
                           0000D3   319 _RS0	=	0x00d3
                           0000D4   320 _RS1	=	0x00d4
                           0000D5   321 _F0	=	0x00d5
                           0000D6   322 _AC	=	0x00d6
                           0000D7   323 _CY	=	0x00d7
                                    324 ;--------------------------------------------------------
                                    325 ; overlayable register banks
                                    326 ;--------------------------------------------------------
                                    327 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        328 	.ds 8
                                    329 ;--------------------------------------------------------
                                    330 ; overlayable bit register bank
                                    331 ;--------------------------------------------------------
                                    332 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        333 bits:
      000021                        334 	.ds 1
                           008000   335 	b0 = bits[0]
                           008100   336 	b1 = bits[1]
                           008200   337 	b2 = bits[2]
                           008300   338 	b3 = bits[3]
                           008400   339 	b4 = bits[4]
                           008500   340 	b5 = bits[5]
                           008600   341 	b6 = bits[6]
                           008700   342 	b7 = bits[7]
                                    343 ;--------------------------------------------------------
                                    344 ; internal ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area DSEG    (DATA)
      000022                        347 _display_number_led_65537_7:
      000022                        348 	.ds 1
      000023                        349 _display_number_neg_65537_7:
      000023                        350 	.ds 1
      000024                        351 _check::
      000024                        352 	.ds 4
      000028                        353 _fan_state::
      000028                        354 	.ds 1
      000029                        355 _signal_codes::
      000029                        356 	.ds 2
      00002B                        357 _interval_type::
      00002B                        358 	.ds 1
      00002C                        359 _code_index::
      00002C                        360 	.ds 1
      00002D                        361 _read_code_index::
      00002D                        362 	.ds 1
      00002E                        363 _unread_code_counter::
      00002E                        364 	.ds 1
      00002F                        365 _time_counter::
      00002F                        366 	.ds 4
      000033                        367 _infrared_counter::
      000033                        368 	.ds 4
      000037                        369 _infrared_code::
      000037                        370 	.ds 1
      000038                        371 _bits_counter::
      000038                        372 	.ds 1
      000039                        373 _last_signal_received::
      000039                        374 	.ds 4
      00003D                        375 _command::
      00003D                        376 	.ds 16
      00004D                        377 _command_index::
      00004D                        378 	.ds 1
      00004E                        379 _prev_num::
      00004E                        380 	.ds 1
      00004F                        381 _input_handler_PARM_2:
      00004F                        382 	.ds 1
      000050                        383 _input_handler_id_196608_137:
      000050                        384 	.ds 1
      000051                        385 _input_handler_sloc0_1_0:
      000051                        386 	.ds 1
      000052                        387 _input_handler_sloc1_1_0:
      000052                        388 	.ds 1
      000053                        389 _input_handler_sloc2_1_0:
      000053                        390 	.ds 2
      000055                        391 _timer1_counter::
      000055                        392 	.ds 2
      000057                        393 _do_something_1::
      000057                        394 	.ds 2
      000059                        395 _a::
      000059                        396 	.ds 6
      00005F                        397 _last_time_key_pressed::
      00005F                        398 	.ds 4
      000063                        399 _prev_key_pressed::
      000063                        400 	.ds 1
      000064                        401 _key_pressed::
      000064                        402 	.ds 1
                                    403 ;--------------------------------------------------------
                                    404 ; overlayable items in internal ram
                                    405 ;--------------------------------------------------------
                                    406 	.area	OSEG    (OVR,DATA)
                                    407 	.area	OSEG    (OVR,DATA)
                                    408 	.area	OSEG    (OVR,DATA)
                                    409 	.area	OSEG    (OVR,DATA)
                                    410 	.area	OSEG    (OVR,DATA)
                                    411 	.area	OSEG    (OVR,DATA)
                                    412 	.area	OSEG    (OVR,DATA)
      000008                        413 _cal_num_sloc0_1_0:
      000008                        414 	.ds 4
                                    415 ;--------------------------------------------------------
                                    416 ; Stack segment in internal ram
                                    417 ;--------------------------------------------------------
                                    418 	.area SSEG
      000065                        419 __start__stack:
      000065                        420 	.ds	1
                                    421 
                                    422 ;--------------------------------------------------------
                                    423 ; indirectly addressable internal ram data
                                    424 ;--------------------------------------------------------
                                    425 	.area ISEG    (DATA)
                                    426 ;--------------------------------------------------------
                                    427 ; absolute internal ram data
                                    428 ;--------------------------------------------------------
                                    429 	.area IABS    (ABS,DATA)
                                    430 	.area IABS    (ABS,DATA)
                                    431 ;--------------------------------------------------------
                                    432 ; bit data
                                    433 ;--------------------------------------------------------
                                    434 	.area BSEG    (BIT)
      000000                        435 _infrared_interrupt_sloc0_1_0:
      000000                        436 	.ds 1
                                    437 ;--------------------------------------------------------
                                    438 ; paged external ram data
                                    439 ;--------------------------------------------------------
                                    440 	.area PSEG    (PAG,XDATA)
                                    441 ;--------------------------------------------------------
                                    442 ; uninitialized external ram data
                                    443 ;--------------------------------------------------------
                                    444 	.area XSEG    (XDATA)
                                    445 ;--------------------------------------------------------
                                    446 ; absolute external ram data
                                    447 ;--------------------------------------------------------
                                    448 	.area XABS    (ABS,XDATA)
                                    449 ;--------------------------------------------------------
                                    450 ; initialized external ram data
                                    451 ;--------------------------------------------------------
                                    452 	.area XISEG   (XDATA)
                                    453 	.area HOME    (CODE)
                                    454 	.area GSINIT0 (CODE)
                                    455 	.area GSINIT1 (CODE)
                                    456 	.area GSINIT2 (CODE)
                                    457 	.area GSINIT3 (CODE)
                                    458 	.area GSINIT4 (CODE)
                                    459 	.area GSINIT5 (CODE)
                                    460 	.area GSINIT  (CODE)
                                    461 	.area GSFINAL (CODE)
                                    462 	.area CSEG    (CODE)
                                    463 ;--------------------------------------------------------
                                    464 ; interrupt vector
                                    465 ;--------------------------------------------------------
                                    466 	.area HOME    (CODE)
      000000                        467 __interrupt_vect:
      000000 02 00 23         [24]  468 	ljmp	__sdcc_gsinit_startup
      000003 02 06 4C         [24]  469 	ljmp	_infrared_interrupt
      000006                        470 	.ds	5
      00000B 02 08 AD         [24]  471 	ljmp	_timer0_interrupt
      00000E                        472 	.ds	5
      000013 02 0A EC         [24]  473 	ljmp	_ex1_interrupt
      000016                        474 	.ds	5
      00001B 02 08 C8         [24]  475 	ljmp	_timer1_interrupt
                                    476 ;--------------------------------------------------------
                                    477 ; global & static initialisations
                                    478 ;--------------------------------------------------------
                                    479 	.area HOME    (CODE)
                                    480 	.area GSINIT  (CODE)
                                    481 	.area GSFINAL (CODE)
                                    482 	.area GSINIT  (CODE)
                                    483 	.globl __sdcc_gsinit_startup
                                    484 	.globl __sdcc_program_startup
                                    485 	.globl __start__stack
                                    486 	.globl __mcs51_genXINIT
                                    487 	.globl __mcs51_genXRAMCLEAR
                                    488 	.globl __mcs51_genRAMCLEAR
                                    489 ;	main.c:11: long check = 0;
      00007C E4               [12]  490 	clr	a
      00007D F5 24            [12]  491 	mov	_check,a
      00007F F5 25            [12]  492 	mov	(_check + 1),a
      000081 F5 26            [12]  493 	mov	(_check + 2),a
      000083 F5 27            [12]  494 	mov	(_check + 3),a
                                    495 ;	main.c:55: unsigned char code_index = 0;
      000085 F5 2C            [12]  496 	mov	_code_index,a
                                    497 ;	main.c:56: unsigned char read_code_index = 0;
      000087 F5 2D            [12]  498 	mov	_read_code_index,a
                                    499 ;	main.c:57: unsigned char unread_code_counter = 0;
      000089 F5 2E            [12]  500 	mov	_unread_code_counter,a
                                    501 ;	main.c:59: long time_counter = 0;
      00008B F5 2F            [12]  502 	mov	_time_counter,a
      00008D F5 30            [12]  503 	mov	(_time_counter + 1),a
      00008F F5 31            [12]  504 	mov	(_time_counter + 2),a
      000091 F5 32            [12]  505 	mov	(_time_counter + 3),a
                                    506 ;	main.c:60: long infrared_counter = -10000;
      000093 75 33 F0         [24]  507 	mov	_infrared_counter,#0xf0
      000096 75 34 D8         [24]  508 	mov	(_infrared_counter + 1),#0xd8
      000099 75 35 FF         [24]  509 	mov	(_infrared_counter + 2),#0xff
      00009C 75 36 FF         [24]  510 	mov	(_infrared_counter + 3),#0xff
                                    511 ;	main.c:61: char infrared_code = 0;
      00009F F5 37            [12]  512 	mov	_infrared_code,a
                                    513 ;	main.c:62: unsigned char bits_counter = 0;
      0000A1 F5 38            [12]  514 	mov	_bits_counter,a
                                    515 ;	main.c:64: long last_signal_received = -10000;
      0000A3 75 39 F0         [24]  516 	mov	_last_signal_received,#0xf0
      0000A6 75 3A D8         [24]  517 	mov	(_last_signal_received + 1),#0xd8
      0000A9 75 3B FF         [24]  518 	mov	(_last_signal_received + 2),#0xff
      0000AC 75 3C FF         [24]  519 	mov	(_last_signal_received + 3),#0xff
                                    520 ;	main.c:71: char command_index = 0;
      0000AF F5 4D            [12]  521 	mov	_command_index,a
                                    522 ;	main.c:72: char prev_num = 50;
      0000B1 75 4E 32         [24]  523 	mov	_prev_num,#0x32
                                    524 ;	main.c:293: unsigned int timer1_counter = 0;
      0000B4 F5 55            [12]  525 	mov	_timer1_counter,a
      0000B6 F5 56            [12]  526 	mov	(_timer1_counter + 1),a
                                    527 ;	main.c:310: void (*do_something_1)(void) = NULL;
      0000B8 F5 57            [12]  528 	mov	_do_something_1,a
      0000BA F5 58            [12]  529 	mov	(_do_something_1 + 1),a
                                    530 ;	main.c:372: long last_time_key_pressed = 0;
      0000BC F5 5F            [12]  531 	mov	_last_time_key_pressed,a
      0000BE F5 60            [12]  532 	mov	(_last_time_key_pressed + 1),a
      0000C0 F5 61            [12]  533 	mov	(_last_time_key_pressed + 2),a
      0000C2 F5 62            [12]  534 	mov	(_last_time_key_pressed + 3),a
                                    535 ;	main.c:373: char prev_key_pressed = 0;
      0000C4 F5 63            [12]  536 	mov	_prev_key_pressed,a
                                    537 ;	main.c:374: char key_pressed = 0;
      0000C6 F5 64            [12]  538 	mov	_key_pressed,a
                                    539 	.area GSFINAL (CODE)
      0000C8 02 00 1E         [24]  540 	ljmp	__sdcc_program_startup
                                    541 ;--------------------------------------------------------
                                    542 ; Home
                                    543 ;--------------------------------------------------------
                                    544 	.area HOME    (CODE)
                                    545 	.area HOME    (CODE)
      00001E                        546 __sdcc_program_startup:
      00001E 02 0B 2B         [24]  547 	ljmp	_main
                                    548 ;	return from main will return to caller
                                    549 ;--------------------------------------------------------
                                    550 ; code
                                    551 ;--------------------------------------------------------
                                    552 	.area CSEG    (CODE)
                                    553 ;------------------------------------------------------------
                                    554 ;Allocation info for local variables in function 'display_number'
                                    555 ;------------------------------------------------------------
                                    556 ;number                    Allocated to registers r4 r5 r6 r7 
                                    557 ;i                         Allocated to registers r3 
                                    558 ;led                       Allocated with name '_display_number_led_65537_7'
                                    559 ;neg                       Allocated with name '_display_number_neg_65537_7'
                                    560 ;__1966090001              Allocated to registers r3 
                                    561 ;__1966090002              Allocated to registers r0 
                                    562 ;led                       Allocated to registers 
                                    563 ;digit                     Allocated to registers 
                                    564 ;------------------------------------------------------------
                                    565 ;	led7seg.h:27: void display_number(long number)
                                    566 ;	-----------------------------------------
                                    567 ;	 function display_number
                                    568 ;	-----------------------------------------
      0000CB                        569 _display_number:
                           000007   570 	ar7 = 0x07
                           000006   571 	ar6 = 0x06
                           000005   572 	ar5 = 0x05
                           000004   573 	ar4 = 0x04
                           000003   574 	ar3 = 0x03
                           000002   575 	ar2 = 0x02
                           000001   576 	ar1 = 0x01
                           000000   577 	ar0 = 0x00
      0000CB AC 82            [24]  578 	mov	r4,dpl
      0000CD AD 83            [24]  579 	mov	r5,dph
      0000CF AE F0            [24]  580 	mov	r6,b
      0000D1 FF               [12]  581 	mov	r7,a
                                    582 ;	led7seg.h:29: if (!number)
      0000D2 EC               [12]  583 	mov	a,r4
      0000D3 4D               [12]  584 	orl	a,r5
      0000D4 4E               [12]  585 	orl	a,r6
      0000D5 4F               [12]  586 	orl	a,r7
                                    587 ;	led7seg.h:31: P0 = 0;
      0000D6 70 17            [24]  588 	jnz	00103$
      0000D8 F5 80            [12]  589 	mov	_P0,a
                                    590 ;	led7seg.h:32: P2 &= 0b11100011;
      0000DA 53 A0 E3         [24]  591 	anl	_P2,#0xe3
                                    592 ;	led7seg.h:33: P0 = number_string[0];
      0000DD 90 14 2B         [24]  593 	mov	dptr,#_number_string
      0000E0 E4               [12]  594 	clr	a
      0000E1 93               [24]  595 	movc	a,@a+dptr
      0000E2 F5 80            [12]  596 	mov	_P0,a
                                    597 ;	led7seg.h:34: for (char i = 0; i < 100; i++)
      0000E4 7B 00            [12]  598 	mov	r3,#0x00
      0000E6                        599 00113$:
      0000E6 BB 64 00         [24]  600 	cjne	r3,#0x64,00148$
      0000E9                        601 00148$:
      0000E9 50 03            [24]  602 	jnc	00101$
      0000EB 0B               [12]  603 	inc	r3
      0000EC 80 F8            [24]  604 	sjmp	00113$
      0000EE                        605 00101$:
                                    606 ;	led7seg.h:36: return;
      0000EE 22               [24]  607 	ret
      0000EF                        608 00103$:
                                    609 ;	led7seg.h:39: char neg = 0;
      0000EF 75 23 00         [24]  610 	mov	_display_number_neg_65537_7,#0x00
                                    611 ;	led7seg.h:40: if (number < 0)
      0000F2 EF               [12]  612 	mov	a,r7
      0000F3 30 E7 10         [24]  613 	jnb	acc.7,00122$
                                    614 ;	led7seg.h:42: neg = 1;
      0000F6 75 23 01         [24]  615 	mov	_display_number_neg_65537_7,#0x01
                                    616 ;	led7seg.h:43: number = -number;
      0000F9 C3               [12]  617 	clr	c
      0000FA E4               [12]  618 	clr	a
      0000FB 9C               [12]  619 	subb	a,r4
      0000FC FC               [12]  620 	mov	r4,a
      0000FD E4               [12]  621 	clr	a
      0000FE 9D               [12]  622 	subb	a,r5
      0000FF FD               [12]  623 	mov	r5,a
      000100 E4               [12]  624 	clr	a
      000101 9E               [12]  625 	subb	a,r6
      000102 FE               [12]  626 	mov	r6,a
      000103 E4               [12]  627 	clr	a
      000104 9F               [12]  628 	subb	a,r7
      000105 FF               [12]  629 	mov	r7,a
                                    630 ;	led7seg.h:53: while (number)
      000106                        631 00122$:
      000106 75 22 00         [24]  632 	mov	_display_number_led_65537_7,#0x00
      000109                        633 00106$:
      000109 EC               [12]  634 	mov	a,r4
      00010A 4D               [12]  635 	orl	a,r5
      00010B 4E               [12]  636 	orl	a,r6
      00010C 4F               [12]  637 	orl	a,r7
      00010D 60 5A            [24]  638 	jz	00108$
                                    639 ;	led7seg.h:55: display_digit(led++, number % 10);
      00010F 75 08 0A         [24]  640 	mov	__modslong_PARM_2,#0x0a
      000112 E4               [12]  641 	clr	a
      000113 F5 09            [12]  642 	mov	(__modslong_PARM_2 + 1),a
      000115 F5 0A            [12]  643 	mov	(__modslong_PARM_2 + 2),a
      000117 F5 0B            [12]  644 	mov	(__modslong_PARM_2 + 3),a
      000119 8C 82            [24]  645 	mov	dpl,r4
      00011B 8D 83            [24]  646 	mov	dph,r5
      00011D 8E F0            [24]  647 	mov	b,r6
      00011F EF               [12]  648 	mov	a,r7
      000120 C0 07            [24]  649 	push	ar7
      000122 C0 06            [24]  650 	push	ar6
      000124 C0 05            [24]  651 	push	ar5
      000126 C0 04            [24]  652 	push	ar4
      000128 12 13 1C         [24]  653 	lcall	__modslong
      00012B A8 82            [24]  654 	mov	r0,dpl
      00012D D0 04            [24]  655 	pop	ar4
      00012F D0 05            [24]  656 	pop	ar5
      000131 D0 06            [24]  657 	pop	ar6
      000133 D0 07            [24]  658 	pop	ar7
      000135 AB 22            [24]  659 	mov	r3,_display_number_led_65537_7
      000137 05 22            [12]  660 	inc	_display_number_led_65537_7
                                    661 ;	led7seg.h:19: P0 = 0;
      000139 75 80 00         [24]  662 	mov	_P0,#0x00
                                    663 ;	led7seg.h:20: P2 &= 0b11100011;
      00013C 53 A0 E3         [24]  664 	anl	_P2,#0xe3
                                    665 ;	led7seg.h:21: P2 |= led << 2;
      00013F EB               [12]  666 	mov	a,r3
      000140 2B               [12]  667 	add	a,r3
      000141 25 E0            [12]  668 	add	a,acc
      000143 42 A0            [12]  669 	orl	_P2,a
                                    670 ;	led7seg.h:24: P0 = number_string[digit];
      000145 E8               [12]  671 	mov	a,r0
      000146 90 14 2B         [24]  672 	mov	dptr,#_number_string
      000149 93               [24]  673 	movc	a,@a+dptr
      00014A F5 80            [12]  674 	mov	_P0,a
                                    675 ;	led7seg.h:56: number /= 10;
      00014C 75 08 0A         [24]  676 	mov	__divslong_PARM_2,#0x0a
      00014F E4               [12]  677 	clr	a
      000150 F5 09            [12]  678 	mov	(__divslong_PARM_2 + 1),a
      000152 F5 0A            [12]  679 	mov	(__divslong_PARM_2 + 2),a
      000154 F5 0B            [12]  680 	mov	(__divslong_PARM_2 + 3),a
      000156 8C 82            [24]  681 	mov	dpl,r4
      000158 8D 83            [24]  682 	mov	dph,r5
      00015A 8E F0            [24]  683 	mov	b,r6
      00015C EF               [12]  684 	mov	a,r7
      00015D 12 13 6B         [24]  685 	lcall	__divslong
      000160 AC 82            [24]  686 	mov	r4,dpl
      000162 AD 83            [24]  687 	mov	r5,dph
      000164 AE F0            [24]  688 	mov	r6,b
      000166 FF               [12]  689 	mov	r7,a
      000167 80 A0            [24]  690 	sjmp	00106$
      000169                        691 00108$:
                                    692 ;	led7seg.h:58: if (neg)
      000169 E5 23            [12]  693 	mov	a,_display_number_neg_65537_7
      00016B 60 0F            [24]  694 	jz	00115$
                                    695 ;	led7seg.h:60: P0 = 0;
      00016D 75 80 00         [24]  696 	mov	_P0,#0x00
                                    697 ;	led7seg.h:61: P2 = led << 2;
      000170 E5 22            [12]  698 	mov	a,_display_number_led_65537_7
      000172 FA               [12]  699 	mov	r2,a
      000173 25 E0            [12]  700 	add	a,acc
      000175 25 E0            [12]  701 	add	a,acc
      000177 F5 A0            [12]  702 	mov	_P2,a
                                    703 ;	led7seg.h:62: P0 = 0b01000000;
      000179 75 80 40         [24]  704 	mov	_P0,#0x40
      00017C                        705 00115$:
                                    706 ;	led7seg.h:64: }
      00017C 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'lcd_send_command'
                                    710 ;------------------------------------------------------------
                                    711 ;x                         Allocated to registers 
                                    712 ;i                         Allocated to registers r7 
                                    713 ;i                         Allocated to registers r7 
                                    714 ;------------------------------------------------------------
                                    715 ;	lcd.h:39: void lcd_send_command(const unsigned char x)
                                    716 ;	-----------------------------------------
                                    717 ;	 function lcd_send_command
                                    718 ;	-----------------------------------------
      00017D                        719 _lcd_send_command:
      00017D 85 82 80         [24]  720 	mov	_P0,dpl
                                    721 ;	lcd.h:42: LCD_RS = 0; // Chon thanh ghi lenh
                                    722 ;	assignBit
      000180 C2 A6            [12]  723 	clr	_P2_6
                                    724 ;	lcd.h:43: LCD_RW = 0; // De ghi du lieu
                                    725 ;	assignBit
      000182 C2 A5            [12]  726 	clr	_P2_5
                                    727 ;	lcd.h:44: LCD_EN = 1;
                                    728 ;	assignBit
      000184 D2 A7            [12]  729 	setb	_P2_7
                                    730 ;	lcd.h:45: delay_us(100);
      000186 7F 00            [12]  731 	mov	r7,#0x00
      000188                        732 00104$:
      000188 BF 64 00         [24]  733 	cjne	r7,#0x64,00129$
      00018B                        734 00129$:
      00018B 50 03            [24]  735 	jnc	00101$
      00018D 0F               [12]  736 	inc	r7
      00018E 80 F8            [24]  737 	sjmp	00104$
      000190                        738 00101$:
                                    739 ;	lcd.h:46: LCD_EN = 0;
                                    740 ;	assignBit
      000190 C2 A7            [12]  741 	clr	_P2_7
                                    742 ;	lcd.h:47: delay_us(100); // Doi cho LCD san sang
      000192 7F 00            [12]  743 	mov	r7,#0x00
      000194                        744 00107$:
      000194 BF 64 00         [24]  745 	cjne	r7,#0x64,00131$
      000197                        746 00131$:
      000197 50 03            [24]  747 	jnc	00102$
      000199 0F               [12]  748 	inc	r7
      00019A 80 F8            [24]  749 	sjmp	00107$
      00019C                        750 00102$:
                                    751 ;	lcd.h:48: LCD_EN = 1;
                                    752 ;	assignBit
      00019C D2 A7            [12]  753 	setb	_P2_7
                                    754 ;	lcd.h:49: }
      00019E 22               [24]  755 	ret
                                    756 ;------------------------------------------------------------
                                    757 ;Allocation info for local variables in function 'lcd_init'
                                    758 ;------------------------------------------------------------
                                    759 ;	lcd.h:60: void lcd_init(void)
                                    760 ;	-----------------------------------------
                                    761 ;	 function lcd_init
                                    762 ;	-----------------------------------------
      00019F                        763 _lcd_init:
                                    764 ;	lcd.h:62: lcd_send_command(0x38); // Chon che do 8 bit, 2 hang cho LCD
      00019F 75 82 38         [24]  765 	mov	dpl,#0x38
      0001A2 12 01 7D         [24]  766 	lcall	_lcd_send_command
                                    767 ;	lcd.h:63: lcd_send_command(0x0E); // Bat hien thi, nhap nhay con tro
      0001A5 75 82 0E         [24]  768 	mov	dpl,#0x0e
      0001A8 12 01 7D         [24]  769 	lcall	_lcd_send_command
                                    770 ;	lcd.h:64: lcd_send_command(0x01); // Xoa man hinh
      0001AB 75 82 01         [24]  771 	mov	dpl,#0x01
      0001AE 12 01 7D         [24]  772 	lcall	_lcd_send_command
                                    773 ;	lcd.h:65: lcd_send_command(0x80); // Ve dau dong
      0001B1 75 82 80         [24]  774 	mov	dpl,#0x80
                                    775 ;	lcd.h:66: }
      0001B4 02 01 7D         [24]  776 	ljmp	_lcd_send_command
                                    777 ;------------------------------------------------------------
                                    778 ;Allocation info for local variables in function 'lcd_write_char'
                                    779 ;------------------------------------------------------------
                                    780 ;c                         Allocated to registers 
                                    781 ;i                         Allocated to registers r7 
                                    782 ;i                         Allocated to registers r7 
                                    783 ;------------------------------------------------------------
                                    784 ;	lcd.h:69: void lcd_write_char(const unsigned char c)
                                    785 ;	-----------------------------------------
                                    786 ;	 function lcd_write_char
                                    787 ;	-----------------------------------------
      0001B7                        788 _lcd_write_char:
      0001B7 85 82 80         [24]  789 	mov	_P0,dpl
                                    790 ;	lcd.h:72: LCD_RS = 1;   // Chon thanh ghi du lieu
                                    791 ;	assignBit
      0001BA D2 A6            [12]  792 	setb	_P2_6
                                    793 ;	lcd.h:73: LCD_RW = 0;
                                    794 ;	assignBit
      0001BC C2 A5            [12]  795 	clr	_P2_5
                                    796 ;	lcd.h:74: LCD_EN = 1;
                                    797 ;	assignBit
      0001BE D2 A7            [12]  798 	setb	_P2_7
                                    799 ;	lcd.h:75: delay_us(10);
      0001C0 7F 00            [12]  800 	mov	r7,#0x00
      0001C2                        801 00104$:
      0001C2 BF 0A 00         [24]  802 	cjne	r7,#0x0a,00129$
      0001C5                        803 00129$:
      0001C5 50 03            [24]  804 	jnc	00101$
      0001C7 0F               [12]  805 	inc	r7
      0001C8 80 F8            [24]  806 	sjmp	00104$
      0001CA                        807 00101$:
                                    808 ;	lcd.h:76: LCD_EN = 0;
                                    809 ;	assignBit
      0001CA C2 A7            [12]  810 	clr	_P2_7
                                    811 ;	lcd.h:77: delay_us(100);
      0001CC 7F 00            [12]  812 	mov	r7,#0x00
      0001CE                        813 00107$:
      0001CE BF 64 00         [24]  814 	cjne	r7,#0x64,00131$
      0001D1                        815 00131$:
      0001D1 50 03            [24]  816 	jnc	00102$
      0001D3 0F               [12]  817 	inc	r7
      0001D4 80 F8            [24]  818 	sjmp	00107$
      0001D6                        819 00102$:
                                    820 ;	lcd.h:78: LCD_EN = 1;
                                    821 ;	assignBit
      0001D6 D2 A7            [12]  822 	setb	_P2_7
                                    823 ;	lcd.h:79: }
      0001D8 22               [24]  824 	ret
                                    825 ;------------------------------------------------------------
                                    826 ;Allocation info for local variables in function 'lcd_write_string'
                                    827 ;------------------------------------------------------------
                                    828 ;s                         Allocated to registers 
                                    829 ;------------------------------------------------------------
                                    830 ;	lcd.h:81: void lcd_write_string(const unsigned char *s)
                                    831 ;	-----------------------------------------
                                    832 ;	 function lcd_write_string
                                    833 ;	-----------------------------------------
      0001D9                        834 _lcd_write_string:
      0001D9 AD 82            [24]  835 	mov	r5,dpl
      0001DB AE 83            [24]  836 	mov	r6,dph
      0001DD AF F0            [24]  837 	mov	r7,b
                                    838 ;	lcd.h:83: while (*s)
      0001DF                        839 00101$:
      0001DF 8D 82            [24]  840 	mov	dpl,r5
      0001E1 8E 83            [24]  841 	mov	dph,r6
      0001E3 8F F0            [24]  842 	mov	b,r7
      0001E5 12 13 D5         [24]  843 	lcall	__gptrget
      0001E8 FC               [12]  844 	mov	r4,a
      0001E9 60 18            [24]  845 	jz	00104$
                                    846 ;	lcd.h:85: lcd_write_char(*s++);
      0001EB 8C 82            [24]  847 	mov	dpl,r4
      0001ED 0D               [12]  848 	inc	r5
      0001EE BD 00 01         [24]  849 	cjne	r5,#0x00,00116$
      0001F1 0E               [12]  850 	inc	r6
      0001F2                        851 00116$:
      0001F2 C0 07            [24]  852 	push	ar7
      0001F4 C0 06            [24]  853 	push	ar6
      0001F6 C0 05            [24]  854 	push	ar5
      0001F8 12 01 B7         [24]  855 	lcall	_lcd_write_char
      0001FB D0 05            [24]  856 	pop	ar5
      0001FD D0 06            [24]  857 	pop	ar6
      0001FF D0 07            [24]  858 	pop	ar7
      000201 80 DC            [24]  859 	sjmp	00101$
      000203                        860 00104$:
                                    861 ;	lcd.h:87: }
      000203 22               [24]  862 	ret
                                    863 ;------------------------------------------------------------
                                    864 ;Allocation info for local variables in function 'one_write_init'
                                    865 ;------------------------------------------------------------
                                    866 ;i                         Allocated to registers r7 
                                    867 ;response                  Allocated to registers r7 
                                    868 ;------------------------------------------------------------
                                    869 ;	onewrite.h:11: char one_write_init(void)
                                    870 ;	-----------------------------------------
                                    871 ;	 function one_write_init
                                    872 ;	-----------------------------------------
      000204                        873 _one_write_init:
                                    874 ;	onewrite.h:15: one_write_pin = 1;
                                    875 ;	assignBit
      000204 D2 B7            [12]  876 	setb	_P3_7
                                    877 ;	onewrite.h:16: one_write_pin = 0;
                                    878 ;	assignBit
      000206 C2 B7            [12]  879 	clr	_P3_7
                                    880 ;	onewrite.h:17: delay_us_ow(247);
      000208 7F F7            [12]  881 	mov	r7,#0xf7
      00020A                        882 00101$:
      00020A 8F 06            [24]  883 	mov	ar6,r7
      00020C 1F               [12]  884 	dec	r7
      00020D EE               [12]  885 	mov	a,r6
      00020E 70 FA            [24]  886 	jnz	00101$
                                    887 ;	onewrite.h:18: one_write_pin = 1;
                                    888 ;	assignBit
      000210 D2 B7            [12]  889 	setb	_P3_7
                                    890 ;	onewrite.h:19: delay_us_ow(32);
      000212 7F 20            [12]  891 	mov	r7,#0x20
      000214                        892 00104$:
      000214 8F 06            [24]  893 	mov	ar6,r7
      000216 1F               [12]  894 	dec	r7
      000217 EE               [12]  895 	mov	a,r6
      000218 70 FA            [24]  896 	jnz	00104$
                                    897 ;	onewrite.h:20: response = one_write_pin;
      00021A A2 B7            [12]  898 	mov	c,_P3_7
      00021C E4               [12]  899 	clr	a
      00021D 33               [12]  900 	rlc	a
      00021E FF               [12]  901 	mov	r7,a
                                    902 ;	onewrite.h:21: delay_us_ow(247);
      00021F 7E F7            [12]  903 	mov	r6,#0xf7
      000221                        904 00107$:
      000221 8E 05            [24]  905 	mov	ar5,r6
      000223 1E               [12]  906 	dec	r6
      000224 ED               [12]  907 	mov	a,r5
      000225 70 FA            [24]  908 	jnz	00107$
                                    909 ;	onewrite.h:22: return response;
      000227 8F 82            [24]  910 	mov	dpl,r7
                                    911 ;	onewrite.h:23: }
      000229 22               [24]  912 	ret
                                    913 ;------------------------------------------------------------
                                    914 ;Allocation info for local variables in function 'one_write_send_bit'
                                    915 ;------------------------------------------------------------
                                    916 ;bit                       Allocated to registers r7 
                                    917 ;i                         Allocated to registers r6 
                                    918 ;------------------------------------------------------------
                                    919 ;	onewrite.h:24: void one_write_send_bit(const _Bool bit)
                                    920 ;	-----------------------------------------
                                    921 ;	 function one_write_send_bit
                                    922 ;	-----------------------------------------
      00022A                        923 _one_write_send_bit:
      00022A AF 82            [24]  924 	mov	r7,dpl
                                    925 ;	onewrite.h:27: one_write_pin = 0;
                                    926 ;	assignBit
      00022C C2 B7            [12]  927 	clr	_P3_7
                                    928 ;	onewrite.h:28: delay_us_ow(4);
      00022E 7E 04            [12]  929 	mov	r6,#0x04
      000230                        930 00101$:
      000230 8E 05            [24]  931 	mov	ar5,r6
      000232 1E               [12]  932 	dec	r6
      000233 ED               [12]  933 	mov	a,r5
      000234 70 FA            [24]  934 	jnz	00101$
                                    935 ;	onewrite.h:29: one_write_pin = bit;
      000236 EF               [12]  936 	mov	a,r7
      000237 24 FF            [12]  937 	add	a,#0xff
      000239 92 B7            [24]  938 	mov	_P3_7,c
                                    939 ;	onewrite.h:30: delay_us_ow(24);
      00023B 7F 18            [12]  940 	mov	r7,#0x18
      00023D                        941 00104$:
      00023D 8F 06            [24]  942 	mov	ar6,r7
      00023F 1F               [12]  943 	dec	r7
      000240 EE               [12]  944 	mov	a,r6
      000241 70 FA            [24]  945 	jnz	00104$
                                    946 ;	onewrite.h:31: one_write_pin = 1;
                                    947 ;	assignBit
      000243 D2 B7            [12]  948 	setb	_P3_7
                                    949 ;	onewrite.h:32: }
      000245 22               [24]  950 	ret
                                    951 ;------------------------------------------------------------
                                    952 ;Allocation info for local variables in function 'one_write_receive_bit'
                                    953 ;------------------------------------------------------------
                                    954 ;i                         Allocated to registers r7 
                                    955 ;bit                       Allocated to registers r7 
                                    956 ;------------------------------------------------------------
                                    957 ;	onewrite.h:33: char one_write_receive_bit(void)
                                    958 ;	-----------------------------------------
                                    959 ;	 function one_write_receive_bit
                                    960 ;	-----------------------------------------
      000246                        961 _one_write_receive_bit:
                                    962 ;	onewrite.h:37: one_write_pin = 0;
                                    963 ;	assignBit
      000246 C2 B7            [12]  964 	clr	_P3_7
                                    965 ;	onewrite.h:38: delay_us_ow(2);
      000248 7F 02            [12]  966 	mov	r7,#0x02
      00024A                        967 00101$:
      00024A 8F 06            [24]  968 	mov	ar6,r7
      00024C 1F               [12]  969 	dec	r7
      00024D EE               [12]  970 	mov	a,r6
      00024E 70 FA            [24]  971 	jnz	00101$
                                    972 ;	onewrite.h:39: one_write_pin = 1;
                                    973 ;	assignBit
      000250 D2 B7            [12]  974 	setb	_P3_7
                                    975 ;	onewrite.h:40: delay_us_ow(2);
      000252 7F 02            [12]  976 	mov	r7,#0x02
      000254                        977 00104$:
      000254 8F 06            [24]  978 	mov	ar6,r7
      000256 1F               [12]  979 	dec	r7
      000257 EE               [12]  980 	mov	a,r6
      000258 70 FA            [24]  981 	jnz	00104$
                                    982 ;	onewrite.h:41: bit = one_write_pin;
      00025A A2 B7            [12]  983 	mov	c,_P3_7
      00025C E4               [12]  984 	clr	a
      00025D 33               [12]  985 	rlc	a
      00025E FF               [12]  986 	mov	r7,a
                                    987 ;	onewrite.h:42: delay_us_ow(24);
      00025F 7E 18            [12]  988 	mov	r6,#0x18
      000261                        989 00107$:
      000261 8E 05            [24]  990 	mov	ar5,r6
      000263 1E               [12]  991 	dec	r6
      000264 ED               [12]  992 	mov	a,r5
      000265 70 FA            [24]  993 	jnz	00107$
                                    994 ;	onewrite.h:43: return bit;
      000267 8F 82            [24]  995 	mov	dpl,r7
                                    996 ;	onewrite.h:44: }
      000269 22               [24]  997 	ret
                                    998 ;------------------------------------------------------------
                                    999 ;Allocation info for local variables in function 'one_write_send_byte'
                                   1000 ;------------------------------------------------------------
                                   1001 ;byte                      Allocated to registers r7 
                                   1002 ;i                         Allocated to registers r6 
                                   1003 ;------------------------------------------------------------
                                   1004 ;	onewrite.h:45: void one_write_send_byte(const char byte)
                                   1005 ;	-----------------------------------------
                                   1006 ;	 function one_write_send_byte
                                   1007 ;	-----------------------------------------
      00026A                       1008 _one_write_send_byte:
      00026A AF 82            [24] 1009 	mov	r7,dpl
                                   1010 ;	onewrite.h:47: for (char i = 0; i < 8; i++)
      00026C 7E 00            [12] 1011 	mov	r6,#0x00
      00026E                       1012 00103$:
      00026E BE 08 00         [24] 1013 	cjne	r6,#0x08,00116$
      000271                       1014 00116$:
      000271 50 33            [24] 1015 	jnc	00105$
                                   1016 ;	onewrite.h:49: one_write_send_bit(byte & (0x01 << i));
      000273 8E F0            [24] 1017 	mov	b,r6
      000275 05 F0            [12] 1018 	inc	b
      000277 7C 01            [12] 1019 	mov	r4,#0x01
      000279 7D 00            [12] 1020 	mov	r5,#0x00
      00027B 80 06            [24] 1021 	sjmp	00119$
      00027D                       1022 00118$:
      00027D EC               [12] 1023 	mov	a,r4
      00027E 2C               [12] 1024 	add	a,r4
      00027F FC               [12] 1025 	mov	r4,a
      000280 ED               [12] 1026 	mov	a,r5
      000281 33               [12] 1027 	rlc	a
      000282 FD               [12] 1028 	mov	r5,a
      000283                       1029 00119$:
      000283 D5 F0 F7         [24] 1030 	djnz	b,00118$
      000286 8F 02            [24] 1031 	mov	ar2,r7
      000288 7B 00            [12] 1032 	mov	r3,#0x00
      00028A EA               [12] 1033 	mov	a,r2
      00028B 52 04            [12] 1034 	anl	ar4,a
      00028D EB               [12] 1035 	mov	a,r3
      00028E 52 05            [12] 1036 	anl	ar5,a
                                   1037 ;	assignBit
      000290 EC               [12] 1038 	mov	a,r4
      000291 4D               [12] 1039 	orl	a,r5
      000292 24 FF            [12] 1040 	add	a,#0xff
      000294 E4               [12] 1041 	clr	a
      000295 33               [12] 1042 	rlc	a
      000296 F5 82            [12] 1043 	mov	dpl,a
      000298 C0 07            [24] 1044 	push	ar7
      00029A C0 06            [24] 1045 	push	ar6
      00029C 12 02 2A         [24] 1046 	lcall	_one_write_send_bit
      00029F D0 06            [24] 1047 	pop	ar6
      0002A1 D0 07            [24] 1048 	pop	ar7
                                   1049 ;	onewrite.h:47: for (char i = 0; i < 8; i++)
      0002A3 0E               [12] 1050 	inc	r6
      0002A4 80 C8            [24] 1051 	sjmp	00103$
      0002A6                       1052 00105$:
                                   1053 ;	onewrite.h:51: }
      0002A6 22               [24] 1054 	ret
                                   1055 ;------------------------------------------------------------
                                   1056 ;Allocation info for local variables in function 'one_write_receive_byte'
                                   1057 ;------------------------------------------------------------
                                   1058 ;result                    Allocated to registers r7 
                                   1059 ;i                         Allocated to registers r6 
                                   1060 ;------------------------------------------------------------
                                   1061 ;	onewrite.h:52: char one_write_receive_byte(void)
                                   1062 ;	-----------------------------------------
                                   1063 ;	 function one_write_receive_byte
                                   1064 ;	-----------------------------------------
      0002A7                       1065 _one_write_receive_byte:
                                   1066 ;	onewrite.h:54: char result = 0x00;
      0002A7 7F 00            [12] 1067 	mov	r7,#0x00
                                   1068 ;	onewrite.h:55: for (unsigned char i = 0; i < 8; i++)
      0002A9 7E 00            [12] 1069 	mov	r6,#0x00
      0002AB                       1070 00103$:
      0002AB BE 08 00         [24] 1071 	cjne	r6,#0x08,00116$
      0002AE                       1072 00116$:
      0002AE 50 1E            [24] 1073 	jnc	00101$
                                   1074 ;	onewrite.h:57: result |= one_write_receive_bit() << i;
      0002B0 C0 07            [24] 1075 	push	ar7
      0002B2 C0 06            [24] 1076 	push	ar6
      0002B4 12 02 46         [24] 1077 	lcall	_one_write_receive_bit
      0002B7 E5 82            [12] 1078 	mov	a,dpl
      0002B9 D0 06            [24] 1079 	pop	ar6
      0002BB D0 07            [24] 1080 	pop	ar7
      0002BD 8E F0            [24] 1081 	mov	b,r6
      0002BF 05 F0            [12] 1082 	inc	b
      0002C1 80 02            [24] 1083 	sjmp	00120$
      0002C3                       1084 00118$:
      0002C3 25 E0            [12] 1085 	add	a,acc
      0002C5                       1086 00120$:
      0002C5 D5 F0 FB         [24] 1087 	djnz	b,00118$
      0002C8 FD               [12] 1088 	mov	r5,a
      0002C9 42 07            [12] 1089 	orl	ar7,a
                                   1090 ;	onewrite.h:55: for (unsigned char i = 0; i < 8; i++)
      0002CB 0E               [12] 1091 	inc	r6
      0002CC 80 DD            [24] 1092 	sjmp	00103$
      0002CE                       1093 00101$:
                                   1094 ;	onewrite.h:59: return result;
      0002CE 8F 82            [24] 1095 	mov	dpl,r7
                                   1096 ;	onewrite.h:60: }
      0002D0 22               [24] 1097 	ret
                                   1098 ;------------------------------------------------------------
                                   1099 ;Allocation info for local variables in function 'init_ds18b20'
                                   1100 ;------------------------------------------------------------
                                   1101 ;	sensor.h:88: void init_ds18b20(void)
                                   1102 ;	-----------------------------------------
                                   1103 ;	 function init_ds18b20
                                   1104 ;	-----------------------------------------
      0002D1                       1105 _init_ds18b20:
                                   1106 ;	sensor.h:90: one_write_init();
      0002D1 12 02 04         [24] 1107 	lcall	_one_write_init
                                   1108 ;	sensor.h:91: one_write_send_byte(skip_rom);
      0002D4 75 82 CC         [24] 1109 	mov	dpl,#0xcc
      0002D7 12 02 6A         [24] 1110 	lcall	_one_write_send_byte
                                   1111 ;	sensor.h:92: one_write_send_byte(convert_t);
      0002DA 75 82 44         [24] 1112 	mov	dpl,#0x44
                                   1113 ;	sensor.h:93: }
      0002DD 02 02 6A         [24] 1114 	ljmp	_one_write_send_byte
                                   1115 ;------------------------------------------------------------
                                   1116 ;Allocation info for local variables in function 'get_temp'
                                   1117 ;------------------------------------------------------------
                                   1118 ;high_byte                 Allocated to registers r7 
                                   1119 ;low_byte                  Allocated to registers r6 
                                   1120 ;temp                      Allocated to registers r7 r5 
                                   1121 ;result                    Allocated to registers 
                                   1122 ;------------------------------------------------------------
                                   1123 ;	sensor.h:95: int get_temp(void)
                                   1124 ;	-----------------------------------------
                                   1125 ;	 function get_temp
                                   1126 ;	-----------------------------------------
      0002E0                       1127 _get_temp:
                                   1128 ;	sensor.h:97: init_ds18b20();
      0002E0 12 02 D1         [24] 1129 	lcall	_init_ds18b20
                                   1130 ;	sensor.h:98: one_write_init();
      0002E3 12 02 04         [24] 1131 	lcall	_one_write_init
                                   1132 ;	sensor.h:99: one_write_send_byte(skip_rom);
      0002E6 75 82 CC         [24] 1133 	mov	dpl,#0xcc
      0002E9 12 02 6A         [24] 1134 	lcall	_one_write_send_byte
                                   1135 ;	sensor.h:100: one_write_send_byte(read_scratchpad);
      0002EC 75 82 BE         [24] 1136 	mov	dpl,#0xbe
      0002EF 12 02 6A         [24] 1137 	lcall	_one_write_send_byte
                                   1138 ;	sensor.h:101: const char high_byte = one_write_receive_byte();
      0002F2 12 02 A7         [24] 1139 	lcall	_one_write_receive_byte
      0002F5 AF 82            [24] 1140 	mov	r7,dpl
                                   1141 ;	sensor.h:102: const char low_byte = one_write_receive_byte();
      0002F7 C0 07            [24] 1142 	push	ar7
      0002F9 12 02 A7         [24] 1143 	lcall	_one_write_receive_byte
      0002FC AE 82            [24] 1144 	mov	r6,dpl
      0002FE D0 07            [24] 1145 	pop	ar7
                                   1146 ;	sensor.h:103: const int temp = (high_byte << 8) | low_byte;
      000300 8F 05            [24] 1147 	mov	ar5,r7
      000302 E4               [12] 1148 	clr	a
      000303 FF               [12] 1149 	mov	r7,a
      000304 FC               [12] 1150 	mov	r4,a
      000305 EE               [12] 1151 	mov	a,r6
      000306 42 07            [12] 1152 	orl	ar7,a
      000308 EC               [12] 1153 	mov	a,r4
      000309 42 05            [12] 1154 	orl	ar5,a
                                   1155 ;	sensor.h:105: return temp >> temp;
      00030B 8F F0            [24] 1156 	mov	b,r7
      00030D 05 F0            [12] 1157 	inc	b
      00030F 85 07 82         [24] 1158 	mov	dpl,ar7
      000312 85 05 83         [24] 1159 	mov	dph,ar5
      000315 ED               [12] 1160 	mov	a,r5
      000316 33               [12] 1161 	rlc	a
      000317 92 D2            [24] 1162 	mov	ov,c
      000319 80 0C            [24] 1163 	sjmp	00104$
      00031B                       1164 00103$:
      00031B A2 D2            [12] 1165 	mov	c,ov
      00031D E5 83            [12] 1166 	mov	a,dph
      00031F 13               [12] 1167 	rrc	a
      000320 F5 83            [12] 1168 	mov	dph,a
      000322 E5 82            [12] 1169 	mov	a,dpl
      000324 13               [12] 1170 	rrc	a
      000325 F5 82            [12] 1171 	mov	dpl,a
      000327                       1172 00104$:
      000327 D5 F0 F1         [24] 1173 	djnz	b,00103$
                                   1174 ;	sensor.h:106: }
      00032A 22               [24] 1175 	ret
                                   1176 ;------------------------------------------------------------
                                   1177 ;Allocation info for local variables in function 'buzzer'
                                   1178 ;------------------------------------------------------------
                                   1179 ;i                         Allocated to registers r6 r7 
                                   1180 ;j                         Allocated to registers r4 r5 
                                   1181 ;j                         Allocated to registers r4 r5 
                                   1182 ;------------------------------------------------------------
                                   1183 ;	main.c:18: void buzzer(void)
                                   1184 ;	-----------------------------------------
                                   1185 ;	 function buzzer
                                   1186 ;	-----------------------------------------
      00032B                       1187 _buzzer:
                                   1188 ;	main.c:21: for (int i = 0; i < time * 1e3 / 200; i++)
      00032B 7E 00            [12] 1189 	mov	r6,#0x00
      00032D 7F 00            [12] 1190 	mov	r7,#0x00
      00032F                       1191 00111$:
      00032F C3               [12] 1192 	clr	c
      000330 EE               [12] 1193 	mov	a,r6
      000331 94 C8            [12] 1194 	subb	a,#0xc8
      000333 EF               [12] 1195 	mov	a,r7
      000334 64 80            [12] 1196 	xrl	a,#0x80
      000336 94 80            [12] 1197 	subb	a,#0x80
      000338 50 37            [24] 1198 	jnc	00113$
                                   1199 ;	main.c:23: buzzer_pin = 1;
                                   1200 ;	assignBit
      00033A D2 95            [12] 1201 	setb	_P1_5
                                   1202 ;	main.c:24: for (int j = 0; j < 90; j++)
      00033C 7C 00            [12] 1203 	mov	r4,#0x00
      00033E 7D 00            [12] 1204 	mov	r5,#0x00
      000340                       1205 00105$:
      000340 C3               [12] 1206 	clr	c
      000341 EC               [12] 1207 	mov	a,r4
      000342 94 5A            [12] 1208 	subb	a,#0x5a
      000344 ED               [12] 1209 	mov	a,r5
      000345 64 80            [12] 1210 	xrl	a,#0x80
      000347 94 80            [12] 1211 	subb	a,#0x80
      000349 50 07            [24] 1212 	jnc	00101$
      00034B 0C               [12] 1213 	inc	r4
      00034C BC 00 F1         [24] 1214 	cjne	r4,#0x00,00105$
      00034F 0D               [12] 1215 	inc	r5
      000350 80 EE            [24] 1216 	sjmp	00105$
      000352                       1217 00101$:
                                   1218 ;	main.c:26: buzzer_pin = 0;
                                   1219 ;	assignBit
      000352 C2 95            [12] 1220 	clr	_P1_5
                                   1221 ;	main.c:27: for (int j = 0; j < 90; j++)
      000354 7C 00            [12] 1222 	mov	r4,#0x00
      000356 7D 00            [12] 1223 	mov	r5,#0x00
      000358                       1224 00108$:
      000358 C3               [12] 1225 	clr	c
      000359 EC               [12] 1226 	mov	a,r4
      00035A 94 5A            [12] 1227 	subb	a,#0x5a
      00035C ED               [12] 1228 	mov	a,r5
      00035D 64 80            [12] 1229 	xrl	a,#0x80
      00035F 94 80            [12] 1230 	subb	a,#0x80
      000361 50 07            [24] 1231 	jnc	00112$
      000363 0C               [12] 1232 	inc	r4
      000364 BC 00 F1         [24] 1233 	cjne	r4,#0x00,00108$
      000367 0D               [12] 1234 	inc	r5
      000368 80 EE            [24] 1235 	sjmp	00108$
      00036A                       1236 00112$:
                                   1237 ;	main.c:21: for (int i = 0; i < time * 1e3 / 200; i++)
      00036A 0E               [12] 1238 	inc	r6
      00036B BE 00 C1         [24] 1239 	cjne	r6,#0x00,00111$
      00036E 0F               [12] 1240 	inc	r7
      00036F 80 BE            [24] 1241 	sjmp	00111$
      000371                       1242 00113$:
                                   1243 ;	main.c:30: }
      000371 22               [24] 1244 	ret
                                   1245 ;------------------------------------------------------------
                                   1246 ;Allocation info for local variables in function 'fan_on'
                                   1247 ;------------------------------------------------------------
                                   1248 ;	main.c:31: void fan_on(void)
                                   1249 ;	-----------------------------------------
                                   1250 ;	 function fan_on
                                   1251 ;	-----------------------------------------
      000372                       1252 _fan_on:
                                   1253 ;	main.c:33: buzzer();
      000372 12 03 2B         [24] 1254 	lcall	_buzzer
                                   1255 ;	main.c:34: fan_state = 1;
      000375 75 28 01         [24] 1256 	mov	_fan_state,#0x01
                                   1257 ;	main.c:35: fan_pin = 1;
                                   1258 ;	assignBit
      000378 D2 A0            [12] 1259 	setb	_P2_0
                                   1260 ;	main.c:36: }
      00037A 22               [24] 1261 	ret
                                   1262 ;------------------------------------------------------------
                                   1263 ;Allocation info for local variables in function 'fan_off'
                                   1264 ;------------------------------------------------------------
                                   1265 ;	main.c:37: void fan_off(void)
                                   1266 ;	-----------------------------------------
                                   1267 ;	 function fan_off
                                   1268 ;	-----------------------------------------
      00037B                       1269 _fan_off:
                                   1270 ;	main.c:39: buzzer();
      00037B 12 03 2B         [24] 1271 	lcall	_buzzer
                                   1272 ;	main.c:40: fan_state = 0;
      00037E 75 28 00         [24] 1273 	mov	_fan_state,#0x00
                                   1274 ;	main.c:41: fan_pin = 0;
                                   1275 ;	assignBit
      000381 C2 A0            [12] 1276 	clr	_P2_0
                                   1277 ;	main.c:42: }
      000383 22               [24] 1278 	ret
                                   1279 ;------------------------------------------------------------
                                   1280 ;Allocation info for local variables in function 'fan_loop'
                                   1281 ;------------------------------------------------------------
                                   1282 ;	main.c:43: void fan_loop(void)
                                   1283 ;	-----------------------------------------
                                   1284 ;	 function fan_loop
                                   1285 ;	-----------------------------------------
      000384                       1286 _fan_loop:
                                   1287 ;	main.c:45: if (fan_state)
      000384 E5 28            [12] 1288 	mov	a,_fan_state
      000386 60 03            [24] 1289 	jz	00102$
                                   1290 ;	main.c:46: fan_pin = 1;
                                   1291 ;	assignBit
      000388 D2 A0            [12] 1292 	setb	_P2_0
      00038A 22               [24] 1293 	ret
      00038B                       1294 00102$:
                                   1295 ;	main.c:48: fan_pin = 0;
                                   1296 ;	assignBit
      00038B C2 A0            [12] 1297 	clr	_P2_0
                                   1298 ;	main.c:49: }
      00038D 22               [24] 1299 	ret
                                   1300 ;------------------------------------------------------------
                                   1301 ;Allocation info for local variables in function 'command_second_line'
                                   1302 ;------------------------------------------------------------
                                   1303 ;i                         Allocated to registers r6 r7 
                                   1304 ;------------------------------------------------------------
                                   1305 ;	main.c:74: void command_second_line(void)
                                   1306 ;	-----------------------------------------
                                   1307 ;	 function command_second_line
                                   1308 ;	-----------------------------------------
      00038E                       1309 _command_second_line:
                                   1310 ;	main.c:76: while (command_index > 0)
      00038E                       1311 00101$:
      00038E E5 4D            [12] 1312 	mov	a,_command_index
      000390 60 0B            [24] 1313 	jz	00103$
                                   1314 ;	main.c:78: command_index--;
      000392 15 4D            [12] 1315 	dec	_command_index
                                   1316 ;	main.c:79: command[command_index] = 0;
      000394 E5 4D            [12] 1317 	mov	a,_command_index
      000396 24 3D            [12] 1318 	add	a,#_command
      000398 F8               [12] 1319 	mov	r0,a
      000399 76 00            [12] 1320 	mov	@r0,#0x00
      00039B 80 F1            [24] 1321 	sjmp	00101$
      00039D                       1322 00103$:
                                   1323 ;	main.c:81: prev_num = 50;
      00039D 75 4E 32         [24] 1324 	mov	_prev_num,#0x32
                                   1325 ;	main.c:82: lcd_second_line();
      0003A0 75 82 C0         [24] 1326 	mov	dpl,#0xc0
      0003A3 12 01 7D         [24] 1327 	lcall	_lcd_send_command
                                   1328 ;	main.c:83: for (int i = 0; i < 16; i++)
      0003A6 7E 00            [12] 1329 	mov	r6,#0x00
      0003A8 7F 00            [12] 1330 	mov	r7,#0x00
      0003AA                       1331 00106$:
      0003AA C3               [12] 1332 	clr	c
      0003AB EE               [12] 1333 	mov	a,r6
      0003AC 94 10            [12] 1334 	subb	a,#0x10
      0003AE EF               [12] 1335 	mov	a,r7
      0003AF 64 80            [12] 1336 	xrl	a,#0x80
      0003B1 94 80            [12] 1337 	subb	a,#0x80
      0003B3 50 15            [24] 1338 	jnc	00104$
                                   1339 ;	main.c:85: lcd_write_char(' ');
      0003B5 75 82 20         [24] 1340 	mov	dpl,#0x20
      0003B8 C0 07            [24] 1341 	push	ar7
      0003BA C0 06            [24] 1342 	push	ar6
      0003BC 12 01 B7         [24] 1343 	lcall	_lcd_write_char
      0003BF D0 06            [24] 1344 	pop	ar6
      0003C1 D0 07            [24] 1345 	pop	ar7
                                   1346 ;	main.c:83: for (int i = 0; i < 16; i++)
      0003C3 0E               [12] 1347 	inc	r6
      0003C4 BE 00 E3         [24] 1348 	cjne	r6,#0x00,00106$
      0003C7 0F               [12] 1349 	inc	r7
      0003C8 80 E0            [24] 1350 	sjmp	00106$
      0003CA                       1351 00104$:
                                   1352 ;	main.c:87: lcd_second_line();
      0003CA 75 82 C0         [24] 1353 	mov	dpl,#0xc0
                                   1354 ;	main.c:88: }
      0003CD 02 01 7D         [24] 1355 	ljmp	_lcd_send_command
                                   1356 ;------------------------------------------------------------
                                   1357 ;Allocation info for local variables in function 'command_first_line'
                                   1358 ;------------------------------------------------------------
                                   1359 ;i                         Allocated to registers r6 r7 
                                   1360 ;------------------------------------------------------------
                                   1361 ;	main.c:89: void command_first_line(void)
                                   1362 ;	-----------------------------------------
                                   1363 ;	 function command_first_line
                                   1364 ;	-----------------------------------------
      0003D0                       1365 _command_first_line:
                                   1366 ;	main.c:91: while (command_index > 0)
      0003D0                       1367 00101$:
      0003D0 E5 4D            [12] 1368 	mov	a,_command_index
      0003D2 60 0B            [24] 1369 	jz	00103$
                                   1370 ;	main.c:93: command_index--;
      0003D4 15 4D            [12] 1371 	dec	_command_index
                                   1372 ;	main.c:94: command[command_index] = 0;
      0003D6 E5 4D            [12] 1373 	mov	a,_command_index
      0003D8 24 3D            [12] 1374 	add	a,#_command
      0003DA F8               [12] 1375 	mov	r0,a
      0003DB 76 00            [12] 1376 	mov	@r0,#0x00
      0003DD 80 F1            [24] 1377 	sjmp	00101$
      0003DF                       1378 00103$:
                                   1379 ;	main.c:96: lcd_first_line();
      0003DF 75 82 80         [24] 1380 	mov	dpl,#0x80
      0003E2 12 01 7D         [24] 1381 	lcall	_lcd_send_command
                                   1382 ;	main.c:97: for (int i = 0; i < 16; i++)
      0003E5 7E 00            [12] 1383 	mov	r6,#0x00
      0003E7 7F 00            [12] 1384 	mov	r7,#0x00
      0003E9                       1385 00106$:
      0003E9 C3               [12] 1386 	clr	c
      0003EA EE               [12] 1387 	mov	a,r6
      0003EB 94 10            [12] 1388 	subb	a,#0x10
      0003ED EF               [12] 1389 	mov	a,r7
      0003EE 64 80            [12] 1390 	xrl	a,#0x80
      0003F0 94 80            [12] 1391 	subb	a,#0x80
      0003F2 50 15            [24] 1392 	jnc	00104$
                                   1393 ;	main.c:99: lcd_write_char(' ');
      0003F4 75 82 20         [24] 1394 	mov	dpl,#0x20
      0003F7 C0 07            [24] 1395 	push	ar7
      0003F9 C0 06            [24] 1396 	push	ar6
      0003FB 12 01 B7         [24] 1397 	lcall	_lcd_write_char
      0003FE D0 06            [24] 1398 	pop	ar6
      000400 D0 07            [24] 1399 	pop	ar7
                                   1400 ;	main.c:97: for (int i = 0; i < 16; i++)
      000402 0E               [12] 1401 	inc	r6
      000403 BE 00 E3         [24] 1402 	cjne	r6,#0x00,00106$
      000406 0F               [12] 1403 	inc	r7
      000407 80 E0            [24] 1404 	sjmp	00106$
      000409                       1405 00104$:
                                   1406 ;	main.c:101: lcd_first_line();
      000409 75 82 80         [24] 1407 	mov	dpl,#0x80
                                   1408 ;	main.c:102: }
      00040C 02 01 7D         [24] 1409 	ljmp	_lcd_send_command
                                   1410 ;------------------------------------------------------------
                                   1411 ;Allocation info for local variables in function 'input_handler'
                                   1412 ;------------------------------------------------------------
                                   1413 ;interval_type             Allocated with name '_input_handler_PARM_2'
                                   1414 ;num                       Allocated to registers r7 
                                   1415 ;id                        Allocated with name '_input_handler_id_196608_137'
                                   1416 ;sloc0                     Allocated with name '_input_handler_sloc0_1_0'
                                   1417 ;sloc1                     Allocated with name '_input_handler_sloc1_1_0'
                                   1418 ;sloc2                     Allocated with name '_input_handler_sloc2_1_0'
                                   1419 ;------------------------------------------------------------
                                   1420 ;	main.c:128: void input_handler(const char num, const char interval_type)
                                   1421 ;	-----------------------------------------
                                   1422 ;	 function input_handler
                                   1423 ;	-----------------------------------------
      00040F                       1424 _input_handler:
                                   1425 ;	main.c:131: if (num != prev_num && command_index == max_command_length)
      00040F E5 82            [12] 1426 	mov	a,dpl
      000411 FF               [12] 1427 	mov	r7,a
      000412 B5 4E 02         [24] 1428 	cjne	a,_prev_num,00181$
      000415 80 09            [24] 1429 	sjmp	00102$
      000417                       1430 00181$:
      000417 74 10            [12] 1431 	mov	a,#0x10
      000419 B5 4D 04         [24] 1432 	cjne	a,_command_index,00102$
                                   1433 ;	main.c:133: prev_num = 50;
      00041C 75 4E 32         [24] 1434 	mov	_prev_num,#0x32
                                   1435 ;	main.c:134: return;
      00041F 22               [24] 1436 	ret
      000420                       1437 00102$:
                                   1438 ;	main.c:136: if (num == prev_num && interval_type)
      000420 EF               [12] 1439 	mov	a,r7
      000421 B5 4E 02         [24] 1440 	cjne	a,_prev_num,00184$
      000424 80 03            [24] 1441 	sjmp	00185$
      000426                       1442 00184$:
      000426 02 05 50         [24] 1443 	ljmp	00124$
      000429                       1444 00185$:
      000429 E5 4F            [12] 1445 	mov	a,_input_handler_PARM_2
      00042B 70 03            [24] 1446 	jnz	00186$
      00042D 02 05 50         [24] 1447 	ljmp	00124$
      000430                       1448 00186$:
                                   1449 ;	main.c:138: lcd_back();
      000430 75 82 10         [24] 1450 	mov	dpl,#0x10
      000433 C0 07            [24] 1451 	push	ar7
      000435 12 01 7D         [24] 1452 	lcall	_lcd_send_command
      000438 D0 07            [24] 1453 	pop	ar7
                                   1454 ;	main.c:139: --command_index;
      00043A 15 4D            [12] 1455 	dec	_command_index
                                   1456 ;	main.c:140: if (command[command_index] == ' ' || command[command_index] == 0)
      00043C E5 4D            [12] 1457 	mov	a,_command_index
      00043E 24 3D            [12] 1458 	add	a,#_command
      000440 F9               [12] 1459 	mov	r1,a
      000441 87 06            [24] 1460 	mov	ar6,@r1
      000443 BE 20 02         [24] 1461 	cjne	r6,#0x20,00187$
      000446 80 03            [24] 1462 	sjmp	00106$
      000448                       1463 00187$:
      000448 EE               [12] 1464 	mov	a,r6
      000449 70 2D            [24] 1465 	jnz	00107$
      00044B                       1466 00106$:
                                   1467 ;	main.c:142: update_key(*key_map[num]);
      00044B 74 F0            [12] 1468 	mov	a,#0x100 - 0x10
      00044D 25 4D            [12] 1469 	add	a,_command_index
      00044F 40 25            [24] 1470 	jc	00105$
      000451 EF               [12] 1471 	mov	a,r7
      000452 75 F0 08         [24] 1472 	mov	b,#0x08
      000455 A4               [48] 1473 	mul	ab
      000456 24 35            [12] 1474 	add	a,#_key_map
      000458 FD               [12] 1475 	mov	r5,a
      000459 74 14            [12] 1476 	mov	a,#(_key_map >> 8)
      00045B 35 F0            [12] 1477 	addc	a,b
      00045D FE               [12] 1478 	mov	r6,a
      00045E 8D 82            [24] 1479 	mov	dpl,r5
      000460 8E 83            [24] 1480 	mov	dph,r6
      000462 E4               [12] 1481 	clr	a
      000463 93               [24] 1482 	movc	a,@a+dptr
      000464 F7               [12] 1483 	mov	@r1,a
      000465 8D 82            [24] 1484 	mov	dpl,r5
      000467 8E 83            [24] 1485 	mov	dph,r6
      000469 E4               [12] 1486 	clr	a
      00046A 93               [24] 1487 	movc	a,@a+dptr
      00046B F5 82            [12] 1488 	mov	dpl,a
      00046D C0 07            [24] 1489 	push	ar7
      00046F 12 01 B7         [24] 1490 	lcall	_lcd_write_char
      000472 D0 07            [24] 1491 	pop	ar7
      000474 05 4D            [12] 1492 	inc	_command_index
      000476                       1493 00105$:
                                   1494 ;	main.c:143: prev_num = num;
      000476 8F 4E            [24] 1495 	mov	_prev_num,r7
      000478                       1496 00107$:
                                   1497 ;	main.c:147: char id = 0;
      000478 75 51 00         [24] 1498 	mov	_input_handler_sloc0_1_0,#0x00
                                   1499 ;	main.c:148: while (key_map[num][id])
      00047B EF               [12] 1500 	mov	a,r7
      00047C 75 F0 08         [24] 1501 	mov	b,#0x08
      00047F A4               [48] 1502 	mul	ab
      000480 F5 53            [12] 1503 	mov	_input_handler_sloc2_1_0,a
      000482 85 F0 54         [24] 1504 	mov	(_input_handler_sloc2_1_0 + 1),b
      000485 24 35            [12] 1505 	add	a,#_key_map
      000487 FA               [12] 1506 	mov	r2,a
      000488 E5 54            [12] 1507 	mov	a,(_input_handler_sloc2_1_0 + 1)
      00048A 34 14            [12] 1508 	addc	a,#(_key_map >> 8)
      00048C FB               [12] 1509 	mov	r3,a
      00048D 75 50 00         [24] 1510 	mov	_input_handler_id_196608_137,#0x00
      000490                       1511 00118$:
      000490 E5 50            [12] 1512 	mov	a,_input_handler_id_196608_137
      000492 2A               [12] 1513 	add	a,r2
      000493 FD               [12] 1514 	mov	r5,a
      000494 E4               [12] 1515 	clr	a
      000495 3B               [12] 1516 	addc	a,r3
      000496 FE               [12] 1517 	mov	r6,a
      000497 8D 82            [24] 1518 	mov	dpl,r5
      000499 8E 83            [24] 1519 	mov	dph,r6
      00049B E4               [12] 1520 	clr	a
      00049C 93               [24] 1521 	movc	a,@a+dptr
      00049D 70 01            [24] 1522 	jnz	00190$
      00049F 22               [24] 1523 	ret
      0004A0                       1524 00190$:
                                   1525 ;	main.c:150: if (key_map[num][id] == command[command_index])
      0004A0 C0 02            [24] 1526 	push	ar2
      0004A2 C0 03            [24] 1527 	push	ar3
      0004A4 E5 53            [12] 1528 	mov	a,_input_handler_sloc2_1_0
      0004A6 24 35            [12] 1529 	add	a,#_key_map
      0004A8 FB               [12] 1530 	mov	r3,a
      0004A9 E5 54            [12] 1531 	mov	a,(_input_handler_sloc2_1_0 + 1)
      0004AB 34 14            [12] 1532 	addc	a,#(_key_map >> 8)
      0004AD FE               [12] 1533 	mov	r6,a
      0004AE E5 50            [12] 1534 	mov	a,_input_handler_id_196608_137
      0004B0 2B               [12] 1535 	add	a,r3
      0004B1 F5 82            [12] 1536 	mov	dpl,a
      0004B3 E4               [12] 1537 	clr	a
      0004B4 3E               [12] 1538 	addc	a,r6
      0004B5 F5 83            [12] 1539 	mov	dph,a
      0004B7 E5 4D            [12] 1540 	mov	a,_command_index
      0004B9 24 3D            [12] 1541 	add	a,#_command
      0004BB F5 52            [12] 1542 	mov	_input_handler_sloc1_1_0,a
      0004BD A8 52            [24] 1543 	mov	r0,_input_handler_sloc1_1_0
      0004BF 86 06            [24] 1544 	mov	ar6,@r0
      0004C1 E4               [12] 1545 	clr	a
      0004C2 93               [24] 1546 	movc	a,@a+dptr
      0004C3 FB               [12] 1547 	mov	r3,a
      0004C4 B5 06 02         [24] 1548 	cjne	a,ar6,00191$
      0004C7 80 06            [24] 1549 	sjmp	00192$
      0004C9                       1550 00191$:
      0004C9 D0 03            [24] 1551 	pop	ar3
      0004CB D0 02            [24] 1552 	pop	ar2
      0004CD 80 79            [24] 1553 	sjmp	00117$
      0004CF                       1554 00192$:
      0004CF D0 03            [24] 1555 	pop	ar3
      0004D1 D0 02            [24] 1556 	pop	ar2
                                   1557 ;	main.c:153: if (key_map[num][id + 1])
      0004D3 E5 53            [12] 1558 	mov	a,_input_handler_sloc2_1_0
      0004D5 24 35            [12] 1559 	add	a,#_key_map
      0004D7 FD               [12] 1560 	mov	r5,a
      0004D8 E5 54            [12] 1561 	mov	a,(_input_handler_sloc2_1_0 + 1)
      0004DA 34 14            [12] 1562 	addc	a,#(_key_map >> 8)
      0004DC FE               [12] 1563 	mov	r6,a
      0004DD E5 51            [12] 1564 	mov	a,_input_handler_sloc0_1_0
      0004DF FC               [12] 1565 	mov	r4,a
      0004E0 04               [12] 1566 	inc	a
      0004E1 2D               [12] 1567 	add	a,r5
      0004E2 FD               [12] 1568 	mov	r5,a
      0004E3 E4               [12] 1569 	clr	a
      0004E4 3E               [12] 1570 	addc	a,r6
      0004E5 FE               [12] 1571 	mov	r6,a
      0004E6 8D 82            [24] 1572 	mov	dpl,r5
      0004E8 8E 83            [24] 1573 	mov	dph,r6
      0004EA E4               [12] 1574 	clr	a
      0004EB 93               [24] 1575 	movc	a,@a+dptr
      0004EC 60 31            [24] 1576 	jz	00114$
                                   1577 ;	main.c:155: update_key(key_map[num][id + 1]);
      0004EE 74 F0            [12] 1578 	mov	a,#0x100 - 0x10
      0004F0 25 4D            [12] 1579 	add	a,_command_index
      0004F2 50 01            [24] 1580 	jnc	00194$
      0004F4 22               [24] 1581 	ret
      0004F5                       1582 00194$:
      0004F5 E5 53            [12] 1583 	mov	a,_input_handler_sloc2_1_0
      0004F7 24 35            [12] 1584 	add	a,#_key_map
      0004F9 FD               [12] 1585 	mov	r5,a
      0004FA E5 54            [12] 1586 	mov	a,(_input_handler_sloc2_1_0 + 1)
      0004FC 34 14            [12] 1587 	addc	a,#(_key_map >> 8)
      0004FE FE               [12] 1588 	mov	r6,a
      0004FF EC               [12] 1589 	mov	a,r4
      000500 04               [12] 1590 	inc	a
      000501 2D               [12] 1591 	add	a,r5
      000502 FD               [12] 1592 	mov	r5,a
      000503 E4               [12] 1593 	clr	a
      000504 3E               [12] 1594 	addc	a,r6
      000505 FE               [12] 1595 	mov	r6,a
      000506 8D 82            [24] 1596 	mov	dpl,r5
      000508 8E 83            [24] 1597 	mov	dph,r6
      00050A E4               [12] 1598 	clr	a
      00050B 93               [24] 1599 	movc	a,@a+dptr
      00050C FC               [12] 1600 	mov	r4,a
      00050D A8 52            [24] 1601 	mov	r0,_input_handler_sloc1_1_0
      00050F A6 04            [24] 1602 	mov	@r0,ar4
      000511 8D 82            [24] 1603 	mov	dpl,r5
      000513 8E 83            [24] 1604 	mov	dph,r6
      000515 E4               [12] 1605 	clr	a
      000516 93               [24] 1606 	movc	a,@a+dptr
      000517 F5 82            [12] 1607 	mov	dpl,a
      000519 12 01 B7         [24] 1608 	lcall	_lcd_write_char
      00051C 05 4D            [12] 1609 	inc	_command_index
      00051E 22               [24] 1610 	ret
      00051F                       1611 00114$:
                                   1612 ;	main.c:158: update_key(*key_map[num]);
      00051F 74 F0            [12] 1613 	mov	a,#0x100 - 0x10
      000521 25 4D            [12] 1614 	add	a,_command_index
      000523 40 5D            [24] 1615 	jc	00127$
      000525 E5 53            [12] 1616 	mov	a,_input_handler_sloc2_1_0
      000527 24 35            [12] 1617 	add	a,#_key_map
      000529 FD               [12] 1618 	mov	r5,a
      00052A E5 54            [12] 1619 	mov	a,(_input_handler_sloc2_1_0 + 1)
      00052C 34 14            [12] 1620 	addc	a,#(_key_map >> 8)
      00052E FE               [12] 1621 	mov	r6,a
      00052F 8D 82            [24] 1622 	mov	dpl,r5
      000531 8E 83            [24] 1623 	mov	dph,r6
      000533 E4               [12] 1624 	clr	a
      000534 93               [24] 1625 	movc	a,@a+dptr
      000535 FC               [12] 1626 	mov	r4,a
      000536 A8 52            [24] 1627 	mov	r0,_input_handler_sloc1_1_0
      000538 A6 04            [24] 1628 	mov	@r0,ar4
      00053A 8D 82            [24] 1629 	mov	dpl,r5
      00053C 8E 83            [24] 1630 	mov	dph,r6
      00053E E4               [12] 1631 	clr	a
      00053F 93               [24] 1632 	movc	a,@a+dptr
      000540 F5 82            [12] 1633 	mov	dpl,a
      000542 12 01 B7         [24] 1634 	lcall	_lcd_write_char
      000545 05 4D            [12] 1635 	inc	_command_index
                                   1636 ;	main.c:159: break;
      000547 22               [24] 1637 	ret
      000548                       1638 00117$:
                                   1639 ;	main.c:161: ++id;
      000548 05 50            [12] 1640 	inc	_input_handler_id_196608_137
      00054A 85 50 51         [24] 1641 	mov	_input_handler_sloc0_1_0,_input_handler_id_196608_137
      00054D 02 04 90         [24] 1642 	ljmp	00118$
      000550                       1643 00124$:
                                   1644 ;	main.c:167: update_key(*key_map[num]);
      000550 74 F0            [12] 1645 	mov	a,#0x100 - 0x10
      000552 25 4D            [12] 1646 	add	a,_command_index
      000554 40 2A            [24] 1647 	jc	00122$
      000556 E5 4D            [12] 1648 	mov	a,_command_index
      000558 24 3D            [12] 1649 	add	a,#_command
      00055A F9               [12] 1650 	mov	r1,a
      00055B EF               [12] 1651 	mov	a,r7
      00055C 75 F0 08         [24] 1652 	mov	b,#0x08
      00055F A4               [48] 1653 	mul	ab
      000560 24 35            [12] 1654 	add	a,#_key_map
      000562 FD               [12] 1655 	mov	r5,a
      000563 74 14            [12] 1656 	mov	a,#(_key_map >> 8)
      000565 35 F0            [12] 1657 	addc	a,b
      000567 FE               [12] 1658 	mov	r6,a
      000568 8D 82            [24] 1659 	mov	dpl,r5
      00056A 8E 83            [24] 1660 	mov	dph,r6
      00056C E4               [12] 1661 	clr	a
      00056D 93               [24] 1662 	movc	a,@a+dptr
      00056E F7               [12] 1663 	mov	@r1,a
      00056F 8D 82            [24] 1664 	mov	dpl,r5
      000571 8E 83            [24] 1665 	mov	dph,r6
      000573 E4               [12] 1666 	clr	a
      000574 93               [24] 1667 	movc	a,@a+dptr
      000575 F5 82            [12] 1668 	mov	dpl,a
      000577 C0 07            [24] 1669 	push	ar7
      000579 12 01 B7         [24] 1670 	lcall	_lcd_write_char
      00057C D0 07            [24] 1671 	pop	ar7
      00057E 05 4D            [12] 1672 	inc	_command_index
      000580                       1673 00122$:
                                   1674 ;	main.c:168: prev_num = num;
      000580 8F 4E            [24] 1675 	mov	_prev_num,r7
      000582                       1676 00127$:
                                   1677 ;	main.c:170: }
      000582 22               [24] 1678 	ret
                                   1679 ;------------------------------------------------------------
                                   1680 ;Allocation info for local variables in function 'delete_one_char'
                                   1681 ;------------------------------------------------------------
                                   1682 ;	main.c:172: void delete_one_char(void)
                                   1683 ;	-----------------------------------------
                                   1684 ;	 function delete_one_char
                                   1685 ;	-----------------------------------------
      000583                       1686 _delete_one_char:
                                   1687 ;	main.c:174: prev_num = 50;
      000583 75 4E 32         [24] 1688 	mov	_prev_num,#0x32
                                   1689 ;	main.c:175: if (command_index <= 0)
      000586 E5 4D            [12] 1690 	mov	a,_command_index
      000588 70 01            [24] 1691 	jnz	00102$
                                   1692 ;	main.c:176: return;
      00058A 22               [24] 1693 	ret
      00058B                       1694 00102$:
                                   1695 ;	main.c:177: lcd_back();
      00058B 75 82 10         [24] 1696 	mov	dpl,#0x10
      00058E 12 01 7D         [24] 1697 	lcall	_lcd_send_command
                                   1698 ;	main.c:178: --command_index;
      000591 15 4D            [12] 1699 	dec	_command_index
                                   1700 ;	main.c:179: command_index[command] = 0;
      000593 E5 4D            [12] 1701 	mov	a,_command_index
      000595 24 3D            [12] 1702 	add	a,#_command
      000597 F8               [12] 1703 	mov	r0,a
      000598 76 00            [12] 1704 	mov	@r0,#0x00
                                   1705 ;	main.c:180: lcd_write_char(' ');
      00059A 75 82 20         [24] 1706 	mov	dpl,#0x20
      00059D 12 01 B7         [24] 1707 	lcall	_lcd_write_char
                                   1708 ;	main.c:181: lcd_back();
      0005A0 75 82 10         [24] 1709 	mov	dpl,#0x10
                                   1710 ;	main.c:182: }
      0005A3 02 01 7D         [24] 1711 	ljmp	_lcd_send_command
                                   1712 ;------------------------------------------------------------
                                   1713 ;Allocation info for local variables in function 'add_space'
                                   1714 ;------------------------------------------------------------
                                   1715 ;	main.c:183: void add_space(void)
                                   1716 ;	-----------------------------------------
                                   1717 ;	 function add_space
                                   1718 ;	-----------------------------------------
      0005A6                       1719 _add_space:
                                   1720 ;	main.c:185: prev_num = 50;
      0005A6 75 4E 32         [24] 1721 	mov	_prev_num,#0x32
                                   1722 ;	main.c:186: update_key(' ');
      0005A9 74 F0            [12] 1723 	mov	a,#0x100 - 0x10
      0005AB 25 4D            [12] 1724 	add	a,_command_index
      0005AD 40 0F            [24] 1725 	jc	00103$
      0005AF E5 4D            [12] 1726 	mov	a,_command_index
      0005B1 24 3D            [12] 1727 	add	a,#_command
      0005B3 F8               [12] 1728 	mov	r0,a
      0005B4 76 20            [12] 1729 	mov	@r0,#0x20
      0005B6 75 82 20         [24] 1730 	mov	dpl,#0x20
      0005B9 12 01 B7         [24] 1731 	lcall	_lcd_write_char
      0005BC 05 4D            [12] 1732 	inc	_command_index
      0005BE                       1733 00103$:
                                   1734 ;	main.c:187: }
      0005BE 22               [24] 1735 	ret
                                   1736 ;------------------------------------------------------------
                                   1737 ;Allocation info for local variables in function 'exec_infrared_signal'
                                   1738 ;------------------------------------------------------------
                                   1739 ;i                         Allocated to registers r6 
                                   1740 ;------------------------------------------------------------
                                   1741 ;	main.c:198: void exec_infrared_signal(void)
                                   1742 ;	-----------------------------------------
                                   1743 ;	 function exec_infrared_signal
                                   1744 ;	-----------------------------------------
      0005BF                       1745 _exec_infrared_signal:
                                   1746 ;	main.c:201: switch (signal_codes[read_code_index])
      0005BF E5 2D            [12] 1747 	mov	a,_read_code_index
      0005C1 24 29            [12] 1748 	add	a,#_signal_codes
      0005C3 F9               [12] 1749 	mov	r1,a
      0005C4 87 07            [24] 1750 	mov	ar7,@r1
      0005C6 BF 3D 02         [24] 1751 	cjne	r7,#0x3d,00153$
      0005C9 80 2D            [24] 1752 	sjmp	00105$
      0005CB                       1753 00153$:
      0005CB BF 57 02         [24] 1754 	cjne	r7,#0x57,00154$
      0005CE 80 1E            [24] 1755 	sjmp	00103$
      0005D0                       1756 00154$:
      0005D0 BF 5D 02         [24] 1757 	cjne	r7,#0x5d,00155$
      0005D3 80 0F            [24] 1758 	sjmp	00101$
      0005D5                       1759 00155$:
      0005D5 BF 6F 02         [24] 1760 	cjne	r7,#0x6f,00156$
      0005D8 80 0F            [24] 1761 	sjmp	00102$
      0005DA                       1762 00156$:
      0005DA BF DD 02         [24] 1763 	cjne	r7,#0xdd,00157$
      0005DD 80 1E            [24] 1764 	sjmp	00106$
      0005DF                       1765 00157$:
                                   1766 ;	main.c:203: case infrared_off:
      0005DF BF FD 20         [24] 1767 	cjne	r7,#0xfd,00107$
      0005E2 80 0F            [24] 1768 	sjmp	00104$
      0005E4                       1769 00101$:
                                   1770 ;	main.c:204: reset();
      0005E4 12 0C 3E         [24] 1771 	lcall	_reset
                                   1772 ;	main.c:205: break;
                                   1773 ;	main.c:206: case infrared_vol_up:
      0005E7 80 4B            [24] 1774 	sjmp	00111$
      0005E9                       1775 00102$:
                                   1776 ;	main.c:207: command_first_line();
      0005E9 12 03 D0         [24] 1777 	lcall	_command_first_line
                                   1778 ;	main.c:208: break;
                                   1779 ;	main.c:209: case infrared_vol_down:
      0005EC 80 46            [24] 1780 	sjmp	00111$
      0005EE                       1781 00103$:
                                   1782 ;	main.c:210: command_second_line();
      0005EE 12 03 8E         [24] 1783 	lcall	_command_second_line
                                   1784 ;	main.c:211: break;
                                   1785 ;	main.c:212: case infrared_left:
      0005F1 80 41            [24] 1786 	sjmp	00111$
      0005F3                       1787 00104$:
                                   1788 ;	main.c:213: delete_one_char();
      0005F3 12 05 83         [24] 1789 	lcall	_delete_one_char
                                   1790 ;	main.c:214: break;
                                   1791 ;	main.c:215: case infrared_right:
      0005F6 80 3C            [24] 1792 	sjmp	00111$
      0005F8                       1793 00105$:
                                   1794 ;	main.c:216: add_space();
      0005F8 12 05 A6         [24] 1795 	lcall	_add_space
                                   1796 ;	main.c:217: break;
                                   1797 ;	main.c:218: case infrared_exec:
      0005FB 80 37            [24] 1798 	sjmp	00111$
      0005FD                       1799 00106$:
                                   1800 ;	main.c:219: exec();
      0005FD 12 0D 9A         [24] 1801 	lcall	_exec
                                   1802 ;	main.c:220: break;
                                   1803 ;	main.c:221: default:
      000600 80 32            [24] 1804 	sjmp	00111$
      000602                       1805 00107$:
                                   1806 ;	main.c:222: for (char i = 0; i <= 9; i++)
      000602 7E 00            [12] 1807 	mov	r6,#0x00
      000604 7D 00            [12] 1808 	mov	r5,#0x00
      000606                       1809 00113$:
      000606 ED               [12] 1810 	mov	a,r5
      000607 24 F6            [12] 1811 	add	a,#0xff - 0x09
      000609 40 29            [24] 1812 	jc	00111$
                                   1813 ;	main.c:224: if (signal_codes[read_code_index] == infrared_num[i])
      00060B ED               [12] 1814 	mov	a,r5
      00060C 90 14 95         [24] 1815 	mov	dptr,#_infrared_num
      00060F 93               [24] 1816 	movc	a,@a+dptr
      000610 FC               [12] 1817 	mov	r4,a
      000611 EF               [12] 1818 	mov	a,r7
      000612 B5 04 1A         [24] 1819 	cjne	a,ar4,00114$
                                   1820 ;	main.c:226: input_handler(i, interval_type & (1 << read_code_index));
      000615 AC 2D            [24] 1821 	mov	r4,_read_code_index
      000617 8C F0            [24] 1822 	mov	b,r4
      000619 05 F0            [12] 1823 	inc	b
      00061B 74 01            [12] 1824 	mov	a,#0x01
      00061D 80 02            [24] 1825 	sjmp	00164$
      00061F                       1826 00162$:
      00061F 25 E0            [12] 1827 	add	a,acc
      000621                       1828 00164$:
      000621 D5 F0 FB         [24] 1829 	djnz	b,00162$
      000624 55 2B            [12] 1830 	anl	a,_interval_type
      000626 F5 4F            [12] 1831 	mov	_input_handler_PARM_2,a
      000628 8E 82            [24] 1832 	mov	dpl,r6
      00062A 12 04 0F         [24] 1833 	lcall	_input_handler
                                   1834 ;	main.c:227: break;
      00062D 80 05            [24] 1835 	sjmp	00111$
      00062F                       1836 00114$:
                                   1837 ;	main.c:222: for (char i = 0; i <= 9; i++)
      00062F 0D               [12] 1838 	inc	r5
      000630 8D 06            [24] 1839 	mov	ar6,r5
                                   1840 ;	main.c:230: }
      000632 80 D2            [24] 1841 	sjmp	00113$
      000634                       1842 00111$:
                                   1843 ;	main.c:232: read_code_index = (read_code_index + 1) % max_code_counter;
      000634 AE 2D            [24] 1844 	mov	r6,_read_code_index
      000636 7F 00            [12] 1845 	mov	r7,#0x00
      000638 8E 82            [24] 1846 	mov	dpl,r6
      00063A 8F 83            [24] 1847 	mov	dph,r7
      00063C A3               [24] 1848 	inc	dptr
      00063D 75 08 02         [24] 1849 	mov	__modsint_PARM_2,#0x02
      000640 8F 09            [24] 1850 	mov	(__modsint_PARM_2 + 1),r7
      000642 12 13 F1         [24] 1851 	lcall	__modsint
      000645 AE 82            [24] 1852 	mov	r6,dpl
      000647 8E 2D            [24] 1853 	mov	_read_code_index,r6
                                   1854 ;	main.c:233: --unread_code_counter;
      000649 15 2E            [12] 1855 	dec	_unread_code_counter
                                   1856 ;	main.c:234: }
      00064B 22               [24] 1857 	ret
                                   1858 ;------------------------------------------------------------
                                   1859 ;Allocation info for local variables in function 'infrared_interrupt'
                                   1860 ;------------------------------------------------------------
                                   1861 ;delta                     Allocated to registers r4 r5 r6 r7 
                                   1862 ;------------------------------------------------------------
                                   1863 ;	main.c:236: void infrared_interrupt(void) __interrupt(0)
                                   1864 ;	-----------------------------------------
                                   1865 ;	 function infrared_interrupt
                                   1866 ;	-----------------------------------------
      00064C                       1867 _infrared_interrupt:
      00064C C0 21            [24] 1868 	push	bits
      00064E C0 E0            [24] 1869 	push	acc
      000650 C0 F0            [24] 1870 	push	b
      000652 C0 82            [24] 1871 	push	dpl
      000654 C0 83            [24] 1872 	push	dph
      000656 C0 07            [24] 1873 	push	(0+7)
      000658 C0 06            [24] 1874 	push	(0+6)
      00065A C0 05            [24] 1875 	push	(0+5)
      00065C C0 04            [24] 1876 	push	(0+4)
      00065E C0 03            [24] 1877 	push	(0+3)
      000660 C0 02            [24] 1878 	push	(0+2)
      000662 C0 01            [24] 1879 	push	(0+1)
      000664 C0 00            [24] 1880 	push	(0+0)
      000666 C0 D0            [24] 1881 	push	psw
      000668 75 D0 00         [24] 1882 	mov	psw,#0x00
                                   1883 ;	main.c:239: long delta = time_counter - infrared_counter;
      00066B E5 2F            [12] 1884 	mov	a,_time_counter
      00066D C3               [12] 1885 	clr	c
      00066E 95 33            [12] 1886 	subb	a,_infrared_counter
      000670 FC               [12] 1887 	mov	r4,a
      000671 E5 30            [12] 1888 	mov	a,(_time_counter + 1)
      000673 95 34            [12] 1889 	subb	a,(_infrared_counter + 1)
      000675 FD               [12] 1890 	mov	r5,a
      000676 E5 31            [12] 1891 	mov	a,(_time_counter + 2)
      000678 95 35            [12] 1892 	subb	a,(_infrared_counter + 2)
      00067A FE               [12] 1893 	mov	r6,a
      00067B E5 32            [12] 1894 	mov	a,(_time_counter + 3)
      00067D 95 36            [12] 1895 	subb	a,(_infrared_counter + 3)
      00067F FF               [12] 1896 	mov	r7,a
                                   1897 ;	main.c:240: if (delta > 200)
      000680 C3               [12] 1898 	clr	c
      000681 74 C8            [12] 1899 	mov	a,#0xc8
      000683 9C               [12] 1900 	subb	a,r4
      000684 E4               [12] 1901 	clr	a
      000685 9D               [12] 1902 	subb	a,r5
      000686 E4               [12] 1903 	clr	a
      000687 9E               [12] 1904 	subb	a,r6
      000688 74 80            [12] 1905 	mov	a,#(0x00 ^ 0x80)
      00068A 8F F0            [24] 1906 	mov	b,r7
      00068C 63 F0 80         [24] 1907 	xrl	b,#0x80
      00068F 95 F0            [12] 1908 	subb	a,b
      000691 50 0F            [24] 1909 	jnc	00105$
                                   1910 ;	main.c:242: infrared_counter = time_counter;
      000693 85 2F 33         [24] 1911 	mov	_infrared_counter,_time_counter
      000696 85 30 34         [24] 1912 	mov	(_infrared_counter + 1),(_time_counter + 1)
      000699 85 31 35         [24] 1913 	mov	(_infrared_counter + 2),(_time_counter + 2)
      00069C 85 32 36         [24] 1914 	mov	(_infrared_counter + 3),(_time_counter + 3)
                                   1915 ;	main.c:243: return;
      00069F 02 07 B5         [24] 1916 	ljmp	00116$
      0006A2                       1917 00105$:
                                   1918 ;	main.c:245: else if (delta < 5)
      0006A2 C3               [12] 1919 	clr	c
      0006A3 EC               [12] 1920 	mov	a,r4
      0006A4 94 05            [12] 1921 	subb	a,#0x05
      0006A6 ED               [12] 1922 	mov	a,r5
      0006A7 94 00            [12] 1923 	subb	a,#0x00
      0006A9 EE               [12] 1924 	mov	a,r6
      0006AA 94 00            [12] 1925 	subb	a,#0x00
      0006AC EF               [12] 1926 	mov	a,r7
      0006AD 64 80            [12] 1927 	xrl	a,#0x80
      0006AF 94 80            [12] 1928 	subb	a,#0x80
      0006B1 50 03            [24] 1929 	jnc	00102$
                                   1930 ;	main.c:247: return;
      0006B3 02 07 B5         [24] 1931 	ljmp	00116$
      0006B6                       1932 00102$:
                                   1933 ;	main.c:251: infrared_counter = time_counter;
      0006B6 85 2F 33         [24] 1934 	mov	_infrared_counter,_time_counter
      0006B9 85 30 34         [24] 1935 	mov	(_infrared_counter + 1),(_time_counter + 1)
      0006BC 85 31 35         [24] 1936 	mov	(_infrared_counter + 2),(_time_counter + 2)
      0006BF 85 32 36         [24] 1937 	mov	(_infrared_counter + 3),(_time_counter + 3)
                                   1938 ;	main.c:260: if (delta > 100)
      0006C2 C3               [12] 1939 	clr	c
      0006C3 74 64            [12] 1940 	mov	a,#0x64
      0006C5 9C               [12] 1941 	subb	a,r4
      0006C6 E4               [12] 1942 	clr	a
      0006C7 9D               [12] 1943 	subb	a,r5
      0006C8 E4               [12] 1944 	clr	a
      0006C9 9E               [12] 1945 	subb	a,r6
      0006CA 74 80            [12] 1946 	mov	a,#(0x00 ^ 0x80)
      0006CC 8F F0            [24] 1947 	mov	b,r7
      0006CE 63 F0 80         [24] 1948 	xrl	b,#0x80
      0006D1 95 F0            [12] 1949 	subb	a,b
      0006D3 50 09            [24] 1950 	jnc	00108$
                                   1951 ;	main.c:262: infrared_code = 0;
      0006D5 75 37 00         [24] 1952 	mov	_infrared_code,#0x00
                                   1953 ;	main.c:263: bits_counter = 0;
      0006D8 75 38 00         [24] 1954 	mov	_bits_counter,#0x00
                                   1955 ;	main.c:264: return;
      0006DB 02 07 B5         [24] 1956 	ljmp	00116$
      0006DE                       1957 00108$:
                                   1958 ;	main.c:267: ++bits_counter;
      0006DE 05 38            [12] 1959 	inc	_bits_counter
                                   1960 ;	main.c:268: if (bits_counter >= 24)
      0006E0 74 E8            [12] 1961 	mov	a,#0x100 - 0x18
      0006E2 25 38            [12] 1962 	add	a,_bits_counter
      0006E4 50 26            [24] 1963 	jnc	00113$
                                   1964 ;	main.c:270: if (delta > 17)
      0006E6 C3               [12] 1965 	clr	c
      0006E7 74 11            [12] 1966 	mov	a,#0x11
      0006E9 9C               [12] 1967 	subb	a,r4
      0006EA E4               [12] 1968 	clr	a
      0006EB 9D               [12] 1969 	subb	a,r5
      0006EC E4               [12] 1970 	clr	a
      0006ED 9E               [12] 1971 	subb	a,r6
      0006EE 74 80            [12] 1972 	mov	a,#(0x00 ^ 0x80)
      0006F0 8F F0            [24] 1973 	mov	b,r7
      0006F2 63 F0 80         [24] 1974 	xrl	b,#0x80
      0006F5 95 F0            [12] 1975 	subb	a,b
      0006F7 50 0C            [24] 1976 	jnc	00110$
                                   1977 ;	main.c:272: infrared_code = (infrared_code << 1) | 1;
      0006F9 E5 37            [12] 1978 	mov	a,_infrared_code
      0006FB 25 37            [12] 1979 	add	a,_infrared_code
      0006FD FF               [12] 1980 	mov	r7,a
      0006FE 74 01            [12] 1981 	mov	a,#0x01
      000700 4F               [12] 1982 	orl	a,r7
      000701 F5 37            [12] 1983 	mov	_infrared_code,a
      000703 80 07            [24] 1984 	sjmp	00113$
      000705                       1985 00110$:
                                   1986 ;	main.c:276: infrared_code = (infrared_code << 1);
      000705 E5 37            [12] 1987 	mov	a,_infrared_code
      000707 FF               [12] 1988 	mov	r7,a
      000708 25 E0            [12] 1989 	add	a,acc
      00070A F5 37            [12] 1990 	mov	_infrared_code,a
      00070C                       1991 00113$:
                                   1992 ;	main.c:279: if (bits_counter == 32)
      00070C 74 20            [12] 1993 	mov	a,#0x20
      00070E B5 38 02         [24] 1994 	cjne	a,_bits_counter,00153$
      000711 80 03            [24] 1995 	sjmp	00154$
      000713                       1996 00153$:
      000713 02 07 B5         [24] 1997 	ljmp	00116$
      000716                       1998 00154$:
                                   1999 ;	main.c:281: signal_codes[code_index] = infrared_code;
      000716 E5 2C            [12] 2000 	mov	a,_code_index
      000718 24 29            [12] 2001 	add	a,#_signal_codes
      00071A F8               [12] 2002 	mov	r0,a
      00071B A6 37            [24] 2003 	mov	@r0,_infrared_code
                                   2004 ;	main.c:282: interval_type &= (1 << code_index);
      00071D AF 2C            [24] 2005 	mov	r7,_code_index
      00071F 8F F0            [24] 2006 	mov	b,r7
      000721 05 F0            [12] 2007 	inc	b
      000723 74 01            [12] 2008 	mov	a,#0x01
      000725 80 02            [24] 2009 	sjmp	00157$
      000727                       2010 00155$:
      000727 25 E0            [12] 2011 	add	a,acc
      000729                       2012 00157$:
      000729 D5 F0 FB         [24] 2013 	djnz	b,00155$
      00072C 52 2B            [12] 2014 	anl	_interval_type,a
                                   2015 ;	main.c:283: interval_type |= (((time_counter - last_signal_received) / 10) <= 800 ? 1 : 0) << code_index;
      00072E E5 2F            [12] 2016 	mov	a,_time_counter
      000730 C3               [12] 2017 	clr	c
      000731 95 39            [12] 2018 	subb	a,_last_signal_received
      000733 FB               [12] 2019 	mov	r3,a
      000734 E5 30            [12] 2020 	mov	a,(_time_counter + 1)
      000736 95 3A            [12] 2021 	subb	a,(_last_signal_received + 1)
      000738 FC               [12] 2022 	mov	r4,a
      000739 E5 31            [12] 2023 	mov	a,(_time_counter + 2)
      00073B 95 3B            [12] 2024 	subb	a,(_last_signal_received + 2)
      00073D FD               [12] 2025 	mov	r5,a
      00073E E5 32            [12] 2026 	mov	a,(_time_counter + 3)
      000740 95 3C            [12] 2027 	subb	a,(_last_signal_received + 3)
      000742 FE               [12] 2028 	mov	r6,a
      000743 75 08 0A         [24] 2029 	mov	__divslong_PARM_2,#0x0a
      000746 E4               [12] 2030 	clr	a
      000747 F5 09            [12] 2031 	mov	(__divslong_PARM_2 + 1),a
      000749 F5 0A            [12] 2032 	mov	(__divslong_PARM_2 + 2),a
      00074B F5 0B            [12] 2033 	mov	(__divslong_PARM_2 + 3),a
      00074D 8B 82            [24] 2034 	mov	dpl,r3
      00074F 8C 83            [24] 2035 	mov	dph,r4
      000751 8D F0            [24] 2036 	mov	b,r5
      000753 EE               [12] 2037 	mov	a,r6
      000754 C0 07            [24] 2038 	push	ar7
      000756 12 13 6B         [24] 2039 	lcall	__divslong
      000759 AB 82            [24] 2040 	mov	r3,dpl
      00075B AC 83            [24] 2041 	mov	r4,dph
      00075D AD F0            [24] 2042 	mov	r5,b
      00075F FE               [12] 2043 	mov	r6,a
      000760 D0 07            [24] 2044 	pop	ar7
      000762 C3               [12] 2045 	clr	c
      000763 74 20            [12] 2046 	mov	a,#0x20
      000765 9B               [12] 2047 	subb	a,r3
      000766 74 03            [12] 2048 	mov	a,#0x03
      000768 9C               [12] 2049 	subb	a,r4
      000769 E4               [12] 2050 	clr	a
      00076A 9D               [12] 2051 	subb	a,r5
      00076B 74 80            [12] 2052 	mov	a,#(0x00 ^ 0x80)
      00076D 8E F0            [24] 2053 	mov	b,r6
      00076F 63 F0 80         [24] 2054 	xrl	b,#0x80
      000772 95 F0            [12] 2055 	subb	a,b
      000774 92 00            [24] 2056 	mov	_infrared_interrupt_sloc0_1_0,c
      000776 40 06            [24] 2057 	jc	00118$
      000778 7D 01            [12] 2058 	mov	r5,#0x01
      00077A 7E 00            [12] 2059 	mov	r6,#0x00
      00077C 80 04            [24] 2060 	sjmp	00119$
      00077E                       2061 00118$:
      00077E 7D 00            [12] 2062 	mov	r5,#0x00
      000780 7E 00            [12] 2063 	mov	r6,#0x00
      000782                       2064 00119$:
      000782 8F F0            [24] 2065 	mov	b,r7
      000784 05 F0            [12] 2066 	inc	b
      000786 ED               [12] 2067 	mov	a,r5
      000787 80 02            [24] 2068 	sjmp	00161$
      000789                       2069 00159$:
      000789 25 E0            [12] 2070 	add	a,acc
      00078B                       2071 00161$:
      00078B D5 F0 FB         [24] 2072 	djnz	b,00159$
      00078E 42 2B            [12] 2073 	orl	_interval_type,a
                                   2074 ;	main.c:285: last_signal_received = time_counter;
      000790 85 2F 39         [24] 2075 	mov	_last_signal_received,_time_counter
      000793 85 30 3A         [24] 2076 	mov	(_last_signal_received + 1),(_time_counter + 1)
      000796 85 31 3B         [24] 2077 	mov	(_last_signal_received + 2),(_time_counter + 2)
      000799 85 32 3C         [24] 2078 	mov	(_last_signal_received + 3),(_time_counter + 3)
                                   2079 ;	main.c:286: code_index = (code_index + 1) % max_code_counter;
      00079C AE 2C            [24] 2080 	mov	r6,_code_index
      00079E 7F 00            [12] 2081 	mov	r7,#0x00
      0007A0 8E 82            [24] 2082 	mov	dpl,r6
      0007A2 8F 83            [24] 2083 	mov	dph,r7
      0007A4 A3               [24] 2084 	inc	dptr
      0007A5 75 08 02         [24] 2085 	mov	__modsint_PARM_2,#0x02
      0007A8 8F 09            [24] 2086 	mov	(__modsint_PARM_2 + 1),r7
      0007AA 12 13 F1         [24] 2087 	lcall	__modsint
      0007AD AE 82            [24] 2088 	mov	r6,dpl
      0007AF AF 83            [24] 2089 	mov	r7,dph
      0007B1 8E 2C            [24] 2090 	mov	_code_index,r6
                                   2091 ;	main.c:287: ++unread_code_counter;
      0007B3 05 2E            [12] 2092 	inc	_unread_code_counter
      0007B5                       2093 00116$:
                                   2094 ;	main.c:292: }
      0007B5 D0 D0            [24] 2095 	pop	psw
      0007B7 D0 00            [24] 2096 	pop	(0+0)
      0007B9 D0 01            [24] 2097 	pop	(0+1)
      0007BB D0 02            [24] 2098 	pop	(0+2)
      0007BD D0 03            [24] 2099 	pop	(0+3)
      0007BF D0 04            [24] 2100 	pop	(0+4)
      0007C1 D0 05            [24] 2101 	pop	(0+5)
      0007C3 D0 06            [24] 2102 	pop	(0+6)
      0007C5 D0 07            [24] 2103 	pop	(0+7)
      0007C7 D0 83            [24] 2104 	pop	dph
      0007C9 D0 82            [24] 2105 	pop	dpl
      0007CB D0 F0            [24] 2106 	pop	b
      0007CD D0 E0            [24] 2107 	pop	acc
      0007CF D0 21            [24] 2108 	pop	bits
      0007D1 32               [24] 2109 	reti
                                   2110 ;------------------------------------------------------------
                                   2111 ;Allocation info for local variables in function 'reset_timer_1'
                                   2112 ;------------------------------------------------------------
                                   2113 ;	main.c:294: void reset_timer_1(void)
                                   2114 ;	-----------------------------------------
                                   2115 ;	 function reset_timer_1
                                   2116 ;	-----------------------------------------
      0007D2                       2117 _reset_timer_1:
                                   2118 ;	main.c:297: TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
      0007D2 75 8D 4B         [24] 2119 	mov	_TH1,#0x4b
                                   2120 ;	main.c:298: TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
      0007D5 75 8B FF         [24] 2121 	mov	_TL1,#0xff
                                   2122 ;	main.c:299: }
      0007D8 22               [24] 2123 	ret
                                   2124 ;------------------------------------------------------------
                                   2125 ;Allocation info for local variables in function 'stop_timer_1'
                                   2126 ;------------------------------------------------------------
                                   2127 ;	main.c:300: void stop_timer_1(void)
                                   2128 ;	-----------------------------------------
                                   2129 ;	 function stop_timer_1
                                   2130 ;	-----------------------------------------
      0007D9                       2131 _stop_timer_1:
                                   2132 ;	main.c:302: TR1 = 0;
                                   2133 ;	assignBit
      0007D9 C2 8E            [12] 2134 	clr	_TR1
                                   2135 ;	main.c:303: }
      0007DB 22               [24] 2136 	ret
                                   2137 ;------------------------------------------------------------
                                   2138 ;Allocation info for local variables in function 'start_time_1'
                                   2139 ;------------------------------------------------------------
                                   2140 ;	main.c:304: void start_time_1(void)
                                   2141 ;	-----------------------------------------
                                   2142 ;	 function start_time_1
                                   2143 ;	-----------------------------------------
      0007DC                       2144 _start_time_1:
                                   2145 ;	main.c:306: timer1_counter = 0;
      0007DC E4               [12] 2146 	clr	a
      0007DD F5 55            [12] 2147 	mov	_timer1_counter,a
      0007DF F5 56            [12] 2148 	mov	(_timer1_counter + 1),a
                                   2149 ;	main.c:307: reset_timer_1();
      0007E1 12 07 D2         [24] 2150 	lcall	_reset_timer_1
                                   2151 ;	main.c:308: TR1 = 1;
                                   2152 ;	assignBit
      0007E4 D2 8E            [12] 2153 	setb	_TR1
                                   2154 ;	main.c:309: }
      0007E6 22               [24] 2155 	ret
                                   2156 ;------------------------------------------------------------
                                   2157 ;Allocation info for local variables in function 'count_down'
                                   2158 ;------------------------------------------------------------
                                   2159 ;	main.c:312: void count_down(void)
                                   2160 ;	-----------------------------------------
                                   2161 ;	 function count_down
                                   2162 ;	-----------------------------------------
      0007E7                       2163 _count_down:
                                   2164 ;	main.c:314: if ((timer1_counter % 20) == 0)
      0007E7 75 08 14         [24] 2165 	mov	__moduint_PARM_2,#0x14
      0007EA 75 09 00         [24] 2166 	mov	(__moduint_PARM_2 + 1),#0x00
      0007ED 85 55 82         [24] 2167 	mov	dpl,_timer1_counter
      0007F0 85 56 83         [24] 2168 	mov	dph,(_timer1_counter + 1)
      0007F3 12 12 CF         [24] 2169 	lcall	__moduint
      0007F6 E5 82            [12] 2170 	mov	a,dpl
      0007F8 85 83 F0         [24] 2171 	mov	b,dph
      0007FB 45 F0            [12] 2172 	orl	a,b
      0007FD 70 35            [24] 2173 	jnz	00106$
                                   2174 ;	main.c:316: if (check <= 0)
      0007FF C3               [12] 2175 	clr	c
      000800 E4               [12] 2176 	clr	a
      000801 95 24            [12] 2177 	subb	a,_check
      000803 E4               [12] 2178 	clr	a
      000804 95 25            [12] 2179 	subb	a,(_check + 1)
      000806 E4               [12] 2180 	clr	a
      000807 95 26            [12] 2181 	subb	a,(_check + 2)
      000809 74 80            [12] 2182 	mov	a,#(0x00 ^ 0x80)
      00080B 85 27 F0         [24] 2183 	mov	b,(_check + 3)
      00080E 63 F0 80         [24] 2184 	xrl	b,#0x80
      000811 95 F0            [12] 2185 	subb	a,b
      000813 40 0C            [24] 2186 	jc	00102$
                                   2187 ;	main.c:318: stop_timer_1();
      000815 12 07 D9         [24] 2188 	lcall	_stop_timer_1
                                   2189 ;	main.c:319: buzzer();
      000818 12 03 2B         [24] 2190 	lcall	_buzzer
                                   2191 ;	main.c:320: do_something_1 = NULL;
      00081B E4               [12] 2192 	clr	a
      00081C F5 57            [12] 2193 	mov	_do_something_1,a
      00081E F5 58            [12] 2194 	mov	(_do_something_1 + 1),a
      000820 22               [24] 2195 	ret
      000821                       2196 00102$:
                                   2197 ;	main.c:323: --check;
      000821 15 24            [12] 2198 	dec	_check
      000823 74 FF            [12] 2199 	mov	a,#0xff
      000825 B5 24 0C         [24] 2200 	cjne	a,_check,00118$
      000828 15 25            [12] 2201 	dec	(_check + 1)
      00082A B5 25 07         [24] 2202 	cjne	a,(_check + 1),00118$
      00082D 15 26            [12] 2203 	dec	(_check + 2)
      00082F B5 26 02         [24] 2204 	cjne	a,(_check + 2),00118$
      000832 15 27            [12] 2205 	dec	(_check + 3)
      000834                       2206 00118$:
      000834                       2207 00106$:
                                   2208 ;	main.c:325: }
      000834 22               [24] 2209 	ret
                                   2210 ;------------------------------------------------------------
                                   2211 ;Allocation info for local variables in function 'count_up'
                                   2212 ;------------------------------------------------------------
                                   2213 ;	main.c:326: void count_up(void)
                                   2214 ;	-----------------------------------------
                                   2215 ;	 function count_up
                                   2216 ;	-----------------------------------------
      000835                       2217 _count_up:
                                   2218 ;	main.c:328: if ((timer1_counter % 20) == 0)
      000835 75 08 14         [24] 2219 	mov	__moduint_PARM_2,#0x14
      000838 75 09 00         [24] 2220 	mov	(__moduint_PARM_2 + 1),#0x00
      00083B 85 55 82         [24] 2221 	mov	dpl,_timer1_counter
      00083E 85 56 83         [24] 2222 	mov	dph,(_timer1_counter + 1)
      000841 12 12 CF         [24] 2223 	lcall	__moduint
      000844 E5 82            [12] 2224 	mov	a,dpl
      000846 85 83 F0         [24] 2225 	mov	b,dph
      000849 45 F0            [12] 2226 	orl	a,b
      00084B 70 12            [24] 2227 	jnz	00103$
                                   2228 ;	main.c:330: ++check;
      00084D 05 24            [12] 2229 	inc	_check
      00084F E4               [12] 2230 	clr	a
      000850 B5 24 0C         [24] 2231 	cjne	a,_check,00110$
      000853 05 25            [12] 2232 	inc	(_check + 1)
      000855 B5 25 07         [24] 2233 	cjne	a,(_check + 1),00110$
      000858 05 26            [12] 2234 	inc	(_check + 2)
      00085A B5 26 02         [24] 2235 	cjne	a,(_check + 2),00110$
      00085D 05 27            [12] 2236 	inc	(_check + 3)
      00085F                       2237 00110$:
      00085F                       2238 00103$:
                                   2239 ;	main.c:332: }
      00085F 22               [24] 2240 	ret
                                   2241 ;------------------------------------------------------------
                                   2242 ;Allocation info for local variables in function 'timer_fan_off'
                                   2243 ;------------------------------------------------------------
                                   2244 ;	main.c:333: void timer_fan_off(void)
                                   2245 ;	-----------------------------------------
                                   2246 ;	 function timer_fan_off
                                   2247 ;	-----------------------------------------
      000860                       2248 _timer_fan_off:
                                   2249 ;	main.c:335: if ((timer1_counter % 20) == 0)
      000860 75 08 14         [24] 2250 	mov	__moduint_PARM_2,#0x14
      000863 75 09 00         [24] 2251 	mov	(__moduint_PARM_2 + 1),#0x00
      000866 85 55 82         [24] 2252 	mov	dpl,_timer1_counter
      000869 85 56 83         [24] 2253 	mov	dph,(_timer1_counter + 1)
      00086C 12 12 CF         [24] 2254 	lcall	__moduint
      00086F E5 82            [12] 2255 	mov	a,dpl
      000871 85 83 F0         [24] 2256 	mov	b,dph
      000874 45 F0            [12] 2257 	orl	a,b
      000876 70 34            [24] 2258 	jnz	00106$
                                   2259 ;	main.c:337: if (check <= 0)
      000878 C3               [12] 2260 	clr	c
      000879 E4               [12] 2261 	clr	a
      00087A 95 24            [12] 2262 	subb	a,_check
      00087C E4               [12] 2263 	clr	a
      00087D 95 25            [12] 2264 	subb	a,(_check + 1)
      00087F E4               [12] 2265 	clr	a
      000880 95 26            [12] 2266 	subb	a,(_check + 2)
      000882 74 80            [12] 2267 	mov	a,#(0x00 ^ 0x80)
      000884 85 27 F0         [24] 2268 	mov	b,(_check + 3)
      000887 63 F0 80         [24] 2269 	xrl	b,#0x80
      00088A 95 F0            [12] 2270 	subb	a,b
      00088C 40 0B            [24] 2271 	jc	00102$
                                   2272 ;	main.c:339: fan_off();
      00088E 12 03 7B         [24] 2273 	lcall	_fan_off
                                   2274 ;	main.c:340: do_something_1 = NULL;
      000891 E4               [12] 2275 	clr	a
      000892 F5 57            [12] 2276 	mov	_do_something_1,a
      000894 F5 58            [12] 2277 	mov	(_do_something_1 + 1),a
                                   2278 ;	main.c:341: stop_timer_1();
      000896 02 07 D9         [24] 2279 	ljmp	_stop_timer_1
      000899                       2280 00102$:
                                   2281 ;	main.c:344: --check;
      000899 15 24            [12] 2282 	dec	_check
      00089B 74 FF            [12] 2283 	mov	a,#0xff
      00089D B5 24 0C         [24] 2284 	cjne	a,_check,00118$
      0008A0 15 25            [12] 2285 	dec	(_check + 1)
      0008A2 B5 25 07         [24] 2286 	cjne	a,(_check + 1),00118$
      0008A5 15 26            [12] 2287 	dec	(_check + 2)
      0008A7 B5 26 02         [24] 2288 	cjne	a,(_check + 2),00118$
      0008AA 15 27            [12] 2289 	dec	(_check + 3)
      0008AC                       2290 00118$:
      0008AC                       2291 00106$:
                                   2292 ;	main.c:346: }
      0008AC 22               [24] 2293 	ret
                                   2294 ;------------------------------------------------------------
                                   2295 ;Allocation info for local variables in function 'timer0_interrupt'
                                   2296 ;------------------------------------------------------------
                                   2297 ;	main.c:347: void timer0_interrupt(void) __interrupt(1)
                                   2298 ;	-----------------------------------------
                                   2299 ;	 function timer0_interrupt
                                   2300 ;	-----------------------------------------
      0008AD                       2301 _timer0_interrupt:
      0008AD C0 E0            [24] 2302 	push	acc
      0008AF C0 D0            [24] 2303 	push	psw
                                   2304 ;	main.c:349: ++time_counter;
      0008B1 05 2F            [12] 2305 	inc	_time_counter
      0008B3 E4               [12] 2306 	clr	a
      0008B4 B5 2F 0C         [24] 2307 	cjne	a,_time_counter,00103$
      0008B7 05 30            [12] 2308 	inc	(_time_counter + 1)
      0008B9 B5 30 07         [24] 2309 	cjne	a,(_time_counter + 1),00103$
      0008BC 05 31            [12] 2310 	inc	(_time_counter + 2)
      0008BE B5 31 02         [24] 2311 	cjne	a,(_time_counter + 2),00103$
      0008C1 05 32            [12] 2312 	inc	(_time_counter + 3)
      0008C3                       2313 00103$:
                                   2314 ;	main.c:353: }
      0008C3 D0 D0            [24] 2315 	pop	psw
      0008C5 D0 E0            [24] 2316 	pop	acc
      0008C7 32               [24] 2317 	reti
                                   2318 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                   2319 ;	eliminated unneeded push/pop dpl
                                   2320 ;	eliminated unneeded push/pop dph
                                   2321 ;	eliminated unneeded push/pop b
                                   2322 ;------------------------------------------------------------
                                   2323 ;Allocation info for local variables in function 'timer1_interrupt'
                                   2324 ;------------------------------------------------------------
                                   2325 ;	main.c:355: void timer1_interrupt(void) __interrupt(3)
                                   2326 ;	-----------------------------------------
                                   2327 ;	 function timer1_interrupt
                                   2328 ;	-----------------------------------------
      0008C8                       2329 _timer1_interrupt:
      0008C8 C0 21            [24] 2330 	push	bits
      0008CA C0 E0            [24] 2331 	push	acc
      0008CC C0 F0            [24] 2332 	push	b
      0008CE C0 82            [24] 2333 	push	dpl
      0008D0 C0 83            [24] 2334 	push	dph
      0008D2 C0 07            [24] 2335 	push	(0+7)
      0008D4 C0 06            [24] 2336 	push	(0+6)
      0008D6 C0 05            [24] 2337 	push	(0+5)
      0008D8 C0 04            [24] 2338 	push	(0+4)
      0008DA C0 03            [24] 2339 	push	(0+3)
      0008DC C0 02            [24] 2340 	push	(0+2)
      0008DE C0 01            [24] 2341 	push	(0+1)
      0008E0 C0 00            [24] 2342 	push	(0+0)
      0008E2 C0 D0            [24] 2343 	push	psw
      0008E4 75 D0 00         [24] 2344 	mov	psw,#0x00
                                   2345 ;	main.c:358: ++timer1_counter;
      0008E7 05 55            [12] 2346 	inc	_timer1_counter
      0008E9 E4               [12] 2347 	clr	a
      0008EA B5 55 02         [24] 2348 	cjne	a,_timer1_counter,00109$
      0008ED 05 56            [12] 2349 	inc	(_timer1_counter + 1)
      0008EF                       2350 00109$:
                                   2351 ;	main.c:359: reset_timer_1();
      0008EF 12 07 D2         [24] 2352 	lcall	_reset_timer_1
                                   2353 ;	main.c:360: if (do_something_1 != NULL)
      0008F2 E5 57            [12] 2354 	mov	a,_do_something_1
      0008F4 45 58            [12] 2355 	orl	a,(_do_something_1 + 1)
      0008F6 60 09            [24] 2356 	jz	00103$
                                   2357 ;	main.c:362: do_something_1();
      0008F8 85 57 82         [24] 2358 	mov	dpl,_do_something_1
      0008FB 85 58 83         [24] 2359 	mov	dph,(_do_something_1 + 1)
      0008FE 12 00 21         [24] 2360 	lcall	__sdcc_call_dptr
      000901                       2361 00103$:
                                   2362 ;	main.c:369: }
      000901 D0 D0            [24] 2363 	pop	psw
      000903 D0 00            [24] 2364 	pop	(0+0)
      000905 D0 01            [24] 2365 	pop	(0+1)
      000907 D0 02            [24] 2366 	pop	(0+2)
      000909 D0 03            [24] 2367 	pop	(0+3)
      00090B D0 04            [24] 2368 	pop	(0+4)
      00090D D0 05            [24] 2369 	pop	(0+5)
      00090F D0 06            [24] 2370 	pop	(0+6)
      000911 D0 07            [24] 2371 	pop	(0+7)
      000913 D0 83            [24] 2372 	pop	dph
      000915 D0 82            [24] 2373 	pop	dpl
      000917 D0 F0            [24] 2374 	pop	b
      000919 D0 E0            [24] 2375 	pop	acc
      00091B D0 21            [24] 2376 	pop	bits
      00091D 32               [24] 2377 	reti
                                   2378 ;------------------------------------------------------------
                                   2379 ;Allocation info for local variables in function 'exec_key_pressed'
                                   2380 ;------------------------------------------------------------
                                   2381 ;	main.c:375: void exec_key_pressed(void)
                                   2382 ;	-----------------------------------------
                                   2383 ;	 function exec_key_pressed
                                   2384 ;	-----------------------------------------
      00091E                       2385 _exec_key_pressed:
                                   2386 ;	main.c:377: switch (key_pressed)
      00091E 74 02            [12] 2387 	mov	a,#0x02
      000920 B5 64 02         [24] 2388 	cjne	a,_key_pressed,00171$
      000923 80 22            [24] 2389 	sjmp	00103$
      000925                       2390 00171$:
      000925 74 03            [12] 2391 	mov	a,#0x03
      000927 B5 64 02         [24] 2392 	cjne	a,_key_pressed,00172$
      00092A 80 1E            [24] 2393 	sjmp	00104$
      00092C                       2394 00172$:
      00092C 74 04            [12] 2395 	mov	a,#0x04
      00092E B5 64 02         [24] 2396 	cjne	a,_key_pressed,00173$
      000931 80 0E            [24] 2397 	sjmp	00101$
      000933                       2398 00173$:
      000933 74 08            [12] 2399 	mov	a,#0x08
      000935 B5 64 02         [24] 2400 	cjne	a,_key_pressed,00174$
      000938 80 0A            [24] 2401 	sjmp	00102$
      00093A                       2402 00174$:
      00093A 74 10            [12] 2403 	mov	a,#0x10
                                   2404 ;	main.c:379: case 4:
      00093C B5 64 11         [24] 2405 	cjne	a,_key_pressed,00106$
      00093F 80 0C            [24] 2406 	sjmp	00105$
      000941                       2407 00101$:
                                   2408 ;	main.c:380: command_first_line();
                                   2409 ;	main.c:381: return;
      000941 02 03 D0         [24] 2410 	ljmp	_command_first_line
                                   2411 ;	main.c:382: case 8:
      000944                       2412 00102$:
                                   2413 ;	main.c:383: command_second_line();
                                   2414 ;	main.c:384: return;
      000944 02 03 8E         [24] 2415 	ljmp	_command_second_line
                                   2416 ;	main.c:385: case 2:
      000947                       2417 00103$:
                                   2418 ;	main.c:386: delete_one_char();
                                   2419 ;	main.c:387: return;
      000947 02 05 83         [24] 2420 	ljmp	_delete_one_char
                                   2421 ;	main.c:388: case 3:
      00094A                       2422 00104$:
                                   2423 ;	main.c:389: add_space();
                                   2424 ;	main.c:390: return;
      00094A 02 05 A6         [24] 2425 	ljmp	_add_space
                                   2426 ;	main.c:391: case 16:
      00094D                       2427 00105$:
                                   2428 ;	main.c:392: exec();
                                   2429 ;	main.c:393: return;
      00094D 02 0D 9A         [24] 2430 	ljmp	_exec
                                   2431 ;	main.c:394: }
      000950                       2432 00106$:
                                   2433 ;	main.c:395: if (time_counter - last_time_key_pressed <= 8000 && prev_key_pressed == key_pressed)
      000950 E5 2F            [12] 2434 	mov	a,_time_counter
      000952 C3               [12] 2435 	clr	c
      000953 95 5F            [12] 2436 	subb	a,_last_time_key_pressed
      000955 FC               [12] 2437 	mov	r4,a
      000956 E5 30            [12] 2438 	mov	a,(_time_counter + 1)
      000958 95 60            [12] 2439 	subb	a,(_last_time_key_pressed + 1)
      00095A FD               [12] 2440 	mov	r5,a
      00095B E5 31            [12] 2441 	mov	a,(_time_counter + 2)
      00095D 95 61            [12] 2442 	subb	a,(_last_time_key_pressed + 2)
      00095F FE               [12] 2443 	mov	r6,a
      000960 E5 32            [12] 2444 	mov	a,(_time_counter + 3)
      000962 95 62            [12] 2445 	subb	a,(_last_time_key_pressed + 3)
      000964 FF               [12] 2446 	mov	r7,a
      000965 C3               [12] 2447 	clr	c
      000966 74 40            [12] 2448 	mov	a,#0x40
      000968 9C               [12] 2449 	subb	a,r4
      000969 74 1F            [12] 2450 	mov	a,#0x1f
      00096B 9D               [12] 2451 	subb	a,r5
      00096C E4               [12] 2452 	clr	a
      00096D 9E               [12] 2453 	subb	a,r6
      00096E 74 80            [12] 2454 	mov	a,#(0x00 ^ 0x80)
      000970 8F F0            [24] 2455 	mov	b,r7
      000972 63 F0 80         [24] 2456 	xrl	b,#0x80
      000975 95 F0            [12] 2457 	subb	a,b
      000977 50 03            [24] 2458 	jnc	00176$
      000979 02 0A 37         [24] 2459 	ljmp	00130$
      00097C                       2460 00176$:
      00097C E5 64            [12] 2461 	mov	a,_key_pressed
      00097E B5 63 02         [24] 2462 	cjne	a,_prev_key_pressed,00177$
      000981 80 03            [24] 2463 	sjmp	00178$
      000983                       2464 00177$:
      000983 02 0A 37         [24] 2465 	ljmp	00130$
      000986                       2466 00178$:
                                   2467 ;	main.c:397: switch (key_pressed)
      000986 E5 64            [12] 2468 	mov	a,_key_pressed
      000988 24 F0            [12] 2469 	add	a,#0xff - 0x0f
      00098A 50 03            [24] 2470 	jnc	00179$
      00098C 02 0A DC         [24] 2471 	ljmp	00131$
      00098F                       2472 00179$:
      00098F E5 64            [12] 2473 	mov	a,_key_pressed
      000991 24 0B            [12] 2474 	add	a,#(00180$-3-.)
      000993 83               [24] 2475 	movc	a,@a+pc
      000994 F5 82            [12] 2476 	mov	dpl,a
      000996 E5 64            [12] 2477 	mov	a,_key_pressed
      000998 24 14            [12] 2478 	add	a,#(00181$-3-.)
      00099A 83               [24] 2479 	movc	a,@a+pc
      00099B F5 83            [12] 2480 	mov	dph,a
      00099D E4               [12] 2481 	clr	a
      00099E 73               [24] 2482 	jmp	@a+dptr
      00099F                       2483 00180$:
      00099F DC                    2484 	.db	00131$
      0009A0 BF                    2485 	.db	00107$
      0009A1 DC                    2486 	.db	00131$
      0009A2 DC                    2487 	.db	00131$
      0009A3 DC                    2488 	.db	00131$
      0009A4 CB                    2489 	.db	00108$
      0009A5 D7                    2490 	.db	00109$
      0009A6 E3                    2491 	.db	00110$
      0009A7 DC                    2492 	.db	00131$
      0009A8 EF                    2493 	.db	00111$
      0009A9 FB                    2494 	.db	00112$
      0009AA 07                    2495 	.db	00113$
      0009AB DC                    2496 	.db	00131$
      0009AC 13                    2497 	.db	00114$
      0009AD 1F                    2498 	.db	00115$
      0009AE 2B                    2499 	.db	00116$
      0009AF                       2500 00181$:
      0009AF 0A                    2501 	.db	00131$>>8
      0009B0 09                    2502 	.db	00107$>>8
      0009B1 0A                    2503 	.db	00131$>>8
      0009B2 0A                    2504 	.db	00131$>>8
      0009B3 0A                    2505 	.db	00131$>>8
      0009B4 09                    2506 	.db	00108$>>8
      0009B5 09                    2507 	.db	00109$>>8
      0009B6 09                    2508 	.db	00110$>>8
      0009B7 0A                    2509 	.db	00131$>>8
      0009B8 09                    2510 	.db	00111$>>8
      0009B9 09                    2511 	.db	00112$>>8
      0009BA 0A                    2512 	.db	00113$>>8
      0009BB 0A                    2513 	.db	00131$>>8
      0009BC 0A                    2514 	.db	00114$>>8
      0009BD 0A                    2515 	.db	00115$>>8
      0009BE 0A                    2516 	.db	00116$>>8
                                   2517 ;	main.c:399: case 1:
      0009BF                       2518 00107$:
                                   2519 ;	main.c:400: input_handler(0, 1);
      0009BF 75 4F 01         [24] 2520 	mov	_input_handler_PARM_2,#0x01
      0009C2 75 82 00         [24] 2521 	mov	dpl,#0x00
      0009C5 12 04 0F         [24] 2522 	lcall	_input_handler
                                   2523 ;	main.c:401: break;
      0009C8 02 0A DC         [24] 2524 	ljmp	00131$
                                   2525 ;	main.c:402: case 5:
      0009CB                       2526 00108$:
                                   2527 ;	main.c:403: input_handler(1, 1);
      0009CB 75 4F 01         [24] 2528 	mov	_input_handler_PARM_2,#0x01
      0009CE 75 82 01         [24] 2529 	mov	dpl,#0x01
      0009D1 12 04 0F         [24] 2530 	lcall	_input_handler
                                   2531 ;	main.c:404: break;
      0009D4 02 0A DC         [24] 2532 	ljmp	00131$
                                   2533 ;	main.c:405: case 6:
      0009D7                       2534 00109$:
                                   2535 ;	main.c:406: input_handler(2, 1);
      0009D7 75 4F 01         [24] 2536 	mov	_input_handler_PARM_2,#0x01
      0009DA 75 82 02         [24] 2537 	mov	dpl,#0x02
      0009DD 12 04 0F         [24] 2538 	lcall	_input_handler
                                   2539 ;	main.c:407: break;
      0009E0 02 0A DC         [24] 2540 	ljmp	00131$
                                   2541 ;	main.c:408: case 7:
      0009E3                       2542 00110$:
                                   2543 ;	main.c:409: input_handler(3, 1);
      0009E3 75 4F 01         [24] 2544 	mov	_input_handler_PARM_2,#0x01
      0009E6 75 82 03         [24] 2545 	mov	dpl,#0x03
      0009E9 12 04 0F         [24] 2546 	lcall	_input_handler
                                   2547 ;	main.c:410: break;
      0009EC 02 0A DC         [24] 2548 	ljmp	00131$
                                   2549 ;	main.c:411: case 9:
      0009EF                       2550 00111$:
                                   2551 ;	main.c:412: input_handler(4, 1);
      0009EF 75 4F 01         [24] 2552 	mov	_input_handler_PARM_2,#0x01
      0009F2 75 82 04         [24] 2553 	mov	dpl,#0x04
      0009F5 12 04 0F         [24] 2554 	lcall	_input_handler
                                   2555 ;	main.c:413: break;
      0009F8 02 0A DC         [24] 2556 	ljmp	00131$
                                   2557 ;	main.c:414: case 10:
      0009FB                       2558 00112$:
                                   2559 ;	main.c:415: input_handler(5, 1);
      0009FB 75 4F 01         [24] 2560 	mov	_input_handler_PARM_2,#0x01
      0009FE 75 82 05         [24] 2561 	mov	dpl,#0x05
      000A01 12 04 0F         [24] 2562 	lcall	_input_handler
                                   2563 ;	main.c:416: break;
      000A04 02 0A DC         [24] 2564 	ljmp	00131$
                                   2565 ;	main.c:417: case 11:
      000A07                       2566 00113$:
                                   2567 ;	main.c:418: input_handler(6, 1);
      000A07 75 4F 01         [24] 2568 	mov	_input_handler_PARM_2,#0x01
      000A0A 75 82 06         [24] 2569 	mov	dpl,#0x06
      000A0D 12 04 0F         [24] 2570 	lcall	_input_handler
                                   2571 ;	main.c:419: break;
      000A10 02 0A DC         [24] 2572 	ljmp	00131$
                                   2573 ;	main.c:420: case 13:
      000A13                       2574 00114$:
                                   2575 ;	main.c:421: input_handler(7, 1);
      000A13 75 4F 01         [24] 2576 	mov	_input_handler_PARM_2,#0x01
      000A16 75 82 07         [24] 2577 	mov	dpl,#0x07
      000A19 12 04 0F         [24] 2578 	lcall	_input_handler
                                   2579 ;	main.c:422: break;
      000A1C 02 0A DC         [24] 2580 	ljmp	00131$
                                   2581 ;	main.c:423: case 14:
      000A1F                       2582 00115$:
                                   2583 ;	main.c:424: input_handler(8, 1);
      000A1F 75 4F 01         [24] 2584 	mov	_input_handler_PARM_2,#0x01
      000A22 75 82 08         [24] 2585 	mov	dpl,#0x08
      000A25 12 04 0F         [24] 2586 	lcall	_input_handler
                                   2587 ;	main.c:425: break;
      000A28 02 0A DC         [24] 2588 	ljmp	00131$
                                   2589 ;	main.c:426: case 15:
      000A2B                       2590 00116$:
                                   2591 ;	main.c:427: input_handler(9, 1);
      000A2B 75 4F 01         [24] 2592 	mov	_input_handler_PARM_2,#0x01
      000A2E 75 82 09         [24] 2593 	mov	dpl,#0x09
      000A31 12 04 0F         [24] 2594 	lcall	_input_handler
                                   2595 ;	main.c:429: }
      000A34 02 0A DC         [24] 2596 	ljmp	00131$
      000A37                       2597 00130$:
                                   2598 ;	main.c:433: switch (key_pressed)
      000A37 E5 64            [12] 2599 	mov	a,_key_pressed
      000A39 24 F0            [12] 2600 	add	a,#0xff - 0x0f
      000A3B 50 03            [24] 2601 	jnc	00182$
      000A3D 02 0A DC         [24] 2602 	ljmp	00131$
      000A40                       2603 00182$:
      000A40 E5 64            [12] 2604 	mov	a,_key_pressed
      000A42 24 0B            [12] 2605 	add	a,#(00183$-3-.)
      000A44 83               [24] 2606 	movc	a,@a+pc
      000A45 F5 82            [12] 2607 	mov	dpl,a
      000A47 E5 64            [12] 2608 	mov	a,_key_pressed
      000A49 24 14            [12] 2609 	add	a,#(00184$-3-.)
      000A4B 83               [24] 2610 	movc	a,@a+pc
      000A4C F5 83            [12] 2611 	mov	dph,a
      000A4E E4               [12] 2612 	clr	a
      000A4F 73               [24] 2613 	jmp	@a+dptr
      000A50                       2614 00183$:
      000A50 DC                    2615 	.db	00131$
      000A51 70                    2616 	.db	00118$
      000A52 DC                    2617 	.db	00131$
      000A53 DC                    2618 	.db	00131$
      000A54 DC                    2619 	.db	00131$
      000A55 7B                    2620 	.db	00119$
      000A56 86                    2621 	.db	00120$
      000A57 91                    2622 	.db	00121$
      000A58 DC                    2623 	.db	00131$
      000A59 9C                    2624 	.db	00122$
      000A5A A7                    2625 	.db	00123$
      000A5B B2                    2626 	.db	00124$
      000A5C DC                    2627 	.db	00131$
      000A5D BD                    2628 	.db	00125$
      000A5E C8                    2629 	.db	00126$
      000A5F D3                    2630 	.db	00127$
      000A60                       2631 00184$:
      000A60 0A                    2632 	.db	00131$>>8
      000A61 0A                    2633 	.db	00118$>>8
      000A62 0A                    2634 	.db	00131$>>8
      000A63 0A                    2635 	.db	00131$>>8
      000A64 0A                    2636 	.db	00131$>>8
      000A65 0A                    2637 	.db	00119$>>8
      000A66 0A                    2638 	.db	00120$>>8
      000A67 0A                    2639 	.db	00121$>>8
      000A68 0A                    2640 	.db	00131$>>8
      000A69 0A                    2641 	.db	00122$>>8
      000A6A 0A                    2642 	.db	00123$>>8
      000A6B 0A                    2643 	.db	00124$>>8
      000A6C 0A                    2644 	.db	00131$>>8
      000A6D 0A                    2645 	.db	00125$>>8
      000A6E 0A                    2646 	.db	00126$>>8
      000A6F 0A                    2647 	.db	00127$>>8
                                   2648 ;	main.c:435: case 1:
      000A70                       2649 00118$:
                                   2650 ;	main.c:436: input_handler(0, 0);
      000A70 75 4F 00         [24] 2651 	mov	_input_handler_PARM_2,#0x00
      000A73 75 82 00         [24] 2652 	mov	dpl,#0x00
      000A76 12 04 0F         [24] 2653 	lcall	_input_handler
                                   2654 ;	main.c:437: break;
                                   2655 ;	main.c:438: case 5:
      000A79 80 61            [24] 2656 	sjmp	00131$
      000A7B                       2657 00119$:
                                   2658 ;	main.c:439: input_handler(1, 0);
      000A7B 75 4F 00         [24] 2659 	mov	_input_handler_PARM_2,#0x00
      000A7E 75 82 01         [24] 2660 	mov	dpl,#0x01
      000A81 12 04 0F         [24] 2661 	lcall	_input_handler
                                   2662 ;	main.c:440: break;
                                   2663 ;	main.c:441: case 6:
      000A84 80 56            [24] 2664 	sjmp	00131$
      000A86                       2665 00120$:
                                   2666 ;	main.c:442: input_handler(2, 0);
      000A86 75 4F 00         [24] 2667 	mov	_input_handler_PARM_2,#0x00
      000A89 75 82 02         [24] 2668 	mov	dpl,#0x02
      000A8C 12 04 0F         [24] 2669 	lcall	_input_handler
                                   2670 ;	main.c:443: break;
                                   2671 ;	main.c:444: case 7:
      000A8F 80 4B            [24] 2672 	sjmp	00131$
      000A91                       2673 00121$:
                                   2674 ;	main.c:445: input_handler(3, 0);
      000A91 75 4F 00         [24] 2675 	mov	_input_handler_PARM_2,#0x00
      000A94 75 82 03         [24] 2676 	mov	dpl,#0x03
      000A97 12 04 0F         [24] 2677 	lcall	_input_handler
                                   2678 ;	main.c:446: break;
                                   2679 ;	main.c:447: case 9:
      000A9A 80 40            [24] 2680 	sjmp	00131$
      000A9C                       2681 00122$:
                                   2682 ;	main.c:448: input_handler(4, 0);
      000A9C 75 4F 00         [24] 2683 	mov	_input_handler_PARM_2,#0x00
      000A9F 75 82 04         [24] 2684 	mov	dpl,#0x04
      000AA2 12 04 0F         [24] 2685 	lcall	_input_handler
                                   2686 ;	main.c:449: break;
                                   2687 ;	main.c:450: case 10:
      000AA5 80 35            [24] 2688 	sjmp	00131$
      000AA7                       2689 00123$:
                                   2690 ;	main.c:451: input_handler(5, 0);
      000AA7 75 4F 00         [24] 2691 	mov	_input_handler_PARM_2,#0x00
      000AAA 75 82 05         [24] 2692 	mov	dpl,#0x05
      000AAD 12 04 0F         [24] 2693 	lcall	_input_handler
                                   2694 ;	main.c:452: break;
                                   2695 ;	main.c:453: case 11:
      000AB0 80 2A            [24] 2696 	sjmp	00131$
      000AB2                       2697 00124$:
                                   2698 ;	main.c:454: input_handler(6, 0);
      000AB2 75 4F 00         [24] 2699 	mov	_input_handler_PARM_2,#0x00
      000AB5 75 82 06         [24] 2700 	mov	dpl,#0x06
      000AB8 12 04 0F         [24] 2701 	lcall	_input_handler
                                   2702 ;	main.c:455: break;
                                   2703 ;	main.c:456: case 13:
      000ABB 80 1F            [24] 2704 	sjmp	00131$
      000ABD                       2705 00125$:
                                   2706 ;	main.c:457: input_handler(7, 0);
      000ABD 75 4F 00         [24] 2707 	mov	_input_handler_PARM_2,#0x00
      000AC0 75 82 07         [24] 2708 	mov	dpl,#0x07
      000AC3 12 04 0F         [24] 2709 	lcall	_input_handler
                                   2710 ;	main.c:458: break;
                                   2711 ;	main.c:459: case 14:
      000AC6 80 14            [24] 2712 	sjmp	00131$
      000AC8                       2713 00126$:
                                   2714 ;	main.c:460: input_handler(8, 0);
      000AC8 75 4F 00         [24] 2715 	mov	_input_handler_PARM_2,#0x00
      000ACB 75 82 08         [24] 2716 	mov	dpl,#0x08
      000ACE 12 04 0F         [24] 2717 	lcall	_input_handler
                                   2718 ;	main.c:461: break;
                                   2719 ;	main.c:462: case 15:
      000AD1 80 09            [24] 2720 	sjmp	00131$
      000AD3                       2721 00127$:
                                   2722 ;	main.c:463: input_handler(9, 0);
      000AD3 75 4F 00         [24] 2723 	mov	_input_handler_PARM_2,#0x00
      000AD6 75 82 09         [24] 2724 	mov	dpl,#0x09
      000AD9 12 04 0F         [24] 2725 	lcall	_input_handler
                                   2726 ;	main.c:465: }
      000ADC                       2727 00131$:
                                   2728 ;	main.c:467: last_time_key_pressed = time_counter;
      000ADC 85 2F 5F         [24] 2729 	mov	_last_time_key_pressed,_time_counter
      000ADF 85 30 60         [24] 2730 	mov	(_last_time_key_pressed + 1),(_time_counter + 1)
      000AE2 85 31 61         [24] 2731 	mov	(_last_time_key_pressed + 2),(_time_counter + 2)
      000AE5 85 32 62         [24] 2732 	mov	(_last_time_key_pressed + 3),(_time_counter + 3)
                                   2733 ;	main.c:468: prev_key_pressed = key_pressed;
      000AE8 85 64 63         [24] 2734 	mov	_prev_key_pressed,_key_pressed
                                   2735 ;	main.c:469: }
      000AEB 22               [24] 2736 	ret
                                   2737 ;------------------------------------------------------------
                                   2738 ;Allocation info for local variables in function 'ex1_interrupt'
                                   2739 ;------------------------------------------------------------
                                   2740 ;	main.c:470: void ex1_interrupt(void) __interrupt(IE1_VECTOR)
                                   2741 ;	-----------------------------------------
                                   2742 ;	 function ex1_interrupt
                                   2743 ;	-----------------------------------------
      000AEC                       2744 _ex1_interrupt:
      000AEC C0 21            [24] 2745 	push	bits
      000AEE C0 E0            [24] 2746 	push	acc
      000AF0 C0 F0            [24] 2747 	push	b
      000AF2 C0 82            [24] 2748 	push	dpl
      000AF4 C0 83            [24] 2749 	push	dph
      000AF6 C0 07            [24] 2750 	push	(0+7)
      000AF8 C0 06            [24] 2751 	push	(0+6)
      000AFA C0 05            [24] 2752 	push	(0+5)
      000AFC C0 04            [24] 2753 	push	(0+4)
      000AFE C0 03            [24] 2754 	push	(0+3)
      000B00 C0 02            [24] 2755 	push	(0+2)
      000B02 C0 01            [24] 2756 	push	(0+1)
      000B04 C0 00            [24] 2757 	push	(0+0)
      000B06 C0 D0            [24] 2758 	push	psw
      000B08 75 D0 00         [24] 2759 	mov	psw,#0x00
                                   2760 ;	main.c:472: fan_on();
      000B0B 12 03 72         [24] 2761 	lcall	_fan_on
                                   2762 ;	main.c:473: }
      000B0E D0 D0            [24] 2763 	pop	psw
      000B10 D0 00            [24] 2764 	pop	(0+0)
      000B12 D0 01            [24] 2765 	pop	(0+1)
      000B14 D0 02            [24] 2766 	pop	(0+2)
      000B16 D0 03            [24] 2767 	pop	(0+3)
      000B18 D0 04            [24] 2768 	pop	(0+4)
      000B1A D0 05            [24] 2769 	pop	(0+5)
      000B1C D0 06            [24] 2770 	pop	(0+6)
      000B1E D0 07            [24] 2771 	pop	(0+7)
      000B20 D0 83            [24] 2772 	pop	dph
      000B22 D0 82            [24] 2773 	pop	dpl
      000B24 D0 F0            [24] 2774 	pop	b
      000B26 D0 E0            [24] 2775 	pop	acc
      000B28 D0 21            [24] 2776 	pop	bits
      000B2A 32               [24] 2777 	reti
                                   2778 ;------------------------------------------------------------
                                   2779 ;Allocation info for local variables in function 'main'
                                   2780 ;------------------------------------------------------------
                                   2781 ;__1966080004              Allocated to registers r7 
                                   2782 ;------------------------------------------------------------
                                   2783 ;	main.c:474: int main(void)
                                   2784 ;	-----------------------------------------
                                   2785 ;	 function main
                                   2786 ;	-----------------------------------------
      000B2B                       2787 _main:
                                   2788 ;	main.c:477: EX1 = 1;
                                   2789 ;	assignBit
      000B2B D2 AA            [12] 2790 	setb	_EX1
                                   2791 ;	main.c:478: IT1 = 1;
                                   2792 ;	assignBit
      000B2D D2 8A            [12] 2793 	setb	_IT1
                                   2794 ;	main.c:480: init_ds18b20();
      000B2F 12 02 D1         [24] 2795 	lcall	_init_ds18b20
                                   2796 ;	main.c:483: IT0 = 1; // Falling edge trigger
                                   2797 ;	assignBit
      000B32 D2 88            [12] 2798 	setb	_IT0
                                   2799 ;	main.c:484: EX0 = 1; // Enable INT0 interrupt
                                   2800 ;	assignBit
      000B34 D2 A8            [12] 2801 	setb	_EX0
                                   2802 ;	main.c:485: EA = 1;  // Enable global interrupt flag
                                   2803 ;	assignBit
      000B36 D2 AF            [12] 2804 	setb	_EA
                                   2805 ;	main.c:487: TMOD = 0x12; // Timer 0 mode 1 (16-bit timer
      000B38 75 89 12         [24] 2806 	mov	_TMOD,#0x12
                                   2807 ;	main.c:489: TH0 = 0xA4;
      000B3B 75 8C A4         [24] 2808 	mov	_TH0,#0xa4
                                   2809 ;	main.c:490: TL0 = TH0;
      000B3E 85 8C 8A         [24] 2810 	mov	_TL0,_TH0
                                   2811 ;	main.c:492: ET0 = 1; // Enable timer 0 interrupt'
                                   2812 ;	assignBit
      000B41 D2 A9            [12] 2813 	setb	_ET0
                                   2814 ;	main.c:493: TR0 = 1; // Start timer 0
                                   2815 ;	assignBit
      000B43 D2 8C            [12] 2816 	setb	_TR0
                                   2817 ;	main.c:495: TF0 = 0;
                                   2818 ;	assignBit
      000B45 C2 8D            [12] 2819 	clr	_TF0
                                   2820 ;	main.c:496: TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
      000B47 75 8D 4B         [24] 2821 	mov	_TH1,#0x4b
                                   2822 ;	main.c:497: TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
      000B4A 75 8B FF         [24] 2823 	mov	_TL1,#0xff
                                   2824 ;	main.c:500: ET1 = 1;
                                   2825 ;	assignBit
      000B4D D2 AB            [12] 2826 	setb	_ET1
                                   2827 ;	main.c:502: P2 = 0;
      000B4F 75 A0 00         [24] 2828 	mov	_P2,#0x00
                                   2829 ;	main.c:503: P0 = 0;
      000B52 75 80 00         [24] 2830 	mov	_P0,#0x00
                                   2831 ;	main.c:505: lcd_init();
      000B55 12 01 9F         [24] 2832 	lcall	_lcd_init
                                   2833 ;	main.c:506: lcd_first_line();
      000B58 75 82 80         [24] 2834 	mov	dpl,#0x80
      000B5B 12 01 7D         [24] 2835 	lcall	_lcd_send_command
                                   2836 ;	main.c:508: while (1)
      000B5E                       2837 00107$:
                                   2838 ;	main.c:510: fan_loop();
      000B5E 12 03 84         [24] 2839 	lcall	_fan_loop
                                   2840 ;	main.c:511: display_number(check);
      000B61 85 24 82         [24] 2841 	mov	dpl,_check
      000B64 85 25 83         [24] 2842 	mov	dph,(_check + 1)
      000B67 85 26 F0         [24] 2843 	mov	b,(_check + 2)
      000B6A E5 27            [12] 2844 	mov	a,(_check + 3)
      000B6C 12 00 CB         [24] 2845 	lcall	_display_number
                                   2846 ;	keymatrix.h:12: P1 = 0xff;
      000B6F 75 90 FF         [24] 2847 	mov	_P1,#0xff
                                   2848 ;	keymatrix.h:13: P1_3 = 0;
                                   2849 ;	assignBit
      000B72 C2 93            [12] 2850 	clr	_P1_3
                                   2851 ;	main.c:14: #define fan_pin P2_0
      000B74 20 97 08         [24] 2852 	jb	_P1_7,00113$
      000B77                       2853 00109$:
      000B77 30 97 FD         [24] 2854 	jnb	_P1_7,00109$
      000B7A 7F 01            [12] 2855 	mov	r7,#0x01
      000B7C 02 0C 2A         [24] 2856 	ljmp	00189$
      000B7F                       2857 00113$:
                                   2858 ;	main.c:15: 
      000B7F 20 96 08         [24] 2859 	jb	_P1_6,00118$
      000B82                       2860 00114$:
      000B82 30 96 FD         [24] 2861 	jnb	_P1_6,00114$
      000B85 7F 05            [12] 2862 	mov	r7,#0x05
      000B87 02 0C 2A         [24] 2863 	ljmp	00189$
      000B8A                       2864 00118$:
                                   2865 ;	main.c:16: char fan_state;
      000B8A 20 95 08         [24] 2866 	jb	_P1_5,00123$
      000B8D                       2867 00119$:
      000B8D 30 95 FD         [24] 2868 	jnb	_P1_5,00119$
      000B90 7F 09            [12] 2869 	mov	r7,#0x09
      000B92 02 0C 2A         [24] 2870 	ljmp	00189$
      000B95                       2871 00123$:
                                   2872 ;	main.c:17: 
      000B95 20 94 08         [24] 2873 	jb	_P1_4,00128$
      000B98                       2874 00124$:
      000B98 30 94 FD         [24] 2875 	jnb	_P1_4,00124$
      000B9B 7F 0D            [12] 2876 	mov	r7,#0x0d
      000B9D 02 0C 2A         [24] 2877 	ljmp	00189$
      000BA0                       2878 00128$:
                                   2879 ;	keymatrix.h:19: P1 = 0xff;
      000BA0 75 90 FF         [24] 2880 	mov	_P1,#0xff
                                   2881 ;	keymatrix.h:20: P1_2 = 0;
                                   2882 ;	assignBit
      000BA3 C2 92            [12] 2883 	clr	_P1_2
                                   2884 ;	main.c:21: for (int i = 0; i < time * 1e3 / 200; i++)
      000BA5 20 97 08         [24] 2885 	jb	_P1_7,00133$
      000BA8                       2886 00129$:
      000BA8 30 97 FD         [24] 2887 	jnb	_P1_7,00129$
      000BAB 7F 02            [12] 2888 	mov	r7,#0x02
      000BAD 02 0C 2A         [24] 2889 	ljmp	00189$
      000BB0                       2890 00133$:
                                   2891 ;	main.c:22: {
      000BB0 20 96 07         [24] 2892 	jb	_P1_6,00138$
      000BB3                       2893 00134$:
      000BB3 30 96 FD         [24] 2894 	jnb	_P1_6,00134$
      000BB6 7F 06            [12] 2895 	mov	r7,#0x06
      000BB8 80 70            [24] 2896 	sjmp	00189$
      000BBA                       2897 00138$:
                                   2898 ;	main.c:23: buzzer_pin = 1;
      000BBA 20 95 07         [24] 2899 	jb	_P1_5,00143$
      000BBD                       2900 00139$:
      000BBD 30 95 FD         [24] 2901 	jnb	_P1_5,00139$
      000BC0 7F 0A            [12] 2902 	mov	r7,#0x0a
      000BC2 80 66            [24] 2903 	sjmp	00189$
      000BC4                       2904 00143$:
                                   2905 ;	main.c:24: for (int j = 0; j < 90; j++)
      000BC4 20 94 07         [24] 2906 	jb	_P1_4,00148$
      000BC7                       2907 00144$:
      000BC7 30 94 FD         [24] 2908 	jnb	_P1_4,00144$
      000BCA 7F 0E            [12] 2909 	mov	r7,#0x0e
      000BCC 80 5C            [24] 2910 	sjmp	00189$
      000BCE                       2911 00148$:
                                   2912 ;	keymatrix.h:26: P1 = 0xff;
      000BCE 75 90 FF         [24] 2913 	mov	_P1,#0xff
                                   2914 ;	keymatrix.h:27: P1_1 = 0;
                                   2915 ;	assignBit
      000BD1 C2 91            [12] 2916 	clr	_P1_1
                                   2917 ;	main.c:28: ;
      000BD3 20 97 07         [24] 2918 	jb	_P1_7,00153$
      000BD6                       2919 00149$:
      000BD6 30 97 FD         [24] 2920 	jnb	_P1_7,00149$
      000BD9 7F 03            [12] 2921 	mov	r7,#0x03
      000BDB 80 4D            [24] 2922 	sjmp	00189$
      000BDD                       2923 00153$:
                                   2924 ;	main.c:29: }
      000BDD 20 96 07         [24] 2925 	jb	_P1_6,00158$
      000BE0                       2926 00154$:
      000BE0 30 96 FD         [24] 2927 	jnb	_P1_6,00154$
      000BE3 7F 07            [12] 2928 	mov	r7,#0x07
      000BE5 80 43            [24] 2929 	sjmp	00189$
      000BE7                       2930 00158$:
                                   2931 ;	main.c:30: }
      000BE7 20 95 07         [24] 2932 	jb	_P1_5,00163$
      000BEA                       2933 00159$:
      000BEA 30 95 FD         [24] 2934 	jnb	_P1_5,00159$
      000BED 7F 0B            [12] 2935 	mov	r7,#0x0b
      000BEF 80 39            [24] 2936 	sjmp	00189$
      000BF1                       2937 00163$:
                                   2938 ;	main.c:31: void fan_on(void)
      000BF1 20 94 07         [24] 2939 	jb	_P1_4,00168$
      000BF4                       2940 00164$:
      000BF4 30 94 FD         [24] 2941 	jnb	_P1_4,00164$
      000BF7 7F 0F            [12] 2942 	mov	r7,#0x0f
      000BF9 80 2F            [24] 2943 	sjmp	00189$
      000BFB                       2944 00168$:
                                   2945 ;	keymatrix.h:33: P1 = 0xff;
      000BFB 75 90 FF         [24] 2946 	mov	_P1,#0xff
                                   2947 ;	keymatrix.h:34: P1_0 = 0;
                                   2948 ;	assignBit
      000BFE C2 90            [12] 2949 	clr	_P1_0
                                   2950 ;	main.c:35: fan_pin = 1;
      000C00 20 97 07         [24] 2951 	jb	_P1_7,00173$
      000C03                       2952 00169$:
      000C03 30 97 FD         [24] 2953 	jnb	_P1_7,00169$
      000C06 7F 04            [12] 2954 	mov	r7,#0x04
      000C08 80 20            [24] 2955 	sjmp	00189$
      000C0A                       2956 00173$:
                                   2957 ;	main.c:36: }
      000C0A 20 96 07         [24] 2958 	jb	_P1_6,00178$
      000C0D                       2959 00174$:
      000C0D 30 96 FD         [24] 2960 	jnb	_P1_6,00174$
      000C10 7F 08            [12] 2961 	mov	r7,#0x08
      000C12 80 16            [24] 2962 	sjmp	00189$
      000C14                       2963 00178$:
                                   2964 ;	main.c:37: void fan_off(void)
      000C14 20 95 07         [24] 2965 	jb	_P1_5,00183$
      000C17                       2966 00179$:
      000C17 30 95 FD         [24] 2967 	jnb	_P1_5,00179$
      000C1A 7F 0C            [12] 2968 	mov	r7,#0x0c
      000C1C 80 0C            [24] 2969 	sjmp	00189$
      000C1E                       2970 00183$:
                                   2971 ;	main.c:38: {
      000C1E 20 94 07         [24] 2972 	jb	_P1_4,00188$
      000C21                       2973 00184$:
      000C21 30 94 FD         [24] 2974 	jnb	_P1_4,00184$
      000C24 7F 10            [12] 2975 	mov	r7,#0x10
      000C26 80 02            [24] 2976 	sjmp	00189$
      000C28                       2977 00188$:
                                   2978 ;	keymatrix.h:39: return 0;
      000C28 7F 00            [12] 2979 	mov	r7,#0x00
                                   2980 ;	main.c:512: key_pressed = get_pressed_key();
      000C2A                       2981 00189$:
                                   2982 ;	main.c:513: if (key_pressed)
      000C2A EF               [12] 2983 	mov	a,r7
      000C2B F5 64            [12] 2984 	mov	_key_pressed,a
      000C2D 60 03            [24] 2985 	jz	00103$
                                   2986 ;	main.c:515: exec_key_pressed();
      000C2F 12 09 1E         [24] 2987 	lcall	_exec_key_pressed
                                   2988 ;	main.c:517: while (unread_code_counter)
      000C32                       2989 00103$:
      000C32 E5 2E            [12] 2990 	mov	a,_unread_code_counter
      000C34 70 03            [24] 2991 	jnz	00369$
      000C36 02 0B 5E         [24] 2992 	ljmp	00107$
      000C39                       2993 00369$:
                                   2994 ;	main.c:520: exec_infrared_signal();
      000C39 12 05 BF         [24] 2995 	lcall	_exec_infrared_signal
                                   2996 ;	main.c:523: }
      000C3C 80 F4            [24] 2997 	sjmp	00103$
                                   2998 ;------------------------------------------------------------
                                   2999 ;Allocation info for local variables in function 'reset'
                                   3000 ;------------------------------------------------------------
                                   3001 ;	main.c:525: void reset(void)
                                   3002 ;	-----------------------------------------
                                   3003 ;	 function reset
                                   3004 ;	-----------------------------------------
      000C3E                       3005 _reset:
                                   3006 ;	main.c:527: do_something_1 = NULL;
      000C3E E4               [12] 3007 	clr	a
      000C3F F5 57            [12] 3008 	mov	_do_something_1,a
      000C41 F5 58            [12] 3009 	mov	(_do_something_1 + 1),a
                                   3010 ;	main.c:528: stop_timer_1();
      000C43 12 07 D9         [24] 3011 	lcall	_stop_timer_1
                                   3012 ;	main.c:529: check = 0;
      000C46 E4               [12] 3013 	clr	a
      000C47 F5 24            [12] 3014 	mov	_check,a
      000C49 F5 25            [12] 3015 	mov	(_check + 1),a
      000C4B F5 26            [12] 3016 	mov	(_check + 2),a
      000C4D F5 27            [12] 3017 	mov	(_check + 3),a
                                   3018 ;	main.c:530: while (command_index > 0)
      000C4F                       3019 00101$:
      000C4F E5 4D            [12] 3020 	mov	a,_command_index
      000C51 60 0B            [24] 3021 	jz	00103$
                                   3022 ;	main.c:532: command_index--;
      000C53 15 4D            [12] 3023 	dec	_command_index
                                   3024 ;	main.c:533: command[command_index] = 0;
      000C55 E5 4D            [12] 3025 	mov	a,_command_index
      000C57 24 3D            [12] 3026 	add	a,#_command
      000C59 F8               [12] 3027 	mov	r0,a
      000C5A 76 00            [12] 3028 	mov	@r0,#0x00
      000C5C 80 F1            [24] 3029 	sjmp	00101$
      000C5E                       3030 00103$:
                                   3031 ;	main.c:535: prev_num = 50;
      000C5E 75 4E 32         [24] 3032 	mov	_prev_num,#0x32
                                   3033 ;	main.c:536: lcd_init();
                                   3034 ;	main.c:537: }
      000C61 02 01 9F         [24] 3035 	ljmp	_lcd_init
                                   3036 ;------------------------------------------------------------
                                   3037 ;Allocation info for local variables in function 'cal_num'
                                   3038 ;------------------------------------------------------------
                                   3039 ;start                     Allocated to registers r5 r6 r7 
                                   3040 ;sloc0                     Allocated with name '_cal_num_sloc0_1_0'
                                   3041 ;------------------------------------------------------------
                                   3042 ;	main.c:539: void cal_num(const char *start)
                                   3043 ;	-----------------------------------------
                                   3044 ;	 function cal_num
                                   3045 ;	-----------------------------------------
      000C64                       3046 _cal_num:
      000C64 AD 82            [24] 3047 	mov	r5,dpl
      000C66 AE 83            [24] 3048 	mov	r6,dph
      000C68 AF F0            [24] 3049 	mov	r7,b
                                   3050 ;	main.c:541: check = 0;
      000C6A E4               [12] 3051 	clr	a
      000C6B F5 24            [12] 3052 	mov	_check,a
      000C6D F5 25            [12] 3053 	mov	(_check + 1),a
      000C6F F5 26            [12] 3054 	mov	(_check + 2),a
      000C71 F5 27            [12] 3055 	mov	(_check + 3),a
                                   3056 ;	main.c:542: if (start != NULL)
      000C73 ED               [12] 3057 	mov	a,r5
      000C74 4E               [12] 3058 	orl	a,r6
      000C75 70 01            [24] 3059 	jnz	00186$
      000C77 22               [24] 3060 	ret
      000C78                       3061 00186$:
                                   3062 ;	main.c:544: start++; // Di chuyển vị trí xuống sau khoảng trắng
      000C78 0D               [12] 3063 	inc	r5
      000C79 BD 00 01         [24] 3064 	cjne	r5,#0x00,00187$
      000C7C 0E               [12] 3065 	inc	r6
      000C7D                       3066 00187$:
                                   3067 ;	main.c:545: if ((interval_type & (1 << 3)))
      000C7D E5 2B            [12] 3068 	mov	a,_interval_type
      000C7F 30 E3 03         [24] 3069 	jnb	acc.3,00130$
                                   3070 ;	main.c:547: interval_type ^= (1 << 3);
      000C82 63 2B 08         [24] 3071 	xrl	_interval_type,#0x08
                                   3072 ;	main.c:549: while (*start && *start != '+' && *start != '-' && (*start > '9' || *start < '0'))
      000C85                       3073 00130$:
      000C85                       3074 00107$:
      000C85 8D 82            [24] 3075 	mov	dpl,r5
      000C87 8E 83            [24] 3076 	mov	dph,r6
      000C89 8F F0            [24] 3077 	mov	b,r7
      000C8B 12 13 D5         [24] 3078 	lcall	__gptrget
      000C8E FC               [12] 3079 	mov	r4,a
      000C8F 60 1B            [24] 3080 	jz	00136$
      000C91 BC 2B 02         [24] 3081 	cjne	r4,#0x2b,00190$
      000C94 80 16            [24] 3082 	sjmp	00136$
      000C96                       3083 00190$:
      000C96 BC 2D 02         [24] 3084 	cjne	r4,#0x2d,00191$
      000C99 80 11            [24] 3085 	sjmp	00136$
      000C9B                       3086 00191$:
      000C9B EC               [12] 3087 	mov	a,r4
      000C9C 24 C6            [12] 3088 	add	a,#0xff - 0x39
      000C9E 40 05            [24] 3089 	jc	00108$
      000CA0 BC 30 00         [24] 3090 	cjne	r4,#0x30,00193$
      000CA3                       3091 00193$:
      000CA3 50 07            [24] 3092 	jnc	00136$
      000CA5                       3093 00108$:
                                   3094 ;	main.c:550: ++start;
      000CA5 0D               [12] 3095 	inc	r5
      000CA6 BD 00 DC         [24] 3096 	cjne	r5,#0x00,00107$
      000CA9 0E               [12] 3097 	inc	r6
      000CAA 80 D9            [24] 3098 	sjmp	00107$
      000CAC                       3099 00136$:
      000CAC 8D 02            [24] 3100 	mov	ar2,r5
      000CAE 8E 03            [24] 3101 	mov	ar3,r6
      000CB0 8F 04            [24] 3102 	mov	ar4,r7
                                   3103 ;	main.c:551: if (*start == '-')
      000CB2 8D 82            [24] 3104 	mov	dpl,r5
      000CB4 8E 83            [24] 3105 	mov	dph,r6
      000CB6 8F F0            [24] 3106 	mov	b,r7
      000CB8 12 13 D5         [24] 3107 	lcall	__gptrget
      000CBB F9               [12] 3108 	mov	r1,a
      000CBC B9 2D 0E         [24] 3109 	cjne	r1,#0x2d,00113$
                                   3110 ;	main.c:553: interval_type |= (1 << 3);
      000CBF 43 2B 08         [24] 3111 	orl	_interval_type,#0x08
                                   3112 ;	main.c:554: ++start;
      000CC2 74 01            [12] 3113 	mov	a,#0x01
      000CC4 2D               [12] 3114 	add	a,r5
      000CC5 FA               [12] 3115 	mov	r2,a
      000CC6 E4               [12] 3116 	clr	a
      000CC7 3E               [12] 3117 	addc	a,r6
      000CC8 FB               [12] 3118 	mov	r3,a
      000CC9 8F 04            [24] 3119 	mov	ar4,r7
      000CCB 80 0C            [24] 3120 	sjmp	00134$
      000CCD                       3121 00113$:
                                   3122 ;	main.c:556: else if (*start == '+')
      000CCD B9 2B 09         [24] 3123 	cjne	r1,#0x2b,00134$
                                   3124 ;	main.c:558: ++start;
      000CD0 74 01            [12] 3125 	mov	a,#0x01
      000CD2 2D               [12] 3126 	add	a,r5
      000CD3 FA               [12] 3127 	mov	r2,a
      000CD4 E4               [12] 3128 	clr	a
      000CD5 3E               [12] 3129 	addc	a,r6
      000CD6 FB               [12] 3130 	mov	r3,a
      000CD7 8F 04            [24] 3131 	mov	ar4,r7
                                   3132 ;	main.c:560: while (*start)
      000CD9                       3133 00134$:
      000CD9 8A 05            [24] 3134 	mov	ar5,r2
      000CDB 8B 06            [24] 3135 	mov	ar6,r3
      000CDD 8C 07            [24] 3136 	mov	ar7,r4
      000CDF                       3137 00115$:
      000CDF 8D 82            [24] 3138 	mov	dpl,r5
      000CE1 8E 83            [24] 3139 	mov	dph,r6
      000CE3 8F F0            [24] 3140 	mov	b,r7
      000CE5 12 13 D5         [24] 3141 	lcall	__gptrget
      000CE8 FC               [12] 3142 	mov	r4,a
      000CE9 70 03            [24] 3143 	jnz	00200$
      000CEB 02 0D 7F         [24] 3144 	ljmp	00117$
      000CEE                       3145 00200$:
                                   3146 ;	main.c:562: check = (check << 3) + (check << 1) + ((*start) ^ '0');
      000CEE 85 26 0A         [24] 3147 	mov	(_cal_num_sloc0_1_0 + 2),(_check + 2)
      000CF1 E5 27            [12] 3148 	mov	a,(_check + 3)
      000CF3 C4               [12] 3149 	swap	a
      000CF4 03               [12] 3150 	rr	a
      000CF5 54 F8            [12] 3151 	anl	a,#0xf8
      000CF7 C5 0A            [12] 3152 	xch	a,(_cal_num_sloc0_1_0 + 2)
      000CF9 C4               [12] 3153 	swap	a
      000CFA 03               [12] 3154 	rr	a
      000CFB C5 0A            [12] 3155 	xch	a,(_cal_num_sloc0_1_0 + 2)
      000CFD 65 0A            [12] 3156 	xrl	a,(_cal_num_sloc0_1_0 + 2)
      000CFF C5 0A            [12] 3157 	xch	a,(_cal_num_sloc0_1_0 + 2)
      000D01 54 F8            [12] 3158 	anl	a,#0xf8
      000D03 C5 0A            [12] 3159 	xch	a,(_cal_num_sloc0_1_0 + 2)
      000D05 65 0A            [12] 3160 	xrl	a,(_cal_num_sloc0_1_0 + 2)
      000D07 F5 0B            [12] 3161 	mov	(_cal_num_sloc0_1_0 + 3),a
      000D09 E5 25            [12] 3162 	mov	a,(_check + 1)
      000D0B C4               [12] 3163 	swap	a
      000D0C 03               [12] 3164 	rr	a
      000D0D 54 07            [12] 3165 	anl	a,#0x07
      000D0F 45 0A            [12] 3166 	orl	a,(_cal_num_sloc0_1_0 + 2)
      000D11 F5 0A            [12] 3167 	mov	(_cal_num_sloc0_1_0 + 2),a
      000D13 85 24 08         [24] 3168 	mov	_cal_num_sloc0_1_0,_check
      000D16 E5 25            [12] 3169 	mov	a,(_check + 1)
      000D18 C4               [12] 3170 	swap	a
      000D19 03               [12] 3171 	rr	a
      000D1A 54 F8            [12] 3172 	anl	a,#0xf8
      000D1C C5 08            [12] 3173 	xch	a,_cal_num_sloc0_1_0
      000D1E C4               [12] 3174 	swap	a
      000D1F 03               [12] 3175 	rr	a
      000D20 C5 08            [12] 3176 	xch	a,_cal_num_sloc0_1_0
      000D22 65 08            [12] 3177 	xrl	a,_cal_num_sloc0_1_0
      000D24 C5 08            [12] 3178 	xch	a,_cal_num_sloc0_1_0
      000D26 54 F8            [12] 3179 	anl	a,#0xf8
      000D28 C5 08            [12] 3180 	xch	a,_cal_num_sloc0_1_0
      000D2A 65 08            [12] 3181 	xrl	a,_cal_num_sloc0_1_0
      000D2C F5 09            [12] 3182 	mov	(_cal_num_sloc0_1_0 + 1),a
      000D2E E5 24            [12] 3183 	mov	a,_check
      000D30 25 24            [12] 3184 	add	a,_check
      000D32 F8               [12] 3185 	mov	r0,a
      000D33 E5 25            [12] 3186 	mov	a,(_check + 1)
      000D35 33               [12] 3187 	rlc	a
      000D36 F9               [12] 3188 	mov	r1,a
      000D37 E5 26            [12] 3189 	mov	a,(_check + 2)
      000D39 33               [12] 3190 	rlc	a
      000D3A FA               [12] 3191 	mov	r2,a
      000D3B E5 27            [12] 3192 	mov	a,(_check + 3)
      000D3D 33               [12] 3193 	rlc	a
      000D3E FB               [12] 3194 	mov	r3,a
      000D3F E8               [12] 3195 	mov	a,r0
      000D40 25 08            [12] 3196 	add	a,_cal_num_sloc0_1_0
      000D42 F5 08            [12] 3197 	mov	_cal_num_sloc0_1_0,a
      000D44 E9               [12] 3198 	mov	a,r1
      000D45 35 09            [12] 3199 	addc	a,(_cal_num_sloc0_1_0 + 1)
      000D47 F5 09            [12] 3200 	mov	(_cal_num_sloc0_1_0 + 1),a
      000D49 EA               [12] 3201 	mov	a,r2
      000D4A 35 0A            [12] 3202 	addc	a,(_cal_num_sloc0_1_0 + 2)
      000D4C F5 0A            [12] 3203 	mov	(_cal_num_sloc0_1_0 + 2),a
      000D4E EB               [12] 3204 	mov	a,r3
      000D4F 35 0B            [12] 3205 	addc	a,(_cal_num_sloc0_1_0 + 3)
      000D51 F5 0B            [12] 3206 	mov	(_cal_num_sloc0_1_0 + 3),a
      000D53 63 04 30         [24] 3207 	xrl	ar4,#0x30
      000D56 8C 03            [24] 3208 	mov	ar3,r4
      000D58 7C 00            [12] 3209 	mov	r4,#0x00
      000D5A 8B 01            [24] 3210 	mov	ar1,r3
      000D5C EC               [12] 3211 	mov	a,r4
      000D5D FA               [12] 3212 	mov	r2,a
      000D5E 33               [12] 3213 	rlc	a
      000D5F 95 E0            [12] 3214 	subb	a,acc
      000D61 FB               [12] 3215 	mov	r3,a
      000D62 FC               [12] 3216 	mov	r4,a
      000D63 E9               [12] 3217 	mov	a,r1
      000D64 25 08            [12] 3218 	add	a,_cal_num_sloc0_1_0
      000D66 F5 24            [12] 3219 	mov	_check,a
      000D68 EA               [12] 3220 	mov	a,r2
      000D69 35 09            [12] 3221 	addc	a,(_cal_num_sloc0_1_0 + 1)
      000D6B F5 25            [12] 3222 	mov	(_check + 1),a
      000D6D EB               [12] 3223 	mov	a,r3
      000D6E 35 0A            [12] 3224 	addc	a,(_cal_num_sloc0_1_0 + 2)
      000D70 F5 26            [12] 3225 	mov	(_check + 2),a
      000D72 EC               [12] 3226 	mov	a,r4
      000D73 35 0B            [12] 3227 	addc	a,(_cal_num_sloc0_1_0 + 3)
      000D75 F5 27            [12] 3228 	mov	(_check + 3),a
                                   3229 ;	main.c:563: ++start;
      000D77 0D               [12] 3230 	inc	r5
      000D78 BD 00 01         [24] 3231 	cjne	r5,#0x00,00201$
      000D7B 0E               [12] 3232 	inc	r6
      000D7C                       3233 00201$:
      000D7C 02 0C DF         [24] 3234 	ljmp	00115$
      000D7F                       3235 00117$:
                                   3236 ;	main.c:565: if ((interval_type & (1 << 3)))
      000D7F E5 2B            [12] 3237 	mov	a,_interval_type
      000D81 30 E3 15         [24] 3238 	jnb	acc.3,00122$
                                   3239 ;	main.c:567: check = -check;
      000D84 C3               [12] 3240 	clr	c
      000D85 E4               [12] 3241 	clr	a
      000D86 95 24            [12] 3242 	subb	a,_check
      000D88 F5 24            [12] 3243 	mov	_check,a
      000D8A E4               [12] 3244 	clr	a
      000D8B 95 25            [12] 3245 	subb	a,(_check + 1)
      000D8D F5 25            [12] 3246 	mov	(_check + 1),a
      000D8F E4               [12] 3247 	clr	a
      000D90 95 26            [12] 3248 	subb	a,(_check + 2)
      000D92 F5 26            [12] 3249 	mov	(_check + 2),a
      000D94 E4               [12] 3250 	clr	a
      000D95 95 27            [12] 3251 	subb	a,(_check + 3)
      000D97 F5 27            [12] 3252 	mov	(_check + 3),a
      000D99                       3253 00122$:
                                   3254 ;	main.c:570: }
      000D99 22               [24] 3255 	ret
                                   3256 ;------------------------------------------------------------
                                   3257 ;Allocation info for local variables in function 'exec'
                                   3258 ;------------------------------------------------------------
                                   3259 ;start                     Allocated to registers r5 r6 r7 
                                   3260 ;start                     Allocated to registers r5 r6 r7 
                                   3261 ;start                     Allocated to registers r5 r6 r7 
                                   3262 ;start                     Allocated to registers r5 r6 r7 
                                   3263 ;start                     Allocated to registers r5 r6 r7 
                                   3264 ;start                     Allocated to registers r5 r6 r7 
                                   3265 ;------------------------------------------------------------
                                   3266 ;	main.c:572: void exec(void)
                                   3267 ;	-----------------------------------------
                                   3268 ;	 function exec
                                   3269 ;	-----------------------------------------
      000D9A                       3270 _exec:
                                   3271 ;	main.c:574: if (strncmp(command, "buzzer", strlen("buzzer")) == 0)
      000D9A 90 14 C6         [24] 3272 	mov	dptr,#___str_5
      000D9D 75 F0 80         [24] 3273 	mov	b,#0x80
      000DA0 12 13 BD         [24] 3274 	lcall	_strlen
      000DA3 85 82 0B         [24] 3275 	mov	_strncmp_PARM_3,dpl
      000DA6 85 83 0C         [24] 3276 	mov	(_strncmp_PARM_3 + 1),dph
      000DA9 75 08 C6         [24] 3277 	mov	_strncmp_PARM_2,#___str_5
      000DAC 75 09 14         [24] 3278 	mov	(_strncmp_PARM_2 + 1),#(___str_5 >> 8)
      000DAF 75 0A 80         [24] 3279 	mov	(_strncmp_PARM_2 + 2),#0x80
      000DB2 90 00 3D         [24] 3280 	mov	dptr,#_command
      000DB5 75 F0 40         [24] 3281 	mov	b,#0x40
      000DB8 12 12 1B         [24] 3282 	lcall	_strncmp
      000DBB E5 82            [12] 3283 	mov	a,dpl
      000DBD 85 83 F0         [24] 3284 	mov	b,dph
      000DC0 45 F0            [12] 3285 	orl	a,b
      000DC2 70 05            [24] 3286 	jnz	00104$
                                   3287 ;	main.c:576: buzzer();
      000DC4 12 03 2B         [24] 3288 	lcall	_buzzer
      000DC7 80 2C            [24] 3289 	sjmp	00105$
      000DC9                       3290 00104$:
                                   3291 ;	main.c:578: else if (strncmp(command, "led off", strlen("led off")) == 0)
      000DC9 90 14 CD         [24] 3292 	mov	dptr,#___str_6
      000DCC 75 F0 80         [24] 3293 	mov	b,#0x80
      000DCF 12 13 BD         [24] 3294 	lcall	_strlen
      000DD2 85 82 0B         [24] 3295 	mov	_strncmp_PARM_3,dpl
      000DD5 85 83 0C         [24] 3296 	mov	(_strncmp_PARM_3 + 1),dph
      000DD8 75 08 CD         [24] 3297 	mov	_strncmp_PARM_2,#___str_6
      000DDB 75 09 14         [24] 3298 	mov	(_strncmp_PARM_2 + 1),#(___str_6 >> 8)
      000DDE 75 0A 80         [24] 3299 	mov	(_strncmp_PARM_2 + 2),#0x80
      000DE1 90 00 3D         [24] 3300 	mov	dptr,#_command
      000DE4 75 F0 40         [24] 3301 	mov	b,#0x40
      000DE7 12 12 1B         [24] 3302 	lcall	_strncmp
      000DEA E5 82            [12] 3303 	mov	a,dpl
      000DEC 85 83 F0         [24] 3304 	mov	b,dph
      000DEF 45 F0            [12] 3305 	orl	a,b
                                   3306 ;	main.c:580: led_turn_off();
      000DF1 70 02            [24] 3307 	jnz	00105$
      000DF3 F5 80            [12] 3308 	mov	_P0,a
      000DF5                       3309 00105$:
                                   3310 ;	main.c:582: if (strncmp(command, "clear", strlen("clear")) == 0)
      000DF5 90 14 D5         [24] 3311 	mov	dptr,#___str_7
      000DF8 75 F0 80         [24] 3312 	mov	b,#0x80
      000DFB 12 13 BD         [24] 3313 	lcall	_strlen
      000DFE 85 82 0B         [24] 3314 	mov	_strncmp_PARM_3,dpl
      000E01 85 83 0C         [24] 3315 	mov	(_strncmp_PARM_3 + 1),dph
      000E04 75 08 D5         [24] 3316 	mov	_strncmp_PARM_2,#___str_7
      000E07 75 09 14         [24] 3317 	mov	(_strncmp_PARM_2 + 1),#(___str_7 >> 8)
      000E0A 75 0A 80         [24] 3318 	mov	(_strncmp_PARM_2 + 2),#0x80
      000E0D 90 00 3D         [24] 3319 	mov	dptr,#_command
      000E10 75 F0 40         [24] 3320 	mov	b,#0x40
      000E13 12 12 1B         [24] 3321 	lcall	_strncmp
      000E16 E5 82            [12] 3322 	mov	a,dpl
      000E18 85 83 F0         [24] 3323 	mov	b,dph
      000E1B 45 F0            [12] 3324 	orl	a,b
      000E1D 70 15            [24] 3325 	jnz	00140$
                                   3326 ;	main.c:584: while (command_index > 0)
      000E1F                       3327 00106$:
      000E1F E5 4D            [12] 3328 	mov	a,_command_index
      000E21 60 0B            [24] 3329 	jz	00108$
                                   3330 ;	main.c:586: command_index--;
      000E23 15 4D            [12] 3331 	dec	_command_index
                                   3332 ;	main.c:587: command[command_index] = 0;
      000E25 E5 4D            [12] 3333 	mov	a,_command_index
      000E27 24 3D            [12] 3334 	add	a,#_command
      000E29 F8               [12] 3335 	mov	r0,a
      000E2A 76 00            [12] 3336 	mov	@r0,#0x00
      000E2C 80 F1            [24] 3337 	sjmp	00106$
      000E2E                       3338 00108$:
                                   3339 ;	main.c:589: prev_num = 50;
      000E2E 75 4E 32         [24] 3340 	mov	_prev_num,#0x32
                                   3341 ;	main.c:590: lcd_init();
      000E31 02 01 9F         [24] 3342 	ljmp	_lcd_init
      000E34                       3343 00140$:
                                   3344 ;	main.c:592: else if (strncmp(command, "led7 write", strlen("lcd write")) == 0)
      000E34 90 14 9F         [24] 3345 	mov	dptr,#___str_0
      000E37 75 F0 80         [24] 3346 	mov	b,#0x80
      000E3A 12 13 BD         [24] 3347 	lcall	_strlen
      000E3D 85 82 0B         [24] 3348 	mov	_strncmp_PARM_3,dpl
      000E40 85 83 0C         [24] 3349 	mov	(_strncmp_PARM_3 + 1),dph
      000E43 75 08 DB         [24] 3350 	mov	_strncmp_PARM_2,#___str_8
      000E46 75 09 14         [24] 3351 	mov	(_strncmp_PARM_2 + 1),#(___str_8 >> 8)
      000E49 75 0A 80         [24] 3352 	mov	(_strncmp_PARM_2 + 2),#0x80
      000E4C 90 00 3D         [24] 3353 	mov	dptr,#_command
      000E4F 75 F0 40         [24] 3354 	mov	b,#0x40
      000E52 12 12 1B         [24] 3355 	lcall	_strncmp
      000E55 E5 82            [12] 3356 	mov	a,dpl
      000E57 85 83 F0         [24] 3357 	mov	b,dph
      000E5A 45 F0            [12] 3358 	orl	a,b
      000E5C 70 22            [24] 3359 	jnz	00137$
                                   3360 ;	main.c:594: const char *start = strchr(command + strlen("lcd write"), ' ');
      000E5E 90 14 9F         [24] 3361 	mov	dptr,#___str_0
      000E61 75 F0 80         [24] 3362 	mov	b,#0x80
      000E64 12 13 BD         [24] 3363 	lcall	_strlen
      000E67 AE 82            [24] 3364 	mov	r6,dpl
      000E69 EE               [12] 3365 	mov	a,r6
      000E6A 24 3D            [12] 3366 	add	a,#_command
      000E6C FE               [12] 3367 	mov	r6,a
      000E6D 7F 00            [12] 3368 	mov	r7,#0x00
      000E6F 7D 40            [12] 3369 	mov	r5,#0x40
      000E71 75 08 20         [24] 3370 	mov	_strchr_PARM_2,#0x20
      000E74 8E 82            [24] 3371 	mov	dpl,r6
      000E76 8F 83            [24] 3372 	mov	dph,r7
      000E78 8D F0            [24] 3373 	mov	b,r5
      000E7A 12 12 96         [24] 3374 	lcall	_strchr
                                   3375 ;	main.c:595: cal_num(start);
      000E7D 02 0C 64         [24] 3376 	ljmp	_cal_num
      000E80                       3377 00137$:
                                   3378 ;	main.c:597: else if (strncmp(command, "show", strlen("show")) == 0)
      000E80 90 14 A9         [24] 3379 	mov	dptr,#___str_1
      000E83 75 F0 80         [24] 3380 	mov	b,#0x80
      000E86 12 13 BD         [24] 3381 	lcall	_strlen
      000E89 85 82 0B         [24] 3382 	mov	_strncmp_PARM_3,dpl
      000E8C 85 83 0C         [24] 3383 	mov	(_strncmp_PARM_3 + 1),dph
      000E8F 75 08 A9         [24] 3384 	mov	_strncmp_PARM_2,#___str_1
      000E92 75 09 14         [24] 3385 	mov	(_strncmp_PARM_2 + 1),#(___str_1 >> 8)
      000E95 75 0A 80         [24] 3386 	mov	(_strncmp_PARM_2 + 2),#0x80
      000E98 90 00 3D         [24] 3387 	mov	dptr,#_command
      000E9B 75 F0 40         [24] 3388 	mov	b,#0x40
      000E9E 12 12 1B         [24] 3389 	lcall	_strncmp
      000EA1 E5 82            [12] 3390 	mov	a,dpl
      000EA3 85 83 F0         [24] 3391 	mov	b,dph
      000EA6 45 F0            [12] 3392 	orl	a,b
      000EA8 70 22            [24] 3393 	jnz	00134$
                                   3394 ;	main.c:599: const char *start = strchr(command + strlen("show"), ' ');
      000EAA 90 14 A9         [24] 3395 	mov	dptr,#___str_1
      000EAD 75 F0 80         [24] 3396 	mov	b,#0x80
      000EB0 12 13 BD         [24] 3397 	lcall	_strlen
      000EB3 AE 82            [24] 3398 	mov	r6,dpl
      000EB5 EE               [12] 3399 	mov	a,r6
      000EB6 24 3D            [12] 3400 	add	a,#_command
      000EB8 FE               [12] 3401 	mov	r6,a
      000EB9 7F 00            [12] 3402 	mov	r7,#0x00
      000EBB 7D 40            [12] 3403 	mov	r5,#0x40
      000EBD 75 08 20         [24] 3404 	mov	_strchr_PARM_2,#0x20
      000EC0 8E 82            [24] 3405 	mov	dpl,r6
      000EC2 8F 83            [24] 3406 	mov	dph,r7
      000EC4 8D F0            [24] 3407 	mov	b,r5
      000EC6 12 12 96         [24] 3408 	lcall	_strchr
                                   3409 ;	main.c:600: cal_num(start);
      000EC9 02 0C 64         [24] 3410 	ljmp	_cal_num
      000ECC                       3411 00134$:
                                   3412 ;	main.c:602: else if (strncmp(command, "countdown", strlen("countdown")) == 0)
      000ECC 90 14 AE         [24] 3413 	mov	dptr,#___str_2
      000ECF 75 F0 80         [24] 3414 	mov	b,#0x80
      000ED2 12 13 BD         [24] 3415 	lcall	_strlen
      000ED5 85 82 0B         [24] 3416 	mov	_strncmp_PARM_3,dpl
      000ED8 85 83 0C         [24] 3417 	mov	(_strncmp_PARM_3 + 1),dph
      000EDB 75 08 AE         [24] 3418 	mov	_strncmp_PARM_2,#___str_2
      000EDE 75 09 14         [24] 3419 	mov	(_strncmp_PARM_2 + 1),#(___str_2 >> 8)
      000EE1 75 0A 80         [24] 3420 	mov	(_strncmp_PARM_2 + 2),#0x80
      000EE4 90 00 3D         [24] 3421 	mov	dptr,#_command
      000EE7 75 F0 40         [24] 3422 	mov	b,#0x40
      000EEA 12 12 1B         [24] 3423 	lcall	_strncmp
      000EED E5 82            [12] 3424 	mov	a,dpl
      000EEF 85 83 F0         [24] 3425 	mov	b,dph
      000EF2 45 F0            [12] 3426 	orl	a,b
      000EF4 70 40            [24] 3427 	jnz	00131$
                                   3428 ;	main.c:604: const char *start = strchr(command + strlen("countdown"), ' ');
      000EF6 90 14 AE         [24] 3429 	mov	dptr,#___str_2
      000EF9 75 F0 80         [24] 3430 	mov	b,#0x80
      000EFC 12 13 BD         [24] 3431 	lcall	_strlen
      000EFF AE 82            [24] 3432 	mov	r6,dpl
      000F01 EE               [12] 3433 	mov	a,r6
      000F02 24 3D            [12] 3434 	add	a,#_command
      000F04 FE               [12] 3435 	mov	r6,a
      000F05 7F 00            [12] 3436 	mov	r7,#0x00
      000F07 7D 40            [12] 3437 	mov	r5,#0x40
      000F09 75 08 20         [24] 3438 	mov	_strchr_PARM_2,#0x20
      000F0C 8E 82            [24] 3439 	mov	dpl,r6
      000F0E 8F 83            [24] 3440 	mov	dph,r7
      000F10 8D F0            [24] 3441 	mov	b,r5
      000F12 12 12 96         [24] 3442 	lcall	_strchr
      000F15 AD 82            [24] 3443 	mov	r5,dpl
      000F17 AE 83            [24] 3444 	mov	r6,dph
      000F19 AF F0            [24] 3445 	mov	r7,b
                                   3446 ;	main.c:605: check = 0;
      000F1B E4               [12] 3447 	clr	a
      000F1C F5 24            [12] 3448 	mov	_check,a
      000F1E F5 25            [12] 3449 	mov	(_check + 1),a
      000F20 F5 26            [12] 3450 	mov	(_check + 2),a
      000F22 F5 27            [12] 3451 	mov	(_check + 3),a
                                   3452 ;	main.c:606: cal_num(start);
      000F24 8D 82            [24] 3453 	mov	dpl,r5
      000F26 8E 83            [24] 3454 	mov	dph,r6
      000F28 8F F0            [24] 3455 	mov	b,r7
      000F2A 12 0C 64         [24] 3456 	lcall	_cal_num
                                   3457 ;	main.c:607: do_something_1 = count_down;
      000F2D 75 57 E7         [24] 3458 	mov	_do_something_1,#_count_down
      000F30 75 58 07         [24] 3459 	mov	(_do_something_1 + 1),#(_count_down >> 8)
                                   3460 ;	main.c:608: start_time_1();
      000F33 02 07 DC         [24] 3461 	ljmp	_start_time_1
      000F36                       3462 00131$:
                                   3463 ;	main.c:610: else if (strncmp(command, "timer", strlen("timer")) == 0)
      000F36 90 14 B8         [24] 3464 	mov	dptr,#___str_3
      000F39 75 F0 80         [24] 3465 	mov	b,#0x80
      000F3C 12 13 BD         [24] 3466 	lcall	_strlen
      000F3F 85 82 0B         [24] 3467 	mov	_strncmp_PARM_3,dpl
      000F42 85 83 0C         [24] 3468 	mov	(_strncmp_PARM_3 + 1),dph
      000F45 75 08 B8         [24] 3469 	mov	_strncmp_PARM_2,#___str_3
      000F48 75 09 14         [24] 3470 	mov	(_strncmp_PARM_2 + 1),#(___str_3 >> 8)
      000F4B 75 0A 80         [24] 3471 	mov	(_strncmp_PARM_2 + 2),#0x80
      000F4E 90 00 3D         [24] 3472 	mov	dptr,#_command
      000F51 75 F0 40         [24] 3473 	mov	b,#0x40
      000F54 12 12 1B         [24] 3474 	lcall	_strncmp
      000F57 E5 82            [12] 3475 	mov	a,dpl
      000F59 85 83 F0         [24] 3476 	mov	b,dph
      000F5C 45 F0            [12] 3477 	orl	a,b
      000F5E 70 40            [24] 3478 	jnz	00128$
                                   3479 ;	main.c:612: const char *start = strchr(command + strlen("timer"), ' ');
      000F60 90 14 B8         [24] 3480 	mov	dptr,#___str_3
      000F63 75 F0 80         [24] 3481 	mov	b,#0x80
      000F66 12 13 BD         [24] 3482 	lcall	_strlen
      000F69 AE 82            [24] 3483 	mov	r6,dpl
      000F6B EE               [12] 3484 	mov	a,r6
      000F6C 24 3D            [12] 3485 	add	a,#_command
      000F6E FE               [12] 3486 	mov	r6,a
      000F6F 7F 00            [12] 3487 	mov	r7,#0x00
      000F71 7D 40            [12] 3488 	mov	r5,#0x40
      000F73 75 08 20         [24] 3489 	mov	_strchr_PARM_2,#0x20
      000F76 8E 82            [24] 3490 	mov	dpl,r6
      000F78 8F 83            [24] 3491 	mov	dph,r7
      000F7A 8D F0            [24] 3492 	mov	b,r5
      000F7C 12 12 96         [24] 3493 	lcall	_strchr
      000F7F AD 82            [24] 3494 	mov	r5,dpl
      000F81 AE 83            [24] 3495 	mov	r6,dph
      000F83 AF F0            [24] 3496 	mov	r7,b
                                   3497 ;	main.c:613: check = 0;
      000F85 E4               [12] 3498 	clr	a
      000F86 F5 24            [12] 3499 	mov	_check,a
      000F88 F5 25            [12] 3500 	mov	(_check + 1),a
      000F8A F5 26            [12] 3501 	mov	(_check + 2),a
      000F8C F5 27            [12] 3502 	mov	(_check + 3),a
                                   3503 ;	main.c:614: cal_num(start);
      000F8E 8D 82            [24] 3504 	mov	dpl,r5
      000F90 8E 83            [24] 3505 	mov	dph,r6
      000F92 8F F0            [24] 3506 	mov	b,r7
      000F94 12 0C 64         [24] 3507 	lcall	_cal_num
                                   3508 ;	main.c:615: do_something_1 = count_down;
      000F97 75 57 E7         [24] 3509 	mov	_do_something_1,#_count_down
      000F9A 75 58 07         [24] 3510 	mov	(_do_something_1 + 1),#(_count_down >> 8)
                                   3511 ;	main.c:616: start_time_1();
      000F9D 02 07 DC         [24] 3512 	ljmp	_start_time_1
      000FA0                       3513 00128$:
                                   3514 ;	main.c:618: else if (strncmp(command, "stopwatch", strlen("stopwatch")) == 0)
      000FA0 90 14 E6         [24] 3515 	mov	dptr,#___str_9
      000FA3 75 F0 80         [24] 3516 	mov	b,#0x80
      000FA6 12 13 BD         [24] 3517 	lcall	_strlen
      000FA9 85 82 0B         [24] 3518 	mov	_strncmp_PARM_3,dpl
      000FAC 85 83 0C         [24] 3519 	mov	(_strncmp_PARM_3 + 1),dph
      000FAF 75 08 E6         [24] 3520 	mov	_strncmp_PARM_2,#___str_9
      000FB2 75 09 14         [24] 3521 	mov	(_strncmp_PARM_2 + 1),#(___str_9 >> 8)
      000FB5 75 0A 80         [24] 3522 	mov	(_strncmp_PARM_2 + 2),#0x80
      000FB8 90 00 3D         [24] 3523 	mov	dptr,#_command
      000FBB 75 F0 40         [24] 3524 	mov	b,#0x40
      000FBE 12 12 1B         [24] 3525 	lcall	_strncmp
      000FC1 E5 82            [12] 3526 	mov	a,dpl
      000FC3 85 83 F0         [24] 3527 	mov	b,dph
      000FC6 45 F0            [12] 3528 	orl	a,b
      000FC8 70 09            [24] 3529 	jnz	00125$
                                   3530 ;	main.c:620: do_something_1 = count_up;
      000FCA 75 57 35         [24] 3531 	mov	_do_something_1,#_count_up
      000FCD 75 58 08         [24] 3532 	mov	(_do_something_1 + 1),#(_count_up >> 8)
                                   3533 ;	main.c:621: start_time_1();
      000FD0 02 07 DC         [24] 3534 	ljmp	_start_time_1
      000FD3                       3535 00125$:
                                   3536 ;	main.c:623: else if (strncmp(command, "fan off", strlen("fan off")) == 0)
      000FD3 90 14 BE         [24] 3537 	mov	dptr,#___str_4
      000FD6 75 F0 80         [24] 3538 	mov	b,#0x80
      000FD9 12 13 BD         [24] 3539 	lcall	_strlen
      000FDC 85 82 0B         [24] 3540 	mov	_strncmp_PARM_3,dpl
      000FDF 85 83 0C         [24] 3541 	mov	(_strncmp_PARM_3 + 1),dph
      000FE2 75 08 BE         [24] 3542 	mov	_strncmp_PARM_2,#___str_4
      000FE5 75 09 14         [24] 3543 	mov	(_strncmp_PARM_2 + 1),#(___str_4 >> 8)
      000FE8 75 0A 80         [24] 3544 	mov	(_strncmp_PARM_2 + 2),#0x80
      000FEB 90 00 3D         [24] 3545 	mov	dptr,#_command
      000FEE 75 F0 40         [24] 3546 	mov	b,#0x40
      000FF1 12 12 1B         [24] 3547 	lcall	_strncmp
      000FF4 E5 82            [12] 3548 	mov	a,dpl
      000FF6 85 83 F0         [24] 3549 	mov	b,dph
      000FF9 45 F0            [12] 3550 	orl	a,b
      000FFB 70 45            [24] 3551 	jnz	00122$
                                   3552 ;	main.c:625: if (fan_state)
      000FFD E5 28            [12] 3553 	mov	a,_fan_state
      000FFF 70 01            [24] 3554 	jnz	00214$
      001001 22               [24] 3555 	ret
      001002                       3556 00214$:
                                   3557 ;	main.c:627: const char *start = strchr(command + strlen("fan off"), ' ');
      001002 90 14 BE         [24] 3558 	mov	dptr,#___str_4
      001005 75 F0 80         [24] 3559 	mov	b,#0x80
      001008 12 13 BD         [24] 3560 	lcall	_strlen
      00100B AE 82            [24] 3561 	mov	r6,dpl
      00100D EE               [12] 3562 	mov	a,r6
      00100E 24 3D            [12] 3563 	add	a,#_command
      001010 FE               [12] 3564 	mov	r6,a
      001011 7F 00            [12] 3565 	mov	r7,#0x00
      001013 7D 40            [12] 3566 	mov	r5,#0x40
      001015 75 08 20         [24] 3567 	mov	_strchr_PARM_2,#0x20
      001018 8E 82            [24] 3568 	mov	dpl,r6
      00101A 8F 83            [24] 3569 	mov	dph,r7
      00101C 8D F0            [24] 3570 	mov	b,r5
      00101E 12 12 96         [24] 3571 	lcall	_strchr
      001021 AD 82            [24] 3572 	mov	r5,dpl
      001023 AE 83            [24] 3573 	mov	r6,dph
      001025 AF F0            [24] 3574 	mov	r7,b
                                   3575 ;	main.c:628: check = 0;
      001027 E4               [12] 3576 	clr	a
      001028 F5 24            [12] 3577 	mov	_check,a
      00102A F5 25            [12] 3578 	mov	(_check + 1),a
      00102C F5 26            [12] 3579 	mov	(_check + 2),a
      00102E F5 27            [12] 3580 	mov	(_check + 3),a
                                   3581 ;	main.c:629: cal_num(start);
      001030 8D 82            [24] 3582 	mov	dpl,r5
      001032 8E 83            [24] 3583 	mov	dph,r6
      001034 8F F0            [24] 3584 	mov	b,r7
      001036 12 0C 64         [24] 3585 	lcall	_cal_num
                                   3586 ;	main.c:630: do_something_1 = timer_fan_off;
      001039 75 57 60         [24] 3587 	mov	_do_something_1,#_timer_fan_off
      00103C 75 58 08         [24] 3588 	mov	(_do_something_1 + 1),#(_timer_fan_off >> 8)
                                   3589 ;	main.c:631: start_time_1();
      00103F 02 07 DC         [24] 3590 	ljmp	_start_time_1
      001042                       3591 00122$:
                                   3592 ;	main.c:634: else if (strncmp(command, "fan on", strlen("fan on")) == 0)
      001042 90 14 F0         [24] 3593 	mov	dptr,#___str_10
      001045 75 F0 80         [24] 3594 	mov	b,#0x80
      001048 12 13 BD         [24] 3595 	lcall	_strlen
      00104B 85 82 0B         [24] 3596 	mov	_strncmp_PARM_3,dpl
      00104E 85 83 0C         [24] 3597 	mov	(_strncmp_PARM_3 + 1),dph
      001051 75 08 F0         [24] 3598 	mov	_strncmp_PARM_2,#___str_10
      001054 75 09 14         [24] 3599 	mov	(_strncmp_PARM_2 + 1),#(___str_10 >> 8)
      001057 75 0A 80         [24] 3600 	mov	(_strncmp_PARM_2 + 2),#0x80
      00105A 90 00 3D         [24] 3601 	mov	dptr,#_command
      00105D 75 F0 40         [24] 3602 	mov	b,#0x40
      001060 12 12 1B         [24] 3603 	lcall	_strncmp
      001063 E5 82            [12] 3604 	mov	a,dpl
      001065 85 83 F0         [24] 3605 	mov	b,dph
      001068 45 F0            [12] 3606 	orl	a,b
      00106A 70 5F            [24] 3607 	jnz	00119$
                                   3608 ;	main.c:636: if (fan_state == 0)
      00106C E5 28            [12] 3609 	mov	a,_fan_state
      00106E 60 01            [24] 3610 	jz	00216$
      001070 22               [24] 3611 	ret
      001071                       3612 00216$:
                                   3613 ;	main.c:638: fan_on();
      001071 12 03 72         [24] 3614 	lcall	_fan_on
                                   3615 ;	main.c:639: const char *start = strchr(command + strlen("fan off"), ' ');
      001074 90 14 BE         [24] 3616 	mov	dptr,#___str_4
      001077 75 F0 80         [24] 3617 	mov	b,#0x80
      00107A 12 13 BD         [24] 3618 	lcall	_strlen
      00107D AE 82            [24] 3619 	mov	r6,dpl
      00107F EE               [12] 3620 	mov	a,r6
      001080 24 3D            [12] 3621 	add	a,#_command
      001082 FE               [12] 3622 	mov	r6,a
      001083 7F 00            [12] 3623 	mov	r7,#0x00
      001085 7D 40            [12] 3624 	mov	r5,#0x40
      001087 75 08 20         [24] 3625 	mov	_strchr_PARM_2,#0x20
      00108A 8E 82            [24] 3626 	mov	dpl,r6
      00108C 8F 83            [24] 3627 	mov	dph,r7
      00108E 8D F0            [24] 3628 	mov	b,r5
      001090 12 12 96         [24] 3629 	lcall	_strchr
      001093 AD 82            [24] 3630 	mov	r5,dpl
      001095 AE 83            [24] 3631 	mov	r6,dph
      001097 AF F0            [24] 3632 	mov	r7,b
                                   3633 ;	main.c:640: check = 0;
      001099 E4               [12] 3634 	clr	a
      00109A F5 24            [12] 3635 	mov	_check,a
      00109C F5 25            [12] 3636 	mov	(_check + 1),a
      00109E F5 26            [12] 3637 	mov	(_check + 2),a
      0010A0 F5 27            [12] 3638 	mov	(_check + 3),a
                                   3639 ;	main.c:641: cal_num(start);
      0010A2 8D 82            [24] 3640 	mov	dpl,r5
      0010A4 8E 83            [24] 3641 	mov	dph,r6
      0010A6 8F F0            [24] 3642 	mov	b,r7
      0010A8 12 0C 64         [24] 3643 	lcall	_cal_num
                                   3644 ;	main.c:642: if (check > 0)
      0010AB C3               [12] 3645 	clr	c
      0010AC E4               [12] 3646 	clr	a
      0010AD 95 24            [12] 3647 	subb	a,_check
      0010AF E4               [12] 3648 	clr	a
      0010B0 95 25            [12] 3649 	subb	a,(_check + 1)
      0010B2 E4               [12] 3650 	clr	a
      0010B3 95 26            [12] 3651 	subb	a,(_check + 2)
      0010B5 74 80            [12] 3652 	mov	a,#(0x00 ^ 0x80)
      0010B7 85 27 F0         [24] 3653 	mov	b,(_check + 3)
      0010BA 63 F0 80         [24] 3654 	xrl	b,#0x80
      0010BD 95 F0            [12] 3655 	subb	a,b
      0010BF 40 01            [24] 3656 	jc	00217$
      0010C1 22               [24] 3657 	ret
      0010C2                       3658 00217$:
                                   3659 ;	main.c:644: do_something_1 = timer_fan_off;
      0010C2 75 57 60         [24] 3660 	mov	_do_something_1,#_timer_fan_off
      0010C5 75 58 08         [24] 3661 	mov	(_do_something_1 + 1),#(_timer_fan_off >> 8)
                                   3662 ;	main.c:645: start_time_1();
      0010C8 02 07 DC         [24] 3663 	ljmp	_start_time_1
      0010CB                       3664 00119$:
                                   3665 ;	main.c:650: strncmp(command, "temp", strlen("temp")) == 0 ||
      0010CB 90 14 F7         [24] 3666 	mov	dptr,#___str_11
      0010CE 75 F0 80         [24] 3667 	mov	b,#0x80
      0010D1 12 13 BD         [24] 3668 	lcall	_strlen
      0010D4 85 82 0B         [24] 3669 	mov	_strncmp_PARM_3,dpl
      0010D7 85 83 0C         [24] 3670 	mov	(_strncmp_PARM_3 + 1),dph
      0010DA 75 08 F7         [24] 3671 	mov	_strncmp_PARM_2,#___str_11
      0010DD 75 09 14         [24] 3672 	mov	(_strncmp_PARM_2 + 1),#(___str_11 >> 8)
      0010E0 75 0A 80         [24] 3673 	mov	(_strncmp_PARM_2 + 2),#0x80
      0010E3 90 00 3D         [24] 3674 	mov	dptr,#_command
      0010E6 75 F0 40         [24] 3675 	mov	b,#0x40
      0010E9 12 12 1B         [24] 3676 	lcall	_strncmp
      0010EC E5 82            [12] 3677 	mov	a,dpl
      0010EE 85 83 F0         [24] 3678 	mov	b,dph
      0010F1 45 F0            [12] 3679 	orl	a,b
      0010F3 60 2A            [24] 3680 	jz	00115$
                                   3681 ;	main.c:651: strncmp(command, "temperature", strlen("temperature")) == 0)
      0010F5 90 14 FC         [24] 3682 	mov	dptr,#___str_12
      0010F8 75 F0 80         [24] 3683 	mov	b,#0x80
      0010FB 12 13 BD         [24] 3684 	lcall	_strlen
      0010FE 85 82 0B         [24] 3685 	mov	_strncmp_PARM_3,dpl
      001101 85 83 0C         [24] 3686 	mov	(_strncmp_PARM_3 + 1),dph
      001104 75 08 FC         [24] 3687 	mov	_strncmp_PARM_2,#___str_12
      001107 75 09 14         [24] 3688 	mov	(_strncmp_PARM_2 + 1),#(___str_12 >> 8)
      00110A 75 0A 80         [24] 3689 	mov	(_strncmp_PARM_2 + 2),#0x80
      00110D 90 00 3D         [24] 3690 	mov	dptr,#_command
      001110 75 F0 40         [24] 3691 	mov	b,#0x40
      001113 12 12 1B         [24] 3692 	lcall	_strncmp
      001116 E5 82            [12] 3693 	mov	a,dpl
      001118 85 83 F0         [24] 3694 	mov	b,dph
      00111B 45 F0            [12] 3695 	orl	a,b
      00111D 70 13            [24] 3696 	jnz	00142$
      00111F                       3697 00115$:
                                   3698 ;	main.c:654: check = get_temp();
      00111F 12 02 E0         [24] 3699 	lcall	_get_temp
      001122 AE 82            [24] 3700 	mov	r6,dpl
      001124 AF 83            [24] 3701 	mov	r7,dph
      001126 8E 24            [24] 3702 	mov	_check,r6
      001128 EF               [12] 3703 	mov	a,r7
      001129 F5 25            [12] 3704 	mov	(_check + 1),a
      00112B 33               [12] 3705 	rlc	a
      00112C 95 E0            [12] 3706 	subb	a,acc
      00112E F5 26            [12] 3707 	mov	(_check + 2),a
      001130 F5 27            [12] 3708 	mov	(_check + 3),a
      001132                       3709 00142$:
                                   3710 ;	main.c:656: }
      001132 22               [24] 3711 	ret
                                   3712 	.area CSEG    (CODE)
                                   3713 	.area CONST   (CODE)
      00142B                       3714 _number_string:
      00142B 3F                    3715 	.db #0x3f	; 63
      00142C 06                    3716 	.db #0x06	; 6
      00142D 5B                    3717 	.db #0x5b	; 91
      00142E 4F                    3718 	.db #0x4f	; 79	'O'
      00142F 66                    3719 	.db #0x66	; 102	'f'
      001430 6D                    3720 	.db #0x6d	; 109	'm'
      001431 7D                    3721 	.db #0x7d	; 125
      001432 07                    3722 	.db #0x07	; 7
      001433 7F                    3723 	.db #0x7f	; 127
      001434 6F                    3724 	.db #0x6f	; 111	'o'
      001435                       3725 _key_map:
      001435 5F                    3726 	.db #0x5f	; 95
      001436 27                    3727 	.db #0x27	; 39
      001437 30                    3728 	.db #0x30	; 48	'0'
      001438 3E                    3729 	.db #0x3e	; 62
      001439 00                    3730 	.db #0x00	; 0
      00143A 00                    3731 	.db 0x00
      00143B 00                    3732 	.db 0x00
      00143C 00                    3733 	.db 0x00
      00143D 2E                    3734 	.db #0x2e	; 46
      00143E 2B                    3735 	.db #0x2b	; 43
      00143F 2D                    3736 	.db #0x2d	; 45
      001440 2A                    3737 	.db #0x2a	; 42
      001441 2F                    3738 	.db #0x2f	; 47
      001442 5E                    3739 	.db #0x5e	; 94
      001443 31                    3740 	.db #0x31	; 49	'1'
      001444 00                    3741 	.db #0x00	; 0
      001445 61                    3742 	.db #0x61	; 97	'a'
      001446 62                    3743 	.db #0x62	; 98	'b'
      001447 63                    3744 	.db #0x63	; 99	'c'
      001448 32                    3745 	.db #0x32	; 50	'2'
      001449 00                    3746 	.db #0x00	; 0
      00144A 00                    3747 	.db 0x00
      00144B 00                    3748 	.db 0x00
      00144C 00                    3749 	.db 0x00
      00144D 64                    3750 	.db #0x64	; 100	'd'
      00144E 65                    3751 	.db #0x65	; 101	'e'
      00144F 66                    3752 	.db #0x66	; 102	'f'
      001450 33                    3753 	.db #0x33	; 51	'3'
      001451 00                    3754 	.db #0x00	; 0
      001452 00                    3755 	.db 0x00
      001453 00                    3756 	.db 0x00
      001454 00                    3757 	.db 0x00
      001455 67                    3758 	.db #0x67	; 103	'g'
      001456 68                    3759 	.db #0x68	; 104	'h'
      001457 69                    3760 	.db #0x69	; 105	'i'
      001458 34                    3761 	.db #0x34	; 52	'4'
      001459 00                    3762 	.db #0x00	; 0
      00145A 00                    3763 	.db 0x00
      00145B 00                    3764 	.db 0x00
      00145C 00                    3765 	.db 0x00
      00145D 6A                    3766 	.db #0x6a	; 106	'j'
      00145E 6B                    3767 	.db #0x6b	; 107	'k'
      00145F 6C                    3768 	.db #0x6c	; 108	'l'
      001460 35                    3769 	.db #0x35	; 53	'5'
      001461 00                    3770 	.db #0x00	; 0
      001462 00                    3771 	.db 0x00
      001463 00                    3772 	.db 0x00
      001464 00                    3773 	.db 0x00
      001465 6D                    3774 	.db #0x6d	; 109	'm'
      001466 6E                    3775 	.db #0x6e	; 110	'n'
      001467 6F                    3776 	.db #0x6f	; 111	'o'
      001468 36                    3777 	.db #0x36	; 54	'6'
      001469 00                    3778 	.db #0x00	; 0
      00146A 00                    3779 	.db 0x00
      00146B 00                    3780 	.db 0x00
      00146C 00                    3781 	.db 0x00
      00146D 70                    3782 	.db #0x70	; 112	'p'
      00146E 71                    3783 	.db #0x71	; 113	'q'
      00146F 72                    3784 	.db #0x72	; 114	'r'
      001470 73                    3785 	.db #0x73	; 115	's'
      001471 37                    3786 	.db #0x37	; 55	'7'
      001472 00                    3787 	.db #0x00	; 0
      001473 00                    3788 	.db 0x00
      001474 00                    3789 	.db 0x00
      001475 74                    3790 	.db #0x74	; 116	't'
      001476 75                    3791 	.db #0x75	; 117	'u'
      001477 76                    3792 	.db #0x76	; 118	'v'
      001478 38                    3793 	.db #0x38	; 56	'8'
      001479 00                    3794 	.db #0x00	; 0
      00147A 00                    3795 	.db 0x00
      00147B 00                    3796 	.db 0x00
      00147C 00                    3797 	.db 0x00
      00147D 77                    3798 	.db #0x77	; 119	'w'
      00147E 78                    3799 	.db #0x78	; 120	'x'
      00147F 79                    3800 	.db #0x79	; 121	'y'
      001480 7A                    3801 	.db #0x7a	; 122	'z'
      001481 39                    3802 	.db #0x39	; 57	'9'
      001482 00                    3803 	.db #0x00	; 0
      001483 00                    3804 	.db 0x00
      001484 00                    3805 	.db 0x00
      001485 00                    3806 	.db 0x00
      001486 00                    3807 	.db 0x00
      001487 00                    3808 	.db 0x00
      001488 00                    3809 	.db 0x00
      001489 00                    3810 	.db 0x00
      00148A 00                    3811 	.db 0x00
      00148B 00                    3812 	.db 0x00
      00148C 00                    3813 	.db 0x00
      00148D 00                    3814 	.db 0x00
      00148E 00                    3815 	.db 0x00
      00148F 00                    3816 	.db 0x00
      001490 00                    3817 	.db 0x00
      001491 00                    3818 	.db 0x00
      001492 00                    3819 	.db 0x00
      001493 00                    3820 	.db 0x00
      001494 00                    3821 	.db 0x00
      001495                       3822 _infrared_num:
      001495 97                    3823 	.db #0x97	; 151
      001496 CF                    3824 	.db #0xcf	; 207
      001497 E7                    3825 	.db #0xe7	; 231
      001498 85                    3826 	.db #0x85	; 133
      001499 EF                    3827 	.db #0xef	; 239
      00149A C7                    3828 	.db #0xc7	; 199
      00149B A5                    3829 	.db #0xa5	; 165
      00149C BD                    3830 	.db #0xbd	; 189
      00149D B5                    3831 	.db #0xb5	; 181
      00149E AD                    3832 	.db #0xad	; 173
                                   3833 	.area CONST   (CODE)
      00149F                       3834 ___str_0:
      00149F 6C 63 64 20 77 72 69  3835 	.ascii "lcd write"
             74 65
      0014A8 00                    3836 	.db 0x00
                                   3837 	.area CSEG    (CODE)
                                   3838 	.area CONST   (CODE)
      0014A9                       3839 ___str_1:
      0014A9 73 68 6F 77           3840 	.ascii "show"
      0014AD 00                    3841 	.db 0x00
                                   3842 	.area CSEG    (CODE)
                                   3843 	.area CONST   (CODE)
      0014AE                       3844 ___str_2:
      0014AE 63 6F 75 6E 74 64 6F  3845 	.ascii "countdown"
             77 6E
      0014B7 00                    3846 	.db 0x00
                                   3847 	.area CSEG    (CODE)
                                   3848 	.area CONST   (CODE)
      0014B8                       3849 ___str_3:
      0014B8 74 69 6D 65 72        3850 	.ascii "timer"
      0014BD 00                    3851 	.db 0x00
                                   3852 	.area CSEG    (CODE)
                                   3853 	.area CONST   (CODE)
      0014BE                       3854 ___str_4:
      0014BE 66 61 6E 20 6F 66 66  3855 	.ascii "fan off"
      0014C5 00                    3856 	.db 0x00
                                   3857 	.area CSEG    (CODE)
                                   3858 	.area CONST   (CODE)
      0014C6                       3859 ___str_5:
      0014C6 62 75 7A 7A 65 72     3860 	.ascii "buzzer"
      0014CC 00                    3861 	.db 0x00
                                   3862 	.area CSEG    (CODE)
                                   3863 	.area CONST   (CODE)
      0014CD                       3864 ___str_6:
      0014CD 6C 65 64 20 6F 66 66  3865 	.ascii "led off"
      0014D4 00                    3866 	.db 0x00
                                   3867 	.area CSEG    (CODE)
                                   3868 	.area CONST   (CODE)
      0014D5                       3869 ___str_7:
      0014D5 63 6C 65 61 72        3870 	.ascii "clear"
      0014DA 00                    3871 	.db 0x00
                                   3872 	.area CSEG    (CODE)
                                   3873 	.area CONST   (CODE)
      0014DB                       3874 ___str_8:
      0014DB 6C 65 64 37 20 77 72  3875 	.ascii "led7 write"
             69 74 65
      0014E5 00                    3876 	.db 0x00
                                   3877 	.area CSEG    (CODE)
                                   3878 	.area CONST   (CODE)
      0014E6                       3879 ___str_9:
      0014E6 73 74 6F 70 77 61 74  3880 	.ascii "stopwatch"
             63 68
      0014EF 00                    3881 	.db 0x00
                                   3882 	.area CSEG    (CODE)
                                   3883 	.area CONST   (CODE)
      0014F0                       3884 ___str_10:
      0014F0 66 61 6E 20 6F 6E     3885 	.ascii "fan on"
      0014F6 00                    3886 	.db 0x00
                                   3887 	.area CSEG    (CODE)
                                   3888 	.area CONST   (CODE)
      0014F7                       3889 ___str_11:
      0014F7 74 65 6D 70           3890 	.ascii "temp"
      0014FB 00                    3891 	.db 0x00
                                   3892 	.area CSEG    (CODE)
                                   3893 	.area CONST   (CODE)
      0014FC                       3894 ___str_12:
      0014FC 74 65 6D 70 65 72 61  3895 	.ascii "temperature"
             74 75 72 65
      001507 00                    3896 	.db 0x00
                                   3897 	.area CSEG    (CODE)
                                   3898 	.area XINIT   (CODE)
                                   3899 	.area CABS    (ABS,CODE)
