;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _eebyter
	.globl _eebytew
	.globl _RepeatedStartI2c
	.globl _I2C_Stop
	.globl _I2C_ReStart
	.globl _I2C_Send_ACK
	.globl _I2C_Read_Byte
	.globl _I2C_Write_Byte
	.globl _I2C_Start
	.globl _I2C_init
	.globl _delay
	.globl _printf
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
	.globl _TXD0
	.globl _RXD0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
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
	.globl _SBUF0
	.globl _DP0L
	.globl _DP0H
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _eebytew_PARM_2
	.globl _getchar
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_DP0H	=	0x0083
_DP0L	=	0x0082
_SBUF0	=	0x0099
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
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_RXD0	=	0x00b0
_TXD0	=	0x00b1
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_eebytew_PARM_2:
	.ds 1
_main_addr_131072_47:
	.ds 2
_main_start_addr_131072_47:
	.ds 2
_main_end_addr_131072_47:
	.ds 2
_main_data_131072_47:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area	SSEG
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
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
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
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;	main.c:17: int getchar (void)
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:19: while (!RI);
00101$:
;	main.c:21: RI = 0;                         // clear RI flag
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	main.c:22: return SBUF;                    // return character from SBUF
	mov	r6,_SBUF
	mov	r7,#0x00
	mov	dpl,r6
	mov	dph,r7
