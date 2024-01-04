;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module snake_v2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _number_string
	.globl _main
	.globl _timer0_interrupt
	.globl _UART_Receive
	.globl _uart_init
	.globl _key_pressed_handle
	.globl _reset_timer_0
	.globl _go_right
	.globl _go_left
	.globl _go_down
	.globl _go_up
	.globl _update_game
	.globl _update_food
	.globl _game_over
	.globl _display_number
	.globl _srand
	.globl _rand
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _show_food
	.globl _bit1
	.globl _bit0
	.globl _food
	.globl _tail
	.globl _head
	.globl _key_pressed
	.globl _data_mat
	.globl _cur_dir
	.globl _sqr_left
	.globl _point
	.globl _game_timer_counter
	.globl _timer_counter
	.globl _received_data
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_display_number_led_65537_56:
	.ds 1
_display_number_neg_65537_56:
	.ds 1
_received_data::
	.ds 1
_timer_counter::
	.ds 4
_game_timer_counter::
	.ds 2
_point::
	.ds 1
_sqr_left::
	.ds 1
_cur_dir::
	.ds 1
_data_mat::
	.ds 8
_key_pressed::
	.ds 1
_head::
	.ds 1
_tail::
	.ds 1
_food::
	.ds 1
_bit0::
	.ds 8
_bit1::
	.ds 8
_game_over_temp_65537_111:
	.ds 1
_game_over_i_65537_111:
	.ds 1
_game_over_j_65537_111:
	.ds 1
_game_over_t_65537_111:
	.ds 1
_game_over_current_data_983041_136:
	.ds 1
_game_over_row_917505_148:
	.ds 1
_game_over_current_data_983041_149:
	.ds 1
_game_over_i_1048577_150:
	.ds 1
_game_over_sloc0_1_0:
	.ds 1
_game_over_sloc1_1_0:
	.ds 2
_game_over_sloc2_1_0:
	.ds 2
_update_food_i_131072_157:
	.ds 1
_show_food::
	.ds 1
_main_current_data_655360_262:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_update_food_sloc0_1_0:
	.ds 1
_update_game_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_timer0_interrupt
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_UART_Receive
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	snake_v2.c:20: unsigned long timer_counter = 0;
	clr	a
	mov	_timer_counter,a
	mov	(_timer_counter + 1),a
	mov	(_timer_counter + 2),a
	mov	(_timer_counter + 3),a
;	snake_v2.c:21: int game_timer_counter = 0;
	mov	_game_timer_counter,a
	mov	(_game_timer_counter + 1),a
;	snake_v2.c:22: char point = 0;
	mov	_point,a
;	snake_v2.c:24: char sqr_left = 61;
	mov	_sqr_left,#0x3d
;	snake_v2.c:25: char cur_dir = dir_right;
	mov	_cur_dir,#0x01
;	snake_v2.c:27: char key_pressed = 20;
	mov	_key_pressed,#0x14
;	snake_v2.c:449: char show_food = 1;
	mov	_show_food,#0x01
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'display_number'
;------------------------------------------------------------
;number                    Allocated to registers r4 r5 r6 r7 
;i                         Allocated to registers r3 
;led                       Allocated with name '_display_number_led_65537_56'
;neg                       Allocated with name '_display_number_neg_65537_56'
;__1966090004              Allocated to registers r3 
;__1966090005              Allocated to registers r0 
;led                       Allocated to registers 
;digit                     Allocated to registers 
;------------------------------------------------------------
;	led7seg.h:27: void display_number(long number)
;	-----------------------------------------
;	 function display_number
;	-----------------------------------------
_display_number:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	led7seg.h:29: if (!number)
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
;	led7seg.h:31: P0 = 0;
	jnz	00103$
	mov	_P0,a
;	led7seg.h:32: P2 &= 0b11100011;
	anl	_P2,#0xe3
;	led7seg.h:33: P0 = number_string[0];
	mov	dptr,#_number_string
	clr	a
	movc	a,@a+dptr
	mov	_P0,a
;	led7seg.h:34: for (char i = 0; i < 100; i++)
	mov	r3,#0x00
00113$:
	cjne	r3,#0x64,00148$
00148$:
	jnc	00101$
	inc	r3
	sjmp	00113$
00101$:
;	led7seg.h:36: return;
	ret
00103$:
;	led7seg.h:39: char neg = 0;
	mov	_display_number_neg_65537_56,#0x00
;	led7seg.h:40: if (number < 0)
	mov	a,r7
	jnb	acc.7,00122$
;	led7seg.h:42: neg = 1;
	mov	_display_number_neg_65537_56,#0x01
;	led7seg.h:43: number = -number;
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
;	led7seg.h:53: while (number)
00122$:
	mov	_display_number_led_65537_56,#0x00
