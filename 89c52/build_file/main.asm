;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.0 #14184 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _infrared_num
	.globl _key_map
	.globl _number_string
	.globl _cal_num
	.globl _main
	.globl _ex1_interrupt
	.globl _exec_key_pressed
	.globl _timer1_interrupt
	.globl _timer0_interrupt
	.globl _timer_fan_off
	.globl _count_up
	.globl _count_down
	.globl _start_time_1
	.globl _reset_timer_1
	.globl _infrared_interrupt
	.globl _exec_infrared_signal
	.globl _add_space
	.globl _delete_one_char
	.globl _input_handler
	.globl _command_first_line
	.globl _command_second_line
	.globl _fan_loop
	.globl _fan_off
	.globl _fan_on
	.globl _buzzer
	.globl _get_temp
	.globl _init_ds18b20
	.globl _one_write_receive_byte
	.globl _one_write_send_byte
	.globl _one_write_receive_bit
	.globl _one_write_send_bit
	.globl _one_write_init
	.globl _lcd_write_string
	.globl _lcd_write_char
	.globl _lcd_init
	.globl _lcd_send_command
	.globl _strlen
	.globl _strchr
	.globl _strncmp
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
	.globl _key_pressed
	.globl _prev_key_pressed
	.globl _last_time_key_pressed
	.globl _a
	.globl _do_something_1
	.globl _timer1_counter
	.globl _input_handler_PARM_2
	.globl _prev_num
	.globl _command_index
	.globl _command
	.globl _last_signal_received
	.globl _bits_counter
	.globl _infrared_code
	.globl _infrared_counter
	.globl _time_counter
	.globl _unread_code_counter
	.globl _read_code_index
	.globl _code_index
	.globl _interval_type
	.globl _signal_codes
	.globl _fan_state
	.globl _check
	.globl _stop_timer_1
	.globl _reset
	.globl _exec
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
_display_number_led_65537_7:
	.ds 1
_display_number_neg_65537_7:
	.ds 1
_check::
	.ds 4
_fan_state::
	.ds 1
_signal_codes::
	.ds 2
_interval_type::
	.ds 1
_code_index::
	.ds 1
_read_code_index::
	.ds 1
_unread_code_counter::
	.ds 1
_time_counter::
	.ds 4
_infrared_counter::
	.ds 4
_infrared_code::
	.ds 1
_bits_counter::
	.ds 1
_last_signal_received::
	.ds 4
_command::
	.ds 16
_command_index::
	.ds 1
_prev_num::
	.ds 1
_input_handler_PARM_2:
	.ds 1
_input_handler_id_196608_137:
	.ds 1
_input_handler_sloc0_1_0:
	.ds 1
_input_handler_sloc1_1_0:
	.ds 1
_input_handler_sloc2_1_0:
	.ds 2
_timer1_counter::
	.ds 2
_do_something_1::
	.ds 2
_a::
	.ds 6
_last_time_key_pressed::
	.ds 4
_prev_key_pressed::
	.ds 1
_key_pressed::
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_cal_num_sloc0_1_0:
	.ds 4
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
_infrared_interrupt_sloc0_1_0:
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
	ljmp	_infrared_interrupt
	.ds	5
	ljmp	_timer0_interrupt
	.ds	5
	ljmp	_ex1_interrupt
	.ds	5
	ljmp	_timer1_interrupt
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
;	main.c:11: long check = 0;
	clr	a
	mov	_check,a
	mov	(_check + 1),a
	mov	(_check + 2),a
	mov	(_check + 3),a
;	main.c:55: unsigned char code_index = 0;
	mov	_code_index,a
;	main.c:56: unsigned char read_code_index = 0;
	mov	_read_code_index,a
;	main.c:57: unsigned char unread_code_counter = 0;
	mov	_unread_code_counter,a
;	main.c:59: long time_counter = 0;
	mov	_time_counter,a
	mov	(_time_counter + 1),a
	mov	(_time_counter + 2),a
	mov	(_time_counter + 3),a
;	main.c:60: long infrared_counter = -10000;
	mov	_infrared_counter,#0xf0
	mov	(_infrared_counter + 1),#0xd8
	mov	(_infrared_counter + 2),#0xff
	mov	(_infrared_counter + 3),#0xff
;	main.c:61: char infrared_code = 0;
	mov	_infrared_code,a
;	main.c:62: unsigned char bits_counter = 0;
	mov	_bits_counter,a
;	main.c:64: long last_signal_received = -10000;
	mov	_last_signal_received,#0xf0
	mov	(_last_signal_received + 1),#0xd8
	mov	(_last_signal_received + 2),#0xff
	mov	(_last_signal_received + 3),#0xff
;	main.c:71: char command_index = 0;
	mov	_command_index,a
;	main.c:72: char prev_num = 50;
	mov	_prev_num,#0x32
;	main.c:293: unsigned int timer1_counter = 0;
	mov	_timer1_counter,a
	mov	(_timer1_counter + 1),a
;	main.c:310: void (*do_something_1)(void) = NULL;
	mov	_do_something_1,a
	mov	(_do_something_1 + 1),a
;	main.c:372: long last_time_key_pressed = 0;
	mov	_last_time_key_pressed,a
	mov	(_last_time_key_pressed + 1),a
	mov	(_last_time_key_pressed + 2),a
	mov	(_last_time_key_pressed + 3),a
;	main.c:373: char prev_key_pressed = 0;
	mov	_prev_key_pressed,a
;	main.c:374: char key_pressed = 0;
	mov	_key_pressed,a
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
;led                       Allocated with name '_display_number_led_65537_7'
;neg                       Allocated with name '_display_number_neg_65537_7'
;__1966090001              Allocated to registers r3 
;__1966090002              Allocated to registers r0 
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
	mov	_display_number_neg_65537_7,#0x00
;	led7seg.h:40: if (number < 0)
	mov	a,r7
	jnb	acc.7,00122$
;	led7seg.h:42: neg = 1;
	mov	_display_number_neg_65537_7,#0x01
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
	mov	_display_number_led_65537_7,#0x00
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
	mov	r3,_display_number_led_65537_7
	inc	_display_number_led_65537_7
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
	mov	a,_display_number_neg_65537_7
	jz	00115$
;	led7seg.h:60: P0 = 0;
	mov	_P0,#0x00
;	led7seg.h:61: P2 = led << 2;
	mov	a,_display_number_led_65537_7
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
;Allocation info for local variables in function 'lcd_send_command'
;------------------------------------------------------------
;x                         Allocated to registers 
;i                         Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.h:39: void lcd_send_command(const unsigned char x)
;	-----------------------------------------
;	 function lcd_send_command
;	-----------------------------------------
_lcd_send_command:
	mov	_P0,dpl
;	lcd.h:42: LCD_RS = 0; // Chon thanh ghi lenh
;	assignBit
	clr	_P2_6
;	lcd.h:43: LCD_RW = 0; // De ghi du lieu
;	assignBit
	clr	_P2_5
;	lcd.h:44: LCD_EN = 1;
;	assignBit
	setb	_P2_7
;	lcd.h:45: delay_us(100);
	mov	r7,#0x00
00104$:
	cjne	r7,#0x64,00129$
00129$:
	jnc	00101$
	inc	r7
	sjmp	00104$
00101$:
;	lcd.h:46: LCD_EN = 0;
;	assignBit
	clr	_P2_7
;	lcd.h:47: delay_us(100); // Doi cho LCD san sang
	mov	r7,#0x00
00107$:
	cjne	r7,#0x64,00131$
00131$:
	jnc	00102$
	inc	r7
	sjmp	00107$
00102$:
;	lcd.h:48: LCD_EN = 1;
;	assignBit
	setb	_P2_7
;	lcd.h:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_init'
;------------------------------------------------------------
;	lcd.h:60: void lcd_init(void)
;	-----------------------------------------
;	 function lcd_init
;	-----------------------------------------
_lcd_init:
;	lcd.h:62: lcd_send_command(0x38); // Chon che do 8 bit, 2 hang cho LCD
	mov	dpl,#0x38
	lcall	_lcd_send_command
;	lcd.h:63: lcd_send_command(0x0E); // Bat hien thi, nhap nhay con tro
	mov	dpl,#0x0e
	lcall	_lcd_send_command
;	lcd.h:64: lcd_send_command(0x01); // Xoa man hinh
	mov	dpl,#0x01
	lcall	_lcd_send_command
;	lcd.h:65: lcd_send_command(0x80); // Ve dau dong
	mov	dpl,#0x80
;	lcd.h:66: }
	ljmp	_lcd_send_command
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_write_char'
;------------------------------------------------------------
;c                         Allocated to registers 
;i                         Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	lcd.h:69: void lcd_write_char(const unsigned char c)
;	-----------------------------------------
;	 function lcd_write_char
;	-----------------------------------------
_lcd_write_char:
	mov	_P0,dpl
;	lcd.h:72: LCD_RS = 1;   // Chon thanh ghi du lieu
;	assignBit
	setb	_P2_6
;	lcd.h:73: LCD_RW = 0;
;	assignBit
	clr	_P2_5
;	lcd.h:74: LCD_EN = 1;
;	assignBit
	setb	_P2_7
;	lcd.h:75: delay_us(10);
	mov	r7,#0x00
00104$:
	cjne	r7,#0x0a,00129$
00129$:
	jnc	00101$
	inc	r7
	sjmp	00104$
00101$:
;	lcd.h:76: LCD_EN = 0;
;	assignBit
	clr	_P2_7
;	lcd.h:77: delay_us(100);
	mov	r7,#0x00
00107$:
	cjne	r7,#0x64,00131$
00131$:
	jnc	00102$
	inc	r7
	sjmp	00107$
00102$:
;	lcd.h:78: LCD_EN = 1;
;	assignBit
	setb	_P2_7
