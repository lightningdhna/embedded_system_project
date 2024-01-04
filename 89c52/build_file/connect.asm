;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module connect
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _back
	.globl _forward
	.globl _number_string
	.globl _main
	.globl _key_pressed_handle
	.globl _UART_Receive
	.globl _uart_send
	.globl _uart_init
	.globl _display_number
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
	.globl _kit_id
	.globl _key_pressed
	.globl _data_mat
	.globl _point
	.globl _received_data
	.globl _move_up
	.globl _move_down
	.globl _move_left
	.globl _move_right
	.globl _resolve_message
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_display_number_led_65537_38:
	.ds 1
_display_number_neg_65537_38:
	.ds 1
_received_data::
	.ds 1
_point::
	.ds 1
_data_mat::
	.ds 8
_key_pressed::
	.ds 1
_main_current_data_458752_175:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
_kit_id::
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
	reti
	.ds	7
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
;	connect.c:12: char point = 65;
	mov	_point,#0x41
;	connect.c:116: char key_pressed = 0;
	mov	_key_pressed,#0x00
;	connect.c:11: __bit kit_id = 0;
;	assignBit
	clr	_kit_id
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
;led                       Allocated with name '_display_number_led_65537_38'
;neg                       Allocated with name '_display_number_neg_65537_38'
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
	mov	_display_number_neg_65537_38,#0x00
;	led7seg.h:40: if (number < 0)
	mov	a,r7
	jnb	acc.7,00122$
;	led7seg.h:42: neg = 1;
	mov	_display_number_neg_65537_38,#0x01
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
	mov	_display_number_led_65537_38,#0x00
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
	mov	r3,_display_number_led_65537_38
	inc	_display_number_led_65537_38
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
	mov	a,_display_number_neg_65537_38
	jz	00115$
;	led7seg.h:60: P0 = 0;
	mov	_P0,#0x00
;	led7seg.h:61: P2 = led << 2;
	mov	a,_display_number_led_65537_38
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
;Allocation info for local variables in function 'uart_init'
;------------------------------------------------------------
;	connect.c:24: void uart_init(void)
;	-----------------------------------------
;	 function uart_init
;	-----------------------------------------
_uart_init:
;	connect.c:28: TMOD &= 0x0f;
	anl	_TMOD,#0x0f
;	connect.c:29: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	connect.c:30: TH1 = 0xfd;
	mov	_TH1,#0xfd
;	connect.c:31: TL1 = 0xfd;
	mov	_TL1,#0xfd
;	connect.c:32: ET1 = 0;
;	assignBit
	clr	_ET1
;	connect.c:33: TR1 = 1;
;	assignBit
	setb	_TR1
;	connect.c:35: SM0 = 0;
;	assignBit
	clr	_SM0
;	connect.c:36: SM1 = 1;
;	assignBit
	setb	_SM1
;	connect.c:38: ES = 1;
;	assignBit
	setb	_ES
;	connect.c:39: EA = 1;
;	assignBit
	setb	_EA
;	connect.c:40: REN = 1;
;	assignBit
	setb	_REN
;	connect.c:41: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_send'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	connect.c:43: void uart_send(__code char data)
;	-----------------------------------------
;	 function uart_send
;	-----------------------------------------
_uart_send:
	mov	r7,dpl
;	connect.c:45: ES = 0;
;	assignBit
	clr	_ES
;	connect.c:46: SBUF = data; // Load data into buffer
	mov	_SBUF,r7
;	connect.c:47: while (TI == 0)
00101$:
;	connect.c:50: TI = 0; // Clear transmit interrupt flag
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	connect.c:51: ES = 1;
;	assignBit
	setb	_ES
;	connect.c:52: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Receive'
;------------------------------------------------------------
;	connect.c:54: void UART_Receive(void) __interrupt(4)
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
;	connect.c:56: P2 = 0x10;
	mov	_P2,#0x10
;	connect.c:57: if (RI)
	jnb	_RI,00103$
;	connect.c:59: P2 = ~SBUF;
	mov	a,_SBUF
	cpl	a
	mov	_P2,a
;	connect.c:60: received_data = SBUF; // Get received data
	mov	_received_data,_SBUF
;	connect.c:61: resolve_message();
	lcall	_resolve_message
;	connect.c:62: RI = 0; // Clear receive interrupt flag
;	assignBit
	clr	_RI