00106$:
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00108$
;	led7seg.h:55: display_digit(led++, number % 10);
	mov	__modslong_PARM_2,#0x0a
	clr	a
	mov	(__modslong_PARM_2 + 1),a
	mov	(__modslong_PARM_2 + 2),a
	mov	(__modslong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__modslong
	mov	r0,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r3,_display_number_led_65537_56
	inc	_display_number_led_65537_56
;	led7seg.h:19: P0 = 0;
	mov	_P0,#0x00
;	led7seg.h:20: P2 &= 0b11100011;
	anl	_P2,#0xe3
;	led7seg.h:21: P2 |= led << 2;
	mov	a,r3
	add	a,r3
	add	a,acc
	orl	_P2,a
;	led7seg.h:24: P0 = number_string[digit];
	mov	a,r0
	mov	dptr,#_number_string
	movc	a,@a+dptr
	mov	_P0,a
;	led7seg.h:56: number /= 10;
	mov	__divslong_PARM_2,#0x0a
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	sjmp	00106$
00108$:
;	led7seg.h:58: if (neg)
	mov	a,_display_number_neg_65537_56
	jz	00115$
;	led7seg.h:60: P0 = 0;
	mov	_P0,#0x00
;	led7seg.h:61: P2 = led << 2;
	mov	a,_display_number_led_65537_56
	mov	r2,a
	add	a,acc
	add	a,acc
	mov	_P2,a
;	led7seg.h:62: P0 = 0b01000000;
	mov	_P0,#0x40
00115$:
;	led7seg.h:64: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'game_over'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;j                         Allocated to registers r4 r5 
;i                         Allocated to registers r7 
;temp                      Allocated with name '_game_over_temp_65537_111'
;i                         Allocated with name '_game_over_i_65537_111'
;j                         Allocated with name '_game_over_j_65537_111'
;t                         Allocated with name '_game_over_t_65537_111'
;row                       Allocated to registers r4 
;current_data              Allocated with name '_game_over_current_data_983041_136'
;i                         Allocated to registers r2 
;i                         Allocated to registers r6 
;i                         Allocated to registers r6 
;row                       Allocated with name '_game_over_row_917505_148'
;current_data              Allocated with name '_game_over_current_data_983041_149'
;i                         Allocated with name '_game_over_i_1048577_150'
;i                         Allocated to registers r3 
;i                         Allocated to registers r3 
;sloc0                     Allocated with name '_game_over_sloc0_1_0'
;sloc1                     Allocated with name '_game_over_sloc1_1_0'
;sloc2                     Allocated with name '_game_over_sloc2_1_0'
;------------------------------------------------------------
;	snake_v2.c:131: void game_over(void)
;	-----------------------------------------
;	 function game_over
;	-----------------------------------------
_game_over:
;	snake_v2.c:133: EA = 0;
;	assignBit
	clr	_EA
;	snake_v2.c:137: for (int i = 0; i < time * 1e3 / 200; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00150$:
	clr	c
	mov	a,r6
	subb	a,#0xc8
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	snake_v2.c:139: buzzer_pin = 1;
;	assignBit
	setb	_P1_5
;	snake_v2.c:140: for (int j = 0; j < 90; j++)
	mov	r4,#0x00
	mov	r5,#0x00
00144$:
	clr	c
	mov	a,r4
	subb	a,#0x5a
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
	inc	r4
	cjne	r4,#0x00,00144$
	inc	r5
	sjmp	00144$
00101$:
;	snake_v2.c:142: buzzer_pin = 0;
;	assignBit
	clr	_P1_5
;	snake_v2.c:143: for (int j = 0; j < 90; j++)
	mov	r4,#0x00
	mov	r5,#0x00
00147$:
	clr	c
	mov	a,r4
	subb	a,#0x5a
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00151$
	inc	r4
	cjne	r4,#0x00,00147$
	inc	r5
	sjmp	00147$
00151$:
;	snake_v2.c:137: for (int i = 0; i < time * 1e3 / 200; i++)
	inc	r6
	cjne	r6,#0x00,00150$
	inc	r7
	sjmp	00150$
00103$:
;	snake_v2.c:146: for (char i = 0; i < 8; i++)
	mov	r7,#0x00
00153$:
	cjne	r7,#0x08,00403$
00403$:
	jnc	00104$
;	snake_v2.c:147: data_mat[i] = 0;
	mov	a,r7
	add	a,#_data_mat
	mov	r0,a
	mov	@r0,#0x00
;	snake_v2.c:146: for (char i = 0; i < 8; i++)
	inc	r7
	sjmp	00153$
00104$:
;	snake_v2.c:210: const char temp = rand() % 6;
	lcall	_rand
	mov	__modsint_PARM_2,#0x06
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_game_over_temp_65537_111,r6
;	snake_v2.c:232: if (point > 2)
	mov	a,_point
	add	a,#0xff - 0x02
	jc	00405$
	ljmp	00239$
00405$:
;	snake_v2.c:237: for (i = 0; i < 8; i++)
00219$:
	mov	a,_game_over_temp_65537_111
	mov	b,#0x08
	mul	ab
	add	a,#_game_over_floating_display_65537_111
	mov	r5,a
	mov	a,#(_game_over_floating_display_65537_111 >> 8)
	addc	a,b
	mov	r7,a
	mov	_game_over_i_65537_111,#0x00
;	snake_v2.c:239: for (j = 0; j < 8; j++)
00205$:
	mov	_game_over_j_65537_111,#0x00
00155$:
;	snake_v2.c:241: data_mat[j] = floating_display[temp][(j + i) % 8] & 0b11110000 |
	mov	a,_game_over_j_65537_111
	add	a,#_data_mat
	mov	_game_over_sloc0_1_0,a
	mov	a,_game_over_j_65537_111
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,_game_over_i_65537_111
	mov	_game_over_sloc1_1_0,a
	rlc	a
	subb	a,acc
	mov	(_game_over_sloc1_1_0 + 1),a
	mov	a,_game_over_sloc1_1_0
	add	a,r2
	mov	dpl,a
	mov	a,(_game_over_sloc1_1_0 + 1)
	addc	a,r6
	mov	dph,a
	mov	__modsint_PARM_2,#0x08
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar2
	lcall	__modsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,r5
	mov	dpl,a
	mov	a,r4
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	anl	ar4,#0xf0
;	snake_v2.c:242: floating_display[temp][(j - i + 8) % 8] & 0b00001111;
	mov	a,r2
	clr	c
	subb	a,_game_over_sloc1_1_0
	mov	r2,a
	mov	a,r6
	subb	a,(_game_over_sloc1_1_0 + 1)
	mov	r6,a
	mov	a,#0x08
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	__modsint_PARM_2,#0x08
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r3,dpl
	mov	r6,dph
	pop	ar4
	pop	ar5
	pop	ar7
	mov	a,r3
	add	a,r5
	mov	dpl,a
	mov	a,r6
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x0f
	anl	a,r6
	orl	a,r4
	mov	r0,_game_over_sloc0_1_0
	mov	@r0,a
;	snake_v2.c:239: for (j = 0; j < 8; j++)
	inc	_game_over_j_65537_111
	clr	c
	mov	a,_game_over_j_65537_111
	xrl	a,#0x80
	subb	a,#0x88
	jnc	00406$
	ljmp	00155$
00406$:
;	snake_v2.c:245: for (t = 0; t < 30; t++)
	mov	_game_over_t_65537_111,#0x00
00171$:
;	snake_v2.c:59: P2 = 0b11111111;
	mov	_P2,#0xff
;	snake_v2.c:60: P0 = 0xFF;
	mov	_P0,#0xff
;	snake_v2.c:40: for (char row = 0; row < 8; row++)
	mov	r4,#0x00
00164$:
	cjne	r4,#0x08,00407$
00407$:
	jnc	00132$
;	snake_v2.c:42: const char current_data = data_mat[row];
	mov	a,r4
	add	a,#_data_mat
	mov	r1,a
	mov	_game_over_current_data_983041_136,@r1
;	snake_v2.c:43: for (char i = 0; i < 8; i++)
	mov	b,r4
	inc	b
	mov	_game_over_sloc1_1_0,#0x80
	clr	a
	mov	(_game_over_sloc1_1_0 + 1),a
	rlc	a
	mov	ov,c
	sjmp	00410$
00409$:
	mov	c,ov
	mov	a,(_game_over_sloc1_1_0 + 1)
	rrc	a
	mov	(_game_over_sloc1_1_0 + 1),a
	mov	a,_game_over_sloc1_1_0
	rrc	a
	mov	_game_over_sloc1_1_0,a
00410$:
	djnz	b,00409$
	mov	r2,#0x00
00158$:
	cjne	r2,#0x08,00411$
00411$:
	jnc	00129$
;	snake_v2.c:45: SER = (0x80 >> row) & (0x80 >> i);
	mov	b,r2
	inc	b
	mov	r3,#0x80
	clr	a
	mov	r6,a
	rlc	a
	mov	ov,c
	sjmp	00414$
00413$:
	mov	c,ov
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r3
	rrc	a
	mov	r3,a
00414$:
	djnz	b,00413$
	mov	a,_game_over_sloc1_1_0
	anl	ar3,a
	mov	a,(_game_over_sloc1_1_0 + 1)
	anl	ar6,a
;	assignBit
	mov	a,r3
	orl	a,r6
	add	a,#0xff
	mov	_P3_4,c
;	snake_v2.c:46: SCK = 1;
;	assignBit
	setb	_P3_6
;	snake_v2.c:47: SCK = 0;
;	assignBit
	clr	_P3_6
;	snake_v2.c:43: for (char i = 0; i < 8; i++)
	inc	r2
	sjmp	00158$
00129$:
;	snake_v2.c:49: P0 = 0xff;
	mov	_P0,#0xff
;	snake_v2.c:50: RCK = 1;
;	assignBit
	setb	_P3_5
;	snake_v2.c:51: RCK = 0;
;	assignBit
	clr	_P3_5
;	snake_v2.c:52: P0 = ~current_data;
	mov	a,_game_over_current_data_983041_136
	cpl	a
	mov	_P0,a
;	snake_v2.c:53: for (char i = 0; i < 5; i++)
	mov	r6,#0x00
00161$:
	cjne	r6,#0x05,00415$
00415$:
	jnc	00165$
	inc	r6
	sjmp	00161$
00165$:
;	snake_v2.c:40: for (char row = 0; row < 8; row++)
	inc	r4
;	snake_v2.c:61: display_led_mat();
	sjmp	00164$
00132$:
;	snake_v2.c:63: for (i = 0; i < 100; i++)
	mov	r6,#0x64
00168$:
	djnz	r6,00168$
;	snake_v2.c:65: SER = 0;
;	assignBit
	clr	_P3_4
;	snake_v2.c:66: for (i = 0; i < 8; i++)
	mov	r6,#0x00
00169$:
;	snake_v2.c:68: SCK = 1;
;	assignBit
	setb	_P3_6
;	snake_v2.c:69: SCK = 0;
;	assignBit
	clr	_P3_6
;	snake_v2.c:66: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00418$
00418$:
	jc	00169$
;	snake_v2.c:71: RCK = 1;
;	assignBit
	setb	_P3_5
;	snake_v2.c:72: RCK = 0;
;	assignBit
	clr	_P3_5
;	snake_v2.c:73: display_number(point);
	mov	r2,_point
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r6,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	push	ar7
	push	ar5
	lcall	_display_number
;	snake_v2.c:74: display_number(point);
	mov	r2,_point
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r6,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	_display_number
;	snake_v2.c:75: display_number(point);
	mov	r2,_point
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r6,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r6
	lcall	_display_number
	pop	ar5
	pop	ar7
;	snake_v2.c:245: for (t = 0; t < 30; t++)
	inc	_game_over_t_65537_111
	clr	c
	mov	a,_game_over_t_65537_111
	xrl	a,#0x80
	subb	a,#0x9e
	jnc	00420$
	ljmp	00171$
00420$:
;	snake_v2.c:237: for (i = 0; i < 8; i++)
	inc	_game_over_i_65537_111
	clr	c
	mov	a,_game_over_i_65537_111
	xrl	a,#0x80
	subb	a,#0x88
	jnc	00421$
	ljmp	00205$
00421$:
	ljmp	00219$
;	snake_v2.c:259: for (i = 0; i < 16; i++)
00239$:
	mov	a,_game_over_temp_65537_111
	mov	b,#0x08
	mul	ab
	add	a,#_game_over_floating_display_65537_111
	mov	r6,a
	mov	a,#(_game_over_floating_display_65537_111 >> 8)
	addc	a,b
	mov	r7,a
	mov	ar4,r6
	mov	ar5,r7
	mov	_game_over_i_65537_111,#0x00
;	snake_v2.c:261: for (j = 0; j < 8; j++)
00225$:
	mov	a,#0x10
	clr	c
	subb	a,_game_over_i_65537_111
	mov	r2,a
	mov	_game_over_j_65537_111,#0x00
00175$:
;	snake_v2.c:263: if (i + j < 8)
	push	ar2
	mov	a,_game_over_i_65537_111
	mov	_game_over_sloc1_1_0,a
	rlc	a
	subb	a,acc
	mov	(_game_over_sloc1_1_0 + 1),a
	mov	a,_game_over_j_65537_111
	mov	_game_over_sloc2_1_0,a
	rlc	a
	subb	a,acc
	mov	(_game_over_sloc2_1_0 + 1),a
	mov	a,_game_over_sloc2_1_0
	add	a,_game_over_sloc1_1_0
	mov	r2,a
	mov	a,(_game_over_sloc2_1_0 + 1)
	addc	a,(_game_over_sloc1_1_0 + 1)
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x08
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	pop	ar2
	jnc	00118$
;	snake_v2.c:264: data_mat[j] = (floating_display[temp][(j + i)]) >> i;
	mov	a,_game_over_j_65537_111
	add	a,#_data_mat
	mov	r1,a
	mov	a,_game_over_i_65537_111
	add	a,_game_over_j_65537_111
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	b,_game_over_i_65537_111
	inc	b
	mov	a,r3
	sjmp	00424$
00423$:
	clr	c
	rrc	a
00424$:
	djnz	b,00423$
	mov	@r1,a
	ljmp	00176$
00118$:
;	snake_v2.c:265: else if (i + j >= 16)
	push	ar2
	mov	a,_game_over_sloc2_1_0
	add	a,_game_over_sloc1_1_0
	mov	r2,a
	mov	a,(_game_over_sloc2_1_0 + 1)
	addc	a,(_game_over_sloc1_1_0 + 1)
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	pop	ar2
	jc	00115$
;	snake_v2.c:267: if (i + j >= 16)
	push	ar2
	mov	a,_game_over_sloc2_1_0
	add	a,_game_over_sloc1_1_0
	mov	r2,a
	mov	a,(_game_over_sloc2_1_0 + 1)
	addc	a,(_game_over_sloc1_1_0 + 1)
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,#0x10
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	pop	ar2
	jc	00112$
;	snake_v2.c:268: data_mat[j] = (floating_display[temp][(i + j) % 8]) << (16 - i);
	push	ar4
	push	ar5
	mov	a,_game_over_j_65537_111
	add	a,#_data_mat
	mov	r1,a
	mov	a,_game_over_sloc2_1_0
	add	a,_game_over_sloc1_1_0
	mov	dpl,a
	mov	a,(_game_over_sloc2_1_0 + 1)
	addc	a,(_game_over_sloc1_1_0 + 1)
	mov	dph,a
	mov	__modsint_PARM_2,#0x08
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	push	ar4
	push	ar2
	push	ar1
	lcall	__modsint
	mov	r3,dpl
	mov	r5,dph
	pop	ar1
	pop	ar2
	pop	ar4
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,r6
	mov	dpl,a
	mov	a,r5
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	b,r2
	inc	b
	mov	a,r5
	sjmp	00429$
00427$:
	add	a,acc
00429$:
	djnz	b,00427$
	mov	@r1,a
	pop	ar5
	pop	ar4
	sjmp	00176$
00112$:
;	snake_v2.c:270: data_mat[j] = 0;
	mov	a,_game_over_j_65537_111
	add	a,#_data_mat
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00176$
00115$:
;	snake_v2.c:273: data_mat[j] = 0;
	mov	a,_game_over_j_65537_111
	add	a,#_data_mat
	mov	r0,a
	mov	@r0,#0x00
00176$:
;	snake_v2.c:261: for (j = 0; j < 8; j++)
	inc	_game_over_j_65537_111
	clr	c
	mov	a,_game_over_j_65537_111
	xrl	a,#0x80
	subb	a,#0x88
	jnc	00430$
	ljmp	00175$
00430$:
;	snake_v2.c:279: for (t = 30; t; --t)
	mov	_game_over_t_65537_111,#0x1e
00191$:
;	snake_v2.c:59: P2 = 0b11111111;
	mov	_P2,#0xff
;	snake_v2.c:60: P0 = 0xFF;
	mov	_P0,#0xff
;	snake_v2.c:40: for (char row = 0; row < 8; row++)
	mov	_game_over_row_917505_148,#0x00
00184$:
	mov	a,#0x100 - 0x08
	add	a,_game_over_row_917505_148
	jc	00139$
;	snake_v2.c:42: const char current_data = data_mat[row];
	mov	a,_game_over_row_917505_148
	add	a,#_data_mat
	mov	r1,a
	mov	_game_over_current_data_983041_149,@r1
;	snake_v2.c:43: for (char i = 0; i < 8; i++)
	mov	b,_game_over_row_917505_148
	inc	b
	mov	_game_over_sloc2_1_0,#0x80
	clr	a
	mov	(_game_over_sloc2_1_0 + 1),a
	rlc	a
	mov	ov,c
	sjmp	00433$
00432$:
	mov	c,ov
	mov	a,(_game_over_sloc2_1_0 + 1)
	rrc	a
	mov	(_game_over_sloc2_1_0 + 1),a
	mov	a,_game_over_sloc2_1_0
	rrc	a
	mov	_game_over_sloc2_1_0,a
00433$:
	djnz	b,00432$
	mov	_game_over_i_1048577_150,#0x00
00178$:
	mov	a,#0x100 - 0x08
	add	a,_game_over_i_1048577_150
	jc	00136$
;	snake_v2.c:45: SER = (0x80 >> row) & (0x80 >> i);
	mov	b,_game_over_i_1048577_150
	inc	b
	mov	r2,#0x80
	clr	a
	mov	r3,a
	rlc	a
	mov	ov,c
	sjmp	00436$
00435$:
	mov	c,ov
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00436$:
	djnz	b,00435$
	mov	a,_game_over_sloc2_1_0
	anl	ar2,a
	mov	a,(_game_over_sloc2_1_0 + 1)
	anl	ar3,a
;	assignBit
	mov	a,r2
	orl	a,r3
	add	a,#0xff
	mov	_P3_4,c
;	snake_v2.c:46: SCK = 1;
;	assignBit
	setb	_P3_6
;	snake_v2.c:47: SCK = 0;
;	assignBit
	clr	_P3_6
;	snake_v2.c:43: for (char i = 0; i < 8; i++)
	inc	_game_over_i_1048577_150
	sjmp	00178$
00136$:
;	snake_v2.c:49: P0 = 0xff;
	mov	_P0,#0xff
;	snake_v2.c:50: RCK = 1;
;	assignBit
	setb	_P3_5
;	snake_v2.c:51: RCK = 0;
;	assignBit
	clr	_P3_5
;	snake_v2.c:52: P0 = ~current_data;
	mov	a,_game_over_current_data_983041_149
	cpl	a
	mov	_P0,a
;	snake_v2.c:53: for (char i = 0; i < 5; i++)
	mov	r3,#0x00
00181$:
	cjne	r3,#0x05,00437$
00437$:
	jnc	00185$
	inc	r3
	sjmp	00181$
00185$:
;	snake_v2.c:40: for (char row = 0; row < 8; row++)
	inc	_game_over_row_917505_148
;	snake_v2.c:61: display_led_mat();
	sjmp	00184$
00139$:
;	snake_v2.c:63: for (i = 0; i < 100; i++)
	mov	r3,#0x64
00188$:
	djnz	r3,00188$
;	snake_v2.c:65: SER = 0;
;	assignBit
	clr	_P3_4
;	snake_v2.c:66: for (i = 0; i < 8; i++)
	mov	r3,#0x00
00189$:
;	snake_v2.c:68: SCK = 1;
;	assignBit
	setb	_P3_6
;	snake_v2.c:69: SCK = 0;
;	assignBit
	clr	_P3_6
;	snake_v2.c:66: for (i = 0; i < 8; i++)
	inc	r3
	cjne	r3,#0x08,00440$
00440$:
	jc	00189$
;	snake_v2.c:71: RCK = 1;
	push	ar4
	push	ar5
;	assignBit
	setb	_P3_5
;	snake_v2.c:72: RCK = 0;
;	assignBit
	clr	_P3_5
;	snake_v2.c:73: display_number(point);
	mov	r2,_point
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_display_number
	pop	ar4
	pop	ar5
;	snake_v2.c:74: display_number(point);
	mov	r2,_point
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar5
	push	ar4
	lcall	_display_number
	pop	ar4
	pop	ar5
;	snake_v2.c:75: display_number(point);
	mov	r2,_point
	mov	r3,#0x00
	mov	r4,#0x00
	mov	r5,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	push	ar5
	push	ar4
	lcall	_display_number
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	snake_v2.c:279: for (t = 30; t; --t)
	dec	_game_over_t_65537_111
	pop	ar5
	pop	ar4
	mov	a,_game_over_t_65537_111
	jz	00442$
	ljmp	00191$
00442$:
;	snake_v2.c:259: for (i = 0; i < 16; i++)
	inc	_game_over_i_65537_111
	clr	c
	mov	a,_game_over_i_65537_111
	xrl	a,#0x80
	subb	a,#0x90
	jnc	00443$
	ljmp	00225$
00443$:
;	snake_v2.c:286: }
	ljmp	00239$
;------------------------------------------------------------
;Allocation info for local variables in function 'update_food'
;------------------------------------------------------------
;cnt                       Allocated to registers 
;i                         Allocated with name '_update_food_i_131072_157'
;__2621440010              Allocated to registers 
;__2621440011              Allocated to registers 
;a                         Allocated to registers 
;------------------------------------------------------------
;	snake_v2.c:287: void update_food(void)
;	-----------------------------------------
;	 function update_food
;	-----------------------------------------
_update_food:
;	snake_v2.c:289: char cnt = sqr_left;
	mov	r7,_sqr_left
;	snake_v2.c:290: for (char i = 0; i < 64; i++)
	mov	r6,#0x00
	mov	_update_food_i_131072_157,r6
00109$:
	mov	a,#0x100 - 0x40
	add	a,_update_food_i_131072_157
	jc	00110$
;	snake_v2.c:107: return (data_mat[a >> 3] & (0x80 >> (a & 7))) != 0;
	mov	a,_update_food_i_131072_157
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_data_mat
	mov	r1,a
	mov	ar4,@r1
	mov	a,#0x07
	anl	a,_update_food_i_131072_157
	mov	r3,a
	mov	b,r3
	inc	b
	mov	r3,#0x80
	clr	a
	mov	r2,a
	rlc	a
	mov	ov,c
	sjmp	00130$
00129$:
	mov	c,ov
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r3
	rrc	a
	mov	r3,a
00130$:
	djnz	b,00129$
	mov	r5,#0x00
	mov	a,r4
	anl	ar3,a
	mov	a,r5
	anl	ar2,a
	mov	a,r3
	orl	a,r2
	cjne	a,#0x01,00131$
00131$:
	cpl	c
;	snake_v2.c:292: if (value(i))
	mov	_update_food_sloc0_1_0,c
	jc	00105$
;	snake_v2.c:294: if (rand() % cnt == 0)
	push	ar7
	push	ar6
	lcall	_rand
	pop	ar6
	pop	ar7
	mov	__modsint_PARM_2,r7
	mov	(__modsint_PARM_2 + 1),#0x00
	push	ar7
	push	ar6
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar6
	pop	ar7
	orl	a,b
	jnz	00104$
;	snake_v2.c:296: food = i;
	mov	_food,r6
;	snake_v2.c:297: return;
	ret
00104$:
;	snake_v2.c:299: --cnt;
	dec	r7
00105$:
;	snake_v2.c:290: for (char i = 0; i < 64; i++)
	inc	_update_food_i_131072_157
	mov	r6,_update_food_i_131072_157
	sjmp	00109$
00110$:
;	snake_v2.c:301: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update_game'
;------------------------------------------------------------
;__1310720013              Allocated to registers r7 
;a                         Allocated to registers 
;__1966080015              Allocated to registers r7 
;a                         Allocated to registers 
;__1966080017              Allocated to registers r7 
;a                         Allocated to registers 
;__1966080019              Allocated to registers r7 
;dir                       Allocated to registers 
;__1966090020              Allocated to registers r7 
;tail                      Allocated to registers 
;temp                      Allocated to registers r6 
;------------------------------------------------------------
;	snake_v2.c:302: void update_game(void)
;	-----------------------------------------
;	 function update_game
;	-----------------------------------------
_update_game:
;	snake_v2.c:304: if (head != food && (data_mat[(head / 8)] & (0x80 >> (head % 8))))
	mov	a,_food
	cjne	a,_head,00134$
	sjmp	00102$
00134$:
	mov	r6,_head
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x08
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,#_data_mat
	mov	r1,a
	mov	ar5,@r1
	anl	ar6,#0x07
	mov	r7,#0x00
	mov	b,r6
	inc	b
	mov	r6,#0x80
	clr	a
	rlc	a
	mov	ov,c
	sjmp	00136$
00135$:
	mov	c,ov
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
00136$:
	djnz	b,00135$
	mov	r4,#0x00
	mov	a,r5
	anl	ar6,a
	mov	a,r4
	anl	ar7,a
	mov	a,r6
	orl	a,r7
	jz	00102$
;	snake_v2.c:306: game_over();
	lcall	_game_over
00102$:
;	snake_v2.c:308: turn_on(head);
;	snake_v2.c:116: data_mat[a >> 3] |= 0x80 >> (a & 7);
	mov	a,_head
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_data_mat
	mov	r1,a
	mov	ar6,@r1
	anl	ar7,#0x07
	mov	b,r7
	inc	b
	mov	r7,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00139$
00138$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00139$:
	djnz	b,00138$
	mov	a,r7
	orl	a,r6
	mov	@r1,a
;	snake_v2.c:309: if (head == food)
	mov	a,_food
	cjne	a,_head,00110$
;	snake_v2.c:311: ++point;
	inc	_point
;	snake_v2.c:313: update_food();
	lcall	_update_food
;	snake_v2.c:315: turn_on(food);
;	snake_v2.c:116: data_mat[a >> 3] |= 0x80 >> (a & 7);
	mov	a,_food
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_data_mat
	mov	r1,a
	mov	ar6,@r1
	anl	ar7,#0x07
	mov	b,r7
	inc	b
	mov	r7,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00143$
00142$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00143$:
	djnz	b,00142$
	mov	a,r7
	orl	a,r6
	mov	@r1,a
;	snake_v2.c:316: --sqr_left;
	dec	_sqr_left
;	snake_v2.c:317: return;
	ret
00110$:
;	snake_v2.c:321: turn_off(tail);
;	snake_v2.c:120: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
	mov	a,_tail
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_data_mat
	mov	r1,a
	mov	ar6,@r1
	anl	ar7,#0x07
	mov	b,r7
	inc	b
	mov	r7,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00145$
00144$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00145$:
	djnz	b,00144$
	mov	a,r7
	cpl	a
	anl	a,r6
	mov	@r1,a
;	snake_v2.c:322: char dir = get_direction(tail);
	mov	r7,_tail
;	snake_v2.c:80: char temp = 0x80 >> (tail & 7);
	mov	a,#0x07
	anl	a,r7
	mov	r6,a
	mov	b,r6
	inc	b
	mov	r6,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00147$
00146$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r6
	rrc	a
	mov	r6,a
00147$:
	djnz	b,00146$
;	snake_v2.c:322: char dir = get_direction(tail);
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
	add	a,#_bit1
	mov	r1,a
	mov	ar5,@r1
	mov	a,r6
	anl	ar5,a
	mov	a,r5
	cjne	a,#0x01,00148$
00148$:
	cpl	c
	mov	_update_game_sloc0_1_0,c
	clr	a
	rlc	a
	add	a,acc
	mov	r5,a
	mov	a,r7
	add	a,#_bit0
	mov	r1,a
	mov	a,@r1
	anl	ar6,a
	mov	a,r6
	cjne	a,#0x01,00149$
00149$:
	cpl	c
	mov	_update_game_sloc0_1_0,c
	clr	a
	rlc	a
	mov	r7,a
	mov	a,r5
	orl	ar7,a
;	snake_v2.c:323: switch (dir)
	mov	a,r7
	add	a,#0xff - 0x03
	jc	00116$
	mov	a,r7
	add	a,r7
;	snake_v2.c:325: case dir_left:
	mov	dptr,#00151$
	jmp	@a+dptr
00151$:
	sjmp	00104$
	sjmp	00105$
	sjmp	00106$
	sjmp	00107$
00104$:
;	snake_v2.c:326: --tail;
	dec	_tail
;	snake_v2.c:327: break;
;	snake_v2.c:328: case dir_right:
	ret
00105$:
;	snake_v2.c:329: ++tail;
	inc	_tail
;	snake_v2.c:330: break;
;	snake_v2.c:331: case dir_up:
	ret
00106$:
;	snake_v2.c:332: tail -= 8;
	mov	a,_tail
	add	a,#0xf8
	mov	_tail,a
;	snake_v2.c:333: break;
;	snake_v2.c:334: case dir_down:
	ret
00107$:
;	snake_v2.c:335: tail += 8;
	mov	r7,_tail
	mov	a,#0x08
	add	a,r7
	mov	_tail,a
;	snake_v2.c:337: }
00116$:
;	snake_v2.c:339: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'go_up'
;------------------------------------------------------------
;__1310720022              Allocated to registers r7 
;__1310720023              Allocated to registers 
;tail                      Allocated to registers r6 
;direction                 Allocated to registers 
;temp                      Allocated to registers r5 
;------------------------------------------------------------
;	snake_v2.c:341: void go_up(void)
;	-----------------------------------------
;	 function go_up
;	-----------------------------------------
_go_up:
;	snake_v2.c:343: if (head < 8)
	mov	a,#0x100 - 0x08
	add	a,_head
	jc	00102$