;	lcd.h:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_write_string'
;------------------------------------------------------------
;s                         Allocated to registers 
;------------------------------------------------------------
;	lcd.h:81: void lcd_write_string(const unsigned char *s)
;	-----------------------------------------
;	 function lcd_write_string
;	-----------------------------------------
_lcd_write_string:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lcd.h:83: while (*s)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	lcd.h:85: lcd_write_char(*s++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcd_write_char
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	lcd.h:87: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'one_write_init'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;response                  Allocated to registers r7 
;------------------------------------------------------------
;	onewrite.h:11: char one_write_init(void)
;	-----------------------------------------
;	 function one_write_init
;	-----------------------------------------
_one_write_init:
;	onewrite.h:15: one_write_pin = 1;
;	assignBit
	setb	_P3_7
;	onewrite.h:16: one_write_pin = 0;
;	assignBit
	clr	_P3_7
;	onewrite.h:17: delay_us_ow(247);
	mov	r7,#0xf7
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00101$
;	onewrite.h:18: one_write_pin = 1;
;	assignBit
	setb	_P3_7
;	onewrite.h:19: delay_us_ow(32);
	mov	r7,#0x20
00104$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00104$
;	onewrite.h:20: response = one_write_pin;
	mov	c,_P3_7
	clr	a
	rlc	a
	mov	r7,a
;	onewrite.h:21: delay_us_ow(247);
	mov	r6,#0xf7
00107$:
	mov	ar5,r6
	dec	r6
	mov	a,r5
	jnz	00107$
;	onewrite.h:22: return response;
	mov	dpl,r7
;	onewrite.h:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'one_write_send_bit'
;------------------------------------------------------------
;bit                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	onewrite.h:24: void one_write_send_bit(const _Bool bit)
;	-----------------------------------------
;	 function one_write_send_bit
;	-----------------------------------------
_one_write_send_bit:
	mov	r7,dpl
;	onewrite.h:27: one_write_pin = 0;
;	assignBit
	clr	_P3_7
;	onewrite.h:28: delay_us_ow(4);
	mov	r6,#0x04
00101$:
	mov	ar5,r6
	dec	r6
	mov	a,r5
	jnz	00101$
;	onewrite.h:29: one_write_pin = bit;
	mov	a,r7
	add	a,#0xff
	mov	_P3_7,c
;	onewrite.h:30: delay_us_ow(24);
	mov	r7,#0x18
00104$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00104$
;	onewrite.h:31: one_write_pin = 1;
;	assignBit
	setb	_P3_7
;	onewrite.h:32: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'one_write_receive_bit'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;bit                       Allocated to registers r7 
;------------------------------------------------------------
;	onewrite.h:33: char one_write_receive_bit(void)
;	-----------------------------------------
;	 function one_write_receive_bit
;	-----------------------------------------
_one_write_receive_bit:
;	onewrite.h:37: one_write_pin = 0;
;	assignBit
	clr	_P3_7
;	onewrite.h:38: delay_us_ow(2);
	mov	r7,#0x02
00101$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00101$
;	onewrite.h:39: one_write_pin = 1;
;	assignBit
	setb	_P3_7
;	onewrite.h:40: delay_us_ow(2);
	mov	r7,#0x02
00104$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00104$
;	onewrite.h:41: bit = one_write_pin;
	mov	c,_P3_7
	clr	a
	rlc	a
	mov	r7,a
;	onewrite.h:42: delay_us_ow(24);
	mov	r6,#0x18
00107$:
	mov	ar5,r6
	dec	r6
	mov	a,r5
	jnz	00107$
;	onewrite.h:43: return bit;
	mov	dpl,r7
;	onewrite.h:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'one_write_send_byte'
;------------------------------------------------------------
;byte                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	onewrite.h:45: void one_write_send_byte(const char byte)
;	-----------------------------------------
;	 function one_write_send_byte
;	-----------------------------------------
_one_write_send_byte:
	mov	r7,dpl
;	onewrite.h:47: for (char i = 0; i < 8; i++)
	mov	r6,#0x00
00103$:
	cjne	r6,#0x08,00116$
00116$:
	jnc	00105$
;	onewrite.h:49: one_write_send_bit(byte & (0x01 << i));
	mov	b,r6
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00119$
00118$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00119$:
	djnz	b,00118$
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,r2
	anl	ar4,a
	mov	a,r3
	anl	ar5,a
;	assignBit
	mov	a,r4
	orl	a,r5
	add	a,#0xff
	clr	a
	rlc	a
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_one_write_send_bit
	pop	ar6
	pop	ar7
;	onewrite.h:47: for (char i = 0; i < 8; i++)
	inc	r6
	sjmp	00103$
00105$:
;	onewrite.h:51: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'one_write_receive_byte'
;------------------------------------------------------------
;result                    Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	onewrite.h:52: char one_write_receive_byte(void)
;	-----------------------------------------
;	 function one_write_receive_byte
;	-----------------------------------------
_one_write_receive_byte:
;	onewrite.h:54: char result = 0x00;
	mov	r7,#0x00
;	onewrite.h:55: for (unsigned char i = 0; i < 8; i++)
	mov	r6,#0x00
00103$:
	cjne	r6,#0x08,00116$
00116$:
	jnc	00101$
;	onewrite.h:57: result |= one_write_receive_bit() << i;
	push	ar7
	push	ar6
	lcall	_one_write_receive_bit
	mov	a,dpl
	pop	ar6
	pop	ar7
	mov	b,r6
	inc	b
	sjmp	00120$
00118$:
	add	a,acc
00120$:
	djnz	b,00118$
	mov	r5,a
	orl	ar7,a
;	onewrite.h:55: for (unsigned char i = 0; i < 8; i++)
	inc	r6
	sjmp	00103$
00101$:
;	onewrite.h:59: return result;
	mov	dpl,r7
;	onewrite.h:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_ds18b20'
;------------------------------------------------------------
;	sensor.h:88: void init_ds18b20(void)
;	-----------------------------------------
;	 function init_ds18b20
;	-----------------------------------------
_init_ds18b20:
;	sensor.h:90: one_write_init();
	lcall	_one_write_init
;	sensor.h:91: one_write_send_byte(skip_rom);
	mov	dpl,#0xcc
	lcall	_one_write_send_byte
;	sensor.h:92: one_write_send_byte(convert_t);
	mov	dpl,#0x44
;	sensor.h:93: }
	ljmp	_one_write_send_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'get_temp'
;------------------------------------------------------------
;high_byte                 Allocated to registers r7 
;low_byte                  Allocated to registers r6 
;temp                      Allocated to registers r7 r5 
;result                    Allocated to registers 
;------------------------------------------------------------
;	sensor.h:95: int get_temp(void)
;	-----------------------------------------
;	 function get_temp
;	-----------------------------------------
_get_temp:
;	sensor.h:97: init_ds18b20();
	lcall	_init_ds18b20
;	sensor.h:98: one_write_init();
	lcall	_one_write_init
;	sensor.h:99: one_write_send_byte(skip_rom);
	mov	dpl,#0xcc
	lcall	_one_write_send_byte
;	sensor.h:100: one_write_send_byte(read_scratchpad);
	mov	dpl,#0xbe
	lcall	_one_write_send_byte
;	sensor.h:101: const char high_byte = one_write_receive_byte();
	lcall	_one_write_receive_byte
	mov	r7,dpl
;	sensor.h:102: const char low_byte = one_write_receive_byte();
	push	ar7
	lcall	_one_write_receive_byte
	mov	r6,dpl
	pop	ar7
;	sensor.h:103: const int temp = (high_byte << 8) | low_byte;
	mov	ar5,r7
	clr	a
	mov	r7,a
	mov	r4,a
	mov	a,r6
	orl	ar7,a
	mov	a,r4
	orl	ar5,a
;	sensor.h:105: return temp >> temp;
	mov	b,r7
	inc	b
	mov	dpl,ar7
	mov	dph,ar5
	mov	a,r5
	rlc	a
	mov	ov,c
	sjmp	00104$
00103$:
	mov	c,ov
	mov	a,dph
	rrc	a
	mov	dph,a
	mov	a,dpl
	rrc	a
	mov	dpl,a
00104$:
	djnz	b,00103$