00103$:
;	connect.c:64: }
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
;Allocation info for local variables in function 'key_pressed_handle'
;------------------------------------------------------------
;	connect.c:117: void key_pressed_handle(void)
;	-----------------------------------------
;	 function key_pressed_handle
;	-----------------------------------------
_key_pressed_handle:
;	connect.c:119: if (point >= 64)
	mov	a,#0x100 - 0x40
	add	a,_point
	jnc	00102$
;	connect.c:121: uart_send(key_pressed);
	mov	dpl,_key_pressed
;	connect.c:122: return;
	ljmp	_uart_send
00102$:
;	connect.c:124: switch (key_pressed)
	mov	a,#0x02
	cjne	a,_key_pressed,00131$
	sjmp	00103$
00131$:
	mov	a,#0x05
	cjne	a,_key_pressed,00132$
	sjmp	00105$
00132$:
	mov	a,#0x06
	cjne	a,_key_pressed,00133$
	sjmp	00104$
00133$:
	mov	a,#0x07
;	connect.c:126: case 2:
	cjne	a,_key_pressed,00108$
	sjmp	00106$
00103$:
;	connect.c:128: move_up();
;	connect.c:129: break;
;	connect.c:130: case 6:
	ljmp	_move_up
00104$:
;	connect.c:132: move_down();
;	connect.c:133: break;
;	connect.c:134: case 5:
	ljmp	_move_down
00105$:
;	connect.c:136: move_left();
;	connect.c:137: break;
;	connect.c:138: case 7:
	ljmp	_move_left
00106$:
;	connect.c:140: move_right();
;	connect.c:142: }
;	connect.c:143: }
	ljmp	_move_right
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move_up'
;------------------------------------------------------------
;__1310720007              Allocated to registers r7 
;a                         Allocated to registers 
;__1310720009              Allocated to registers r7 
;a                         Allocated to registers 
;------------------------------------------------------------
;	connect.c:149: void move_up(void)
;	-----------------------------------------
;	 function move_up
;	-----------------------------------------
_move_up:
;	connect.c:151: if (point < 8)
	mov	a,#0x100 - 0x08
	add	a,_point
	jc	00102$
;	connect.c:152: return;
	ret
00102$:
;	connect.c:153: turn_off(point);
;	connect.c:107: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00105$
;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
	mov	a,r7
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
	sjmp	00126$
00125$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00126$:
	djnz	b,00125$
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r6
	mov	@r1,a
;	connect.c:153: turn_off(point);
00105$:
;	connect.c:154: point -= 8;
	mov	a,_point
	add	a,#0xf8
	mov	_point,a
;	connect.c:155: turn_on(point);
;	connect.c:101: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00109$
;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
	mov	a,r7
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
	sjmp	00129$
00128$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00129$:
	djnz	b,00128$
	mov	a,r7
	orl	a,r6
	mov	@r1,a
;	connect.c:155: turn_on(point);
00109$:
;	connect.c:156: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move_down'
;------------------------------------------------------------
;__1310720011              Allocated to registers r7 
;a                         Allocated to registers 
;__1310720013              Allocated to registers r7 
;a                         Allocated to registers 
;------------------------------------------------------------
;	connect.c:157: void move_down(void)
;	-----------------------------------------
;	 function move_down
;	-----------------------------------------
_move_down:
;	connect.c:159: if (point >= 56)
	mov	a,#0x100 - 0x38
	add	a,_point
	jnc	00102$
;	connect.c:161: return;
	ret
00102$:
;	connect.c:163: turn_off(point);
;	connect.c:107: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00105$
;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
	mov	a,r7
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
	sjmp	00126$
00125$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00126$:
	djnz	b,00125$
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r6
	mov	@r1,a
;	connect.c:163: turn_off(point);
00105$:
;	connect.c:164: point += 8;
	mov	r7,_point
	mov	a,#0x08
	add	a,r7
	mov	_point,a
;	connect.c:165: turn_on(point);
;	connect.c:101: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00109$
;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
	mov	a,r7
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
	sjmp	00129$
00128$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00129$:
	djnz	b,00128$
	mov	a,r7
	orl	a,r6
	mov	@r1,a