;	snake_v2.c:344: game_over();
	lcall	_game_over
00102$:
;	snake_v2.c:345: if (cur_dir == dir_down)
	mov	a,#0x03
	cjne	a,_cur_dir,00104$
;	snake_v2.c:346: return;
	ret
00104$:
;	snake_v2.c:347: update_direction(head, dir_up);
	mov	r7,_head
	mov	ar6,r7
;	snake_v2.c:86: char temp = 0x80 >> (tail & 7);
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	b,r5
	inc	b
	mov	r5,#0x80
	clr	a
	mov	r4,a
	rlc	a
	mov	ov,c
	sjmp	00126$
00125$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r5
	rrc	a
	mov	r5,a
00126$:
	djnz	b,00125$
;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_bit1
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	cpl	a
	anl	a,r7
	mov	@r1,a
;	snake_v2.c:90: bit1[tail >> 3] |= temp;
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r6,a
	add	a,#_bit1
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	orl	a,r7
	mov	@r1,a
;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
	mov	a,r6
	add	a,#_bit0
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	cpl	a
	anl	a,r7
	mov	@r1,a
;	snake_v2.c:348: head = head - 8;
	mov	a,_head
	add	a,#0xf8
	mov	_head,a
;	snake_v2.c:349: cur_dir = dir_up;
	mov	_cur_dir,#0x02