;	sensor.h:106: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'buzzer'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r4 r5 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:18: void buzzer(void)
;	-----------------------------------------
;	 function buzzer
;	-----------------------------------------
_buzzer:
;	main.c:21: for (int i = 0; i < time * 1e3 / 200; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00111$:
	clr	c
	mov	a,r6
	subb	a,#0xc8
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00113$
;	main.c:23: buzzer_pin = 1;
;	assignBit
	setb	_P1_5
;	main.c:24: for (int j = 0; j < 90; j++)
	mov	r4,#0x00
	mov	r5,#0x00
00105$:
	clr	c
	mov	a,r4
	subb	a,#0x5a
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00101$
	inc	r4
	cjne	r4,#0x00,00105$
	inc	r5
	sjmp	00105$
00101$:
;	main.c:26: buzzer_pin = 0;
;	assignBit
	clr	_P1_5
;	main.c:27: for (int j = 0; j < 90; j++)
	mov	r4,#0x00
	mov	r5,#0x00
00108$:
	clr	c
	mov	a,r4
	subb	a,#0x5a
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00112$
	inc	r4
	cjne	r4,#0x00,00108$
	inc	r5
	sjmp	00108$
00112$:
;	main.c:21: for (int i = 0; i < time * 1e3 / 200; i++)
	inc	r6
	cjne	r6,#0x00,00111$
	inc	r7
	sjmp	00111$
00113$:
;	main.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fan_on'
;------------------------------------------------------------
;	main.c:31: void fan_on(void)
;	-----------------------------------------
;	 function fan_on
;	-----------------------------------------
_fan_on:
;	main.c:33: buzzer();
	lcall	_buzzer
;	main.c:34: fan_state = 1;
	mov	_fan_state,#0x01
;	main.c:35: fan_pin = 1;
;	assignBit
	setb	_P2_0
;	main.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fan_off'
;------------------------------------------------------------
;	main.c:37: void fan_off(void)
;	-----------------------------------------
;	 function fan_off
;	-----------------------------------------
_fan_off:
;	main.c:39: buzzer();
	lcall	_buzzer
;	main.c:40: fan_state = 0;
	mov	_fan_state,#0x00
;	main.c:41: fan_pin = 0;
;	assignBit
	clr	_P2_0
;	main.c:42: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fan_loop'
;------------------------------------------------------------
;	main.c:43: void fan_loop(void)
;	-----------------------------------------
;	 function fan_loop
;	-----------------------------------------
_fan_loop:
;	main.c:45: if (fan_state)
	mov	a,_fan_state
	jz	00102$
;	main.c:46: fan_pin = 1;
;	assignBit
	setb	_P2_0
	ret
00102$:
;	main.c:48: fan_pin = 0;
;	assignBit
	clr	_P2_0
;	main.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'command_second_line'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:74: void command_second_line(void)
;	-----------------------------------------
;	 function command_second_line
;	-----------------------------------------
_command_second_line:
;	main.c:76: while (command_index > 0)
00101$:
	mov	a,_command_index
	jz	00103$
;	main.c:78: command_index--;
	dec	_command_index
;	main.c:79: command[command_index] = 0;
	mov	a,_command_index
	add	a,#_command
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00101$
00103$:
;	main.c:81: prev_num = 50;
	mov	_prev_num,#0x32
;	main.c:82: lcd_second_line();
	mov	dpl,#0xc0
	lcall	_lcd_send_command
;	main.c:83: for (int i = 0; i < 16; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	main.c:85: lcd_write_char(' ');
	mov	dpl,#0x20
	push	ar7
	push	ar6
	lcall	_lcd_write_char
	pop	ar6
	pop	ar7
;	main.c:83: for (int i = 0; i < 16; i++)
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00104$:
;	main.c:87: lcd_second_line();
	mov	dpl,#0xc0
;	main.c:88: }
	ljmp	_lcd_send_command
;------------------------------------------------------------
;Allocation info for local variables in function 'command_first_line'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:89: void command_first_line(void)
;	-----------------------------------------
;	 function command_first_line
;	-----------------------------------------
_command_first_line:
;	main.c:91: while (command_index > 0)
00101$:
	mov	a,_command_index
	jz	00103$
;	main.c:93: command_index--;
	dec	_command_index
;	main.c:94: command[command_index] = 0;
	mov	a,_command_index
	add	a,#_command
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00101$
00103$:
;	main.c:96: lcd_first_line();
	mov	dpl,#0x80
	lcall	_lcd_send_command
;	main.c:97: for (int i = 0; i < 16; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00106$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	main.c:99: lcd_write_char(' ');
	mov	dpl,#0x20
	push	ar7
	push	ar6
	lcall	_lcd_write_char
	pop	ar6
	pop	ar7
;	main.c:97: for (int i = 0; i < 16; i++)
	inc	r6
	cjne	r6,#0x00,00106$
	inc	r7
	sjmp	00106$
00104$:
;	main.c:101: lcd_first_line();
	mov	dpl,#0x80
;	main.c:102: }
	ljmp	_lcd_send_command
;------------------------------------------------------------
;Allocation info for local variables in function 'input_handler'
;------------------------------------------------------------
;interval_type             Allocated with name '_input_handler_PARM_2'
;num                       Allocated to registers r7 
;id                        Allocated with name '_input_handler_id_196608_137'
;sloc0                     Allocated with name '_input_handler_sloc0_1_0'
;sloc1                     Allocated with name '_input_handler_sloc1_1_0'
;sloc2                     Allocated with name '_input_handler_sloc2_1_0'
;------------------------------------------------------------
;	main.c:128: void input_handler(const char num, const char interval_type)
;	-----------------------------------------
;	 function input_handler
;	-----------------------------------------
_input_handler:
;	main.c:131: if (num != prev_num && command_index == max_command_length)
	mov	a,dpl
	mov	r7,a
	cjne	a,_prev_num,00181$
	sjmp	00102$
00181$:
	mov	a,#0x10
	cjne	a,_command_index,00102$
;	main.c:133: prev_num = 50;
	mov	_prev_num,#0x32
;	main.c:134: return;
	ret
00102$:
;	main.c:136: if (num == prev_num && interval_type)
	mov	a,r7
	cjne	a,_prev_num,00184$
	sjmp	00185$
00184$:
	ljmp	00124$
00185$:
	mov	a,_input_handler_PARM_2
	jnz	00186$
	ljmp	00124$
00186$:
;	main.c:138: lcd_back();
	mov	dpl,#0x10
	push	ar7
	lcall	_lcd_send_command
	pop	ar7
;	main.c:139: --command_index;
	dec	_command_index
;	main.c:140: if (command[command_index] == ' ' || command[command_index] == 0)
	mov	a,_command_index
	add	a,#_command
	mov	r1,a
	mov	ar6,@r1
	cjne	r6,#0x20,00187$
	sjmp	00106$
00187$:
	mov	a,r6
	jnz	00107$
00106$:
;	main.c:142: update_key(*key_map[num]);
	mov	a,#0x100 - 0x10
	add	a,_command_index
	jc	00105$
	mov	a,r7
	mov	b,#0x08
	mul	ab
	add	a,#_key_map
	mov	r5,a
	mov	a,#(_key_map >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_lcd_write_char
	pop	ar7
	inc	_command_index
00105$:
;	main.c:143: prev_num = num;
	mov	_prev_num,r7
00107$:
;	main.c:147: char id = 0;
	mov	_input_handler_sloc0_1_0,#0x00
;	main.c:148: while (key_map[num][id])
	mov	a,r7
	mov	b,#0x08
	mul	ab
	mov	_input_handler_sloc2_1_0,a
	mov	(_input_handler_sloc2_1_0 + 1),b
	add	a,#_key_map
	mov	r2,a
	mov	a,(_input_handler_sloc2_1_0 + 1)
	addc	a,#(_key_map >> 8)
	mov	r3,a
	mov	_input_handler_id_196608_137,#0x00
00118$:
	mov	a,_input_handler_id_196608_137
	add	a,r2
	mov	r5,a
	clr	a
	addc	a,r3
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	jnz	00190$
	ret
00190$:
;	main.c:150: if (key_map[num][id] == command[command_index])
	push	ar2
	push	ar3
	mov	a,_input_handler_sloc2_1_0
	add	a,#_key_map
	mov	r3,a
	mov	a,(_input_handler_sloc2_1_0 + 1)
	addc	a,#(_key_map >> 8)
	mov	r6,a
	mov	a,_input_handler_id_196608_137
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	mov	a,_command_index
	add	a,#_command
	mov	_input_handler_sloc1_1_0,a
	mov	r0,_input_handler_sloc1_1_0
	mov	ar6,@r0
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	cjne	a,ar6,00191$
	sjmp	00192$
00191$:
	pop	ar3
	pop	ar2
	sjmp	00117$
00192$:
	pop	ar3
	pop	ar2
;	main.c:153: if (key_map[num][id + 1])
	mov	a,_input_handler_sloc2_1_0
	add	a,#_key_map
	mov	r5,a
	mov	a,(_input_handler_sloc2_1_0 + 1)
	addc	a,#(_key_map >> 8)
	mov	r6,a
	mov	a,_input_handler_sloc0_1_0
	mov	r4,a
	inc	a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	jz	00114$
;	main.c:155: update_key(key_map[num][id + 1]);
	mov	a,#0x100 - 0x10
	add	a,_command_index
	jnc	00194$
	ret
00194$:
	mov	a,_input_handler_sloc2_1_0
	add	a,#_key_map
	mov	r5,a
	mov	a,(_input_handler_sloc2_1_0 + 1)
	addc	a,#(_key_map >> 8)
	mov	r6,a
	mov	a,r4
	inc	a
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r0,_input_handler_sloc1_1_0
	mov	@r0,ar4
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_lcd_write_char
	inc	_command_index
	ret
00114$:
;	main.c:158: update_key(*key_map[num]);
	mov	a,#0x100 - 0x10
	add	a,_command_index
	jc	00127$
	mov	a,_input_handler_sloc2_1_0
	add	a,#_key_map
	mov	r5,a
	mov	a,(_input_handler_sloc2_1_0 + 1)
	addc	a,#(_key_map >> 8)
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r0,_input_handler_sloc1_1_0
	mov	@r0,ar4
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_lcd_write_char
	inc	_command_index
;	main.c:159: break;
	ret
00117$:
;	main.c:161: ++id;
	inc	_input_handler_id_196608_137
	mov	_input_handler_sloc0_1_0,_input_handler_id_196608_137
	ljmp	00118$
00124$:
;	main.c:167: update_key(*key_map[num]);
	mov	a,#0x100 - 0x10
	add	a,_command_index
	jc	00122$
	mov	a,_command_index
	add	a,#_command
	mov	r1,a
	mov	a,r7
	mov	b,#0x08
	mul	ab
	add	a,#_key_map
	mov	r5,a
	mov	a,#(_key_map >> 8)
	addc	a,b
	mov	r6,a
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	@r1,a
	mov	dpl,r5
	mov	dph,r6
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	lcall	_lcd_write_char
	pop	ar7
	inc	_command_index
00122$:
;	main.c:168: prev_num = num;
	mov	_prev_num,r7
00127$:
;	main.c:170: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delete_one_char'
;------------------------------------------------------------
;	main.c:172: void delete_one_char(void)
;	-----------------------------------------
;	 function delete_one_char
;	-----------------------------------------
_delete_one_char:
;	main.c:174: prev_num = 50;
	mov	_prev_num,#0x32
;	main.c:175: if (command_index <= 0)
	mov	a,_command_index
	jnz	00102$
;	main.c:176: return;
	ret
00102$:
;	main.c:177: lcd_back();
	mov	dpl,#0x10
	lcall	_lcd_send_command
;	main.c:178: --command_index;
	dec	_command_index
;	main.c:179: command_index[command] = 0;
	mov	a,_command_index
	add	a,#_command
	mov	r0,a
	mov	@r0,#0x00
;	main.c:180: lcd_write_char(' ');
	mov	dpl,#0x20
	lcall	_lcd_write_char
;	main.c:181: lcd_back();
	mov	dpl,#0x10
;	main.c:182: }
	ljmp	_lcd_send_command