;	main.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:25: int putchar (int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	r6,dpl
	mov	r7,dph
;	main.c:27: while (!TI);
00101$:
	jnb	_TI,00101$
;	main.c:29: SBUF = c;           // load serial port with transmit value
	mov	_SBUF,r6
;	main.c:30: TI = 0;             // clear TI flag
;	assignBit
	clr	_TI
;	main.c:32: return c;
	mov	dpl,r6
	mov	dph,r7
;	main.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;count                     Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	main.c:36: void delay(unsigned int count)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r6,dpl
	mov	r7,dph
;	main.c:39: for(i=0;i<count;i++);
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
;	main.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_init'
;------------------------------------------------------------
;	main.c:44: void I2C_init(void)
;	-----------------------------------------
;	 function I2C_init
;	-----------------------------------------
_I2C_init:
;	main.c:47: SDA = 1;
;	assignBit
	setb	_P1_7
;	main.c:48: SCL = 1;
;	assignBit
	setb	_P1_6
;	main.c:49: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Start'
;------------------------------------------------------------
;	main.c:52: void I2C_Start(void)
;	-----------------------------------------
;	 function I2C_Start
;	-----------------------------------------
_I2C_Start:
;	main.c:54: set_SCL_high;				// Make SCL pin high
;	assignBit
	setb	_P1_6
;	main.c:55: set_SDA_high;				// Make SDA pin High
;	assignBit
	setb	_P1_7
;	main.c:56: delay(50);	// Half bit delay
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:57: set_SDA_low;				// Make SDA Low
;	assignBit
	clr	_P1_7
;	main.c:58: delay(50);	// Half bit delay
	mov	dptr,#0x0032
;	main.c:59: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Write_Byte'
;------------------------------------------------------------
;Byte                      Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:61: unsigned char I2C_Write_Byte(unsigned char Byte)
;	-----------------------------------------
;	 function I2C_Write_Byte
;	-----------------------------------------
_I2C_Write_Byte:
	mov	r7,dpl
;	main.c:65: for(i=0;i<8;i++)		// Repeat for every bit
	mov	r6,#0x00
00105$:
;	main.c:67: set_SCL_low;		// Make SCL pin low
;	assignBit
	clr	_P1_6
;	main.c:69: delay(50);	// Data pin should change it's value,
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:72: if((Byte<<i)&0x80)  // Place data bit value on SDA pin
	mov	ar4,r7
	mov	r5,#0x00
	mov	b,r6
	inc	b
	sjmp	00123$
00122$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00123$:
	djnz	b,00122$
	mov	a,r4
	jnb	acc.7,00102$
;	main.c:73: set_SDA_high;	// If bit is high, make SDA high
;	assignBit
	setb	_P1_7
	sjmp	00103$
00102$:
;	main.c:75: set_SDA_low;	// If bit is low, make SDA low
;	assignBit
	clr	_P1_7
00103$:
;	main.c:77: delay(50);	// Toggle SCL pin
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay
;	main.c:78: set_SCL_high;				// So that slave can
;	assignBit
	setb	_P1_6
;	main.c:79: delay(50);	// latch data bit
	mov	dptr,#0x0032
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:65: for(i=0;i<8;i++)		// Repeat for every bit
	inc	r6
	cjne	r6,#0x08,00125$
00125$:
	jc	00105$
;	main.c:83: set_SCL_low;
;	assignBit
	clr	_P1_6
;	main.c:84: set_SDA_high;
;	assignBit
	setb	_P1_7
;	main.c:85: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:86: set_SCL_high;
;	assignBit
	setb	_P1_6
;	main.c:87: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:89: return SDA;
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	dpl,a
;	main.c:90: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Read_Byte'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;d                         Allocated to registers r5 
;RxData                    Allocated to registers r7 
;------------------------------------------------------------
;	main.c:93: unsigned char I2C_Read_Byte(void)
;	-----------------------------------------
;	 function I2C_Read_Byte
;	-----------------------------------------
_I2C_Read_Byte:
;	main.c:95: unsigned char i, d, RxData = 0;
	mov	r7,#0x00
;	main.c:97: for(i=0;i<8;i++)
	mov	r6,#0x00
00102$:
;	main.c:99: set_SCL_low;					// Make SCL pin low
;	assignBit
	clr	_P1_6
;	main.c:100: set_SDA_high;					// Don't drive SDA
;	assignBit
	setb	_P1_7
;	main.c:101: delay(50);		// Half bit delay
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay
;	main.c:102: set_SCL_high;					// Make SCL pin high
;	assignBit
	setb	_P1_6
;	main.c:103: delay(50);		// 1/4 bit delay
	mov	dptr,#0x0032
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:104: d = SDA;					    // Capture Received Bit
	mov	c,_P1_7
	clr	a
	rlc	a
	mov	r5,a
;	main.c:105: RxData = RxData|(d<<(7-i));   	// Copy it in RxData
	mov	ar4,r6
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	mov	b,r4
	inc	b
	mov	a,r5
	sjmp	00117$
00115$:
	add	a,acc
00117$:
	djnz	b,00115$
	orl	ar7,a
;	main.c:106: delay(50);		// 1/4 bit delay
	mov	dptr,#0x0032
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	main.c:97: for(i=0;i<8;i++)
	inc	r6
	cjne	r6,#0x08,00118$
00118$:
	jc	00102$
;	main.c:109: return RxData;						// Return received byte
	mov	dpl,r7
;	main.c:110: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Send_ACK'
;------------------------------------------------------------
;	main.c:113: void I2C_Send_ACK(void)
;	-----------------------------------------
;	 function I2C_Send_ACK
;	-----------------------------------------
_I2C_Send_ACK:
;	main.c:115: set_SCL_low;				// Make SCL pin low
;	assignBit
	clr	_P1_6
;	main.c:116: delay(50);	// Data pin should change it's value,
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:118: set_SDA_high;				// Make SDA Low
;	assignBit
	setb	_P1_7
;	main.c:119: delay(50);	// 1/4 bit delay
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:120: set_SCL_high;				// Make SCL pin high
;	assignBit
	setb	_P1_6
;	main.c:121: delay(50);	// Half bit delay
	mov	dptr,#0x0032
;	main.c:122: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_ReStart'
;------------------------------------------------------------
;	main.c:125: void I2C_ReStart(void)
;	-----------------------------------------
;	 function I2C_ReStart
;	-----------------------------------------
_I2C_ReStart:
;	main.c:127: set_SCL_low;				// Make SCL pin low
;	assignBit
	clr	_P1_6
;	main.c:129: delay(50);	// Data pin should change it's value,
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:131: set_SDA_high;				// Make SDA pin High
;	assignBit
	setb	_P1_7
;	main.c:133: delay(50);	// 1/4 bit delay
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:134: set_SCL_high;				// Make SCL pin high
;	assignBit
	setb	_P1_6
;	main.c:135: delay(50);	// 1/4 bit delay
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:136: set_SDA_low;				// Make SDA Low
;	assignBit
	clr	_P1_7
;	main.c:137: delay(50);	// 1/4 bit delay
	mov	dptr,#0x0032
;	main.c:138: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Stop'
;------------------------------------------------------------
;	main.c:142: void I2C_Stop(void)
;	-----------------------------------------
;	 function I2C_Stop
;	-----------------------------------------
_I2C_Stop:
;	main.c:144: set_SCL_low;				// Make SCL pin low
;	assignBit
	clr	_P1_6
;	main.c:146: delay(50);	// Data pin should change it's value,
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:148: set_SDA_low;				// Make SDA pin low
;	assignBit
	clr	_P1_7
;	main.c:150: delay(50);	// 1/4 bit delay
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:151: set_SCL_high;				// Make SCL pin high
;	assignBit
	setb	_P1_6
;	main.c:152: delay(50);	// 1/4 bit delay
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:153: set_SDA_high;				// Make SDA high
;	assignBit
	setb	_P1_7
;	main.c:154: delay(50);	// 1/4 bit delay
	mov	dptr,#0x0032
;	main.c:155: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'RepeatedStartI2c'
;------------------------------------------------------------
;	main.c:157: void RepeatedStartI2c()
;	-----------------------------------------
;	 function RepeatedStartI2c
;	-----------------------------------------
_RepeatedStartI2c:
;	main.c:159: SCL  = 0;
;	assignBit
	clr	_P1_6
;	main.c:160: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:161: SDA  = 1;
;	assignBit
	setb	_P1_7
;	main.c:162: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:163: SCL  = 1;
;	assignBit
	setb	_P1_6
;	main.c:164: delay(50);
	mov	dptr,#0x0032
	lcall	_delay
;	main.c:165: SDA  = 0;
;	assignBit
	clr	_P1_7
;	main.c:166: delay(50);
	mov	dptr,#0x0032
;	main.c:167: }
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'eebytew'
;------------------------------------------------------------
;databyte                  Allocated with name '_eebytew_PARM_2'
;addr                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:169: void eebytew(unsigned int addr, unsigned char databyte)
;	-----------------------------------------
;	 function eebytew
;	-----------------------------------------
_eebytew:
	mov	r6,dpl
	mov	r7,dph