;	snake_v2.c:350: update_game();
;	snake_v2.c:351: }
	ljmp	_update_game
;------------------------------------------------------------
;Allocation info for local variables in function 'go_down'
;------------------------------------------------------------
;__1310720025              Allocated to registers r7 
;__1310720026              Allocated to registers 
;tail                      Allocated to registers r6 
;direction                 Allocated to registers 
;temp                      Allocated to registers r5 
;------------------------------------------------------------
;	snake_v2.c:352: void go_down(void)
;	-----------------------------------------
;	 function go_down
;	-----------------------------------------
_go_down:
;	snake_v2.c:354: if (head >= 56)
	mov	a,#0x100 - 0x38
	add	a,_head
	jnc	00102$
;	snake_v2.c:355: game_over();
	lcall	_game_over
00102$:
;	snake_v2.c:356: if (cur_dir == dir_up)
	mov	a,#0x02
	cjne	a,_cur_dir,00104$
;	snake_v2.c:357: return;
	ret
00104$:
;	snake_v2.c:358: update_direction(head, dir_down);
	mov	r7,_head
	mov	ar6,r7
;	snake_v2.c:86: char temp = 0x80 >> (tail & 7);
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	b,r5
	inc	b
	mov	r5,#0x80
	clr	a
	mov	r4,a
	rlc	a
	mov	ov,c
	sjmp	00126$