;------------------------------------------------------------
;Allocation info for local variables in function 'add_space'
;------------------------------------------------------------
;	main.c:183: void add_space(void)
;	-----------------------------------------
;	 function add_space
;	-----------------------------------------
_add_space:
;	main.c:185: prev_num = 50;
	mov	_prev_num,#0x32
;	main.c:186: update_key(' ');
	mov	a,#0x100 - 0x10
	add	a,_command_index
	jc	00103$
	mov	a,_command_index
	add	a,#_command
	mov	r0,a
	mov	@r0,#0x20
	mov	dpl,#0x20
	lcall	_lcd_write_char
	inc	_command_index
00103$:
;	main.c:187: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'exec_infrared_signal'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:198: void exec_infrared_signal(void)
;	-----------------------------------------
;	 function exec_infrared_signal
;	-----------------------------------------
_exec_infrared_signal:
;	main.c:201: switch (signal_codes[read_code_index])
	mov	a,_read_code_index
	add	a,#_signal_codes
	mov	r1,a
	mov	ar7,@r1
	cjne	r7,#0x3d,00153$
	sjmp	00105$
00153$:
	cjne	r7,#0x57,00154$
	sjmp	00103$
00154$:
	cjne	r7,#0x5d,00155$
	sjmp	00101$
00155$:
	cjne	r7,#0x6f,00156$
	sjmp	00102$
00156$:
	cjne	r7,#0xdd,00157$
	sjmp	00106$
00157$:
;	main.c:203: case infrared_off:
	cjne	r7,#0xfd,00107$
	sjmp	00104$
00101$:
;	main.c:204: reset();
	lcall	_reset
;	main.c:205: break;
;	main.c:206: case infrared_vol_up:
	sjmp	00111$
00102$:
;	main.c:207: command_first_line();
	lcall	_command_first_line
;	main.c:208: break;
;	main.c:209: case infrared_vol_down:
	sjmp	00111$
00103$:
;	main.c:210: command_second_line();
	lcall	_command_second_line
;	main.c:211: break;
;	main.c:212: case infrared_left:
	sjmp	00111$
00104$:
;	main.c:213: delete_one_char();
	lcall	_delete_one_char
;	main.c:214: break;
;	main.c:215: case infrared_right:
	sjmp	00111$
00105$:
;	main.c:216: add_space();
	lcall	_add_space
;	main.c:217: break;
;	main.c:218: case infrared_exec:
	sjmp	00111$
00106$:
;	main.c:219: exec();
	lcall	_exec
;	main.c:220: break;
;	main.c:221: default:
	sjmp	00111$
00107$:
;	main.c:222: for (char i = 0; i <= 9; i++)
	mov	r6,#0x00
	mov	r5,#0x00
00113$:
	mov	a,r5
	add	a,#0xff - 0x09
	jc	00111$
;	main.c:224: if (signal_codes[read_code_index] == infrared_num[i])
	mov	a,r5
	mov	dptr,#_infrared_num
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r7
	cjne	a,ar4,00114$
;	main.c:226: input_handler(i, interval_type & (1 << read_code_index));
	mov	r4,_read_code_index
	mov	b,r4
	inc	b
	mov	a,#0x01
	sjmp	00164$
00162$:
	add	a,acc
00164$:
	djnz	b,00162$
	anl	a,_interval_type
	mov	_input_handler_PARM_2,a
	mov	dpl,r6
	lcall	_input_handler
;	main.c:227: break;
	sjmp	00111$
00114$:
;	main.c:222: for (char i = 0; i <= 9; i++)
	inc	r5
	mov	ar6,r5
;	main.c:230: }
	sjmp	00113$
00111$:
;	main.c:232: read_code_index = (read_code_index + 1) % max_code_counter;
	mov	r6,_read_code_index
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x02
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6,dpl
	mov	_read_code_index,r6
;	main.c:233: --unread_code_counter;
	dec	_unread_code_counter
;	main.c:234: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'infrared_interrupt'
;------------------------------------------------------------
;delta                     Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	main.c:236: void infrared_interrupt(void) __interrupt(0)
;	-----------------------------------------
;	 function infrared_interrupt
;	-----------------------------------------
_infrared_interrupt:
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
;	main.c:239: long delta = time_counter - infrared_counter;
	mov	a,_time_counter
	clr	c
	subb	a,_infrared_counter
	mov	r4,a
	mov	a,(_time_counter + 1)
	subb	a,(_infrared_counter + 1)
	mov	r5,a
	mov	a,(_time_counter + 2)
	subb	a,(_infrared_counter + 2)
	mov	r6,a
	mov	a,(_time_counter + 3)
	subb	a,(_infrared_counter + 3)
	mov	r7,a
;	main.c:240: if (delta > 200)
	clr	c
	mov	a,#0xc8
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	main.c:242: infrared_counter = time_counter;
	mov	_infrared_counter,_time_counter
	mov	(_infrared_counter + 1),(_time_counter + 1)
	mov	(_infrared_counter + 2),(_time_counter + 2)
	mov	(_infrared_counter + 3),(_time_counter + 3)
;	main.c:243: return;
	ljmp	00116$
00105$:
;	main.c:245: else if (delta < 5)
	clr	c
	mov	a,r4
	subb	a,#0x05
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	main.c:247: return;
	ljmp	00116$
00102$:
;	main.c:251: infrared_counter = time_counter;
	mov	_infrared_counter,_time_counter
	mov	(_infrared_counter + 1),(_time_counter + 1)
	mov	(_infrared_counter + 2),(_time_counter + 2)
	mov	(_infrared_counter + 3),(_time_counter + 3)
;	main.c:260: if (delta > 100)
	clr	c
	mov	a,#0x64
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
;	main.c:262: infrared_code = 0;
	mov	_infrared_code,#0x00
;	main.c:263: bits_counter = 0;
	mov	_bits_counter,#0x00
;	main.c:264: return;
	ljmp	00116$
00108$:
;	main.c:267: ++bits_counter;
	inc	_bits_counter
;	main.c:268: if (bits_counter >= 24)
	mov	a,#0x100 - 0x18
	add	a,_bits_counter
	jnc	00113$
;	main.c:270: if (delta > 17)
	clr	c
	mov	a,#0x11
	subb	a,r4
	clr	a
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	main.c:272: infrared_code = (infrared_code << 1) | 1;
	mov	a,_infrared_code
	add	a,_infrared_code
	mov	r7,a
	mov	a,#0x01
	orl	a,r7
	mov	_infrared_code,a
	sjmp	00113$
00110$:
;	main.c:276: infrared_code = (infrared_code << 1);
	mov	a,_infrared_code
	mov	r7,a
	add	a,acc
	mov	_infrared_code,a
00113$:
;	main.c:279: if (bits_counter == 32)
	mov	a,#0x20
	cjne	a,_bits_counter,00153$
	sjmp	00154$
00153$:
	ljmp	00116$
00154$:
;	main.c:281: signal_codes[code_index] = infrared_code;
	mov	a,_code_index
	add	a,#_signal_codes
	mov	r0,a
	mov	@r0,_infrared_code
;	main.c:282: interval_type &= (1 << code_index);
	mov	r7,_code_index
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00157$
00155$:
	add	a,acc
00157$:
	djnz	b,00155$
	anl	_interval_type,a
;	main.c:283: interval_type |= (((time_counter - last_signal_received) / 10) <= 800 ? 1 : 0) << code_index;
	mov	a,_time_counter
	clr	c
	subb	a,_last_signal_received
	mov	r3,a
	mov	a,(_time_counter + 1)
	subb	a,(_last_signal_received + 1)
	mov	r4,a
	mov	a,(_time_counter + 2)
	subb	a,(_last_signal_received + 2)
	mov	r5,a
	mov	a,(_time_counter + 3)
	subb	a,(_last_signal_received + 3)
	mov	r6,a
	mov	__divslong_PARM_2,#0x0a
	clr	a
	mov	(__divslong_PARM_2 + 1),a
	mov	(__divslong_PARM_2 + 2),a
	mov	(__divslong_PARM_2 + 3),a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar7
	lcall	__divslong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	clr	c
	mov	a,#0x20
	subb	a,r3
	mov	a,#0x03
	subb	a,r4
	clr	a
	subb	a,r5
	mov	a,#(0x00 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	mov	_infrared_interrupt_sloc0_1_0,c
	jc	00118$
	mov	r5,#0x01
	mov	r6,#0x00
	sjmp	00119$
00118$:
	mov	r5,#0x00
	mov	r6,#0x00
00119$:
	mov	b,r7
	inc	b
	mov	a,r5
	sjmp	00161$
00159$:
	add	a,acc
00161$:
	djnz	b,00159$
	orl	_interval_type,a
;	main.c:285: last_signal_received = time_counter;
	mov	_last_signal_received,_time_counter
	mov	(_last_signal_received + 1),(_time_counter + 1)
	mov	(_last_signal_received + 2),(_time_counter + 2)
	mov	(_last_signal_received + 3),(_time_counter + 3)
;	main.c:286: code_index = (code_index + 1) % max_code_counter;
	mov	r6,_code_index
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	mov	__modsint_PARM_2,#0x02
	mov	(__modsint_PARM_2 + 1),r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	_code_index,r6
;	main.c:287: ++unread_code_counter;
	inc	_unread_code_counter
00116$:
;	main.c:292: }
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
;Allocation info for local variables in function 'reset_timer_1'
;------------------------------------------------------------
;	main.c:294: void reset_timer_1(void)
;	-----------------------------------------
;	 function reset_timer_1
;	-----------------------------------------
_reset_timer_1:
;	main.c:297: TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
	mov	_TH1,#0x4b
;	main.c:298: TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
	mov	_TL1,#0xff