;	main.c:171: I2C_Start();
	push	ar7
	push	ar6
	lcall	_I2C_Start
;	main.c:172: I2C_Write_Byte((unsigned char)0xA0);
	mov	dpl,#0xa0
	lcall	_I2C_Write_Byte
	pop	ar6
	pop	ar7
;	main.c:173: I2C_Write_Byte((unsigned char)addr);
	mov	dpl,r6
	lcall	_I2C_Write_Byte
;	main.c:174: I2C_Write_Byte(databyte);
	mov	dpl,_eebytew_PARM_2
	lcall	_I2C_Write_Byte
;	main.c:175: I2C_Stop();
;	main.c:177: }
	ljmp	_I2C_Stop
;------------------------------------------------------------
;Allocation info for local variables in function 'eebyter'
;------------------------------------------------------------
;addr                      Allocated to registers r6 r7 
;rec                       Allocated to registers r7 
;------------------------------------------------------------
;	main.c:179: unsigned char eebyter(unsigned int addr)
;	-----------------------------------------
;	 function eebyter
;	-----------------------------------------
_eebyter:
	mov	r6,dpl
	mov	r7,dph
;	main.c:182: I2C_Start();
	push	ar7
	push	ar6
	lcall	_I2C_Start
;	main.c:183: I2C_Write_Byte((unsigned char)0xA0);
	mov	dpl,#0xa0
	lcall	_I2C_Write_Byte
	pop	ar6
	pop	ar7
;	main.c:184: I2C_Write_Byte((unsigned char)addr);
	mov	dpl,r6
	lcall	_I2C_Write_Byte
;	main.c:185: RepeatedStartI2c();
	lcall	_RepeatedStartI2c
;	main.c:186: I2C_Write_Byte((unsigned char)0xA1);
	mov	dpl,#0xa1
	lcall	_I2C_Write_Byte
;	main.c:187: rec=I2C_Read_Byte();
	lcall	_I2C_Read_Byte
	mov	r7,dpl
;	main.c:188: I2C_Send_ACK();
	push	ar7
	lcall	_I2C_Send_ACK
;	main.c:189: I2C_Stop();
	lcall	_I2C_Stop
	pop	ar7
