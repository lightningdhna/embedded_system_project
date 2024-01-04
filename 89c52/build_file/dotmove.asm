;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module dotmove
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _number_string
	.globl _main
	.globl _UART_Receive
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
	.globl _data_mat
	.globl _point
	.globl _received_data
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
_main_current_data_458752_113:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;	dotmove.c:8: char point = 65;
	mov	_point,#0x41
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
;	dotmove.c:20: void uart_init(void)
;	-----------------------------------------
;	 function uart_init
;	-----------------------------------------
_uart_init:
;	dotmove.c:24: TMOD &= 0x0f;
	anl	_TMOD,#0x0f
;	dotmove.c:25: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	dotmove.c:26: TH1 = 0xfd;
	mov	_TH1,#0xfd
;	dotmove.c:27: TL1 = 0xfd;
	mov	_TL1,#0xfd
;	dotmove.c:28: ET1 = 0;
;	assignBit
	clr	_ET1
;	dotmove.c:29: TR1 = 1;
;	assignBit
	setb	_TR1
;	dotmove.c:31: SM0 = 0;
;	assignBit
	clr	_SM0
;	dotmove.c:32: SM1 = 1;
;	assignBit
	setb	_SM1
;	dotmove.c:34: ES = 1;
;	assignBit
	setb	_ES
;	dotmove.c:35: EA = 1;
;	assignBit
	setb	_EA
;	dotmove.c:36: REN = 1;
;	assignBit
	setb	_REN
;	dotmove.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Receive'
;------------------------------------------------------------
;	dotmove.c:39: void UART_Receive(void) __interrupt(4)
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
;	dotmove.c:41: P2 = 0x10;
	mov	_P2,#0x10
;	dotmove.c:42: if (RI)
	jnb	_RI,00103$
;	dotmove.c:44: P2 = ~SBUF;
	mov	a,_SBUF
	cpl	a
	mov	_P2,a
;	dotmove.c:45: received_data = SBUF; // Get received data
	mov	_received_data,_SBUF
;	dotmove.c:46: resolve_message();
	lcall	_resolve_message
;	dotmove.c:47: RI = 0; // Clear receive interrupt flag
;	assignBit
	clr	_RI
00103$:
;	dotmove.c:49: }
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
;Allocation info for local variables in function 'resolve_message'
;------------------------------------------------------------
;__1966080007              Allocated to registers r7 
;a                         Allocated to registers 
;__2621440009              Allocated to registers r7 
;a                         Allocated to registers 
;__2621440011              Allocated to registers r7 
;a                         Allocated to registers 
;------------------------------------------------------------
;	dotmove.c:100: void resolve_message(void)
;	-----------------------------------------
;	 function resolve_message
;	-----------------------------------------
_resolve_message:
;	dotmove.c:102: if (received_data == 127)
	mov	a,#0x7f
	cjne	a,_received_data,00151$
	ret
00151$:
;	dotmove.c:105: else if (received_data == 65)
	mov	a,#0x41
	cjne	a,_received_data,00107$
;	dotmove.c:107: turn_off(point);
;	dotmove.c:91: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00114$
;	dotmove.c:94: data_mat[a >> 3] = 0;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
	add	a,#_data_mat
	mov	r0,a
	mov	@r0,#0x00
;	dotmove.c:107: turn_off(point);
00114$:
;	dotmove.c:108: point = 65;
	mov	_point,#0x41
	ret
00107$:
;	dotmove.c:110: else if (received_data > 70)
	mov	a,_received_data
	add	a,#0xff - 0x46
	jnc	00104$
;	dotmove.c:112: received_data -= 70;
	mov	a,_received_data
	add	a,#0xba
	mov	_received_data,a
	ret
00104$:
;	dotmove.c:116: if (received_data != point)
	mov	a,_point
	cjne	a,_received_data,00156$
	ret
00156$:
;	dotmove.c:118: turn_off(point);
;	dotmove.c:91: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00117$
;	dotmove.c:94: data_mat[a >> 3] = 0;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0x1f
	mov	r7,a
	add	a,#_data_mat
	mov	r0,a
	mov	@r0,#0x00
;	dotmove.c:118: turn_off(point);
00117$:
;	dotmove.c:119: point = received_data;
	mov	_point,_received_data
;	dotmove.c:120: turn_on(point);
;	dotmove.c:85: if (a > 63)
	mov	a,_point
	mov	r7,a
	add	a,#0xff - 0x3f
	jc	00121$
;	dotmove.c:87: data_mat[a >> 3] |= 0x80 >> (a & 7);
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
	sjmp	00160$
00159$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r7
	rrc	a
	mov	r7,a
00160$:
	djnz	b,00159$
	mov	a,r7
	orl	a,r6
	mov	@r1,a
;	dotmove.c:120: turn_on(point);
00121$:
;	dotmove.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;row                       Allocated to registers r7 
;current_data              Allocated with name '_main_current_data_458752_113'
;i                         Allocated to registers r3 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	dotmove.c:126: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	dotmove.c:129: uart_init();
	lcall	_uart_init
;	dotmove.c:57: for (char row = 0; row < 8; row++)
00125$:
	mov	r7,#0x00
00115$:
	cjne	r7,#0x08,00149$
00149$:
	jnc	00125$
;	dotmove.c:59: const char current_data = data_mat[row];
	mov	a,r7
	add	a,#_data_mat
	mov	r1,a
	mov	_main_current_data_458752_113,@r1
;	dotmove.c:60: for (char i = 0; i < 8; i++)
	mov	b,r7
	inc	b
	mov	r4,#0x80
	clr	a
	mov	r5,a
	rlc	a
	mov	ov,c
	sjmp	00152$
00151$:
	mov	c,ov
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
00152$:
	djnz	b,00151$
	mov	r3,#0x00
00109$:
	cjne	r3,#0x08,00153$
00153$:
	jnc	00104$
;	dotmove.c:62: SER = (0x80 >> row) & (0x80 >> i);
	mov	b,r3
	inc	b
	mov	r2,#0x80
	clr	a
	mov	r6,a
	rlc	a
	mov	ov,c
	sjmp	00156$
00155$:
	mov	c,ov
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r2
	rrc	a
	mov	r2,a
00156$:
	djnz	b,00155$
	mov	a,r4
	anl	ar2,a
	mov	a,r5
	anl	ar6,a
;	assignBit
	mov	a,r2
	orl	a,r6
	add	a,#0xff
	mov	_P3_4,c
;	dotmove.c:63: SCK = 1;
;	assignBit
	setb	_P3_6
;	dotmove.c:64: SCK = 0;
;	assignBit
	clr	_P3_6
;	dotmove.c:60: for (char i = 0; i < 8; i++)
	inc	r3
	sjmp	00109$
00104$:
;	dotmove.c:66: P0 = 0xff;
	mov	_P0,#0xff
;	dotmove.c:67: RCK = 1;
;	assignBit
	setb	_P3_5
;	dotmove.c:68: RCK = 0;
;	assignBit
	clr	_P3_5
;	dotmove.c:69: P0 = ~current_data;
	mov	a,_main_current_data_458752_113
	cpl	a
	mov	_P0,a
;	dotmove.c:70: for (char i = 0; i < 5; i++)
	mov	r6,#0x00
00112$:
	cjne	r6,#0x05,00157$
00157$:
	jnc	00116$
	inc	r6
	sjmp	00112$
00116$:
;	dotmove.c:57: for (char row = 0; row < 8; row++)
	inc	r7
;	dotmove.c:132: display_led_mat();
;	dotmove.c:134: }
	sjmp	00115$
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
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