;	main.c:299: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_timer_1'
;------------------------------------------------------------
;	main.c:300: void stop_timer_1(void)
;	-----------------------------------------
;	 function stop_timer_1
;	-----------------------------------------
_stop_timer_1:
;	main.c:302: TR1 = 0;
;	assignBit
	clr	_TR1
;	main.c:303: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_time_1'
;------------------------------------------------------------
;	main.c:304: void start_time_1(void)
;	-----------------------------------------
;	 function start_time_1
;	-----------------------------------------
_start_time_1:
;	main.c:306: timer1_counter = 0;
	clr	a
	mov	_timer1_counter,a
	mov	(_timer1_counter + 1),a
;	main.c:307: reset_timer_1();
	lcall	_reset_timer_1
;	main.c:308: TR1 = 1;
;	assignBit
	setb	_TR1
;	main.c:309: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'count_down'
;------------------------------------------------------------
;	main.c:312: void count_down(void)
;	-----------------------------------------
;	 function count_down
;	-----------------------------------------
_count_down:
;	main.c:314: if ((timer1_counter % 20) == 0)
	mov	__moduint_PARM_2,#0x14
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_timer1_counter
	mov	dph,(_timer1_counter + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00106$
;	main.c:316: if (check <= 0)
	clr	c
	clr	a
	subb	a,_check
	clr	a
	subb	a,(_check + 1)
	clr	a
	subb	a,(_check + 2)
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_check + 3)
	xrl	b,#0x80
	subb	a,b
	jc	00102$
;	main.c:318: stop_timer_1();
	lcall	_stop_timer_1
;	main.c:319: buzzer();
	lcall	_buzzer
;	main.c:320: do_something_1 = NULL;
	clr	a
	mov	_do_something_1,a
	mov	(_do_something_1 + 1),a
	ret
00102$:
;	main.c:323: --check;
	dec	_check
	mov	a,#0xff
	cjne	a,_check,00118$
	dec	(_check + 1)
	cjne	a,(_check + 1),00118$
	dec	(_check + 2)
	cjne	a,(_check + 2),00118$
	dec	(_check + 3)
00118$:
00106$:
;	main.c:325: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'count_up'
;------------------------------------------------------------
;	main.c:326: void count_up(void)
;	-----------------------------------------
;	 function count_up
;	-----------------------------------------
_count_up:
;	main.c:328: if ((timer1_counter % 20) == 0)
	mov	__moduint_PARM_2,#0x14
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_timer1_counter
	mov	dph,(_timer1_counter + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00103$
;	main.c:330: ++check;
	inc	_check
	clr	a
	cjne	a,_check,00110$
	inc	(_check + 1)
	cjne	a,(_check + 1),00110$
	inc	(_check + 2)
	cjne	a,(_check + 2),00110$
	inc	(_check + 3)
00110$:
00103$:
;	main.c:332: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer_fan_off'
;------------------------------------------------------------
;	main.c:333: void timer_fan_off(void)
;	-----------------------------------------
;	 function timer_fan_off
;	-----------------------------------------
_timer_fan_off:
;	main.c:335: if ((timer1_counter % 20) == 0)
	mov	__moduint_PARM_2,#0x14
	mov	(__moduint_PARM_2 + 1),#0x00
	mov	dpl,_timer1_counter
	mov	dph,(_timer1_counter + 1)
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00106$
;	main.c:337: if (check <= 0)
	clr	c
	clr	a
	subb	a,_check
	clr	a
	subb	a,(_check + 1)
	clr	a
	subb	a,(_check + 2)
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_check + 3)
	xrl	b,#0x80
	subb	a,b
	jc	00102$
;	main.c:339: fan_off();
	lcall	_fan_off
;	main.c:340: do_something_1 = NULL;
	clr	a
	mov	_do_something_1,a
	mov	(_do_something_1 + 1),a
;	main.c:341: stop_timer_1();
	ljmp	_stop_timer_1
00102$:
;	main.c:344: --check;
	dec	_check
	mov	a,#0xff
	cjne	a,_check,00118$
	dec	(_check + 1)
	cjne	a,(_check + 1),00118$
	dec	(_check + 2)
	cjne	a,(_check + 2),00118$
	dec	(_check + 3)
00118$:
00106$:
;	main.c:346: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_interrupt'
;------------------------------------------------------------
;	main.c:347: void timer0_interrupt(void) __interrupt(1)
;	-----------------------------------------
;	 function timer0_interrupt
;	-----------------------------------------
_timer0_interrupt:
	push	acc
	push	psw
;	main.c:349: ++time_counter;
	inc	_time_counter
	clr	a
	cjne	a,_time_counter,00103$
	inc	(_time_counter + 1)
	cjne	a,(_time_counter + 1),00103$
	inc	(_time_counter + 2)
	cjne	a,(_time_counter + 2),00103$
	inc	(_time_counter + 3)
00103$:
;	main.c:353: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'timer1_interrupt'
;------------------------------------------------------------
;	main.c:355: void timer1_interrupt(void) __interrupt(3)
;	-----------------------------------------
;	 function timer1_interrupt
;	-----------------------------------------
_timer1_interrupt:
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
;	main.c:358: ++timer1_counter;
	inc	_timer1_counter
	clr	a
	cjne	a,_timer1_counter,00109$
	inc	(_timer1_counter + 1)
00109$:
;	main.c:359: reset_timer_1();
	lcall	_reset_timer_1
;	main.c:360: if (do_something_1 != NULL)
	mov	a,_do_something_1
	orl	a,(_do_something_1 + 1)
	jz	00103$
;	main.c:362: do_something_1();
	mov	dpl,_do_something_1
	mov	dph,(_do_something_1 + 1)
	lcall	__sdcc_call_dptr
00103$:
;	main.c:369: }
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
;Allocation info for local variables in function 'exec_key_pressed'
;------------------------------------------------------------
;	main.c:375: void exec_key_pressed(void)
;	-----------------------------------------
;	 function exec_key_pressed
;	-----------------------------------------
_exec_key_pressed:
;	main.c:377: switch (key_pressed)
	mov	a,#0x02
	cjne	a,_key_pressed,00171$
	sjmp	00103$
00171$:
	mov	a,#0x03
	cjne	a,_key_pressed,00172$
	sjmp	00104$
00172$:
	mov	a,#0x04
	cjne	a,_key_pressed,00173$
	sjmp	00101$
00173$:
	mov	a,#0x08
	cjne	a,_key_pressed,00174$
	sjmp	00102$
00174$:
	mov	a,#0x10
;	main.c:379: case 4:
	cjne	a,_key_pressed,00106$
	sjmp	00105$
00101$:
;	main.c:380: command_first_line();
;	main.c:381: return;
	ljmp	_command_first_line
;	main.c:382: case 8:
00102$:
;	main.c:383: command_second_line();
;	main.c:384: return;
	ljmp	_command_second_line
;	main.c:385: case 2:
00103$:
;	main.c:386: delete_one_char();
;	main.c:387: return;
	ljmp	_delete_one_char
;	main.c:388: case 3:
00104$:
;	main.c:389: add_space();
;	main.c:390: return;
	ljmp	_add_space
;	main.c:391: case 16:
00105$:
;	main.c:392: exec();
;	main.c:393: return;
	ljmp	_exec
;	main.c:394: }
00106$:
;	main.c:395: if (time_counter - last_time_key_pressed <= 8000 && prev_key_pressed == key_pressed)
	mov	a,_time_counter
	clr	c
	subb	a,_last_time_key_pressed
	mov	r4,a
	mov	a,(_time_counter + 1)
	subb	a,(_last_time_key_pressed + 1)
	mov	r5,a
	mov	a,(_time_counter + 2)
	subb	a,(_last_time_key_pressed + 2)
	mov	r6,a
	mov	a,(_time_counter + 3)
	subb	a,(_last_time_key_pressed + 3)
	mov	r7,a
	clr	c
	mov	a,#0x40
	subb	a,r4
	mov	a,#0x1f
	subb	a,r5
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00176$
	ljmp	00130$
00176$:
	mov	a,_key_pressed
	cjne	a,_prev_key_pressed,00177$
	sjmp	00178$
00177$:
	ljmp	00130$
00178$:
;	main.c:397: switch (key_pressed)
	mov	a,_key_pressed
	add	a,#0xff - 0x0f
	jnc	00179$
	ljmp	00131$
00179$:
	mov	a,_key_pressed
	add	a,#(00180$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_key_pressed
	add	a,#(00181$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00180$:
	.db	00131$
	.db	00107$
	.db	00131$
	.db	00131$
	.db	00131$
	.db	00108$
	.db	00109$
	.db	00110$
	.db	00131$
	.db	00111$
	.db	00112$
	.db	00113$
	.db	00131$
	.db	00114$
	.db	00115$
	.db	00116$
00181$:
	.db	00131$>>8
	.db	00107$>>8
	.db	00131$>>8
	.db	00131$>>8
	.db	00131$>>8
	.db	00108$>>8
	.db	00109$>>8
	.db	00110$>>8
	.db	00131$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00113$>>8
	.db	00131$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
;	main.c:399: case 1:
00107$:
;	main.c:400: input_handler(0, 1);
	mov	_input_handler_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_input_handler
;	main.c:401: break;
	ljmp	00131$
;	main.c:402: case 5:
00108$:
;	main.c:403: input_handler(1, 1);
	mov	_input_handler_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_input_handler
;	main.c:404: break;
	ljmp	00131$
;	main.c:405: case 6:
00109$:
;	main.c:406: input_handler(2, 1);
	mov	_input_handler_PARM_2,#0x01
	mov	dpl,#0x02
	lcall	_input_handler
;	main.c:407: break;
	ljmp	00131$
;	main.c:408: case 7:
00110$:
;	main.c:409: input_handler(3, 1);
	mov	_input_handler_PARM_2,#0x01
	mov	dpl,#0x03
	lcall	_input_handler
;	main.c:410: break;
	ljmp	00131$