;	main.c:190: return rec;
	mov	dpl,r7
;	main.c:191: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;rx                        Allocated to registers 
;addr                      Allocated with name '_main_addr_131072_47'
;start_addr                Allocated with name '_main_start_addr_131072_47'
;end_addr                  Allocated with name '_main_end_addr_131072_47'
;data                      Allocated with name '_main_data_131072_47'
;digit                     Allocated to registers r1 r2 
;ch                        Allocated to registers r4 
;rd                        Allocated to registers r5 
;i                         Allocated to registers r0 r1 
;------------------------------------------------------------
;	main.c:193: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:196: I2C_init();					// Initialize i2c pins
	lcall	_I2C_init
;	main.c:197: printf("Starting I2C application\r\n");
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:198: printf("Help menu:\r\n");
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:199: printf("'w': Enter an EEPROM address in hex to write data at and byte data\r\n");
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:200: printf("'r': Enter an EEPROM address in hex to read data from\r\n");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:201: printf("'h': Enter an EEPROM start and end addresses to dump the data\r\n");
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:202: printf("'e': Reset EEPROM\r\n");
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:204: while(1)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	_main_start_addr_131072_47,a
	mov	(_main_start_addr_131072_47 + 1),a
00212$:
;	main.c:206: unsigned int addr, start_addr, end_addr = 0;
	clr	a
	mov	_main_end_addr_131072_47,a
	mov	(_main_end_addr_131072_47 + 1),a
;	main.c:207: unsigned int data = 0;
	mov	_main_data_131072_47,a
	mov	(_main_data_131072_47 + 1),a
;	main.c:209: char ch = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r0,dpl
;	main.c:210: putchar(ch);
	mov	ar1,r0
	mov	r3,#0x00
	mov	dpl,r1
	mov	dph,r3
	push	ar0
	lcall	_putchar
;	main.c:211: printf("\r\n");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar0
	pop	ar6
	pop	ar7
;	main.c:212: switch(ch)
	cjne	r0,#0x68,00485$
	ljmp	00163$
00485$:
	cjne	r0,#0x72,00486$
	ljmp	00142$
00486$:
	cjne	r0,#0x77,00487$
	sjmp	00488$
00487$:
	ljmp	00209$