00125$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r5
	rrc	a
	mov	r5,a
00126$:
	djnz	b,00125$
;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_bit1
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	cpl	a
	anl	a,r7
	mov	@r1,a
;	snake_v2.c:90: bit1[tail >> 3] |= temp;
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r6,a
	add	a,#_bit1
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	orl	a,r7
	mov	@r1,a
;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
	mov	a,r6
	add	a,#_bit0
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	cpl	a
	anl	a,r7
	mov	@r1,a
;	snake_v2.c:98: bit0[tail >> 3] |= temp;
	mov	ar7,@r1
	mov	a,r5
	orl	a,r7
	mov	@r1,a
;	snake_v2.c:359: head = head + 8;
	mov	r7,_head
	mov	a,#0x08
	add	a,r7
	mov	_head,a
;	snake_v2.c:360: cur_dir = dir_down;
	mov	_cur_dir,#0x03
;	snake_v2.c:361: update_game();
;	snake_v2.c:362: }
	ljmp	_update_game
;------------------------------------------------------------
;Allocation info for local variables in function 'go_left'
;------------------------------------------------------------
;__1310720028              Allocated to registers r7 
;__1310720029              Allocated to registers 
;tail                      Allocated to registers r6 
;direction                 Allocated to registers 
;temp                      Allocated to registers r5 
;------------------------------------------------------------
;	snake_v2.c:363: void go_left(void)
;	-----------------------------------------
;	 function go_left
;	-----------------------------------------
_go_left:
;	snake_v2.c:365: if (head % 8 == 0)
	mov	a,_head
	anl	a,#0x07
	jz	00123$
	sjmp	00102$