;	connect.c:165: turn_on(point);
00109$:
;	connect.c:166: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move_left'
;------------------------------------------------------------
;__2621440015              Allocated to registers r7 
;a                         Allocated to registers 
;__1310720017              Allocated to registers r7 
;a                         Allocated to registers 
;__1310720019              Allocated to registers r7 
;a                         Allocated to registers 
;------------------------------------------------------------
;	connect.c:167: void move_left(void)
;	-----------------------------------------
;	 function move_left
;	-----------------------------------------
_move_left:
;	connect.c:169: if ((point & 7) == 0)
	mov	a,_point
	anl	a,#0x07
	jz	00137$
	sjmp	00104$
00137$:
;	connect.c:171: if (kit_id)
	jnb	_kit_id,00102$
;	connect.c:173: turn_off(point);
;	connect.c:107: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00107$
;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
	mov	a,r7
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
	sjmp	00141$
00140$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00141$:
	djnz	b,00140$
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r6
	mov	@r1,a
;	connect.c:173: turn_off(point);
00107$:
;	connect.c:174: uart_send(back | (point >> 3));
	mov	a,_point
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
	mov	dptr,#_back
	clr	a
	movc	a,@a+dptr
	orl	a,r7
	mov	dpl,a
	lcall	_uart_send
;	connect.c:175: point = 100;
	mov	_point,#0x64
00102$:
;	connect.c:177: return;
	ret
00104$:
;	connect.c:179: turn_off(point);
;	connect.c:107: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00110$
;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
	mov	a,r7
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
	sjmp	00144$
00143$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00144$:
	djnz	b,00143$
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r6
	mov	@r1,a
;	connect.c:179: turn_off(point);
00110$:
;	connect.c:180: point--;
	dec	_point
;	connect.c:181: turn_on(point);
;	connect.c:101: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00114$
;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
	mov	a,r7
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
	sjmp	00147$
00146$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00147$:
	djnz	b,00146$
	mov	a,r7
	orl	a,r6
	mov	@r1,a
;	connect.c:181: turn_on(point);
00114$:
;	connect.c:182: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'move_right'
;------------------------------------------------------------
;__2621440021              Allocated to registers r7 
;a                         Allocated to registers 
;__1310720023              Allocated to registers r7 
;a                         Allocated to registers 
;__1310720025              Allocated to registers r7 
;a                         Allocated to registers 
;------------------------------------------------------------
;	connect.c:183: void move_right(void)
;	-----------------------------------------
;	 function move_right
;	-----------------------------------------
_move_right:
;	connect.c:185: if ((point & 7) == 7)
	mov	r6,_point
	anl	ar6,#0x07
	mov	r7,#0x00
	cjne	r6,#0x07,00104$
	cjne	r7,#0x00,00104$
;	connect.c:187: if (kit_id == 0)
	jb	_kit_id,00102$
;	connect.c:189: turn_off(point);
;	connect.c:107: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00107$
;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
	mov	a,r7
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
	sjmp	00141$
00140$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00141$:
	djnz	b,00140$
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r6
	mov	@r1,a
;	connect.c:189: turn_off(point);
00107$:
;	connect.c:190: uart_send(forward | (point >> 3));
	mov	a,_point
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
	mov	dptr,#_forward
	clr	a
	movc	a,@a+dptr
	orl	a,r7
	mov	dpl,a
	lcall	_uart_send
;	connect.c:191: point = 100;
	mov	_point,#0x64
00102$:
;	connect.c:193: return;
	ret
00104$:
;	connect.c:195: turn_off(point);
;	connect.c:107: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00110$
;	connect.c:109: data_mat[a >> 3] &= ~(0x80 >> (a & 7));
	mov	a,r7
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
	sjmp	00144$
00143$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00144$:
	djnz	b,00143$
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r6
	mov	@r1,a
;	connect.c:195: turn_off(point);
00110$:
;	connect.c:196: point++;
	inc	_point
;	connect.c:197: turn_on(point);
;	connect.c:101: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00114$
;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
	mov	a,r7
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
	sjmp	00147$
00146$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00147$:
	djnz	b,00146$
	mov	a,r7
	orl	a,r6
	mov	@r1,a
;	connect.c:197: turn_on(point);
00114$:
;	connect.c:198: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'resolve_message'
;------------------------------------------------------------
;__1966080027              Allocated to registers r7 
;a                         Allocated to registers 
;__1966080029              Allocated to registers r7 
;a                         Allocated to registers 
;------------------------------------------------------------
;	connect.c:199: void resolve_message(void)
;	-----------------------------------------
;	 function resolve_message
;	-----------------------------------------
_resolve_message:
;	connect.c:201: if (received_data & forward)
	mov	dptr,#_forward
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	anl	a,_received_data
	jz	00105$