;	main.c:411: case 9:
00111$:
;	main.c:412: input_handler(4, 1);
	mov	_input_handler_PARM_2,#0x01
	mov	dpl,#0x04
	lcall	_input_handler
;	main.c:413: break;
	ljmp	00131$
;	main.c:414: case 10:
00112$:
;	main.c:415: input_handler(5, 1);
	mov	_input_handler_PARM_2,#0x01
	mov	dpl,#0x05
	lcall	_input_handler
;	main.c:416: break;
	ljmp	00131$
;	main.c:417: case 11:
00113$:
;	main.c:418: input_handler(6, 1);
	mov	_input_handler_PARM_2,#0x01
	mov	dpl,#0x06
	lcall	_input_handler
;	main.c:419: break;
	ljmp	00131$
;	main.c:420: case 13:
00114$:
;	main.c:421: input_handler(7, 1);
	mov	_input_handler_PARM_2,#0x01
	mov	dpl,#0x07
	lcall	_input_handler
;	main.c:422: break;
	ljmp	00131$
;	main.c:423: case 14:
00115$:
;	main.c:424: input_handler(8, 1);
	mov	_input_handler_PARM_2,#0x01
	mov	dpl,#0x08
	lcall	_input_handler
;	main.c:425: break;
	ljmp	00131$
;	main.c:426: case 15:
00116$:
;	main.c:427: input_handler(9, 1);
	mov	_input_handler_PARM_2,#0x01
	mov	dpl,#0x09
	lcall	_input_handler
;	main.c:429: }
	ljmp	00131$
00130$:
;	main.c:433: switch (key_pressed)
	mov	a,_key_pressed
	add	a,#0xff - 0x0f
	jnc	00182$
	ljmp	00131$
00182$:
	mov	a,_key_pressed
	add	a,#(00183$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,_key_pressed
	add	a,#(00184$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00183$:
	.db	00131$
	.db	00118$
	.db	00131$
	.db	00131$
	.db	00131$
	.db	00119$
	.db	00120$
	.db	00121$
	.db	00131$
	.db	00122$
	.db	00123$
	.db	00124$
	.db	00131$
	.db	00125$
	.db	00126$
	.db	00127$
00184$:
	.db	00131$>>8
	.db	00118$>>8
	.db	00131$>>8
	.db	00131$>>8
	.db	00131$>>8
	.db	00119$>>8
	.db	00120$>>8
	.db	00121$>>8
	.db	00131$>>8
	.db	00122$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00131$>>8
	.db	00125$>>8
	.db	00126$>>8
	.db	00127$>>8
;	main.c:435: case 1:
00118$:
;	main.c:436: input_handler(0, 0);
	mov	_input_handler_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_input_handler
;	main.c:437: break;
;	main.c:438: case 5:
	sjmp	00131$
00119$:
;	main.c:439: input_handler(1, 0);
	mov	_input_handler_PARM_2,#0x00
	mov	dpl,#0x01
	lcall	_input_handler
;	main.c:440: break;
;	main.c:441: case 6:
	sjmp	00131$
00120$:
;	main.c:442: input_handler(2, 0);
	mov	_input_handler_PARM_2,#0x00
	mov	dpl,#0x02
	lcall	_input_handler
;	main.c:443: break;
;	main.c:444: case 7:
	sjmp	00131$
00121$:
;	main.c:445: input_handler(3, 0);
	mov	_input_handler_PARM_2,#0x00
	mov	dpl,#0x03
	lcall	_input_handler
;	main.c:446: break;
;	main.c:447: case 9:
	sjmp	00131$
00122$:
;	main.c:448: input_handler(4, 0);
	mov	_input_handler_PARM_2,#0x00
	mov	dpl,#0x04
	lcall	_input_handler
;	main.c:449: break;
;	main.c:450: case 10:
	sjmp	00131$
00123$:
;	main.c:451: input_handler(5, 0);
	mov	_input_handler_PARM_2,#0x00
	mov	dpl,#0x05
	lcall	_input_handler
;	main.c:452: break;
;	main.c:453: case 11:
	sjmp	00131$
00124$:
;	main.c:454: input_handler(6, 0);
	mov	_input_handler_PARM_2,#0x00
	mov	dpl,#0x06
	lcall	_input_handler
;	main.c:455: break;
;	main.c:456: case 13:
	sjmp	00131$
00125$:
;	main.c:457: input_handler(7, 0);
	mov	_input_handler_PARM_2,#0x00
	mov	dpl,#0x07
	lcall	_input_handler
;	main.c:458: break;
;	main.c:459: case 14:
	sjmp	00131$
00126$:
;	main.c:460: input_handler(8, 0);
	mov	_input_handler_PARM_2,#0x00
	mov	dpl,#0x08
	lcall	_input_handler
;	main.c:461: break;
;	main.c:462: case 15:
	sjmp	00131$
00127$:
;	main.c:463: input_handler(9, 0);
	mov	_input_handler_PARM_2,#0x00
	mov	dpl,#0x09
	lcall	_input_handler
;	main.c:465: }
00131$:
;	main.c:467: last_time_key_pressed = time_counter;
	mov	_last_time_key_pressed,_time_counter
	mov	(_last_time_key_pressed + 1),(_time_counter + 1)
	mov	(_last_time_key_pressed + 2),(_time_counter + 2)
	mov	(_last_time_key_pressed + 3),(_time_counter + 3)
;	main.c:468: prev_key_pressed = key_pressed;
	mov	_prev_key_pressed,_key_pressed
;	main.c:469: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ex1_interrupt'
;------------------------------------------------------------
;	main.c:470: void ex1_interrupt(void) __interrupt(IE1_VECTOR)
;	-----------------------------------------
;	 function ex1_interrupt
;	-----------------------------------------
_ex1_interrupt:
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
;	main.c:472: fan_on();
	lcall	_fan_on
;	main.c:473: }
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
;__1966080004              Allocated to registers r7 
;------------------------------------------------------------
;	main.c:474: int main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:477: EX1 = 1;
;	assignBit
	setb	_EX1
;	main.c:478: IT1 = 1;
;	assignBit
	setb	_IT1
;	main.c:480: init_ds18b20();
	lcall	_init_ds18b20
;	main.c:483: IT0 = 1; // Falling edge trigger
;	assignBit
	setb	_IT0
;	main.c:484: EX0 = 1; // Enable INT0 interrupt
;	assignBit
	setb	_EX0
;	main.c:485: EA = 1;  // Enable global interrupt flag
;	assignBit
	setb	_EA
;	main.c:487: TMOD = 0x12; // Timer 0 mode 1 (16-bit timer
	mov	_TMOD,#0x12
;	main.c:489: TH0 = 0xA4;
	mov	_TH0,#0xa4
;	main.c:490: TL0 = TH0;
	mov	_TL0,_TH0
;	main.c:492: ET0 = 1; // Enable timer 0 interrupt'
;	assignBit
	setb	_ET0
;	main.c:493: TR0 = 1; // Start timer 0
;	assignBit
	setb	_TR0
;	main.c:495: TF0 = 0;
;	assignBit
	clr	_TF0
;	main.c:496: TH1 = 0x4B; // Thiết lập giá trị đầu tiên của thanh ghi đếm cao
	mov	_TH1,#0x4b
;	main.c:497: TL1 = 0xFF; // Thiết lập giá trị đầu tiên của thanh ghi đếm thấp
	mov	_TL1,#0xff
;	main.c:500: ET1 = 1;
;	assignBit
	setb	_ET1
;	main.c:502: P2 = 0;
	mov	_P2,#0x00
;	main.c:503: P0 = 0;
	mov	_P0,#0x00
;	main.c:505: lcd_init();
	lcall	_lcd_init
;	main.c:506: lcd_first_line();
	mov	dpl,#0x80
	lcall	_lcd_send_command
;	main.c:508: while (1)
00107$:
;	main.c:510: fan_loop();
	lcall	_fan_loop
;	main.c:511: display_number(check);
	mov	dpl,_check
	mov	dph,(_check + 1)
	mov	b,(_check + 2)
	mov	a,(_check + 3)
	lcall	_display_number
;	keymatrix.h:12: P1 = 0xff;
	mov	_P1,#0xff
;	keymatrix.h:13: P1_3 = 0;
;	assignBit
	clr	_P1_3
;	main.c:14: #define fan_pin P2_0
	jb	_P1_7,00113$
00109$:
	jnb	_P1_7,00109$
	mov	r7,#0x01
	ljmp	00189$
00113$:
;	main.c:15: 
	jb	_P1_6,00118$
00114$:
	jnb	_P1_6,00114$
	mov	r7,#0x05
	ljmp	00189$
00118$:
;	main.c:16: char fan_state;
	jb	_P1_5,00123$
00119$:
	jnb	_P1_5,00119$
	mov	r7,#0x09
	ljmp	00189$
00123$:
;	main.c:17: 
	jb	_P1_4,00128$
00124$:
	jnb	_P1_4,00124$
	mov	r7,#0x0d
	ljmp	00189$
00128$:
;	keymatrix.h:19: P1 = 0xff;
	mov	_P1,#0xff
;	keymatrix.h:20: P1_2 = 0;
;	assignBit
	clr	_P1_2
;	main.c:21: for (int i = 0; i < time * 1e3 / 200; i++)
	jb	_P1_7,00133$
00129$:
	jnb	_P1_7,00129$
	mov	r7,#0x02
	ljmp	00189$
00133$:
;	main.c:22: {
	jb	_P1_6,00138$
00134$:
	jnb	_P1_6,00134$
	mov	r7,#0x06
	sjmp	00189$
00138$:
;	main.c:23: buzzer_pin = 1;
	jb	_P1_5,00143$
00139$:
	jnb	_P1_5,00139$
	mov	r7,#0x0a
	sjmp	00189$
00143$:
;	main.c:24: for (int j = 0; j < 90; j++)
	jb	_P1_4,00148$
00144$:
	jnb	_P1_4,00144$
	mov	r7,#0x0e
	sjmp	00189$
00148$:
;	keymatrix.h:26: P1 = 0xff;
	mov	_P1,#0xff
;	keymatrix.h:27: P1_1 = 0;
;	assignBit
	clr	_P1_1
;	main.c:28: ;
	jb	_P1_7,00153$
00149$:
	jnb	_P1_7,00149$
	mov	r7,#0x03
	sjmp	00189$
00153$:
;	main.c:29: }
	jb	_P1_6,00158$