00488$:
;	main.c:215: printf("Enter the address location to store the data at : \r\n");
	push	ar7
	push	ar6
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:216: while (1) {
00117$:
;	main.c:217: ch = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r2,dpl
	pop	ar6
	pop	ar7
;	main.c:219: if ((int)ch == 13) { // Check until carriage return
	mov	ar1,r2
	mov	r3,#0x00
	cjne	r1,#0x0d,00489$
	cjne	r3,#0x00,00489$
	sjmp	00118$
00489$:
;	main.c:223: if ((ch >= '0') && (ch <= '9')) {
	cjne	r2,#0x30,00490$
00490$:
	jc	00113$
	mov	a,r2
	add	a,#0xff - 0x39
	jc	00113$
;	main.c:224: digit = ch - '0';
	mov	a,r1
	add	a,#0xd0
	mov	r1,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	sjmp	00114$
00113$:
;	main.c:225: } else if ((ch >= 'A') && (ch <= 'F')) {
	cjne	r2,#0x41,00493$
00493$:
	jc	00109$
	mov	a,r2
	add	a,#0xff - 0x46
	jc	00109$
;	main.c:226: digit = ch - 7 - '0';
	mov	ar0,r2
	mov	r5,#0x00
	mov	a,r0
	add	a,#0xc9
	mov	r1,a
	mov	a,r5
	addc	a,#0xff
	mov	r3,a
	sjmp	00114$
00109$:
;	main.c:227: } else if ((ch >= 'a') && (ch <= 'f')) {
	cjne	r2,#0x61,00496$
00496$:
	jc	00105$
	mov	a,r2
	add	a,#0xff - 0x66
	jc	00105$
;	main.c:228: digit = ch - 32 - 7 - '0';
	mov	r5,#0x00
	mov	a,r2
	add	a,#0xa9
	mov	r1,a
	mov	a,r5
	addc	a,#0xff
	mov	r3,a
	sjmp	00114$
00105$:
;	main.c:230: printf("Invalid input. Please enter 0-9, A-F or a-f only.\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:231: return;
	ret
00114$:
;	main.c:233: addr = addr * 16 + digit;
	mov	ar4,r6
	mov	a,r7
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r1
	add	a,r4
	mov	r6,a
	mov	a,r3
	addc	a,r5
	mov	r7,a
	ljmp	00117$
00118$:
;	main.c:237: printf("Entered address: 0x%x\r\n", addr);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:240: if ((addr < 0x0) || (addr > 0x7FF)) {
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x07
	subb	a,r7
	jnc	00120$
;	main.c:241: printf("Invalid buffer address. The address should be between 0 and 7FF.\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:242: break;
	ljmp	00212$
00120$:
;	main.c:245: printf("Enter the data byte to write:\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:247: while (1) {
00137$:
;	main.c:248: ch = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	main.c:250: if ((int)ch == 13) { // Check until carriage return
	mov	ar3,r4
	mov	r5,#0x00
	cjne	r3,#0x0d,00500$
	cjne	r5,#0x00,00500$
	sjmp	00138$
00500$:
;	main.c:254: if ((ch >= '0') && (ch <= '9')) {
	cjne	r4,#0x30,00501$
00501$:
	jc	00133$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00133$
;	main.c:255: digit = ch - '0';
	mov	a,r3
	add	a,#0xd0
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r1,a
	sjmp	00134$
00133$:
;	main.c:256: } else if ((ch >= 'A') && (ch <= 'F')) {
	cjne	r4,#0x41,00504$
00504$:
	jc	00129$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00129$
;	main.c:257: digit = ch - 7 - '0';
	mov	a,r3
	add	a,#0xc9
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r1,a
	sjmp	00134$
00129$:
;	main.c:258: } else if ((ch >= 'a') && (ch <= 'f')) {
	cjne	r4,#0x61,00507$
00507$:
	jc	00125$
	mov	a,r4
	add	a,#0xff - 0x66
	jc	00125$
;	main.c:259: digit = ch - 32 - 7 - '0';
	mov	a,r3
	add	a,#0xa9
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r1,a
	sjmp	00134$
00125$:
;	main.c:261: printf("Invalid input. Please enter 0-9, A-F or a-f only.\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:262: return;
	ret
00134$:
;	main.c:264: data = data * 16 + digit;
	mov	r4,_main_data_131072_47
	mov	a,(_main_data_131072_47 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r2
	add	a,r4
	mov	_main_data_131072_47,a
	mov	a,r1
	addc	a,r5
	mov	(_main_data_131072_47 + 1),a
	ljmp	00137$
00138$:
;	main.c:268: printf("Entered data: 0x%x\r\n", data);
	push	ar7
	push	ar6
	push	_main_data_131072_47
	push	(_main_data_131072_47 + 1)
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:271: if ((data < 0x0) || (data > 0xFF)) {
	clr	c
	mov	a,#0xff
	subb	a,_main_data_131072_47
	clr	a
	subb	a,(_main_data_131072_47 + 1)
	jnc	00140$
;	main.c:272: printf("Invalid buffer data. The data should be between 0 and FF.\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:273: break;
	ljmp	00212$
00140$:
;	main.c:276: eebytew(addr, data);
	mov	_eebytew_PARM_2,_main_data_131072_47
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_eebytew
	pop	ar6
	pop	ar7
;	main.c:277: break;
	ljmp	00212$
;	main.c:280: case 'r':
00142$:
;	main.c:281: printf("Enter the address location to read the data from : \r\n");
	push	ar7
	push	ar6
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:282: while (1) {
00158$:
;	main.c:283: ch = getchar();
	push	ar7
	push	ar6
	lcall	_getchar
	mov	r4,dpl
	pop	ar6
	pop	ar7
;	main.c:285: if ((int)ch == 13) { // Check until carriage return
	mov	ar3,r4
	mov	r5,#0x00
	cjne	r3,#0x0d,00511$
	cjne	r5,#0x00,00511$
	sjmp	00159$
00511$:
;	main.c:289: if ((ch >= '0') && (ch <= '9')) {
	cjne	r4,#0x30,00512$
00512$:
	jc	00154$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00154$
;	main.c:290: digit = ch - '0';
	mov	a,r3
	add	a,#0xd0
	mov	r1,a
	mov	a,r5
	addc	a,#0xff
	mov	r2,a
	sjmp	00155$
00154$:
;	main.c:291: } else if ((ch >= 'A') && (ch <= 'F')) {
	cjne	r4,#0x41,00515$
00515$:
	jc	00150$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00150$
;	main.c:292: digit = ch - 7 - '0';
	mov	a,r3
	add	a,#0xc9
	mov	r1,a
	mov	a,r5
	addc	a,#0xff
	mov	r2,a
	sjmp	00155$
00150$:
;	main.c:293: } else if ((ch >= 'a') && (ch <= 'f')) {
	cjne	r4,#0x61,00518$
00518$:
	jc	00146$
	mov	a,r4
	add	a,#0xff - 0x66
	jc	00146$
;	main.c:294: digit = ch - 32 - 7 - '0';
	mov	a,r3
	add	a,#0xa9
	mov	r1,a
	mov	a,r5
	addc	a,#0xff
	mov	r2,a
	sjmp	00155$
00146$:
;	main.c:296: printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:297: return;
	ret
00155$:
;	main.c:299: addr = addr * 16 + digit;
	mov	ar4,r6
	mov	a,r7
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r1
	add	a,r4
	mov	r6,a
	mov	a,r2
	addc	a,r5
	mov	r7,a
	ljmp	00158$
00159$:
;	main.c:303: printf("Entered address: 0x%x\r\n", addr);
	push	ar7
	push	ar6
	push	ar6
	push	ar7
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:306: if ((addr < 0x0) || (addr > 0x7FF)) {
	clr	c
	mov	a,#0xff
	subb	a,r6
	mov	a,#0x07
	subb	a,r7
	jnc	00161$
;	main.c:307: printf("Invalid buffer address. The address should be between 0 and 7FF.\r\n");
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:308: return;
	ret
00161$:
;	main.c:310: unsigned char rd = eebyter(addr);
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_eebyter
	mov	r5,dpl
;	main.c:311: printf("read data: 0x%x\r\n", rd);
	mov	r4,#0x00
	push	ar5
	push	ar4
	mov	a,#___str_16
	push	acc
	mov	a,#(___str_16 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:312: break;
	ljmp	00212$
;	main.c:314: case 'h':
00163$:
;	main.c:315: printf("Enter the start address for dump:\r\n");
	mov	a,#___str_17
	push	acc
	mov	a,#(___str_17 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:316: while (1) {
00179$:
;	main.c:317: ch = getchar();
	lcall	_getchar
	mov	r4,dpl
;	main.c:319: if ((int)ch == 13) { // Check until carriage return
	mov	ar3,r4
	mov	r5,#0x00
	cjne	r3,#0x0d,00522$
	cjne	r5,#0x00,00522$
	sjmp	00180$
00522$:
;	main.c:323: if ((ch >= '0') && (ch <= '9')) {
	cjne	r4,#0x30,00523$
00523$:
	jc	00175$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00175$
;	main.c:324: digit = ch - '0';
	mov	a,r3
	add	a,#0xd0
	mov	r3,a
	mov	a,r5
	addc	a,#0xff
	mov	r5,a
	sjmp	00176$
00175$:
;	main.c:325: } else if ((ch >= 'A') && (ch <= 'F')) {
	cjne	r4,#0x41,00526$
00526$:
	jc	00171$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00171$
;	main.c:326: digit = ch - 7 - '0';
	mov	ar1,r4
	mov	r2,#0x00
	mov	a,r1
	add	a,#0xc9
	mov	r3,a
	mov	a,r2
	addc	a,#0xff
	mov	r5,a
	sjmp	00176$
00171$:
;	main.c:327: } else if ((ch >= 'a') && (ch <= 'f')) {
	cjne	r4,#0x61,00529$
00529$:
	jc	00167$
	mov	a,r4
	add	a,#0xff - 0x66
	jc	00167$
;	main.c:328: digit = ch - 32 - 7 - '0';
	mov	r2,#0x00
	mov	a,r4
	add	a,#0xa9
	mov	r3,a
	mov	a,r2
	addc	a,#0xff
	mov	r5,a
	sjmp	00176$
00167$:
;	main.c:330: printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:331: return;
	ret
00176$:
;	main.c:333: start_addr = start_addr * 16 + digit;
	mov	r4,_main_start_addr_131072_47
	mov	a,(_main_start_addr_131072_47 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r2,a
	mov	a,r3
	add	a,r4
	mov	_main_start_addr_131072_47,a
	mov	a,r5
	addc	a,r2
	mov	(_main_start_addr_131072_47 + 1),a
	ljmp	00179$
00180$:
;	main.c:337: printf("Entered start address: 0x%x\r\n", start_addr);
	push	_main_start_addr_131072_47
	push	(_main_start_addr_131072_47 + 1)
	mov	a,#___str_18
	push	acc
	mov	a,#(___str_18 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:340: if ((start_addr < 0x0) || (start_addr > 0x7FF)) {
	clr	c
	mov	a,#0xff
	subb	a,_main_start_addr_131072_47
	mov	a,#0x07
	subb	a,(_main_start_addr_131072_47 + 1)
	jnc	00182$
;	main.c:341: printf("Invalid start address. The address should be between 0 and 7FF.\r\n");
	mov	a,#___str_19
	push	acc
	mov	a,#(___str_19 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:342: return;
	ret
00182$:
;	main.c:345: printf("Enter the end address for dump:\r\n");
	mov	a,#___str_20
	push	acc
	mov	a,#(___str_20 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:346: while (1) {
00199$:
;	main.c:347: ch = getchar();
	lcall	_getchar
	mov	r4,dpl
;	main.c:349: if ((int)ch == 13) { // Check until carriage return
	mov	ar3,r4
	mov	r5,#0x00
	cjne	r3,#0x0d,00533$
	cjne	r5,#0x00,00533$
	sjmp	00200$
00533$:
;	main.c:353: if ((ch >= '0') && (ch <= '9')) {
	cjne	r4,#0x30,00534$
00534$:
	jc	00195$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00195$
;	main.c:354: digit = ch - '0';
	mov	a,r3
	add	a,#0xd0
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r1,a
	sjmp	00196$
00195$:
;	main.c:355: } else if ((ch >= 'A') && (ch <= 'F')) {
	cjne	r4,#0x41,00537$
00537$:
	jc	00191$
	mov	a,r4
	add	a,#0xff - 0x46
	jc	00191$
;	main.c:356: digit = ch - 7 - '0';
	mov	a,r3
	add	a,#0xc9
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r1,a
	sjmp	00196$
00191$:
;	main.c:357: } else if ((ch >= 'a') && (ch <= 'f')) {
	cjne	r4,#0x61,00540$
00540$:
	jc	00187$
	mov	a,r4
	add	a,#0xff - 0x66
	jc	00187$
;	main.c:358: digit = ch - 32 - 7 - '0';
	mov	a,r3
	add	a,#0xa9
	mov	r2,a
	mov	a,r5
	addc	a,#0xff
	mov	r1,a
	sjmp	00196$
00187$:
;	main.c:360: printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
	mov	a,#___str_15
	push	acc
	mov	a,#(___str_15 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:361: return;
	ret
00196$:
;	main.c:363: end_addr = end_addr * 16 + digit;
	mov	r4,_main_end_addr_131072_47
	mov	a,(_main_end_addr_131072_47 + 1)
	swap	a
	anl	a,#0xf0
	xch	a,r4
	swap	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,r2
	add	a,r4
	mov	_main_end_addr_131072_47,a
	mov	a,r1
	addc	a,r5
	mov	(_main_end_addr_131072_47 + 1),a
	sjmp	00199$
00200$:
;	main.c:367: printf("Entered end address: 0x%x\r\n", end_addr);
	push	_main_end_addr_131072_47
	push	(_main_end_addr_131072_47 + 1)
	mov	a,#___str_21
	push	acc
	mov	a,#(___str_21 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:370: if ((end_addr < 0x0) || (end_addr > 0x7FF) || (end_addr < start_addr)) {
	clr	c
	mov	a,#0xff
	subb	a,_main_end_addr_131072_47
	mov	a,#0x07
	subb	a,(_main_end_addr_131072_47 + 1)
	jc	00201$
	mov	a,_main_end_addr_131072_47
	subb	a,_main_start_addr_131072_47
	mov	a,(_main_end_addr_131072_47 + 1)
	subb	a,(_main_start_addr_131072_47 + 1)
	jnc	00202$
00201$:
;	main.c:371: printf("Invalid end address. The address should be between 0-7FF and more than the start address.\r\n");
	mov	a,#___str_22
	push	acc
	mov	a,#(___str_22 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:372: return;
	ret
00202$:
;	main.c:375: printf("%x:", start_addr);
	push	_main_start_addr_131072_47
	push	(_main_start_addr_131072_47 + 1)
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:377: for (int i=0; i<end_addr - start_addr; i++)
	mov	a,_main_end_addr_131072_47
	clr	c
	subb	a,_main_start_addr_131072_47
	mov	r4,a
	mov	a,(_main_end_addr_131072_47 + 1)
	subb	a,(_main_start_addr_131072_47 + 1)
	mov	r5,a
	mov	_main_addr_131072_47,_main_start_addr_131072_47
	mov	(_main_addr_131072_47 + 1),(_main_start_addr_131072_47 + 1)
	mov	r0,#0x00
	mov	r1,#0x00
00215$:
	mov	ar2,r0
	mov	ar3,r1
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
	jc	00545$
	ljmp	00272$
00545$:
;	main.c:379: if (i > 0 && i % 16 == 0) {
	clr	c
	clr	a
	subb	a,r0
	mov	a,#(0x00 ^ 0x80)
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00206$
	mov	__modsint_PARM_2,#0x10
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r0
	mov	dph,r1
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	__modsint
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
	orl	a,b
	jnz	00206$
;	main.c:380: printf("\r\n");  // Start a new line after every 16 bytes
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:381: printf("%x:", addr);
	push	_main_addr_131072_47
	push	(_main_addr_131072_47 + 1)
	mov	a,#___str_23
	push	acc
	mov	a,#(___str_23 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
00206$:
;	main.c:383: printf("%x ", eebyter(addr));
	mov	dpl,_main_addr_131072_47
	mov	dph,(_main_addr_131072_47 + 1)
	push	ar5
	push	ar4
	push	ar1
	push	ar0
	lcall	_eebyter
	mov	r3,dpl
	mov	r2,#0x00
	push	ar3
	push	ar2
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar4
	pop	ar5
;	main.c:384: addr += 1;
	inc	_main_addr_131072_47
	clr	a
	cjne	a,_main_addr_131072_47,00548$
	inc	(_main_addr_131072_47 + 1)
00548$:
;	main.c:377: for (int i=0; i<end_addr - start_addr; i++)
	inc	r0
	cjne	r0,#0x00,00549$
	inc	r1
00549$:
	ljmp	00215$
00272$:
	mov	r6,_main_addr_131072_47
	mov	r7,(_main_addr_131072_47 + 1)
;	main.c:386: printf("\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:388: break;
	ljmp	00212$
;	main.c:395: default:
00209$:
;	main.c:396: printf("Invalid input\r\n");
	push	ar7
	push	ar6
	mov	a,#___str_25
	push	acc
	mov	a,#(___str_25 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
	pop	ar7
;	main.c:399: }
;	main.c:443: }
	ljmp	00212$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Starting I2C application"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Help menu:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "'w': Enter an EEPROM address in hex to write data at and byt"
	.ascii "e data"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "'r': Enter an EEPROM address in hex to read data from"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "'h': Enter an EEPROM start and end addresses to dump the dat"
	.ascii "a"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "'e': Reset EEPROM"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Enter the address location to store the data at : "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Invalid input. Please enter 0-9, A-F or a-f only."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "Entered address: 0x%x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "Invalid buffer address. The address should be between 0 and "
	.ascii "7FF."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "Enter the data byte to write:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "Entered data: 0x%x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Invalid buffer data. The data should be between 0 and FF."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "Enter the address location to read the data from : "
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "Invalid input. Please enter 0-9, A-F or a-f."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "read data: 0x%x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "Enter the start address for dump:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "Entered start address: 0x%x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "Invalid start address. The address should be between 0 and 7"
	.ascii "FF."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "Enter the end address for dump:"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "Entered end address: 0x%x"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "Invalid end address. The address should be between 0-7FF and"
	.ascii " more than the start address."
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii "%x:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "%x "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "Invalid input"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