00123$:
;	snake_v2.c:366: game_over();
	lcall	_game_over
00102$:
;	snake_v2.c:367: if (cur_dir == dir_right)
	mov	a,#0x01
	cjne	a,_cur_dir,00104$
;	snake_v2.c:368: return;
	ret
00104$:
;	snake_v2.c:369: update_direction(head, dir_left);
	mov	r7,_head
	mov	ar6,r7
;	snake_v2.c:86: char temp = 0x80 >> (tail & 7);
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	b,r5
	inc	b
	mov	r5,#0x80
	clr	a
	mov	r4,a
	rlc	a
	mov	ov,c
	sjmp	00127$
00126$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r5
	rrc	a
	mov	r5,a
00127$:
	djnz	b,00126$
;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_bit1
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	cpl	a
	anl	a,r7
	mov	@r1,a
;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_bit0
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	cpl	a
	anl	a,r7
	mov	@r1,a
;	snake_v2.c:370: --head;
	dec	_head
;	snake_v2.c:371: cur_dir = dir_left;
	mov	_cur_dir,#0x00
;	snake_v2.c:372: update_game();
;	snake_v2.c:373: }
	ljmp	_update_game
;------------------------------------------------------------
;Allocation info for local variables in function 'go_right'
;------------------------------------------------------------
;__1310720031              Allocated to registers r7 
;__1310720032              Allocated to registers 
;tail                      Allocated to registers r6 
;direction                 Allocated to registers 
;temp                      Allocated to registers r5 
;------------------------------------------------------------
;	snake_v2.c:374: void go_right(void)
;	-----------------------------------------
;	 function go_right
;	-----------------------------------------
_go_right:
;	snake_v2.c:376: if (head % 8 == 7)
	mov	a,#0x07
	anl	a,_head
	mov	r6,a
	mov	r7,#0x00
	cjne	r6,#0x07,00102$
	cjne	r7,#0x00,00102$
;	snake_v2.c:377: game_over();
	lcall	_game_over
00102$:
;	snake_v2.c:378: if (cur_dir == dir_left)
	mov	a,_cur_dir
	jnz	00104$
;	snake_v2.c:379: return;
	ret
00104$:
;	snake_v2.c:380: update_direction(head, dir_right);
	mov	r7,_head
	mov	ar6,r7
;	snake_v2.c:86: char temp = 0x80 >> (tail & 7);
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	b,r5
	inc	b
	mov	r5,#0x80
	clr	a
	mov	r4,a
	rlc	a
	mov	ov,c
	sjmp	00126$
00125$:
	mov	c,ov
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r5
	rrc	a
	mov	r5,a
00126$:
	djnz	b,00125$
;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_bit1
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	cpl	a
	anl	a,r7
	mov	@r1,a
;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_bit0
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	cpl	a
	anl	a,r7
	mov	@r1,a
;	snake_v2.c:98: bit0[tail >> 3] |= temp;
	mov	ar7,@r1
	mov	a,r5
	orl	a,r7
	mov	@r1,a
;	snake_v2.c:381: ++head;
	inc	_head
;	snake_v2.c:382: cur_dir = dir_right;
	mov	_cur_dir,#0x01
;	snake_v2.c:383: update_game();
;	snake_v2.c:384: }
	ljmp	_update_game
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_timer_0'
;------------------------------------------------------------
;	snake_v2.c:385: void reset_timer_0(void)
;	-----------------------------------------
;	 function reset_timer_0
;	-----------------------------------------
_reset_timer_0:
;	snake_v2.c:388: TH0 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
	mov	_TH0,#0x4b
;	snake_v2.c:389: TL0 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
	mov	_TL0,#0xff
;	snake_v2.c:390: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'key_pressed_handle'
;------------------------------------------------------------
;	snake_v2.c:392: void key_pressed_handle(void)
;	-----------------------------------------
;	 function key_pressed_handle
;	-----------------------------------------
_key_pressed_handle:
;	snake_v2.c:394: reset_timer_0();
	lcall	_reset_timer_0
;	snake_v2.c:395: game_timer_counter = -7;
	mov	_game_timer_counter,#0xf9
	mov	(_game_timer_counter + 1),#0xff
;	snake_v2.c:396: switch (key_pressed)
	mov	a,_key_pressed
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,_key_pressed
	mov	b,#0x03
	mul	ab
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	ljmp	00104$
	ljmp	00101$
	ljmp	00103$
	ljmp	00102$
;	snake_v2.c:398: case 1:
00101$:
;	snake_v2.c:399: go_up();
;	snake_v2.c:400: break;
;	snake_v2.c:401: case 3:
	ljmp	_go_up
00102$:
;	snake_v2.c:402: go_down();
;	snake_v2.c:403: break;
;	snake_v2.c:404: case 2:
	ljmp	_go_down
00103$:
;	snake_v2.c:405: go_left();
;	snake_v2.c:406: break;
;	snake_v2.c:407: case 0:
	ljmp	_go_left
00104$:
;	snake_v2.c:408: go_right();
;	snake_v2.c:409: break;
;	snake_v2.c:410: default:
	ljmp	_go_right
00105$:
;	snake_v2.c:411: point = key_pressed;
	mov	_point,_key_pressed