00154$:
	jnb	_P1_6,00154$
	mov	r7,#0x07
	sjmp	00189$
00158$:
;	main.c:30: }
	jb	_P1_5,00163$
00159$:
	jnb	_P1_5,00159$
	mov	r7,#0x0b
	sjmp	00189$
00163$:
;	main.c:31: void fan_on(void)
	jb	_P1_4,00168$
00164$:
	jnb	_P1_4,00164$
	mov	r7,#0x0f
	sjmp	00189$
00168$:
;	keymatrix.h:33: P1 = 0xff;
	mov	_P1,#0xff
;	keymatrix.h:34: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	main.c:35: fan_pin = 1;
	jb	_P1_7,00173$
00169$:
	jnb	_P1_7,00169$
	mov	r7,#0x04
	sjmp	00189$
00173$:
;	main.c:36: }
	jb	_P1_6,00178$
00174$:
	jnb	_P1_6,00174$
	mov	r7,#0x08
	sjmp	00189$
00178$:
;	main.c:37: void fan_off(void)
	jb	_P1_5,00183$
00179$:
	jnb	_P1_5,00179$
	mov	r7,#0x0c
	sjmp	00189$
00183$:
;	main.c:38: {
	jb	_P1_4,00188$
00184$:
	jnb	_P1_4,00184$
	mov	r7,#0x10
	sjmp	00189$
00188$:
;	keymatrix.h:39: return 0;
	mov	r7,#0x00
;	main.c:512: key_pressed = get_pressed_key();
00189$:
;	main.c:513: if (key_pressed)
	mov	a,r7
	mov	_key_pressed,a
	jz	00103$
;	main.c:515: exec_key_pressed();
	lcall	_exec_key_pressed
;	main.c:517: while (unread_code_counter)
00103$:
	mov	a,_unread_code_counter
	jnz	00369$
	ljmp	00107$
00369$:
;	main.c:520: exec_infrared_signal();
	lcall	_exec_infrared_signal
;	main.c:523: }
	sjmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'reset'
;------------------------------------------------------------
;	main.c:525: void reset(void)
;	-----------------------------------------
;	 function reset
;	-----------------------------------------
_reset:
;	main.c:527: do_something_1 = NULL;
	clr	a
	mov	_do_something_1,a
	mov	(_do_something_1 + 1),a
;	main.c:528: stop_timer_1();
	lcall	_stop_timer_1
;	main.c:529: check = 0;
	clr	a
	mov	_check,a
	mov	(_check + 1),a
	mov	(_check + 2),a
	mov	(_check + 3),a
;	main.c:530: while (command_index > 0)
00101$:
	mov	a,_command_index
	jz	00103$
;	main.c:532: command_index--;
	dec	_command_index
;	main.c:533: command[command_index] = 0;
	mov	a,_command_index
	add	a,#_command
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00101$
00103$:
;	main.c:535: prev_num = 50;
	mov	_prev_num,#0x32
;	main.c:536: lcd_init();
;	main.c:537: }
	ljmp	_lcd_init
;------------------------------------------------------------
;Allocation info for local variables in function 'cal_num'
;------------------------------------------------------------
;start                     Allocated to registers r5 r6 r7 
;sloc0                     Allocated with name '_cal_num_sloc0_1_0'
;------------------------------------------------------------
;	main.c:539: void cal_num(const char *start)
;	-----------------------------------------
;	 function cal_num
;	-----------------------------------------
_cal_num:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:541: check = 0;
	clr	a
	mov	_check,a
	mov	(_check + 1),a
	mov	(_check + 2),a
	mov	(_check + 3),a
;	main.c:542: if (start != NULL)
	mov	a,r5
	orl	a,r6
	jnz	00186$
	ret
00186$:
;	main.c:544: start++; // Di chuyển vị trí xuống sau khoảng trắng
	inc	r5
	cjne	r5,#0x00,00187$
	inc	r6
00187$:
;	main.c:545: if ((interval_type & (1 << 3)))
	mov	a,_interval_type
	jnb	acc.3,00130$
;	main.c:547: interval_type ^= (1 << 3);
	xrl	_interval_type,#0x08
;	main.c:549: while (*start && *start != '+' && *start != '-' && (*start > '9' || *start < '0'))
00130$:
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00136$
	cjne	r4,#0x2b,00190$
	sjmp	00136$
00190$:
	cjne	r4,#0x2d,00191$
	sjmp	00136$
00191$:
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00108$
	cjne	r4,#0x30,00193$
00193$:
	jnc	00136$
00108$:
;	main.c:550: ++start;
	inc	r5
	cjne	r5,#0x00,00107$
	inc	r6
	sjmp	00107$
00136$:
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
;	main.c:551: if (*start == '-')
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r1,a
	cjne	r1,#0x2d,00113$
;	main.c:553: interval_type |= (1 << 3);
	orl	_interval_type,#0x08
;	main.c:554: ++start;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	sjmp	00134$
00113$:
;	main.c:556: else if (*start == '+')
	cjne	r1,#0x2b,00134$
;	main.c:558: ++start;
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
;	main.c:560: while (*start)
00134$:
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
00115$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jnz	00200$
	ljmp	00117$
