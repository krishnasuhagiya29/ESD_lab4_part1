                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _I2CRead
                                     12 	.globl _I2CSend
                                     13 	.globl _I2CNak
                                     14 	.globl _I2CAck
                                     15 	.globl _I2CStop
                                     16 	.globl _I2CRestart
                                     17 	.globl _I2CStart
                                     18 	.globl _I2CInit
                                     19 	.globl _TF1
                                     20 	.globl _TR1
                                     21 	.globl _TF0
                                     22 	.globl _TR0
                                     23 	.globl _IE1
                                     24 	.globl _IT1
                                     25 	.globl _IE0
                                     26 	.globl _IT0
                                     27 	.globl _SM0
                                     28 	.globl _SM1
                                     29 	.globl _SM2
                                     30 	.globl _REN
                                     31 	.globl _TB8
                                     32 	.globl _RB8
                                     33 	.globl _TI
                                     34 	.globl _RI
                                     35 	.globl _CY
                                     36 	.globl _AC
                                     37 	.globl _F0
                                     38 	.globl _RS1
                                     39 	.globl _RS0
                                     40 	.globl _OV
                                     41 	.globl _F1
                                     42 	.globl _P
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD0
                                     50 	.globl _TXD
                                     51 	.globl _RXD0
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _P2_7
                                     62 	.globl _P2_6
                                     63 	.globl _P2_5
                                     64 	.globl _P2_4
                                     65 	.globl _P2_3
                                     66 	.globl _P2_2
                                     67 	.globl _P2_1
                                     68 	.globl _P2_0
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _P0_7
                                     78 	.globl _P0_6
                                     79 	.globl _P0_5
                                     80 	.globl _P0_4
                                     81 	.globl _P0_3
                                     82 	.globl _P0_2
                                     83 	.globl _P0_1
                                     84 	.globl _P0_0
                                     85 	.globl _PS
                                     86 	.globl _PT1
                                     87 	.globl _PX1
                                     88 	.globl _PT0
                                     89 	.globl _PX0
                                     90 	.globl _EA
                                     91 	.globl _ES
                                     92 	.globl _ET1
                                     93 	.globl _EX1
                                     94 	.globl _ET0
                                     95 	.globl _EX0
                                     96 	.globl _BREG_F7
                                     97 	.globl _BREG_F6
                                     98 	.globl _BREG_F5
                                     99 	.globl _BREG_F4
                                    100 	.globl _BREG_F3
                                    101 	.globl _BREG_F2
                                    102 	.globl _BREG_F1
                                    103 	.globl _BREG_F0
                                    104 	.globl _TMOD
                                    105 	.globl _TL1
                                    106 	.globl _TL0
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TCON
                                    110 	.globl _SP
                                    111 	.globl _SCON
                                    112 	.globl _SBUF0
                                    113 	.globl _SBUF
                                    114 	.globl _PSW
                                    115 	.globl _PCON
                                    116 	.globl _P3
                                    117 	.globl _P2
                                    118 	.globl _P1
                                    119 	.globl _P0
                                    120 	.globl _IP
                                    121 	.globl _IE
                                    122 	.globl _DP0L
                                    123 	.globl _DPL
                                    124 	.globl _DP0H
                                    125 	.globl _DPH
                                    126 	.globl _B
                                    127 	.globl _ACC
                                    128 ;--------------------------------------------------------
                                    129 ; special function registers
                                    130 ;--------------------------------------------------------
                                    131 	.area RSEG    (ABS,DATA)
      000000                        132 	.org 0x0000
                           0000E0   133 _ACC	=	0x00e0
                           0000F0   134 _B	=	0x00f0
                           000083   135 _DPH	=	0x0083
                           000083   136 _DP0H	=	0x0083
                           000082   137 _DPL	=	0x0082
                           000082   138 _DP0L	=	0x0082
                           0000A8   139 _IE	=	0x00a8
                           0000B8   140 _IP	=	0x00b8
                           000080   141 _P0	=	0x0080
                           000090   142 _P1	=	0x0090
                           0000A0   143 _P2	=	0x00a0
                           0000B0   144 _P3	=	0x00b0
                           000087   145 _PCON	=	0x0087
                           0000D0   146 _PSW	=	0x00d0
                           000099   147 _SBUF	=	0x0099
                           000099   148 _SBUF0	=	0x0099
                           000098   149 _SCON	=	0x0098
                           000081   150 _SP	=	0x0081
                           000088   151 _TCON	=	0x0088
                           00008C   152 _TH0	=	0x008c
                           00008D   153 _TH1	=	0x008d
                           00008A   154 _TL0	=	0x008a
                           00008B   155 _TL1	=	0x008b
                           000089   156 _TMOD	=	0x0089
                                    157 ;--------------------------------------------------------
                                    158 ; special function bits
                                    159 ;--------------------------------------------------------
                                    160 	.area RSEG    (ABS,DATA)
      000000                        161 	.org 0x0000
                           0000F0   162 _BREG_F0	=	0x00f0
                           0000F1   163 _BREG_F1	=	0x00f1
                           0000F2   164 _BREG_F2	=	0x00f2
                           0000F3   165 _BREG_F3	=	0x00f3
                           0000F4   166 _BREG_F4	=	0x00f4
                           0000F5   167 _BREG_F5	=	0x00f5
                           0000F6   168 _BREG_F6	=	0x00f6
                           0000F7   169 _BREG_F7	=	0x00f7
                           0000A8   170 _EX0	=	0x00a8
                           0000A9   171 _ET0	=	0x00a9
                           0000AA   172 _EX1	=	0x00aa
                           0000AB   173 _ET1	=	0x00ab
                           0000AC   174 _ES	=	0x00ac
                           0000AF   175 _EA	=	0x00af
                           0000B8   176 _PX0	=	0x00b8
                           0000B9   177 _PT0	=	0x00b9
                           0000BA   178 _PX1	=	0x00ba
                           0000BB   179 _PT1	=	0x00bb
                           0000BC   180 _PS	=	0x00bc
                           000080   181 _P0_0	=	0x0080
                           000081   182 _P0_1	=	0x0081
                           000082   183 _P0_2	=	0x0082
                           000083   184 _P0_3	=	0x0083
                           000084   185 _P0_4	=	0x0084
                           000085   186 _P0_5	=	0x0085
                           000086   187 _P0_6	=	0x0086
                           000087   188 _P0_7	=	0x0087
                           000090   189 _P1_0	=	0x0090
                           000091   190 _P1_1	=	0x0091
                           000092   191 _P1_2	=	0x0092
                           000093   192 _P1_3	=	0x0093
                           000094   193 _P1_4	=	0x0094
                           000095   194 _P1_5	=	0x0095
                           000096   195 _P1_6	=	0x0096
                           000097   196 _P1_7	=	0x0097
                           0000A0   197 _P2_0	=	0x00a0
                           0000A1   198 _P2_1	=	0x00a1
                           0000A2   199 _P2_2	=	0x00a2
                           0000A3   200 _P2_3	=	0x00a3
                           0000A4   201 _P2_4	=	0x00a4
                           0000A5   202 _P2_5	=	0x00a5
                           0000A6   203 _P2_6	=	0x00a6
                           0000A7   204 _P2_7	=	0x00a7
                           0000B0   205 _P3_0	=	0x00b0
                           0000B1   206 _P3_1	=	0x00b1
                           0000B2   207 _P3_2	=	0x00b2
                           0000B3   208 _P3_3	=	0x00b3
                           0000B4   209 _P3_4	=	0x00b4
                           0000B5   210 _P3_5	=	0x00b5
                           0000B6   211 _P3_6	=	0x00b6
                           0000B7   212 _P3_7	=	0x00b7
                           0000B0   213 _RXD	=	0x00b0
                           0000B0   214 _RXD0	=	0x00b0
                           0000B1   215 _TXD	=	0x00b1
                           0000B1   216 _TXD0	=	0x00b1
                           0000B2   217 _INT0	=	0x00b2
                           0000B3   218 _INT1	=	0x00b3
                           0000B4   219 _T0	=	0x00b4
                           0000B5   220 _T1	=	0x00b5
                           0000B6   221 _WR	=	0x00b6
                           0000B7   222 _RD	=	0x00b7
                           0000D0   223 _P	=	0x00d0
                           0000D1   224 _F1	=	0x00d1
                           0000D2   225 _OV	=	0x00d2
                           0000D3   226 _RS0	=	0x00d3
                           0000D4   227 _RS1	=	0x00d4
                           0000D5   228 _F0	=	0x00d5
                           0000D6   229 _AC	=	0x00d6
                           0000D7   230 _CY	=	0x00d7
                           000098   231 _RI	=	0x0098
                           000099   232 _TI	=	0x0099
                           00009A   233 _RB8	=	0x009a
                           00009B   234 _TB8	=	0x009b
                           00009C   235 _REN	=	0x009c
                           00009D   236 _SM2	=	0x009d
                           00009E   237 _SM1	=	0x009e
                           00009F   238 _SM0	=	0x009f
                           000088   239 _IT0	=	0x0088
                           000089   240 _IE0	=	0x0089
                           00008A   241 _IT1	=	0x008a
                           00008B   242 _IE1	=	0x008b
                           00008C   243 _TR0	=	0x008c
                           00008D   244 _TF0	=	0x008d
                           00008E   245 _TR1	=	0x008e
                           00008F   246 _TF1	=	0x008f
                                    247 ;--------------------------------------------------------
                                    248 ; overlayable register banks
                                    249 ;--------------------------------------------------------
                                    250 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        251 	.ds 8
                                    252 ;--------------------------------------------------------
                                    253 ; internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area DSEG    (DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; overlayable items in internal ram
                                    258 ;--------------------------------------------------------
                                    259 	.area	OSEG    (OVR,DATA)
                                    260 	.area	OSEG    (OVR,DATA)
                                    261 ;--------------------------------------------------------
                                    262 ; indirectly addressable internal ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area ISEG    (DATA)
                                    265 ;--------------------------------------------------------
                                    266 ; absolute internal ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area IABS    (ABS,DATA)
                                    269 	.area IABS    (ABS,DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; bit data
                                    272 ;--------------------------------------------------------
                                    273 	.area BSEG    (BIT)
      000000                        274 _I2CSend_sloc0_1_0:
      000000                        275 	.ds 1
                                    276 ;--------------------------------------------------------
                                    277 ; paged external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area PSEG    (PAG,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XSEG    (XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; absolute external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XABS    (ABS,XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; external initialized ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XISEG   (XDATA)
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT0 (CODE)
                                    294 	.area GSINIT1 (CODE)
                                    295 	.area GSINIT2 (CODE)
                                    296 	.area GSINIT3 (CODE)
                                    297 	.area GSINIT4 (CODE)
                                    298 	.area GSINIT5 (CODE)
                                    299 	.area GSINIT  (CODE)
                                    300 	.area GSFINAL (CODE)
                                    301 	.area CSEG    (CODE)
                                    302 ;--------------------------------------------------------
                                    303 ; global & static initialisations
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
                                    306 	.area GSINIT  (CODE)
                                    307 	.area GSFINAL (CODE)
                                    308 	.area GSINIT  (CODE)
                                    309 ;--------------------------------------------------------
                                    310 ; Home
                                    311 ;--------------------------------------------------------
                                    312 	.area HOME    (CODE)
                                    313 	.area HOME    (CODE)
                                    314 ;--------------------------------------------------------
                                    315 ; code
                                    316 ;--------------------------------------------------------
                                    317 	.area CSEG    (CODE)
                                    318 ;------------------------------------------------------------
                                    319 ;Allocation info for local variables in function 'I2CInit'
                                    320 ;------------------------------------------------------------
                                    321 ;	i2c.c:7: void I2CInit(){
                                    322 ;	-----------------------------------------
                                    323 ;	 function I2CInit
                                    324 ;	-----------------------------------------
      003062                        325 _I2CInit:
                           000007   326 	ar7 = 0x07
                           000006   327 	ar6 = 0x06
                           000005   328 	ar5 = 0x05
                           000004   329 	ar4 = 0x04
                           000003   330 	ar3 = 0x03
                           000002   331 	ar2 = 0x02
                           000001   332 	ar1 = 0x01
                           000000   333 	ar0 = 0x00
                                    334 ;	i2c.c:8: SDA = 1;
                                    335 ;	assignBit
      003062 D2 96            [12]  336 	setb	_P1_6
                                    337 ;	i2c.c:9: SCL = 1;
                                    338 ;	assignBit
      003064 D2 97            [12]  339 	setb	_P1_7
                                    340 ;	i2c.c:10: }
      003066 22               [24]  341 	ret
                                    342 ;------------------------------------------------------------
                                    343 ;Allocation info for local variables in function 'I2CStart'
                                    344 ;------------------------------------------------------------
                                    345 ;	i2c.c:12: void I2CStart(){
                                    346 ;	-----------------------------------------
                                    347 ;	 function I2CStart
                                    348 ;	-----------------------------------------
      003067                        349 _I2CStart:
                                    350 ;	i2c.c:13: SCL = 1;
                                    351 ;	assignBit
      003067 D2 97            [12]  352 	setb	_P1_7
                                    353 ;	i2c.c:14: SDA = 0;
                                    354 ;	assignBit
      003069 C2 96            [12]  355 	clr	_P1_6
                                    356 ;	i2c.c:15: SCL = 0;
                                    357 ;	assignBit
      00306B C2 97            [12]  358 	clr	_P1_7
                                    359 ;	i2c.c:16: }
      00306D 22               [24]  360 	ret
                                    361 ;------------------------------------------------------------
                                    362 ;Allocation info for local variables in function 'I2CRestart'
                                    363 ;------------------------------------------------------------
                                    364 ;	i2c.c:18: void I2CRestart(){
                                    365 ;	-----------------------------------------
                                    366 ;	 function I2CRestart
                                    367 ;	-----------------------------------------
      00306E                        368 _I2CRestart:
                                    369 ;	i2c.c:19: SDA = 1;
                                    370 ;	assignBit
      00306E D2 96            [12]  371 	setb	_P1_6
                                    372 ;	i2c.c:20: SCL = 1;
                                    373 ;	assignBit
      003070 D2 97            [12]  374 	setb	_P1_7
                                    375 ;	i2c.c:21: SDA = 0;
                                    376 ;	assignBit
      003072 C2 96            [12]  377 	clr	_P1_6
                                    378 ;	i2c.c:22: }
      003074 22               [24]  379 	ret
                                    380 ;------------------------------------------------------------
                                    381 ;Allocation info for local variables in function 'I2CStop'
                                    382 ;------------------------------------------------------------
                                    383 ;	i2c.c:24: void I2CStop(){
                                    384 ;	-----------------------------------------
                                    385 ;	 function I2CStop
                                    386 ;	-----------------------------------------
      003075                        387 _I2CStop:
                                    388 ;	i2c.c:25: SDA = 0;
                                    389 ;	assignBit
      003075 C2 96            [12]  390 	clr	_P1_6
                                    391 ;	i2c.c:26: SCL = 1;
                                    392 ;	assignBit
      003077 D2 97            [12]  393 	setb	_P1_7
                                    394 ;	i2c.c:27: SDA = 1;
                                    395 ;	assignBit
      003079 D2 96            [12]  396 	setb	_P1_6
                                    397 ;	i2c.c:28: }
      00307B 22               [24]  398 	ret
                                    399 ;------------------------------------------------------------
                                    400 ;Allocation info for local variables in function 'I2CAck'
                                    401 ;------------------------------------------------------------
                                    402 ;	i2c.c:30: void I2CAck(){
                                    403 ;	-----------------------------------------
                                    404 ;	 function I2CAck
                                    405 ;	-----------------------------------------
      00307C                        406 _I2CAck:
                                    407 ;	i2c.c:31: SDA = 0;
                                    408 ;	assignBit
      00307C C2 96            [12]  409 	clr	_P1_6
                                    410 ;	i2c.c:32: SCL = 1;
                                    411 ;	assignBit
      00307E D2 97            [12]  412 	setb	_P1_7
                                    413 ;	i2c.c:33: SCL = 0;
                                    414 ;	assignBit
      003080 C2 97            [12]  415 	clr	_P1_7
                                    416 ;	i2c.c:34: }
      003082 22               [24]  417 	ret
                                    418 ;------------------------------------------------------------
                                    419 ;Allocation info for local variables in function 'I2CNak'
                                    420 ;------------------------------------------------------------
                                    421 ;	i2c.c:36: void I2CNak(){
                                    422 ;	-----------------------------------------
                                    423 ;	 function I2CNak
                                    424 ;	-----------------------------------------
      003083                        425 _I2CNak:
                                    426 ;	i2c.c:37: SDA = 1;
                                    427 ;	assignBit
      003083 D2 96            [12]  428 	setb	_P1_6
                                    429 ;	i2c.c:38: SCL = 1;
                                    430 ;	assignBit
      003085 D2 97            [12]  431 	setb	_P1_7
                                    432 ;	i2c.c:39: SCL = 0;
                                    433 ;	assignBit
      003087 C2 97            [12]  434 	clr	_P1_7
                                    435 ;	i2c.c:40: }
      003089 22               [24]  436 	ret
                                    437 ;------------------------------------------------------------
                                    438 ;Allocation info for local variables in function 'I2CSend'
                                    439 ;------------------------------------------------------------
                                    440 ;Data                      Allocated to registers r7 
                                    441 ;i                         Allocated to registers r6 
                                    442 ;ack_bit                   Allocated to registers r7 
                                    443 ;------------------------------------------------------------
                                    444 ;	i2c.c:42: unsigned char I2CSend(unsigned char Data){
                                    445 ;	-----------------------------------------
                                    446 ;	 function I2CSend
                                    447 ;	-----------------------------------------
      00308A                        448 _I2CSend:
      00308A AF 82            [24]  449 	mov	r7,dpl
                                    450 ;	i2c.c:44: for(i=0;i<8;i++){
      00308C 7E 00            [12]  451 	mov	r6,#0x00
      00308E                        452 00105$:
                                    453 ;	i2c.c:45: SCL = 0;
                                    454 ;	assignBit
      00308E C2 97            [12]  455 	clr	_P1_7
                                    456 ;	i2c.c:46: if ((Data & 0x80) == 0)
      003090 EF               [12]  457 	mov	a,r7
      003091 20 E7 04         [24]  458 	jb	acc.7,00102$
                                    459 ;	i2c.c:47: SDA = 0;
                                    460 ;	assignBit
      003094 C2 96            [12]  461 	clr	_P1_6
      003096 80 02            [24]  462 	sjmp	00103$
      003098                        463 00102$:
                                    464 ;	i2c.c:49: SDA = 1;
                                    465 ;	assignBit
      003098 D2 96            [12]  466 	setb	_P1_6
      00309A                        467 00103$:
                                    468 ;	i2c.c:50: SCL = 1;
                                    469 ;	assignBit
      00309A D2 97            [12]  470 	setb	_P1_7
                                    471 ;	i2c.c:51: Data<<=1;
      00309C 8F 05            [24]  472 	mov	ar5,r7
      00309E ED               [12]  473 	mov	a,r5
      00309F 2D               [12]  474 	add	a,r5
      0030A0 FF               [12]  475 	mov	r7,a
                                    476 ;	i2c.c:44: for(i=0;i<8;i++){
      0030A1 0E               [12]  477 	inc	r6
      0030A2 BE 08 00         [24]  478 	cjne	r6,#0x08,00123$
      0030A5                        479 00123$:
      0030A5 40 E7            [24]  480 	jc	00105$
                                    481 ;	i2c.c:53: SCL = 0;
                                    482 ;	assignBit
      0030A7 C2 97            [12]  483 	clr	_P1_7
                                    484 ;	i2c.c:54: ack_bit = SDA;
      0030A9 A2 96            [12]  485 	mov	c,_P1_6
      0030AB E4               [12]  486 	clr	a
      0030AC 33               [12]  487 	rlc	a
      0030AD FF               [12]  488 	mov	r7,a
                                    489 ;	i2c.c:55: SCL = 1;
                                    490 ;	assignBit
      0030AE D2 97            [12]  491 	setb	_P1_7
                                    492 ;	i2c.c:56: SCL = 0;
                                    493 ;	assignBit
      0030B0 C2 97            [12]  494 	clr	_P1_7
                                    495 ;	i2c.c:57: return !ack_bit;
      0030B2 EF               [12]  496 	mov	a,r7
      0030B3 B4 01 00         [24]  497 	cjne	a,#0x01,00125$
      0030B6                        498 00125$:
      0030B6 92 00            [24]  499 	mov  _I2CSend_sloc0_1_0,c
      0030B8 E4               [12]  500 	clr	a
      0030B9 33               [12]  501 	rlc	a
      0030BA F5 82            [12]  502 	mov	dpl,a
                                    503 ;	i2c.c:58: }
      0030BC 22               [24]  504 	ret
                                    505 ;------------------------------------------------------------
                                    506 ;Allocation info for local variables in function 'I2CRead'
                                    507 ;------------------------------------------------------------
                                    508 ;i                         Allocated to registers r6 
                                    509 ;Data                      Allocated to registers r7 
                                    510 ;------------------------------------------------------------
                                    511 ;	i2c.c:60: unsigned char I2CRead(){
                                    512 ;	-----------------------------------------
                                    513 ;	 function I2CRead
                                    514 ;	-----------------------------------------
      0030BD                        515 _I2CRead:
                                    516 ;	i2c.c:61: unsigned char i, Data=0;
      0030BD 7F 00            [12]  517 	mov	r7,#0x00
                                    518 ;	i2c.c:62: for(i=0;i<8;i++){
      0030BF 7E 00            [12]  519 	mov	r6,#0x00
      0030C1                        520 00106$:
                                    521 ;	i2c.c:63: SCL = 0;
                                    522 ;	assignBit
      0030C1 C2 97            [12]  523 	clr	_P1_7
                                    524 ;	i2c.c:64: SCL = 1;
                                    525 ;	assignBit
      0030C3 D2 97            [12]  526 	setb	_P1_7
                                    527 ;	i2c.c:65: if(SDA)
      0030C5 30 96 03         [24]  528 	jnb	_P1_6,00102$
                                    529 ;	i2c.c:66: Data |=1;
      0030C8 43 07 01         [24]  530 	orl	ar7,#0x01
      0030CB                        531 00102$:
                                    532 ;	i2c.c:67: if(i<7)
      0030CB BE 07 00         [24]  533 	cjne	r6,#0x07,00128$
      0030CE                        534 00128$:
      0030CE 50 05            [24]  535 	jnc	00107$
                                    536 ;	i2c.c:68: Data<<=1;
      0030D0 8F 05            [24]  537 	mov	ar5,r7
      0030D2 ED               [12]  538 	mov	a,r5
      0030D3 2D               [12]  539 	add	a,r5
      0030D4 FF               [12]  540 	mov	r7,a
      0030D5                        541 00107$:
                                    542 ;	i2c.c:62: for(i=0;i<8;i++){
      0030D5 0E               [12]  543 	inc	r6
      0030D6 BE 08 00         [24]  544 	cjne	r6,#0x08,00130$
      0030D9                        545 00130$:
      0030D9 40 E6            [24]  546 	jc	00106$
                                    547 ;	i2c.c:70: SCL = 0;
                                    548 ;	assignBit
      0030DB C2 97            [12]  549 	clr	_P1_7
                                    550 ;	i2c.c:71: SDA = 1;
                                    551 ;	assignBit
      0030DD D2 96            [12]  552 	setb	_P1_6
                                    553 ;	i2c.c:72: return Data;
      0030DF 8F 82            [24]  554 	mov	dpl,r7
                                    555 ;	i2c.c:73: }
      0030E1 22               [24]  556 	ret
                                    557 	.area CSEG    (CODE)
                                    558 	.area CONST   (CODE)
                                    559 	.area XINIT   (CODE)
                                    560 	.area CABS    (ABS,CODE)