;	connect.c:203: kit_id = 1;
;	assignBit
	setb	_kit_id
;	connect.c:204: point = 8 * (received_data ^ forward);
	mov	a,_received_data
	xrl	ar7,a
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	mov	_point,a
;	connect.c:206: turn_on(point);
;	connect.c:101: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jnc	00132$
	ret
00132$:
;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
	mov	a,r7
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
	sjmp	00134$
00133$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00134$:
	djnz	b,00133$
	mov	a,r7
	orl	a,r6
	mov	@r1,a
;	connect.c:206: turn_on(point);
	ret
00105$:
;	connect.c:208: else if (received_data & back)
	mov	dptr,#_back
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	anl	a,_received_data
	jz	00102$
;	connect.c:210: kit_id = 0;
;	assignBit
	clr	_kit_id
;	connect.c:211: point = 7 + (8 * (received_data ^ back));
	mov	a,_received_data
	xrl	ar7,a
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	add	a,#0x07
	mov	_point,a
;	connect.c:212: turn_on(point);
;	connect.c:101: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00113$
;	connect.c:103: data_mat[a >> 3] |= 0x80 >> (a & 7);
	mov	a,r7
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
	orl	a,r6
	mov	@r1,a
;	connect.c:212: turn_on(point);
	ret
00102$:
;	connect.c:216: key_pressed = received_data;
	mov	_key_pressed,_received_data
;	connect.c:217: key_pressed_handle();
;	connect.c:219: }
	ljmp	_key_pressed_handle
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;__1966080031              Allocated to registers r7 
;row                       Allocated to registers r7 
;current_data              Allocated with name '_main_current_data_458752_175'
;i                         Allocated to registers r3 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	connect.c:222: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	connect.c:235: kit_id = 0;
;	assignBit
	clr	_kit_id
;	connect.c:236: point = 0;
	mov	_point,#0x00
;	connect.c:238: uart_init();
	lcall	_uart_init
;	connect.c:239: while (1)
00104$:
;	keymatrix.h:12: P1 = 0xff;
	mov	_P1,#0xff
;	keymatrix.h:13: P1_3 = 0;
;	assignBit
	clr	_P1_3
;	connect.c:14: void move_up(void);
	jb	_P1_7,00110$
00106$:
	jnb	_P1_7,00106$
	mov	r7,#0x01
	ljmp	00186$
00110$:
;	connect.c:15: void move_down(void);
	jb	_P1_6,00115$
00111$:
	jnb	_P1_6,00111$
	mov	r7,#0x05
	ljmp	00186$
00115$:
;	connect.c:16: void move_left(void);
	jb	_P1_5,00120$
00116$:
	jnb	_P1_5,00116$
	mov	r7,#0x09
	ljmp	00186$
00120$:
;	connect.c:17: void move_right(void);
	jb	_P1_4,00125$
00121$:
	jnb	_P1_4,00121$
	mov	r7,#0x0d
	ljmp	00186$
00125$:
;	keymatrix.h:19: P1 = 0xff;
	mov	_P1,#0xff
;	keymatrix.h:20: P1_2 = 0;
;	assignBit
	clr	_P1_2
;	connect.c:21: #define RCK P3_5
	jb	_P1_7,00130$
00126$:
	jnb	_P1_7,00126$
	mov	r7,#0x02
	ljmp	00186$
00130$:
;	connect.c:22: 
	jb	_P1_6,00135$
00131$:
	jnb	_P1_6,00131$
	mov	r7,#0x06
	sjmp	00186$
00135$:
;	connect.c:23: //***************************************************************//
	jb	_P1_5,00140$
00136$:
	jnb	_P1_5,00136$
	mov	r7,#0x0a
	sjmp	00186$
00140$:
;	connect.c:24: void uart_init(void)
	jb	_P1_4,00145$
00141$:
	jnb	_P1_4,00141$
	mov	r7,#0x0e
	sjmp	00186$
00145$:
;	keymatrix.h:26: P1 = 0xff;
	mov	_P1,#0xff
;	keymatrix.h:27: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	connect.c:28: TMOD &= 0x0f;
	jb	_P1_7,00150$
00146$:
	jnb	_P1_7,00146$
	mov	r7,#0x03
	sjmp	00186$
