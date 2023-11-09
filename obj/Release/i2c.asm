;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _I2CRead
	.globl _I2CSend
	.globl _I2CNak
	.globl _I2CAck
	.globl _I2CStop
	.globl _I2CRestart
	.globl _I2CStart
	.globl _I2CInit
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
_I2CSend_sloc0_1_0:
	.ds 1
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CInit'
;------------------------------------------------------------
;	i2c.c:7: void I2CInit(){
;	-----------------------------------------
;	 function I2CInit
;	-----------------------------------------
_I2CInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	i2c.c:8: SDA = 1;
;	assignBit
	setb	_P1_6
;	i2c.c:9: SCL = 1;
;	assignBit
	setb	_P1_7
;	i2c.c:10: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CStart'
;------------------------------------------------------------
;	i2c.c:12: void I2CStart(){
;	-----------------------------------------
;	 function I2CStart
;	-----------------------------------------
_I2CStart:
;	i2c.c:13: SCL = 1;
;	assignBit
	setb	_P1_7
;	i2c.c:14: SDA = 0;
;	assignBit
	clr	_P1_6
;	i2c.c:15: SCL = 0;
;	assignBit
	clr	_P1_7
;	i2c.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CRestart'
;------------------------------------------------------------
;	i2c.c:18: void I2CRestart(){
;	-----------------------------------------
;	 function I2CRestart
;	-----------------------------------------
_I2CRestart:
;	i2c.c:19: SDA = 1;
;	assignBit
	setb	_P1_6
;	i2c.c:20: SCL = 1;
;	assignBit
	setb	_P1_7
;	i2c.c:21: SDA = 0;
;	assignBit
	clr	_P1_6
;	i2c.c:22: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CStop'
;------------------------------------------------------------
;	i2c.c:24: void I2CStop(){
;	-----------------------------------------
;	 function I2CStop
;	-----------------------------------------
_I2CStop:
;	i2c.c:25: SDA = 0;
;	assignBit
	clr	_P1_6
;	i2c.c:26: SCL = 1;
;	assignBit
	setb	_P1_7
;	i2c.c:27: SDA = 1;
;	assignBit
	setb	_P1_6
;	i2c.c:28: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CAck'
;------------------------------------------------------------
;	i2c.c:30: void I2CAck(){
;	-----------------------------------------
;	 function I2CAck
;	-----------------------------------------
_I2CAck:
;	i2c.c:31: SDA = 0;
;	assignBit
	clr	_P1_6
;	i2c.c:32: SCL = 1;
;	assignBit
	setb	_P1_7
;	i2c.c:33: SCL = 0;
;	assignBit
	clr	_P1_7
;	i2c.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CNak'
;------------------------------------------------------------
;	i2c.c:36: void I2CNak(){
;	-----------------------------------------
;	 function I2CNak
;	-----------------------------------------
_I2CNak:
;	i2c.c:37: SDA = 1;
;	assignBit
	setb	_P1_6
;	i2c.c:38: SCL = 1;
;	assignBit
	setb	_P1_7
;	i2c.c:39: SCL = 0;
;	assignBit
	clr	_P1_7
;	i2c.c:40: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CSend'
;------------------------------------------------------------
;Data                      Allocated to registers r7 
;i                         Allocated to registers r6 
;ack_bit                   Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:42: unsigned char I2CSend(unsigned char Data){
;	-----------------------------------------
;	 function I2CSend
;	-----------------------------------------
_I2CSend:
	mov	r7,dpl
;	i2c.c:44: for(i=0;i<8;i++){
	mov	r6,#0x00
00105$:
;	i2c.c:45: SCL = 0;
;	assignBit
	clr	_P1_7
;	i2c.c:46: if ((Data & 0x80) == 0)
	mov	a,r7
	jb	acc.7,00102$
;	i2c.c:47: SDA = 0;
;	assignBit
	clr	_P1_6
	sjmp	00103$
00102$:
;	i2c.c:49: SDA = 1;
;	assignBit
	setb	_P1_6
00103$:
;	i2c.c:50: SCL = 1;
;	assignBit
	setb	_P1_7
;	i2c.c:51: Data<<=1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	i2c.c:44: for(i=0;i<8;i++){
	inc	r6
	cjne	r6,#0x08,00123$
00123$:
	jc	00105$
;	i2c.c:53: SCL = 0;
;	assignBit
	clr	_P1_7
;	i2c.c:54: ack_bit = SDA;
	mov	c,_P1_6
	clr	a
	rlc	a
	mov	r7,a
;	i2c.c:55: SCL = 1;
;	assignBit
	setb	_P1_7
;	i2c.c:56: SCL = 0;
;	assignBit
	clr	_P1_7
;	i2c.c:57: return !ack_bit;
	mov	a,r7
	cjne	a,#0x01,00125$
00125$:
	mov  _I2CSend_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dpl,a
;	i2c.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2CRead'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;Data                      Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:60: unsigned char I2CRead(){
;	-----------------------------------------
;	 function I2CRead
;	-----------------------------------------
_I2CRead:
;	i2c.c:61: unsigned char i, Data=0;
	mov	r7,#0x00
;	i2c.c:62: for(i=0;i<8;i++){
	mov	r6,#0x00
00106$:
;	i2c.c:63: SCL = 0;
;	assignBit
	clr	_P1_7
;	i2c.c:64: SCL = 1;
;	assignBit
	setb	_P1_7
;	i2c.c:65: if(SDA)
	jnb	_P1_6,00102$
;	i2c.c:66: Data |=1;
	orl	ar7,#0x01
00102$:
;	i2c.c:67: if(i<7)
	cjne	r6,#0x07,00128$
00128$:
	jnc	00107$
;	i2c.c:68: Data<<=1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
00107$:
;	i2c.c:62: for(i=0;i<8;i++){
	inc	r6
	cjne	r6,#0x08,00130$
00130$:
	jc	00106$
;	i2c.c:70: SCL = 0;
;	assignBit
	clr	_P1_7
;	i2c.c:71: SDA = 1;
;	assignBit
	setb	_P1_6
;	i2c.c:72: return Data;
	mov	dpl,r7
;	i2c.c:73: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