;	snake_v2.c:413: }
;	snake_v2.c:414: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_init'
;------------------------------------------------------------
;	snake_v2.c:415: void uart_init(void)
;	-----------------------------------------
;	 function uart_init
;	-----------------------------------------
_uart_init:
;	snake_v2.c:419: TMOD &= 0x0f;
	anl	_TMOD,#0x0f
;	snake_v2.c:420: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	snake_v2.c:421: TH1 = 0xfd;
	mov	_TH1,#0xfd
;	snake_v2.c:422: TL1 = 0xfd;
	mov	_TL1,#0xfd
;	snake_v2.c:423: ET1 = 0;
;	assignBit
	clr	_ET1
;	snake_v2.c:424: TR1 = 1;
;	assignBit
	setb	_TR1
;	snake_v2.c:426: SM0 = 0;
;	assignBit
	clr	_SM0
;	snake_v2.c:427: SM1 = 1;
;	assignBit
	setb	_SM1
;	snake_v2.c:429: ES = 1;
;	assignBit
	setb	_ES
;	snake_v2.c:430: EA = 1;
;	assignBit
	setb	_EA
;	snake_v2.c:431: REN = 1;
;	assignBit
	setb	_REN
;	snake_v2.c:432: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Receive'
;------------------------------------------------------------
;	snake_v2.c:433: void UART_Receive(void) __interrupt(4)
;	-----------------------------------------
;	 function UART_Receive
;	-----------------------------------------
_UART_Receive:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	snake_v2.c:435: P2 = 0x10;
	mov	_P2,#0x10
;	snake_v2.c:436: if (RI)
	jnb	_RI,00105$
;	snake_v2.c:438: P2 = ~SBUF;
	mov	a,_SBUF
	cpl	a
	mov	_P2,a
;	snake_v2.c:440: received_data = SBUF; // Get received data
	mov	_received_data,_SBUF
;	snake_v2.c:441: point = received_data + 10;
	mov	r7,_received_data
	mov	a,#0x0a
	add	a,r7
	mov	_point,a
;	snake_v2.c:443: key_pressed = received_data;
	mov	_key_pressed,_received_data
;	snake_v2.c:444: if (TR0)
	jnb	_TR0,00102$
;	snake_v2.c:445: key_pressed_handle();
	lcall	_key_pressed_handle
00102$:
;	snake_v2.c:446: RI = 0; // Clear receive interrupt flag
;	assignBit
	clr	_RI
00105$:
;	snake_v2.c:448: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_interrupt'
;------------------------------------------------------------
;__2621440034              Allocated to registers r7 
;a                         Allocated to registers 
;__2621440036              Allocated to registers r7 
;a                         Allocated to registers 
;------------------------------------------------------------
;	snake_v2.c:450: void timer0_interrupt(void) __interrupt(1)
;	-----------------------------------------
;	 function timer0_interrupt
;	-----------------------------------------
_timer0_interrupt:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	snake_v2.c:453: ++timer_counter;
	inc	_timer_counter
	clr	a
	cjne	a,_timer_counter,00133$
	inc	(_timer_counter + 1)
	cjne	a,(_timer_counter + 1),00133$
	inc	(_timer_counter + 2)
	cjne	a,(_timer_counter + 2),00133$
	inc	(_timer_counter + 3)
00133$:
;	snake_v2.c:454: reset_timer_0();
	lcall	_reset_timer_0
;	snake_v2.c:455: ++game_timer_counter;
	inc	_game_timer_counter
	clr	a
	cjne	a,_game_timer_counter,00134$
	inc	(_game_timer_counter + 1)
00134$:
;	snake_v2.c:456: if (!(timer_counter % 3))
	mov	__modulong_PARM_2,#0x03
	clr	a
	mov	(__modulong_PARM_2 + 1),a
	mov	(__modulong_PARM_2 + 2),a
	mov	(__modulong_PARM_2 + 3),a
	mov	dpl,_timer_counter
	mov	dph,(_timer_counter + 1)
	mov	b,(_timer_counter + 2)
	mov	a,(_timer_counter + 3)
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00105$
;	snake_v2.c:458: if (show_food)
	mov	a,_show_food
	jz	00102$
;	snake_v2.c:460: turn_off(food);
;	snake_v2.c:120: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
	mov	a,_food
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_data_mat
	mov	r1,a
	mov	ar6,@r1
	anl	ar7,#0x07
	mov	b,r7
	inc	b
	mov	r7,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00138$
00137$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00138$:
	djnz	b,00137$
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r6
	mov	@r1,a
;	snake_v2.c:461: show_food = 0;
	mov	_show_food,#0x00
	sjmp	00105$
00102$:
;	snake_v2.c:465: turn_on(food);
;	snake_v2.c:116: data_mat[a >> 3] |= 0x80 >> (a & 7);
	mov	a,_food
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_data_mat
	mov	r1,a
	mov	ar6,@r1
	anl	ar7,#0x07
	mov	b,r7
	inc	b
	mov	r7,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00140$
00139$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00140$:
	djnz	b,00139$
	mov	a,r7
	orl	a,r6
	mov	@r1,a
;	snake_v2.c:466: show_food = 1;
	mov	_show_food,#0x01
00105$:
;	snake_v2.c:469: if (!(game_timer_counter % 10))
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_game_timer_counter
	mov	dph,(_game_timer_counter + 1)
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00115$
;	snake_v2.c:471: switch (cur_dir)
	mov	a,_cur_dir
	add	a,#0xff - 0x03
	jc	00115$
	mov	a,_cur_dir
	mov	b,#0x03
	mul	ab
	mov	dptr,#00143$
	jmp	@a+dptr
00143$:
	ljmp	00108$
	ljmp	00109$
	ljmp	00106$
	ljmp	00107$
;	snake_v2.c:473: case (dir_up):
00106$:
;	snake_v2.c:474: go_up();
	lcall	_go_up
;	snake_v2.c:475: break;
;	snake_v2.c:476: case (dir_down):
	sjmp	00115$
00107$:
;	snake_v2.c:477: go_down();
	lcall	_go_down
;	snake_v2.c:478: break;
;	snake_v2.c:479: case (dir_left):
	sjmp	00115$
00108$:
;	snake_v2.c:480: go_left();
	lcall	_go_left
;	snake_v2.c:481: break;
;	snake_v2.c:482: case (dir_right):
	sjmp	00115$
00109$:
;	snake_v2.c:483: go_right();
	lcall	_go_right
;	snake_v2.c:485: }
00115$:
;	snake_v2.c:488: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__1310720038              Allocated to registers 
;__1310720039              Allocated to registers 
;tail                      Allocated to registers 
;direction                 Allocated to registers 
;temp                      Allocated to registers 
;__1310720041              Allocated to registers 
;__1310720042              Allocated to registers 
;tail                      Allocated to registers 
;direction                 Allocated to registers 
;temp                      Allocated to registers 
;__1310720044              Allocated to registers 
;__1310720045              Allocated to registers 
;tail                      Allocated to registers 
;direction                 Allocated to registers 
;temp                      Allocated to registers 
;__1310720047              Allocated to registers r7 
;a                         Allocated to registers 
;row                       Allocated to registers r7 
;current_data              Allocated with name '_main_current_data_655360_262'
;i                         Allocated to registers r3 
;i                         Allocated to registers r6 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	snake_v2.c:490: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	snake_v2.c:492: uart_init();
	lcall	_uart_init
;	snake_v2.c:493: IT0 = 1; // Falling edge trigger
;	assignBit
	setb	_IT0
;	snake_v2.c:494: EX0 = 1; // Enable INT0 interrupt
;	assignBit
	setb	_EX0