00150$:
;	connect.c:29: TMOD |= 0x20;
	jb	_P1_6,00155$
00151$:
	jnb	_P1_6,00151$
	mov	r7,#0x07
	sjmp	00186$
00155$:
;	connect.c:30: TH1 = 0xfd;
	jb	_P1_5,00160$
00156$:
	jnb	_P1_5,00156$
	mov	r7,#0x0b
	sjmp	00186$
00160$:
;	connect.c:31: TL1 = 0xfd;
	jb	_P1_4,00165$
00161$:
	jnb	_P1_4,00161$
	mov	r7,#0x0f
	sjmp	00186$
00165$:
;	keymatrix.h:33: P1 = 0xff;
	mov	_P1,#0xff
;	keymatrix.h:34: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	connect.c:35: SM0 = 0;
	jb	_P1_7,00170$
00166$:
	jnb	_P1_7,00166$
	mov	r7,#0x04
	sjmp	00186$
00170$:
;	connect.c:36: SM1 = 1;
	jb	_P1_6,00175$
00171$:
	jnb	_P1_6,00171$
	mov	r7,#0x08
	sjmp	00186$
00175$:
;	connect.c:37: // allow interrupt for receive interrupt
	jb	_P1_5,00180$
00176$:
	jnb	_P1_5,00176$
	mov	r7,#0x0c
	sjmp	00186$
00180$:
;	connect.c:38: ES = 1;
	jb	_P1_4,00185$
00181$:
	jnb	_P1_4,00181$
	mov	r7,#0x10
	sjmp	00186$
00185$:
;	keymatrix.h:39: return 0;
	mov	r7,#0x00
;	connect.c:241: key_pressed = get_pressed_key();
00186$:
;	connect.c:242: if (key_pressed)
	mov	a,r7
	mov	_key_pressed,a
	jz	00241$
;	connect.c:244: key_pressed_handle();
	lcall	_key_pressed_handle
;	connect.c:73: for (char row = 0; row < 8; row++)
00241$:
	mov	r7,#0x00
00198$:
	cjne	r7,#0x08,00397$
00397$:
	jc	00398$
	ljmp	00104$
00398$:
;	connect.c:75: const char current_data = data_mat[row];
	mov	a,r7
	add	a,#_data_mat
	mov	r1,a
	mov	_main_current_data_458752_175,@r1
;	connect.c:76: for (char i = 0; i < 8; i++)
	mov	b,r7
	inc	b
	mov	r4,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00400$
00399$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00400$:
	djnz	b,00399$
	mov	r3,#0x00
00192$:
	cjne	r3,#0x08,00401$
00401$:
	jnc	00187$
;	connect.c:78: SER = (0x80 >> row) & (0x80 >> i);
	mov	b,r3
	inc	b
	mov	r2,#0x80
	clr	a
	mov	r6,a
	rlc	a
	mov	ov,c
	sjmp	00404$
00403$:
	mov	c,ov
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r2
	rrc	a
	mov	r2,a
00404$:
	djnz	b,00403$
	mov	a,r4
	anl	ar2,a
	mov	a,r5
	anl	ar6,a
;	assignBit
	mov	a,r2
	orl	a,r6
	add	a,#0xff
	mov	_P3_4,c
;	connect.c:79: SCK = 1;
;	assignBit
	setb	_P3_6
;	connect.c:80: SCK = 0;
;	assignBit
	clr	_P3_6
;	connect.c:76: for (char i = 0; i < 8; i++)
	inc	r3
	sjmp	00192$
00187$:
;	connect.c:82: P0 = 0xff;
	mov	_P0,#0xff
;	connect.c:83: RCK = 1;
;	assignBit
	setb	_P3_5
;	connect.c:84: RCK = 0;
;	assignBit
	clr	_P3_5
;	connect.c:85: P0 = ~current_data;
	mov	a,_main_current_data_458752_175
	cpl	a
	mov	_P0,a
;	connect.c:86: for (char i = 0; i < 5; i++)
	mov	r6,#0x00
00195$:
	cjne	r6,#0x05,00405$
00405$:
	jnc	00199$
	inc	r6
	sjmp	00195$
00199$:
;	connect.c:73: for (char row = 0; row < 8; row++)
	inc	r7
;	connect.c:246: display_led_mat();
;	connect.c:248: }
	sjmp	00198$
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
_forward:
	.db #0x20	; 32
_back:
	.db #0x40	; 64
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