00200$:
;	main.c:562: check = (check << 3) + (check << 1) + ((*start) ^ '0');
	mov	(_cal_num_sloc0_1_0 + 2),(_check + 2)
	mov	a,(_check + 3)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,(_cal_num_sloc0_1_0 + 2)
	swap	a
	rr	a
	xch	a,(_cal_num_sloc0_1_0 + 2)
	xrl	a,(_cal_num_sloc0_1_0 + 2)
	xch	a,(_cal_num_sloc0_1_0 + 2)
	anl	a,#0xf8
	xch	a,(_cal_num_sloc0_1_0 + 2)
	xrl	a,(_cal_num_sloc0_1_0 + 2)
	mov	(_cal_num_sloc0_1_0 + 3),a
	mov	a,(_check + 1)
	swap	a
	rr	a
	anl	a,#0x07
	orl	a,(_cal_num_sloc0_1_0 + 2)
	mov	(_cal_num_sloc0_1_0 + 2),a
	mov	_cal_num_sloc0_1_0,_check
	mov	a,(_check + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,_cal_num_sloc0_1_0
	swap	a
	rr	a
	xch	a,_cal_num_sloc0_1_0
	xrl	a,_cal_num_sloc0_1_0
	xch	a,_cal_num_sloc0_1_0
	anl	a,#0xf8
	xch	a,_cal_num_sloc0_1_0
	xrl	a,_cal_num_sloc0_1_0
	mov	(_cal_num_sloc0_1_0 + 1),a
	mov	a,_check
	add	a,_check
	mov	r0,a
	mov	a,(_check + 1)
	rlc	a
	mov	r1,a
	mov	a,(_check + 2)
	rlc	a
	mov	r2,a
	mov	a,(_check + 3)
	rlc	a
	mov	r3,a
	mov	a,r0
	add	a,_cal_num_sloc0_1_0
	mov	_cal_num_sloc0_1_0,a
	mov	a,r1
	addc	a,(_cal_num_sloc0_1_0 + 1)
	mov	(_cal_num_sloc0_1_0 + 1),a
	mov	a,r2
	addc	a,(_cal_num_sloc0_1_0 + 2)
	mov	(_cal_num_sloc0_1_0 + 2),a
	mov	a,r3
	addc	a,(_cal_num_sloc0_1_0 + 3)
	mov	(_cal_num_sloc0_1_0 + 3),a
	xrl	ar4,#0x30
	mov	ar3,r4
	mov	r4,#0x00
	mov	ar1,r3
	mov	a,r4
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r4,a
	mov	a,r1
	add	a,_cal_num_sloc0_1_0
	mov	_check,a
	mov	a,r2
	addc	a,(_cal_num_sloc0_1_0 + 1)
	mov	(_check + 1),a
	mov	a,r3
	addc	a,(_cal_num_sloc0_1_0 + 2)
	mov	(_check + 2),a
	mov	a,r4
	addc	a,(_cal_num_sloc0_1_0 + 3)
	mov	(_check + 3),a
;	main.c:563: ++start;
	inc	r5
	cjne	r5,#0x00,00201$
	inc	r6
00201$:
	ljmp	00115$
00117$:
;	main.c:565: if ((interval_type & (1 << 3)))
	mov	a,_interval_type
	jnb	acc.3,00122$
;	main.c:567: check = -check;
	clr	c
	clr	a
	subb	a,_check
	mov	_check,a
	clr	a
	subb	a,(_check + 1)
	mov	(_check + 1),a
	clr	a
	subb	a,(_check + 2)
	mov	(_check + 2),a
	clr	a
	subb	a,(_check + 3)
	mov	(_check + 3),a
00122$:
;	main.c:570: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'exec'
;------------------------------------------------------------
;start                     Allocated to registers r5 r6 r7 
;start                     Allocated to registers r5 r6 r7 
;start                     Allocated to registers r5 r6 r7 
;start                     Allocated to registers r5 r6 r7 
;start                     Allocated to registers r5 r6 r7 
;start                     Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	main.c:572: void exec(void)
;	-----------------------------------------
;	 function exec
;	-----------------------------------------
_exec:
;	main.c:574: if (strncmp(command, "buzzer", strlen("buzzer")) == 0)
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_5
	mov	(_strncmp_PARM_2 + 1),#(___str_5 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00104$
;	main.c:576: buzzer();
	lcall	_buzzer
	sjmp	00105$
00104$:
;	main.c:578: else if (strncmp(command, "led off", strlen("led off")) == 0)
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_6
	mov	(_strncmp_PARM_2 + 1),#(___str_6 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
;	main.c:580: led_turn_off();
	jnz	00105$
	mov	_P0,a
00105$:
;	main.c:582: if (strncmp(command, "clear", strlen("clear")) == 0)
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_7
	mov	(_strncmp_PARM_2 + 1),#(___str_7 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00140$
;	main.c:584: while (command_index > 0)
00106$:
	mov	a,_command_index
	jz	00108$
;	main.c:586: command_index--;
	dec	_command_index
;	main.c:587: command[command_index] = 0;
	mov	a,_command_index
	add	a,#_command
	mov	r0,a
	mov	@r0,#0x00
	sjmp	00106$
00108$:
;	main.c:589: prev_num = 50;
	mov	_prev_num,#0x32
;	main.c:590: lcd_init();
	ljmp	_lcd_init
00140$:
;	main.c:592: else if (strncmp(command, "led7 write", strlen("lcd write")) == 0)
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_8
	mov	(_strncmp_PARM_2 + 1),#(___str_8 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00137$
;	main.c:594: const char *start = strchr(command + strlen("lcd write"), ' ');
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_strlen
	mov	r6,dpl
	mov	a,r6
	add	a,#_command
	mov	r6,a
	mov	r7,#0x00
	mov	r5,#0x40
	mov	_strchr_PARM_2,#0x20
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_strchr
;	main.c:595: cal_num(start);
	ljmp	_cal_num
00137$:
;	main.c:597: else if (strncmp(command, "show", strlen("show")) == 0)
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_1
	mov	(_strncmp_PARM_2 + 1),#(___str_1 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00134$
;	main.c:599: const char *start = strchr(command + strlen("show"), ' ');
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_strlen
	mov	r6,dpl
	mov	a,r6
	add	a,#_command
	mov	r6,a
	mov	r7,#0x00
	mov	r5,#0x40
	mov	_strchr_PARM_2,#0x20
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_strchr
;	main.c:600: cal_num(start);
	ljmp	_cal_num
00134$:
;	main.c:602: else if (strncmp(command, "countdown", strlen("countdown")) == 0)
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_2
	mov	(_strncmp_PARM_2 + 1),#(___str_2 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00131$
;	main.c:604: const char *start = strchr(command + strlen("countdown"), ' ');
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_strlen
	mov	r6,dpl
	mov	a,r6
	add	a,#_command
	mov	r6,a
	mov	r7,#0x00
	mov	r5,#0x40
	mov	_strchr_PARM_2,#0x20
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_strchr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:605: check = 0;
	clr	a
	mov	_check,a
	mov	(_check + 1),a
	mov	(_check + 2),a
	mov	(_check + 3),a
;	main.c:606: cal_num(start);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_cal_num
;	main.c:607: do_something_1 = count_down;
	mov	_do_something_1,#_count_down
	mov	(_do_something_1 + 1),#(_count_down >> 8)
;	main.c:608: start_time_1();
	ljmp	_start_time_1
00131$:
;	main.c:610: else if (strncmp(command, "timer", strlen("timer")) == 0)
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_3
	mov	(_strncmp_PARM_2 + 1),#(___str_3 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00128$
;	main.c:612: const char *start = strchr(command + strlen("timer"), ' ');
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_strlen
	mov	r6,dpl
	mov	a,r6
	add	a,#_command
	mov	r6,a
	mov	r7,#0x00
	mov	r5,#0x40
	mov	_strchr_PARM_2,#0x20
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_strchr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:613: check = 0;
	clr	a
	mov	_check,a
	mov	(_check + 1),a
	mov	(_check + 2),a
	mov	(_check + 3),a
;	main.c:614: cal_num(start);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_cal_num
;	main.c:615: do_something_1 = count_down;
	mov	_do_something_1,#_count_down
	mov	(_do_something_1 + 1),#(_count_down >> 8)
;	main.c:616: start_time_1();
	ljmp	_start_time_1
00128$:
;	main.c:618: else if (strncmp(command, "stopwatch", strlen("stopwatch")) == 0)
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_9
	mov	(_strncmp_PARM_2 + 1),#(___str_9 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00125$
;	main.c:620: do_something_1 = count_up;
	mov	_do_something_1,#_count_up
	mov	(_do_something_1 + 1),#(_count_up >> 8)
;	main.c:621: start_time_1();
	ljmp	_start_time_1
00125$:
;	main.c:623: else if (strncmp(command, "fan off", strlen("fan off")) == 0)
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_4
	mov	(_strncmp_PARM_2 + 1),#(___str_4 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00122$
;	main.c:625: if (fan_state)
	mov	a,_fan_state
	jnz	00214$
	ret
00214$:
;	main.c:627: const char *start = strchr(command + strlen("fan off"), ' ');
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_strlen
	mov	r6,dpl
	mov	a,r6
	add	a,#_command
	mov	r6,a
	mov	r7,#0x00
	mov	r5,#0x40
	mov	_strchr_PARM_2,#0x20
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_strchr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:628: check = 0;
	clr	a
	mov	_check,a
	mov	(_check + 1),a
	mov	(_check + 2),a
	mov	(_check + 3),a
;	main.c:629: cal_num(start);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_cal_num
;	main.c:630: do_something_1 = timer_fan_off;
	mov	_do_something_1,#_timer_fan_off
	mov	(_do_something_1 + 1),#(_timer_fan_off >> 8)
;	main.c:631: start_time_1();
	ljmp	_start_time_1
00122$:
;	main.c:634: else if (strncmp(command, "fan on", strlen("fan on")) == 0)
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_10
	mov	(_strncmp_PARM_2 + 1),#(___str_10 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00119$
;	main.c:636: if (fan_state == 0)
	mov	a,_fan_state
	jz	00216$
	ret
00216$:
;	main.c:638: fan_on();
	lcall	_fan_on
;	main.c:639: const char *start = strchr(command + strlen("fan off"), ' ');
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_strlen
	mov	r6,dpl
	mov	a,r6
	add	a,#_command
	mov	r6,a
	mov	r7,#0x00
	mov	r5,#0x40
	mov	_strchr_PARM_2,#0x20
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_strchr
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	main.c:640: check = 0;
	clr	a
	mov	_check,a
	mov	(_check + 1),a
	mov	(_check + 2),a
	mov	(_check + 3),a
;	main.c:641: cal_num(start);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_cal_num
;	main.c:642: if (check > 0)
	clr	c
	clr	a
	subb	a,_check
	clr	a
	subb	a,(_check + 1)
	clr	a
	subb	a,(_check + 2)
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_check + 3)
	xrl	b,#0x80
	subb	a,b
	jc	00217$
	ret
00217$:
;	main.c:644: do_something_1 = timer_fan_off;
	mov	_do_something_1,#_timer_fan_off
	mov	(_do_something_1 + 1),#(_timer_fan_off >> 8)
;	main.c:645: start_time_1();
	ljmp	_start_time_1
00119$:
;	main.c:650: strncmp(command, "temp", strlen("temp")) == 0 ||
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_11
	mov	(_strncmp_PARM_2 + 1),#(___str_11 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jz	00115$
;	main.c:651: strncmp(command, "temperature", strlen("temperature")) == 0)
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_strlen
	mov	_strncmp_PARM_3,dpl
	mov	(_strncmp_PARM_3 + 1),dph
	mov	_strncmp_PARM_2,#___str_12
	mov	(_strncmp_PARM_2 + 1),#(___str_12 >> 8)
	mov	(_strncmp_PARM_2 + 2),#0x80
	mov	dptr,#_command
	mov	b,#0x40
	lcall	_strncmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00142$
00115$:
;	main.c:654: check = get_temp();
	lcall	_get_temp
	mov	r6,dpl
	mov	r7,dph
	mov	_check,r6
	mov	a,r7
	mov	(_check + 1),a
	rlc	a
	subb	a,acc
	mov	(_check + 2),a
	mov	(_check + 3),a
00142$:
;	main.c:656: }
	ret
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
_key_map:
	.db #0x5f	; 95
	.db #0x27	; 39
	.db #0x30	; 48	'0'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x2e	; 46
	.db #0x2b	; 43
	.db #0x2d	; 45
	.db #0x2a	; 42
	.db #0x2f	; 47
	.db #0x5e	; 94
	.db #0x31	; 49	'1'
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0x62	; 98	'b'
	.db #0x63	; 99	'c'
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x64	; 100	'd'
	.db #0x65	; 101	'e'
	.db #0x66	; 102	'f'
	.db #0x33	; 51	'3'
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x67	; 103	'g'
	.db #0x68	; 104	'h'
	.db #0x69	; 105	'i'
	.db #0x34	; 52	'4'
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x6a	; 106	'j'
	.db #0x6b	; 107	'k'
	.db #0x6c	; 108	'l'
	.db #0x35	; 53	'5'
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x6d	; 109	'm'
	.db #0x6e	; 110	'n'
	.db #0x6f	; 111	'o'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x70	; 112	'p'
	.db #0x71	; 113	'q'
	.db #0x72	; 114	'r'
	.db #0x73	; 115	's'
	.db #0x37	; 55	'7'
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db #0x74	; 116	't'
	.db #0x75	; 117	'u'
	.db #0x76	; 118	'v'
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db #0x77	; 119	'w'
	.db #0x78	; 120	'x'
	.db #0x79	; 121	'y'
	.db #0x7a	; 122	'z'
	.db #0x39	; 57	'9'
	.db #0x00	; 0
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
_infrared_num:
	.db #0x97	; 151
	.db #0xcf	; 207
	.db #0xe7	; 231
	.db #0x85	; 133
	.db #0xef	; 239
	.db #0xc7	; 199
	.db #0xa5	; 165
	.db #0xbd	; 189
	.db #0xb5	; 181
	.db #0xad	; 173
	.area CONST   (CODE)
___str_0:
	.ascii "lcd write"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "show"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "countdown"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "timer"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "fan off"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "buzzer"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "led off"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "clear"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "led7 write"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "stopwatch"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "fan on"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "temp"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "temperature"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