;	snake_v2.c:495: EA = 1;  // Enable global interrupt flag
;	assignBit
	setb	_EA
;	snake_v2.c:497: TMOD = 0x21; // Timer 0 mode 1 (16-bit timer
	mov	_TMOD,#0x21
;	snake_v2.c:499: TH0 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
	mov	_TH0,#0x4b
;	snake_v2.c:500: TL0 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
	mov	_TL0,#0xff
;	snake_v2.c:504: reset_timer_0();
	lcall	_reset_timer_0
;	snake_v2.c:506: while (key_pressed != 5)
00101$:
	mov	a,#0x05
	cjne	a,_key_pressed,00101$
;	snake_v2.c:509: ET0 = 1; // Enable timer 0 interrupt'
;	assignBit
	setb	_ET0
;	snake_v2.c:510: TR0 = 1; // Start timer 0
;	assignBit
	setb	_TR0
;	snake_v2.c:511: srand(timer_counter);
	mov	dpl,_timer_counter
	mov	dph,(_timer_counter + 1)
	lcall	_srand
;	snake_v2.c:513: P0 = 0x00;
	mov	_P0,#0x00
;	snake_v2.c:514: SCK = 0;
;	assignBit
	clr	_P3_6
;	snake_v2.c:515: RCK = 0;
;	assignBit
	clr	_P3_5
;	snake_v2.c:516: data_mat[0] = 0xE0;
	mov	_data_mat,#0xe0
;	snake_v2.c:517: head = 2;
	mov	_head,#0x02
;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
	mov	a,#0x7f
	anl	a,_bit1
	mov	_bit1,a
;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
	mov	a,#0x7f
	anl	a,_bit0
	mov	_bit0,a
;	snake_v2.c:98: bit0[tail >> 3] |= temp;
	mov	a,#0x80
	orl	a,_bit0
	mov	_bit0,a
;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
	mov	a,#0xbf
	anl	a,_bit1
	mov	_bit1,a
;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
	mov	a,#0xbf
	anl	a,_bit0
	mov	_bit0,a
;	snake_v2.c:98: bit0[tail >> 3] |= temp;
	mov	a,#0x40
	orl	a,_bit0
	mov	_bit0,a
;	snake_v2.c:87: bit1[tail >> 3] &= ~temp;
	mov	a,#0xdf
	anl	a,_bit1
	mov	_bit1,a
;	snake_v2.c:95: bit0[tail >> 3] &= ~temp;
	mov	a,#0xdf
	anl	a,_bit0
	mov	_bit0,a
;	snake_v2.c:98: bit0[tail >> 3] |= temp;
	mov	a,#0x20
	orl	a,_bit0
	mov	_bit0,a
;	snake_v2.c:522: tail = 0;
	mov	_tail,#0x00
;	snake_v2.c:524: update_food();
	lcall	_update_food
;	snake_v2.c:525: turn_on(food);
;	snake_v2.c:116: data_mat[a >> 3] |= 0x80 >> (a & 7);
	mov	a,_food
	mov	r7,a
	swap	a
	rl	a
	anl	a,#0x1f
	add	a,#_data_mat
	mov	r1,a
	mov	ar6,@r1
	anl	ar7,#0x07
	mov	b,r7
	inc	b
	mov	r7,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00212$
00211$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00212$:
	djnz	b,00211$
	mov	a,r7
	orl	a,r6
	mov	@r1,a
;	snake_v2.c:527: while (1)
00105$:
;	snake_v2.c:59: P2 = 0b11111111;
	mov	_P2,#0xff
;	snake_v2.c:60: P0 = 0xFF;
	mov	_P0,#0xff
;	snake_v2.c:40: for (char row = 0; row < 8; row++)
	mov	r7,#0x00
00137$:
	cjne	r7,#0x08,00213$
00213$:
	jnc	00126$
;	snake_v2.c:42: const char current_data = data_mat[row];
	mov	a,r7
	add	a,#_data_mat
	mov	r1,a
	mov	_main_current_data_655360_262,@r1
;	snake_v2.c:43: for (char i = 0; i < 8; i++)
	mov	b,r7
	inc	b
	mov	r4,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00216$
00215$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00216$:
	djnz	b,00215$
	mov	r3,#0x00
00131$:
	cjne	r3,#0x08,00217$
00217$:
	jnc	00123$
;	snake_v2.c:45: SER = (0x80 >> row) & (0x80 >> i);
	mov	b,r3
	inc	b
	mov	r2,#0x80
	clr	a
	mov	r6,a
	rlc	a
	mov	ov,c
	sjmp	00220$
00219$:
	mov	c,ov
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r2
	rrc	a
	mov	r2,a
00220$:
	djnz	b,00219$
	mov	a,r4
	anl	ar2,a
	mov	a,r5
	anl	ar6,a
;	assignBit
	mov	a,r2
	orl	a,r6
	add	a,#0xff
	mov	_P3_4,c
;	snake_v2.c:46: SCK = 1;
;	assignBit
	setb	_P3_6
;	snake_v2.c:47: SCK = 0;
;	assignBit
	clr	_P3_6
;	snake_v2.c:43: for (char i = 0; i < 8; i++)
	inc	r3
	sjmp	00131$
00123$:
;	snake_v2.c:49: P0 = 0xff;
	mov	_P0,#0xff
;	snake_v2.c:50: RCK = 1;
;	assignBit
	setb	_P3_5
;	snake_v2.c:51: RCK = 0;
;	assignBit
	clr	_P3_5
;	snake_v2.c:52: P0 = ~current_data;
	mov	a,_main_current_data_655360_262
	cpl	a
	mov	_P0,a
;	snake_v2.c:53: for (char i = 0; i < 5; i++)
	mov	r6,#0x00
00134$:
	cjne	r6,#0x05,00221$
00221$:
	jnc	00138$
	inc	r6
	sjmp	00134$
00138$:
;	snake_v2.c:40: for (char row = 0; row < 8; row++)
	inc	r7
;	snake_v2.c:61: display_led_mat();
	sjmp	00137$
00126$:
;	snake_v2.c:63: for (i = 0; i < 100; i++)
	mov	r7,#0x64
00141$:
	djnz	r7,00141$
;	snake_v2.c:65: SER = 0;
;	assignBit
	clr	_P3_4
;	snake_v2.c:66: for (i = 0; i < 8; i++)
	mov	r7,#0x00
00142$:
;	snake_v2.c:68: SCK = 1;
;	assignBit
	setb	_P3_6
;	snake_v2.c:69: SCK = 0;
;	assignBit
	clr	_P3_6
;	snake_v2.c:66: for (i = 0; i < 8; i++)
	inc	r7
	cjne	r7,#0x08,00224$
00224$:
	jc	00142$
;	snake_v2.c:71: RCK = 1;
;	assignBit
	setb	_P3_5
;	snake_v2.c:72: RCK = 0;
;	assignBit
	clr	_P3_5
;	snake_v2.c:73: display_number(point);
	mov	r4,_point
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_display_number
;	snake_v2.c:74: display_number(point);
	mov	r4,_point
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_display_number
;	snake_v2.c:75: display_number(point);
	mov	r4,_point
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_display_number
;	snake_v2.c:529: display_game_and_point();
;	snake_v2.c:531: }
	ljmp	00105$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_number_string:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
_game_over_floating_display_65537_111:
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x66	; 102	'f'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0xa5	; 165
	.db #0x81	; 129
	.db #0x99	; 153
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x42	; 66	'B'
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x42	; 66	'B'
	.db #0x3c	; 60
	.db #0x60	; 96
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x1f	; 31
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
_game_over_firework_65537_111:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
