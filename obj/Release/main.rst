                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _eebyter
                                     13 	.globl _eebytew
                                     14 	.globl _RepeatedStartI2c
                                     15 	.globl _I2C_Stop
                                     16 	.globl _I2C_ReStart
                                     17 	.globl _I2C_Send_ACK
                                     18 	.globl _I2C_Read_Byte
                                     19 	.globl _I2C_Write_Byte
                                     20 	.globl _I2C_Start
                                     21 	.globl _I2C_init
                                     22 	.globl _delay
                                     23 	.globl _printf
                                     24 	.globl _CY
                                     25 	.globl _AC
                                     26 	.globl _F0
                                     27 	.globl _RS1
                                     28 	.globl _RS0
                                     29 	.globl _OV
                                     30 	.globl _F1
                                     31 	.globl _P
                                     32 	.globl _PS
                                     33 	.globl _PT1
                                     34 	.globl _PX1
                                     35 	.globl _PT0
                                     36 	.globl _PX0
                                     37 	.globl _RD
                                     38 	.globl _WR
                                     39 	.globl _T1
                                     40 	.globl _T0
                                     41 	.globl _INT1
                                     42 	.globl _INT0
                                     43 	.globl _TXD
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _EA
                                     54 	.globl _ES
                                     55 	.globl _ET1
                                     56 	.globl _EX1
                                     57 	.globl _ET0
                                     58 	.globl _EX0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _SM0
                                     68 	.globl _SM1
                                     69 	.globl _SM2
                                     70 	.globl _REN
                                     71 	.globl _TB8
                                     72 	.globl _RB8
                                     73 	.globl _TI
                                     74 	.globl _RI
                                     75 	.globl _P1_7
                                     76 	.globl _P1_6
                                     77 	.globl _P1_5
                                     78 	.globl _P1_4
                                     79 	.globl _P1_3
                                     80 	.globl _P1_2
                                     81 	.globl _P1_1
                                     82 	.globl _P1_0
                                     83 	.globl _TF1
                                     84 	.globl _TR1
                                     85 	.globl _TF0
                                     86 	.globl _TR0
                                     87 	.globl _IE1
                                     88 	.globl _IT1
                                     89 	.globl _IE0
                                     90 	.globl _IT0
                                     91 	.globl _P0_7
                                     92 	.globl _P0_6
                                     93 	.globl _P0_5
                                     94 	.globl _P0_4
                                     95 	.globl _P0_3
                                     96 	.globl _P0_2
                                     97 	.globl _P0_1
                                     98 	.globl _P0_0
                                     99 	.globl _TF2
                                    100 	.globl _EXF2
                                    101 	.globl _RCLK
                                    102 	.globl _TCLK
                                    103 	.globl _EXEN2
                                    104 	.globl _TR2
                                    105 	.globl _C_T2
                                    106 	.globl _CP_RL2
                                    107 	.globl _T2CON_7
                                    108 	.globl _T2CON_6
                                    109 	.globl _T2CON_5
                                    110 	.globl _T2CON_4
                                    111 	.globl _T2CON_3
                                    112 	.globl _T2CON_2
                                    113 	.globl _T2CON_1
                                    114 	.globl _T2CON_0
                                    115 	.globl _PT2
                                    116 	.globl _ET2
                                    117 	.globl _TXD0
                                    118 	.globl _RXD0
                                    119 	.globl _BREG_F7
                                    120 	.globl _BREG_F6
                                    121 	.globl _BREG_F5
                                    122 	.globl _BREG_F4
                                    123 	.globl _BREG_F3
                                    124 	.globl _BREG_F2
                                    125 	.globl _BREG_F1
                                    126 	.globl _BREG_F0
                                    127 	.globl _P5_7
                                    128 	.globl _P5_6
                                    129 	.globl _P5_5
                                    130 	.globl _P5_4
                                    131 	.globl _P5_3
                                    132 	.globl _P5_2
                                    133 	.globl _P5_1
                                    134 	.globl _P5_0
                                    135 	.globl _P4_7
                                    136 	.globl _P4_6
                                    137 	.globl _P4_5
                                    138 	.globl _P4_4
                                    139 	.globl _P4_3
                                    140 	.globl _P4_2
                                    141 	.globl _P4_1
                                    142 	.globl _P4_0
                                    143 	.globl _PX0L
                                    144 	.globl _PT0L
                                    145 	.globl _PX1L
                                    146 	.globl _PT1L
                                    147 	.globl _PSL
                                    148 	.globl _PT2L
                                    149 	.globl _PPCL
                                    150 	.globl _EC
                                    151 	.globl _CCF0
                                    152 	.globl _CCF1
                                    153 	.globl _CCF2
                                    154 	.globl _CCF3
                                    155 	.globl _CCF4
                                    156 	.globl _CR
                                    157 	.globl _CF
                                    158 	.globl _B
                                    159 	.globl _ACC
                                    160 	.globl _PSW
                                    161 	.globl _IP
                                    162 	.globl _P3
                                    163 	.globl _IE
                                    164 	.globl _P2
                                    165 	.globl _SBUF
                                    166 	.globl _SCON
                                    167 	.globl _P1
                                    168 	.globl _TH1
                                    169 	.globl _TH0
                                    170 	.globl _TL1
                                    171 	.globl _TL0
                                    172 	.globl _TMOD
                                    173 	.globl _TCON
                                    174 	.globl _PCON
                                    175 	.globl _DPH
                                    176 	.globl _DPL
                                    177 	.globl _SP
                                    178 	.globl _P0
                                    179 	.globl _TH2
                                    180 	.globl _TL2
                                    181 	.globl _RCAP2H
                                    182 	.globl _RCAP2L
                                    183 	.globl _T2CON
                                    184 	.globl _SBUF0
                                    185 	.globl _DP0L
                                    186 	.globl _DP0H
                                    187 	.globl _EECON
                                    188 	.globl _KBF
                                    189 	.globl _KBE
                                    190 	.globl _KBLS
                                    191 	.globl _BRL
                                    192 	.globl _BDRCON
                                    193 	.globl _T2MOD
                                    194 	.globl _SPDAT
                                    195 	.globl _SPSTA
                                    196 	.globl _SPCON
                                    197 	.globl _SADEN
                                    198 	.globl _SADDR
                                    199 	.globl _WDTPRG
                                    200 	.globl _WDTRST
                                    201 	.globl _P5
                                    202 	.globl _P4
                                    203 	.globl _IPH1
                                    204 	.globl _IPL1
                                    205 	.globl _IPH0
                                    206 	.globl _IPL0
                                    207 	.globl _IEN1
                                    208 	.globl _IEN0
                                    209 	.globl _CMOD
                                    210 	.globl _CL
                                    211 	.globl _CH
                                    212 	.globl _CCON
                                    213 	.globl _CCAPM4
                                    214 	.globl _CCAPM3
                                    215 	.globl _CCAPM2
                                    216 	.globl _CCAPM1
                                    217 	.globl _CCAPM0
                                    218 	.globl _CCAP4L
                                    219 	.globl _CCAP3L
                                    220 	.globl _CCAP2L
                                    221 	.globl _CCAP1L
                                    222 	.globl _CCAP0L
                                    223 	.globl _CCAP4H
                                    224 	.globl _CCAP3H
                                    225 	.globl _CCAP2H
                                    226 	.globl _CCAP1H
                                    227 	.globl _CCAP0H
                                    228 	.globl _CKCON1
                                    229 	.globl _CKCON0
                                    230 	.globl _CKRL
                                    231 	.globl _AUXR1
                                    232 	.globl _AUXR
                                    233 	.globl _eebytew_PARM_2
                                    234 	.globl _getchar
                                    235 	.globl _putchar
                                    236 ;--------------------------------------------------------
                                    237 ; special function registers
                                    238 ;--------------------------------------------------------
                                    239 	.area RSEG    (ABS,DATA)
      000000                        240 	.org 0x0000
                           00008E   241 _AUXR	=	0x008e
                           0000A2   242 _AUXR1	=	0x00a2
                           000097   243 _CKRL	=	0x0097
                           00008F   244 _CKCON0	=	0x008f
                           0000AF   245 _CKCON1	=	0x00af
                           0000FA   246 _CCAP0H	=	0x00fa
                           0000FB   247 _CCAP1H	=	0x00fb
                           0000FC   248 _CCAP2H	=	0x00fc
                           0000FD   249 _CCAP3H	=	0x00fd
                           0000FE   250 _CCAP4H	=	0x00fe
                           0000EA   251 _CCAP0L	=	0x00ea
                           0000EB   252 _CCAP1L	=	0x00eb
                           0000EC   253 _CCAP2L	=	0x00ec
                           0000ED   254 _CCAP3L	=	0x00ed
                           0000EE   255 _CCAP4L	=	0x00ee
                           0000DA   256 _CCAPM0	=	0x00da
                           0000DB   257 _CCAPM1	=	0x00db
                           0000DC   258 _CCAPM2	=	0x00dc
                           0000DD   259 _CCAPM3	=	0x00dd
                           0000DE   260 _CCAPM4	=	0x00de
                           0000D8   261 _CCON	=	0x00d8
                           0000F9   262 _CH	=	0x00f9
                           0000E9   263 _CL	=	0x00e9
                           0000D9   264 _CMOD	=	0x00d9
                           0000A8   265 _IEN0	=	0x00a8
                           0000B1   266 _IEN1	=	0x00b1
                           0000B8   267 _IPL0	=	0x00b8
                           0000B7   268 _IPH0	=	0x00b7
                           0000B2   269 _IPL1	=	0x00b2
                           0000B3   270 _IPH1	=	0x00b3
                           0000C0   271 _P4	=	0x00c0
                           0000E8   272 _P5	=	0x00e8
                           0000A6   273 _WDTRST	=	0x00a6
                           0000A7   274 _WDTPRG	=	0x00a7
                           0000A9   275 _SADDR	=	0x00a9
                           0000B9   276 _SADEN	=	0x00b9
                           0000C3   277 _SPCON	=	0x00c3
                           0000C4   278 _SPSTA	=	0x00c4
                           0000C5   279 _SPDAT	=	0x00c5
                           0000C9   280 _T2MOD	=	0x00c9
                           00009B   281 _BDRCON	=	0x009b
                           00009A   282 _BRL	=	0x009a
                           00009C   283 _KBLS	=	0x009c
                           00009D   284 _KBE	=	0x009d
                           00009E   285 _KBF	=	0x009e
                           0000D2   286 _EECON	=	0x00d2
                           000083   287 _DP0H	=	0x0083
                           000082   288 _DP0L	=	0x0082
                           000099   289 _SBUF0	=	0x0099
                           0000C8   290 _T2CON	=	0x00c8
                           0000CA   291 _RCAP2L	=	0x00ca
                           0000CB   292 _RCAP2H	=	0x00cb
                           0000CC   293 _TL2	=	0x00cc
                           0000CD   294 _TH2	=	0x00cd
                           000080   295 _P0	=	0x0080
                           000081   296 _SP	=	0x0081
                           000082   297 _DPL	=	0x0082
                           000083   298 _DPH	=	0x0083
                           000087   299 _PCON	=	0x0087
                           000088   300 _TCON	=	0x0088
                           000089   301 _TMOD	=	0x0089
                           00008A   302 _TL0	=	0x008a
                           00008B   303 _TL1	=	0x008b
                           00008C   304 _TH0	=	0x008c
                           00008D   305 _TH1	=	0x008d
                           000090   306 _P1	=	0x0090
                           000098   307 _SCON	=	0x0098
                           000099   308 _SBUF	=	0x0099
                           0000A0   309 _P2	=	0x00a0
                           0000A8   310 _IE	=	0x00a8
                           0000B0   311 _P3	=	0x00b0
                           0000B8   312 _IP	=	0x00b8
                           0000D0   313 _PSW	=	0x00d0
                           0000E0   314 _ACC	=	0x00e0
                           0000F0   315 _B	=	0x00f0
                                    316 ;--------------------------------------------------------
                                    317 ; special function bits
                                    318 ;--------------------------------------------------------
                                    319 	.area RSEG    (ABS,DATA)
      000000                        320 	.org 0x0000
                           0000DF   321 _CF	=	0x00df
                           0000DE   322 _CR	=	0x00de
                           0000DC   323 _CCF4	=	0x00dc
                           0000DB   324 _CCF3	=	0x00db
                           0000DA   325 _CCF2	=	0x00da
                           0000D9   326 _CCF1	=	0x00d9
                           0000D8   327 _CCF0	=	0x00d8
                           0000AE   328 _EC	=	0x00ae
                           0000BE   329 _PPCL	=	0x00be
                           0000BD   330 _PT2L	=	0x00bd
                           0000BC   331 _PSL	=	0x00bc
                           0000BB   332 _PT1L	=	0x00bb
                           0000BA   333 _PX1L	=	0x00ba
                           0000B9   334 _PT0L	=	0x00b9
                           0000B8   335 _PX0L	=	0x00b8
                           0000C0   336 _P4_0	=	0x00c0
                           0000C1   337 _P4_1	=	0x00c1
                           0000C2   338 _P4_2	=	0x00c2
                           0000C3   339 _P4_3	=	0x00c3
                           0000C4   340 _P4_4	=	0x00c4
                           0000C5   341 _P4_5	=	0x00c5
                           0000C6   342 _P4_6	=	0x00c6
                           0000C7   343 _P4_7	=	0x00c7
                           0000E8   344 _P5_0	=	0x00e8
                           0000E9   345 _P5_1	=	0x00e9
                           0000EA   346 _P5_2	=	0x00ea
                           0000EB   347 _P5_3	=	0x00eb
                           0000EC   348 _P5_4	=	0x00ec
                           0000ED   349 _P5_5	=	0x00ed
                           0000EE   350 _P5_6	=	0x00ee
                           0000EF   351 _P5_7	=	0x00ef
                           0000F0   352 _BREG_F0	=	0x00f0
                           0000F1   353 _BREG_F1	=	0x00f1
                           0000F2   354 _BREG_F2	=	0x00f2
                           0000F3   355 _BREG_F3	=	0x00f3
                           0000F4   356 _BREG_F4	=	0x00f4
                           0000F5   357 _BREG_F5	=	0x00f5
                           0000F6   358 _BREG_F6	=	0x00f6
                           0000F7   359 _BREG_F7	=	0x00f7
                           0000B0   360 _RXD0	=	0x00b0
                           0000B1   361 _TXD0	=	0x00b1
                           0000AD   362 _ET2	=	0x00ad
                           0000BD   363 _PT2	=	0x00bd
                           0000C8   364 _T2CON_0	=	0x00c8
                           0000C9   365 _T2CON_1	=	0x00c9
                           0000CA   366 _T2CON_2	=	0x00ca
                           0000CB   367 _T2CON_3	=	0x00cb
                           0000CC   368 _T2CON_4	=	0x00cc
                           0000CD   369 _T2CON_5	=	0x00cd
                           0000CE   370 _T2CON_6	=	0x00ce
                           0000CF   371 _T2CON_7	=	0x00cf
                           0000C8   372 _CP_RL2	=	0x00c8
                           0000C9   373 _C_T2	=	0x00c9
                           0000CA   374 _TR2	=	0x00ca
                           0000CB   375 _EXEN2	=	0x00cb
                           0000CC   376 _TCLK	=	0x00cc
                           0000CD   377 _RCLK	=	0x00cd
                           0000CE   378 _EXF2	=	0x00ce
                           0000CF   379 _TF2	=	0x00cf
                           000080   380 _P0_0	=	0x0080
                           000081   381 _P0_1	=	0x0081
                           000082   382 _P0_2	=	0x0082
                           000083   383 _P0_3	=	0x0083
                           000084   384 _P0_4	=	0x0084
                           000085   385 _P0_5	=	0x0085
                           000086   386 _P0_6	=	0x0086
                           000087   387 _P0_7	=	0x0087
                           000088   388 _IT0	=	0x0088
                           000089   389 _IE0	=	0x0089
                           00008A   390 _IT1	=	0x008a
                           00008B   391 _IE1	=	0x008b
                           00008C   392 _TR0	=	0x008c
                           00008D   393 _TF0	=	0x008d
                           00008E   394 _TR1	=	0x008e
                           00008F   395 _TF1	=	0x008f
                           000090   396 _P1_0	=	0x0090
                           000091   397 _P1_1	=	0x0091
                           000092   398 _P1_2	=	0x0092
                           000093   399 _P1_3	=	0x0093
                           000094   400 _P1_4	=	0x0094
                           000095   401 _P1_5	=	0x0095
                           000096   402 _P1_6	=	0x0096
                           000097   403 _P1_7	=	0x0097
                           000098   404 _RI	=	0x0098
                           000099   405 _TI	=	0x0099
                           00009A   406 _RB8	=	0x009a
                           00009B   407 _TB8	=	0x009b
                           00009C   408 _REN	=	0x009c
                           00009D   409 _SM2	=	0x009d
                           00009E   410 _SM1	=	0x009e
                           00009F   411 _SM0	=	0x009f
                           0000A0   412 _P2_0	=	0x00a0
                           0000A1   413 _P2_1	=	0x00a1
                           0000A2   414 _P2_2	=	0x00a2
                           0000A3   415 _P2_3	=	0x00a3
                           0000A4   416 _P2_4	=	0x00a4
                           0000A5   417 _P2_5	=	0x00a5
                           0000A6   418 _P2_6	=	0x00a6
                           0000A7   419 _P2_7	=	0x00a7
                           0000A8   420 _EX0	=	0x00a8
                           0000A9   421 _ET0	=	0x00a9
                           0000AA   422 _EX1	=	0x00aa
                           0000AB   423 _ET1	=	0x00ab
                           0000AC   424 _ES	=	0x00ac
                           0000AF   425 _EA	=	0x00af
                           0000B0   426 _P3_0	=	0x00b0
                           0000B1   427 _P3_1	=	0x00b1
                           0000B2   428 _P3_2	=	0x00b2
                           0000B3   429 _P3_3	=	0x00b3
                           0000B4   430 _P3_4	=	0x00b4
                           0000B5   431 _P3_5	=	0x00b5
                           0000B6   432 _P3_6	=	0x00b6
                           0000B7   433 _P3_7	=	0x00b7
                           0000B0   434 _RXD	=	0x00b0
                           0000B1   435 _TXD	=	0x00b1
                           0000B2   436 _INT0	=	0x00b2
                           0000B3   437 _INT1	=	0x00b3
                           0000B4   438 _T0	=	0x00b4
                           0000B5   439 _T1	=	0x00b5
                           0000B6   440 _WR	=	0x00b6
                           0000B7   441 _RD	=	0x00b7
                           0000B8   442 _PX0	=	0x00b8
                           0000B9   443 _PT0	=	0x00b9
                           0000BA   444 _PX1	=	0x00ba
                           0000BB   445 _PT1	=	0x00bb
                           0000BC   446 _PS	=	0x00bc
                           0000D0   447 _P	=	0x00d0
                           0000D1   448 _F1	=	0x00d1
                           0000D2   449 _OV	=	0x00d2
                           0000D3   450 _RS0	=	0x00d3
                           0000D4   451 _RS1	=	0x00d4
                           0000D5   452 _F0	=	0x00d5
                           0000D6   453 _AC	=	0x00d6
                           0000D7   454 _CY	=	0x00d7
                                    455 ;--------------------------------------------------------
                                    456 ; overlayable register banks
                                    457 ;--------------------------------------------------------
                                    458 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        459 	.ds 8
                                    460 ;--------------------------------------------------------
                                    461 ; internal ram data
                                    462 ;--------------------------------------------------------
                                    463 	.area DSEG    (DATA)
      000008                        464 _eebytew_PARM_2:
      000008                        465 	.ds 1
      000009                        466 _main_addr_131072_92:
      000009                        467 	.ds 2
      00000B                        468 _main_addr1_131072_92:
      00000B                        469 	.ds 2
      00000D                        470 _main_start_addr_131072_92:
      00000D                        471 	.ds 2
      00000F                        472 _main_end_addr_131072_92:
      00000F                        473 	.ds 2
      000011                        474 _main_data_131072_92:
      000011                        475 	.ds 2
                                    476 ;--------------------------------------------------------
                                    477 ; overlayable items in internal ram
                                    478 ;--------------------------------------------------------
                                    479 	.area	OSEG    (OVR,DATA)
                                    480 	.area	OSEG    (OVR,DATA)
                                    481 ;--------------------------------------------------------
                                    482 ; Stack segment in internal ram
                                    483 ;--------------------------------------------------------
                                    484 	.area	SSEG
      00004F                        485 __start__stack:
      00004F                        486 	.ds	1
                                    487 
                                    488 ;--------------------------------------------------------
                                    489 ; indirectly addressable internal ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area ISEG    (DATA)
                                    492 ;--------------------------------------------------------
                                    493 ; absolute internal ram data
                                    494 ;--------------------------------------------------------
                                    495 	.area IABS    (ABS,DATA)
                                    496 	.area IABS    (ABS,DATA)
                                    497 ;--------------------------------------------------------
                                    498 ; bit data
                                    499 ;--------------------------------------------------------
                                    500 	.area BSEG    (BIT)
      000000                        501 _eebyter_sloc0_1_0:
      000000                        502 	.ds 1
                                    503 ;--------------------------------------------------------
                                    504 ; paged external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area PSEG    (PAG,XDATA)
                                    507 ;--------------------------------------------------------
                                    508 ; external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XSEG    (XDATA)
                                    511 ;--------------------------------------------------------
                                    512 ; absolute external ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area XABS    (ABS,XDATA)
                                    515 ;--------------------------------------------------------
                                    516 ; external initialized ram data
                                    517 ;--------------------------------------------------------
                                    518 	.area XISEG   (XDATA)
                                    519 	.area HOME    (CODE)
                                    520 	.area GSINIT0 (CODE)
                                    521 	.area GSINIT1 (CODE)
                                    522 	.area GSINIT2 (CODE)
                                    523 	.area GSINIT3 (CODE)
                                    524 	.area GSINIT4 (CODE)
                                    525 	.area GSINIT5 (CODE)
                                    526 	.area GSINIT  (CODE)
                                    527 	.area GSFINAL (CODE)
                                    528 	.area CSEG    (CODE)
                                    529 ;--------------------------------------------------------
                                    530 ; interrupt vector
                                    531 ;--------------------------------------------------------
                                    532 	.area HOME    (CODE)
      003000                        533 __interrupt_vect:
      003000 02 30 06         [24]  534 	ljmp	__sdcc_gsinit_startup
                                    535 ;--------------------------------------------------------
                                    536 ; global & static initialisations
                                    537 ;--------------------------------------------------------
                                    538 	.area HOME    (CODE)
                                    539 	.area GSINIT  (CODE)
                                    540 	.area GSFINAL (CODE)
                                    541 	.area GSINIT  (CODE)
                                    542 	.globl __sdcc_gsinit_startup
                                    543 	.globl __sdcc_program_startup
                                    544 	.globl __start__stack
                                    545 	.globl __mcs51_genXINIT
                                    546 	.globl __mcs51_genXRAMCLEAR
                                    547 	.globl __mcs51_genRAMCLEAR
                                    548 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  549 	ljmp	__sdcc_program_startup
                                    550 ;--------------------------------------------------------
                                    551 ; Home
                                    552 ;--------------------------------------------------------
                                    553 	.area HOME    (CODE)
                                    554 	.area HOME    (CODE)
      003003                        555 __sdcc_program_startup:
      003003 02 34 3A         [24]  556 	ljmp	_main
                                    557 ;	return from main will return to caller
                                    558 ;--------------------------------------------------------
                                    559 ; code
                                    560 ;--------------------------------------------------------
                                    561 	.area CSEG    (CODE)
                                    562 ;------------------------------------------------------------
                                    563 ;Allocation info for local variables in function 'getchar'
                                    564 ;------------------------------------------------------------
                                    565 ;	main.c:17: int getchar (void)
                                    566 ;	-----------------------------------------
                                    567 ;	 function getchar
                                    568 ;	-----------------------------------------
      003062                        569 _getchar:
                           000007   570 	ar7 = 0x07
                           000006   571 	ar6 = 0x06
                           000005   572 	ar5 = 0x05
                           000004   573 	ar4 = 0x04
                           000003   574 	ar3 = 0x03
                           000002   575 	ar2 = 0x02
                           000001   576 	ar1 = 0x01
                           000000   577 	ar0 = 0x00
                                    578 ;	main.c:19: while (!RI);
      003062                        579 00101$:
                                    580 ;	main.c:21: RI = 0;                         // clear RI flag
                                    581 ;	assignBit
      003062 10 98 02         [24]  582 	jbc	_RI,00114$
      003065 80 FB            [24]  583 	sjmp	00101$
      003067                        584 00114$:
                                    585 ;	main.c:22: return SBUF;                    // return character from SBUF
      003067 AE 99            [24]  586 	mov	r6,_SBUF
      003069 7F 00            [12]  587 	mov	r7,#0x00
      00306B 8E 82            [24]  588 	mov	dpl,r6
      00306D 8F 83            [24]  589 	mov	dph,r7
                                    590 ;	main.c:23: }
      00306F 22               [24]  591 	ret
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'putchar'
                                    594 ;------------------------------------------------------------
                                    595 ;c                         Allocated to registers r6 r7 
                                    596 ;------------------------------------------------------------
                                    597 ;	main.c:25: int putchar (int c)
                                    598 ;	-----------------------------------------
                                    599 ;	 function putchar
                                    600 ;	-----------------------------------------
      003070                        601 _putchar:
      003070 AE 82            [24]  602 	mov	r6,dpl
      003072 AF 83            [24]  603 	mov	r7,dph
                                    604 ;	main.c:27: while (!TI);
      003074                        605 00101$:
      003074 30 99 FD         [24]  606 	jnb	_TI,00101$
                                    607 ;	main.c:29: SBUF = c;           // load serial port with transmit value
      003077 8E 99            [24]  608 	mov	_SBUF,r6
                                    609 ;	main.c:30: TI = 0;             // clear TI flag
                                    610 ;	assignBit
      003079 C2 99            [12]  611 	clr	_TI
                                    612 ;	main.c:32: return c;
      00307B 8E 82            [24]  613 	mov	dpl,r6
      00307D 8F 83            [24]  614 	mov	dph,r7
                                    615 ;	main.c:33: }
      00307F 22               [24]  616 	ret
                                    617 ;------------------------------------------------------------
                                    618 ;Allocation info for local variables in function 'delay'
                                    619 ;------------------------------------------------------------
                                    620 ;count                     Allocated to registers r6 r7 
                                    621 ;i                         Allocated to registers r4 r5 
                                    622 ;------------------------------------------------------------
                                    623 ;	main.c:36: void delay(unsigned int count)
                                    624 ;	-----------------------------------------
                                    625 ;	 function delay
                                    626 ;	-----------------------------------------
      003080                        627 _delay:
      003080 AE 82            [24]  628 	mov	r6,dpl
      003082 AF 83            [24]  629 	mov	r7,dph
                                    630 ;	main.c:39: for(i=0;i<count;i++);
      003084 7C 00            [12]  631 	mov	r4,#0x00
      003086 7D 00            [12]  632 	mov	r5,#0x00
      003088                        633 00103$:
      003088 C3               [12]  634 	clr	c
      003089 EC               [12]  635 	mov	a,r4
      00308A 9E               [12]  636 	subb	a,r6
      00308B ED               [12]  637 	mov	a,r5
      00308C 9F               [12]  638 	subb	a,r7
      00308D 50 07            [24]  639 	jnc	00105$
      00308F 0C               [12]  640 	inc	r4
      003090 BC 00 F5         [24]  641 	cjne	r4,#0x00,00103$
      003093 0D               [12]  642 	inc	r5
      003094 80 F2            [24]  643 	sjmp	00103$
      003096                        644 00105$:
                                    645 ;	main.c:40: }
      003096 22               [24]  646 	ret
                                    647 ;------------------------------------------------------------
                                    648 ;Allocation info for local variables in function 'I2C_init'
                                    649 ;------------------------------------------------------------
                                    650 ;	main.c:44: void I2C_init(void)
                                    651 ;	-----------------------------------------
                                    652 ;	 function I2C_init
                                    653 ;	-----------------------------------------
      003097                        654 _I2C_init:
                                    655 ;	main.c:47: SDA = 1;
                                    656 ;	assignBit
      003097 D2 97            [12]  657 	setb	_P1_7
                                    658 ;	main.c:48: SCL = 1;
                                    659 ;	assignBit
      003099 D2 96            [12]  660 	setb	_P1_6
                                    661 ;	main.c:49: }
      00309B 22               [24]  662 	ret
                                    663 ;------------------------------------------------------------
                                    664 ;Allocation info for local variables in function 'I2C_Start'
                                    665 ;------------------------------------------------------------
                                    666 ;	main.c:52: void I2C_Start(void)
                                    667 ;	-----------------------------------------
                                    668 ;	 function I2C_Start
                                    669 ;	-----------------------------------------
      00309C                        670 _I2C_Start:
                                    671 ;	main.c:54: set_SCL_high;				// Make SCL pin high
                                    672 ;	assignBit
      00309C D2 96            [12]  673 	setb	_P1_6
                                    674 ;	main.c:55: set_SDA_high;				// Make SDA pin High
                                    675 ;	assignBit
      00309E D2 97            [12]  676 	setb	_P1_7
                                    677 ;	main.c:56: delay(50);	// Half bit delay
      0030A0 90 00 32         [24]  678 	mov	dptr,#0x0032
      0030A3 12 30 80         [24]  679 	lcall	_delay
                                    680 ;	main.c:57: set_SDA_low;				// Make SDA Low
                                    681 ;	assignBit
      0030A6 C2 97            [12]  682 	clr	_P1_7
                                    683 ;	main.c:58: delay(50);	// Half bit delay
      0030A8 90 00 32         [24]  684 	mov	dptr,#0x0032
                                    685 ;	main.c:59: }
      0030AB 02 30 80         [24]  686 	ljmp	_delay
                                    687 ;------------------------------------------------------------
                                    688 ;Allocation info for local variables in function 'I2C_Write_Byte'
                                    689 ;------------------------------------------------------------
                                    690 ;Byte                      Allocated to registers r7 
                                    691 ;i                         Allocated to registers r6 
                                    692 ;------------------------------------------------------------
                                    693 ;	main.c:61: unsigned char I2C_Write_Byte(unsigned char Byte)
                                    694 ;	-----------------------------------------
                                    695 ;	 function I2C_Write_Byte
                                    696 ;	-----------------------------------------
      0030AE                        697 _I2C_Write_Byte:
      0030AE AF 82            [24]  698 	mov	r7,dpl
                                    699 ;	main.c:65: for(i=0;i<8;i++)		// Repeat for every bit
      0030B0 7E 00            [12]  700 	mov	r6,#0x00
      0030B2                        701 00105$:
                                    702 ;	main.c:67: set_SCL_low;		// Make SCL pin low
                                    703 ;	assignBit
      0030B2 C2 96            [12]  704 	clr	_P1_6
                                    705 ;	main.c:69: delay(50);	// Data pin should change it's value,
      0030B4 90 00 32         [24]  706 	mov	dptr,#0x0032
      0030B7 C0 07            [24]  707 	push	ar7
      0030B9 C0 06            [24]  708 	push	ar6
      0030BB 12 30 80         [24]  709 	lcall	_delay
      0030BE D0 06            [24]  710 	pop	ar6
      0030C0 D0 07            [24]  711 	pop	ar7
                                    712 ;	main.c:72: if((Byte<<i)&0x80)  // Place data bit value on SDA pin
      0030C2 8F 04            [24]  713 	mov	ar4,r7
      0030C4 7D 00            [12]  714 	mov	r5,#0x00
      0030C6 8E F0            [24]  715 	mov	b,r6
      0030C8 05 F0            [12]  716 	inc	b
      0030CA 80 06            [24]  717 	sjmp	00123$
      0030CC                        718 00122$:
      0030CC EC               [12]  719 	mov	a,r4
      0030CD 2C               [12]  720 	add	a,r4
      0030CE FC               [12]  721 	mov	r4,a
      0030CF ED               [12]  722 	mov	a,r5
      0030D0 33               [12]  723 	rlc	a
      0030D1 FD               [12]  724 	mov	r5,a
      0030D2                        725 00123$:
      0030D2 D5 F0 F7         [24]  726 	djnz	b,00122$
      0030D5 EC               [12]  727 	mov	a,r4
      0030D6 30 E7 04         [24]  728 	jnb	acc.7,00102$
                                    729 ;	main.c:73: set_SDA_high;	// If bit is high, make SDA high
                                    730 ;	assignBit
      0030D9 D2 97            [12]  731 	setb	_P1_7
      0030DB 80 02            [24]  732 	sjmp	00103$
      0030DD                        733 00102$:
                                    734 ;	main.c:75: set_SDA_low;	// If bit is low, make SDA low
                                    735 ;	assignBit
      0030DD C2 97            [12]  736 	clr	_P1_7
      0030DF                        737 00103$:
                                    738 ;	main.c:77: delay(50);	// Toggle SCL pin
      0030DF 90 00 32         [24]  739 	mov	dptr,#0x0032
      0030E2 C0 07            [24]  740 	push	ar7
      0030E4 C0 06            [24]  741 	push	ar6
      0030E6 12 30 80         [24]  742 	lcall	_delay
                                    743 ;	main.c:78: set_SCL_high;				// So that slave can
                                    744 ;	assignBit
      0030E9 D2 96            [12]  745 	setb	_P1_6
                                    746 ;	main.c:79: delay(50);	// latch data bit
      0030EB 90 00 32         [24]  747 	mov	dptr,#0x0032
      0030EE 12 30 80         [24]  748 	lcall	_delay
      0030F1 D0 06            [24]  749 	pop	ar6
      0030F3 D0 07            [24]  750 	pop	ar7
                                    751 ;	main.c:65: for(i=0;i<8;i++)		// Repeat for every bit
      0030F5 0E               [12]  752 	inc	r6
      0030F6 BE 08 00         [24]  753 	cjne	r6,#0x08,00125$
      0030F9                        754 00125$:
      0030F9 40 B7            [24]  755 	jc	00105$
                                    756 ;	main.c:83: set_SCL_low;
                                    757 ;	assignBit
      0030FB C2 96            [12]  758 	clr	_P1_6
                                    759 ;	main.c:84: set_SDA_high;
                                    760 ;	assignBit
      0030FD D2 97            [12]  761 	setb	_P1_7
                                    762 ;	main.c:85: delay(50);
      0030FF 90 00 32         [24]  763 	mov	dptr,#0x0032
      003102 12 30 80         [24]  764 	lcall	_delay
                                    765 ;	main.c:86: set_SCL_high;
                                    766 ;	assignBit
      003105 D2 96            [12]  767 	setb	_P1_6
                                    768 ;	main.c:87: delay(50);
      003107 90 00 32         [24]  769 	mov	dptr,#0x0032
      00310A 12 30 80         [24]  770 	lcall	_delay
                                    771 ;	main.c:89: return SDA;
      00310D A2 97            [12]  772 	mov	c,_P1_7
      00310F E4               [12]  773 	clr	a
      003110 33               [12]  774 	rlc	a
      003111 F5 82            [12]  775 	mov	dpl,a
                                    776 ;	main.c:90: }
      003113 22               [24]  777 	ret
                                    778 ;------------------------------------------------------------
                                    779 ;Allocation info for local variables in function 'I2C_Read_Byte'
                                    780 ;------------------------------------------------------------
                                    781 ;i                         Allocated to registers r6 
                                    782 ;d                         Allocated to registers r5 
                                    783 ;RxData                    Allocated to registers r7 
                                    784 ;------------------------------------------------------------
                                    785 ;	main.c:93: unsigned char I2C_Read_Byte(void)
                                    786 ;	-----------------------------------------
                                    787 ;	 function I2C_Read_Byte
                                    788 ;	-----------------------------------------
      003114                        789 _I2C_Read_Byte:
                                    790 ;	main.c:95: unsigned char i, d, RxData = 0;
      003114 7F 00            [12]  791 	mov	r7,#0x00
                                    792 ;	main.c:97: for(i=0;i<8;i++)
      003116 7E 00            [12]  793 	mov	r6,#0x00
      003118                        794 00102$:
                                    795 ;	main.c:99: set_SCL_low;					// Make SCL pin low
                                    796 ;	assignBit
      003118 C2 96            [12]  797 	clr	_P1_6
                                    798 ;	main.c:100: set_SDA_high;					// Don't drive SDA
                                    799 ;	assignBit
      00311A D2 97            [12]  800 	setb	_P1_7
                                    801 ;	main.c:101: delay(50);		// Half bit delay
      00311C 90 00 32         [24]  802 	mov	dptr,#0x0032
      00311F C0 07            [24]  803 	push	ar7
      003121 C0 06            [24]  804 	push	ar6
      003123 12 30 80         [24]  805 	lcall	_delay
                                    806 ;	main.c:102: set_SCL_high;					// Make SCL pin high
                                    807 ;	assignBit
      003126 D2 96            [12]  808 	setb	_P1_6
                                    809 ;	main.c:103: delay(50);		// 1/4 bit delay
      003128 90 00 32         [24]  810 	mov	dptr,#0x0032
      00312B 12 30 80         [24]  811 	lcall	_delay
      00312E D0 06            [24]  812 	pop	ar6
      003130 D0 07            [24]  813 	pop	ar7
                                    814 ;	main.c:104: d = SDA;					    // Capture Received Bit
      003132 A2 97            [12]  815 	mov	c,_P1_7
      003134 E4               [12]  816 	clr	a
      003135 33               [12]  817 	rlc	a
      003136 FD               [12]  818 	mov	r5,a
                                    819 ;	main.c:105: RxData = RxData|(d<<(7-i));   	// Copy it in RxData
      003137 8E 04            [24]  820 	mov	ar4,r6
      003139 74 07            [12]  821 	mov	a,#0x07
      00313B C3               [12]  822 	clr	c
      00313C 9C               [12]  823 	subb	a,r4
      00313D FC               [12]  824 	mov	r4,a
      00313E 8C F0            [24]  825 	mov	b,r4
      003140 05 F0            [12]  826 	inc	b
      003142 ED               [12]  827 	mov	a,r5
      003143 80 02            [24]  828 	sjmp	00117$
      003145                        829 00115$:
      003145 25 E0            [12]  830 	add	a,acc
      003147                        831 00117$:
      003147 D5 F0 FB         [24]  832 	djnz	b,00115$
      00314A 42 07            [12]  833 	orl	ar7,a
                                    834 ;	main.c:106: delay(50);		// 1/4 bit delay
      00314C 90 00 32         [24]  835 	mov	dptr,#0x0032
      00314F C0 07            [24]  836 	push	ar7
      003151 C0 06            [24]  837 	push	ar6
      003153 12 30 80         [24]  838 	lcall	_delay
      003156 D0 06            [24]  839 	pop	ar6
      003158 D0 07            [24]  840 	pop	ar7
                                    841 ;	main.c:97: for(i=0;i<8;i++)
      00315A 0E               [12]  842 	inc	r6
      00315B BE 08 00         [24]  843 	cjne	r6,#0x08,00118$
      00315E                        844 00118$:
      00315E 40 B8            [24]  845 	jc	00102$
                                    846 ;	main.c:109: return RxData;						// Return received byte
      003160 8F 82            [24]  847 	mov	dpl,r7
                                    848 ;	main.c:110: }
      003162 22               [24]  849 	ret
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'I2C_Send_ACK'
                                    852 ;------------------------------------------------------------
                                    853 ;	main.c:113: void I2C_Send_ACK(void)
                                    854 ;	-----------------------------------------
                                    855 ;	 function I2C_Send_ACK
                                    856 ;	-----------------------------------------
      003163                        857 _I2C_Send_ACK:
                                    858 ;	main.c:115: set_SCL_low;				// Make SCL pin low
                                    859 ;	assignBit
      003163 C2 96            [12]  860 	clr	_P1_6
                                    861 ;	main.c:116: delay(50);	// Data pin should change it's value,
      003165 90 00 32         [24]  862 	mov	dptr,#0x0032
      003168 12 30 80         [24]  863 	lcall	_delay
                                    864 ;	main.c:118: set_SDA_high;				// Make SDA Low
                                    865 ;	assignBit
      00316B D2 97            [12]  866 	setb	_P1_7
                                    867 ;	main.c:119: delay(50);	// 1/4 bit delay
      00316D 90 00 32         [24]  868 	mov	dptr,#0x0032
      003170 12 30 80         [24]  869 	lcall	_delay
                                    870 ;	main.c:120: set_SCL_high;				// Make SCL pin high
                                    871 ;	assignBit
      003173 D2 96            [12]  872 	setb	_P1_6
                                    873 ;	main.c:121: delay(50);	// Half bit delay
      003175 90 00 32         [24]  874 	mov	dptr,#0x0032
                                    875 ;	main.c:122: }
      003178 02 30 80         [24]  876 	ljmp	_delay
                                    877 ;------------------------------------------------------------
                                    878 ;Allocation info for local variables in function 'I2C_ReStart'
                                    879 ;------------------------------------------------------------
                                    880 ;	main.c:125: void I2C_ReStart(void)
                                    881 ;	-----------------------------------------
                                    882 ;	 function I2C_ReStart
                                    883 ;	-----------------------------------------
      00317B                        884 _I2C_ReStart:
                                    885 ;	main.c:127: set_SCL_low;				// Make SCL pin low
                                    886 ;	assignBit
      00317B C2 96            [12]  887 	clr	_P1_6
                                    888 ;	main.c:129: delay(50);	// Data pin should change it's value,
      00317D 90 00 32         [24]  889 	mov	dptr,#0x0032
      003180 12 30 80         [24]  890 	lcall	_delay
                                    891 ;	main.c:131: set_SDA_high;				// Make SDA pin High
                                    892 ;	assignBit
      003183 D2 97            [12]  893 	setb	_P1_7
                                    894 ;	main.c:133: delay(50);	// 1/4 bit delay
      003185 90 00 32         [24]  895 	mov	dptr,#0x0032
      003188 12 30 80         [24]  896 	lcall	_delay
                                    897 ;	main.c:134: set_SCL_high;				// Make SCL pin high
                                    898 ;	assignBit
      00318B D2 96            [12]  899 	setb	_P1_6
                                    900 ;	main.c:135: delay(50);	// 1/4 bit delay
      00318D 90 00 32         [24]  901 	mov	dptr,#0x0032
      003190 12 30 80         [24]  902 	lcall	_delay
                                    903 ;	main.c:136: set_SDA_low;				// Make SDA Low
                                    904 ;	assignBit
      003193 C2 97            [12]  905 	clr	_P1_7
                                    906 ;	main.c:137: delay(50);	// 1/4 bit delay
      003195 90 00 32         [24]  907 	mov	dptr,#0x0032
                                    908 ;	main.c:138: }
      003198 02 30 80         [24]  909 	ljmp	_delay
                                    910 ;------------------------------------------------------------
                                    911 ;Allocation info for local variables in function 'I2C_Stop'
                                    912 ;------------------------------------------------------------
                                    913 ;	main.c:142: void I2C_Stop(void)
                                    914 ;	-----------------------------------------
                                    915 ;	 function I2C_Stop
                                    916 ;	-----------------------------------------
      00319B                        917 _I2C_Stop:
                                    918 ;	main.c:144: set_SCL_low;				// Make SCL pin low
                                    919 ;	assignBit
      00319B C2 96            [12]  920 	clr	_P1_6
                                    921 ;	main.c:146: delay(50);	// Data pin should change it's value,
      00319D 90 00 32         [24]  922 	mov	dptr,#0x0032
      0031A0 12 30 80         [24]  923 	lcall	_delay
                                    924 ;	main.c:148: set_SDA_low;				// Make SDA pin low
                                    925 ;	assignBit
      0031A3 C2 97            [12]  926 	clr	_P1_7
                                    927 ;	main.c:150: delay(50);	// 1/4 bit delay
      0031A5 90 00 32         [24]  928 	mov	dptr,#0x0032
      0031A8 12 30 80         [24]  929 	lcall	_delay
                                    930 ;	main.c:151: set_SCL_high;				// Make SCL pin high
                                    931 ;	assignBit
      0031AB D2 96            [12]  932 	setb	_P1_6
                                    933 ;	main.c:152: delay(50);	// 1/4 bit delay
      0031AD 90 00 32         [24]  934 	mov	dptr,#0x0032
      0031B0 12 30 80         [24]  935 	lcall	_delay
                                    936 ;	main.c:153: set_SDA_high;				// Make SDA high
                                    937 ;	assignBit
      0031B3 D2 97            [12]  938 	setb	_P1_7
                                    939 ;	main.c:154: delay(50);	// 1/4 bit delay
      0031B5 90 00 32         [24]  940 	mov	dptr,#0x0032
                                    941 ;	main.c:155: }
      0031B8 02 30 80         [24]  942 	ljmp	_delay
                                    943 ;------------------------------------------------------------
                                    944 ;Allocation info for local variables in function 'RepeatedStartI2c'
                                    945 ;------------------------------------------------------------
                                    946 ;	main.c:157: void RepeatedStartI2c()
                                    947 ;	-----------------------------------------
                                    948 ;	 function RepeatedStartI2c
                                    949 ;	-----------------------------------------
      0031BB                        950 _RepeatedStartI2c:
                                    951 ;	main.c:159: SCL  = 0;
                                    952 ;	assignBit
      0031BB C2 96            [12]  953 	clr	_P1_6
                                    954 ;	main.c:160: delay(50);
      0031BD 90 00 32         [24]  955 	mov	dptr,#0x0032
      0031C0 12 30 80         [24]  956 	lcall	_delay
                                    957 ;	main.c:161: SDA  = 1;
                                    958 ;	assignBit
      0031C3 D2 97            [12]  959 	setb	_P1_7
                                    960 ;	main.c:162: delay(50);
      0031C5 90 00 32         [24]  961 	mov	dptr,#0x0032
      0031C8 12 30 80         [24]  962 	lcall	_delay
                                    963 ;	main.c:163: SCL  = 1;
                                    964 ;	assignBit
      0031CB D2 96            [12]  965 	setb	_P1_6
                                    966 ;	main.c:164: delay(50);
      0031CD 90 00 32         [24]  967 	mov	dptr,#0x0032
      0031D0 12 30 80         [24]  968 	lcall	_delay
                                    969 ;	main.c:165: SDA  = 0;
                                    970 ;	assignBit
      0031D3 C2 97            [12]  971 	clr	_P1_7
                                    972 ;	main.c:166: delay(50);
      0031D5 90 00 32         [24]  973 	mov	dptr,#0x0032
                                    974 ;	main.c:167: }
      0031D8 02 30 80         [24]  975 	ljmp	_delay
                                    976 ;------------------------------------------------------------
                                    977 ;Allocation info for local variables in function 'eebytew'
                                    978 ;------------------------------------------------------------
                                    979 ;databyte                  Allocated with name '_eebytew_PARM_2'
                                    980 ;addr                      Allocated to registers r6 r7 
                                    981 ;------------------------------------------------------------
                                    982 ;	main.c:169: void eebytew(unsigned int addr, unsigned char databyte)
                                    983 ;	-----------------------------------------
                                    984 ;	 function eebytew
                                    985 ;	-----------------------------------------
      0031DB                        986 _eebytew:
      0031DB AE 82            [24]  987 	mov	r6,dpl
      0031DD AF 83            [24]  988 	mov	r7,dph
                                    989 ;	main.c:171: I2C_Start();
      0031DF C0 07            [24]  990 	push	ar7
      0031E1 C0 06            [24]  991 	push	ar6
      0031E3 12 30 9C         [24]  992 	lcall	_I2C_Start
      0031E6 D0 06            [24]  993 	pop	ar6
      0031E8 D0 07            [24]  994 	pop	ar7
                                    995 ;	main.c:172: if(addr <= 0xFF)
      0031EA C3               [12]  996 	clr	c
      0031EB 74 FF            [12]  997 	mov	a,#0xff
      0031ED 9E               [12]  998 	subb	a,r6
      0031EE E4               [12]  999 	clr	a
      0031EF 9F               [12] 1000 	subb	a,r7
      0031F0 40 11            [24] 1001 	jc	00122$
                                   1002 ;	main.c:174: I2C_Write_Byte((unsigned char)0xA0);
      0031F2 75 82 A0         [24] 1003 	mov	dpl,#0xa0
      0031F5 C0 07            [24] 1004 	push	ar7
      0031F7 C0 06            [24] 1005 	push	ar6
      0031F9 12 30 AE         [24] 1006 	lcall	_I2C_Write_Byte
      0031FC D0 06            [24] 1007 	pop	ar6
      0031FE D0 07            [24] 1008 	pop	ar7
      003200 02 32 B2         [24] 1009 	ljmp	00123$
      003203                       1010 00122$:
                                   1011 ;	main.c:177: if(addr <= 0x1FF){
      003203 C3               [12] 1012 	clr	c
      003204 74 FF            [12] 1013 	mov	a,#0xff
      003206 9E               [12] 1014 	subb	a,r6
      003207 74 01            [12] 1015 	mov	a,#0x01
      003209 9F               [12] 1016 	subb	a,r7
      00320A 40 11            [24] 1017 	jc	00119$
                                   1018 ;	main.c:178: I2C_Write_Byte((unsigned char)0xA2);
      00320C 75 82 A2         [24] 1019 	mov	dpl,#0xa2
      00320F C0 07            [24] 1020 	push	ar7
      003211 C0 06            [24] 1021 	push	ar6
      003213 12 30 AE         [24] 1022 	lcall	_I2C_Write_Byte
      003216 D0 06            [24] 1023 	pop	ar6
      003218 D0 07            [24] 1024 	pop	ar7
      00321A 02 32 B2         [24] 1025 	ljmp	00123$
      00321D                       1026 00119$:
                                   1027 ;	main.c:181: if(addr <= 0x2FF){
      00321D C3               [12] 1028 	clr	c
      00321E 74 FF            [12] 1029 	mov	a,#0xff
      003220 9E               [12] 1030 	subb	a,r6
      003221 74 02            [12] 1031 	mov	a,#0x02
      003223 9F               [12] 1032 	subb	a,r7
      003224 40 11            [24] 1033 	jc	00116$
                                   1034 ;	main.c:182: I2C_Write_Byte((unsigned char)0xA4);
      003226 75 82 A4         [24] 1035 	mov	dpl,#0xa4
      003229 C0 07            [24] 1036 	push	ar7
      00322B C0 06            [24] 1037 	push	ar6
      00322D 12 30 AE         [24] 1038 	lcall	_I2C_Write_Byte
      003230 D0 06            [24] 1039 	pop	ar6
      003232 D0 07            [24] 1040 	pop	ar7
      003234 02 32 B2         [24] 1041 	ljmp	00123$
      003237                       1042 00116$:
                                   1043 ;	main.c:185: if(addr <= 0x3FF){
      003237 C3               [12] 1044 	clr	c
      003238 74 FF            [12] 1045 	mov	a,#0xff
      00323A 9E               [12] 1046 	subb	a,r6
      00323B 74 03            [12] 1047 	mov	a,#0x03
      00323D 9F               [12] 1048 	subb	a,r7
      00323E 40 10            [24] 1049 	jc	00113$
                                   1050 ;	main.c:186: I2C_Write_Byte((unsigned char)0xA6);
      003240 75 82 A6         [24] 1051 	mov	dpl,#0xa6
      003243 C0 07            [24] 1052 	push	ar7
      003245 C0 06            [24] 1053 	push	ar6
      003247 12 30 AE         [24] 1054 	lcall	_I2C_Write_Byte
      00324A D0 06            [24] 1055 	pop	ar6
      00324C D0 07            [24] 1056 	pop	ar7
      00324E 80 62            [24] 1057 	sjmp	00123$
      003250                       1058 00113$:
                                   1059 ;	main.c:189: if(addr <= 0x4FF){
      003250 C3               [12] 1060 	clr	c
      003251 74 FF            [12] 1061 	mov	a,#0xff
      003253 9E               [12] 1062 	subb	a,r6
      003254 74 04            [12] 1063 	mov	a,#0x04
      003256 9F               [12] 1064 	subb	a,r7
      003257 40 10            [24] 1065 	jc	00110$
                                   1066 ;	main.c:190: I2C_Write_Byte((unsigned char)0xA8);
      003259 75 82 A8         [24] 1067 	mov	dpl,#0xa8
      00325C C0 07            [24] 1068 	push	ar7
      00325E C0 06            [24] 1069 	push	ar6
      003260 12 30 AE         [24] 1070 	lcall	_I2C_Write_Byte
      003263 D0 06            [24] 1071 	pop	ar6
      003265 D0 07            [24] 1072 	pop	ar7
      003267 80 49            [24] 1073 	sjmp	00123$
      003269                       1074 00110$:
                                   1075 ;	main.c:193: if(addr <= 0x5FF){
      003269 C3               [12] 1076 	clr	c
      00326A 74 FF            [12] 1077 	mov	a,#0xff
      00326C 9E               [12] 1078 	subb	a,r6
      00326D 74 05            [12] 1079 	mov	a,#0x05
      00326F 9F               [12] 1080 	subb	a,r7
      003270 40 10            [24] 1081 	jc	00107$
                                   1082 ;	main.c:194: I2C_Write_Byte((unsigned char)0xAA);
      003272 75 82 AA         [24] 1083 	mov	dpl,#0xaa
      003275 C0 07            [24] 1084 	push	ar7
      003277 C0 06            [24] 1085 	push	ar6
      003279 12 30 AE         [24] 1086 	lcall	_I2C_Write_Byte
      00327C D0 06            [24] 1087 	pop	ar6
      00327E D0 07            [24] 1088 	pop	ar7
      003280 80 30            [24] 1089 	sjmp	00123$
      003282                       1090 00107$:
                                   1091 ;	main.c:197: if(addr <= 0x6FF){
      003282 C3               [12] 1092 	clr	c
      003283 74 FF            [12] 1093 	mov	a,#0xff
      003285 9E               [12] 1094 	subb	a,r6
      003286 74 06            [12] 1095 	mov	a,#0x06
      003288 9F               [12] 1096 	subb	a,r7
      003289 40 10            [24] 1097 	jc	00104$
                                   1098 ;	main.c:198: I2C_Write_Byte((unsigned char)0xAC);
      00328B 75 82 AC         [24] 1099 	mov	dpl,#0xac
      00328E C0 07            [24] 1100 	push	ar7
      003290 C0 06            [24] 1101 	push	ar6
      003292 12 30 AE         [24] 1102 	lcall	_I2C_Write_Byte
      003295 D0 06            [24] 1103 	pop	ar6
      003297 D0 07            [24] 1104 	pop	ar7
      003299 80 17            [24] 1105 	sjmp	00123$
      00329B                       1106 00104$:
                                   1107 ;	main.c:201: if(addr <= 0x7FF){
      00329B C3               [12] 1108 	clr	c
      00329C 74 FF            [12] 1109 	mov	a,#0xff
      00329E 9E               [12] 1110 	subb	a,r6
      00329F 74 07            [12] 1111 	mov	a,#0x07
      0032A1 9F               [12] 1112 	subb	a,r7
      0032A2 40 0E            [24] 1113 	jc	00123$
                                   1114 ;	main.c:202: I2C_Write_Byte((unsigned char)0xAE);
      0032A4 75 82 AE         [24] 1115 	mov	dpl,#0xae
      0032A7 C0 07            [24] 1116 	push	ar7
      0032A9 C0 06            [24] 1117 	push	ar6
      0032AB 12 30 AE         [24] 1118 	lcall	_I2C_Write_Byte
      0032AE D0 06            [24] 1119 	pop	ar6
      0032B0 D0 07            [24] 1120 	pop	ar7
      0032B2                       1121 00123$:
                                   1122 ;	main.c:211: I2C_Write_Byte((unsigned char)addr);
      0032B2 8E 82            [24] 1123 	mov	dpl,r6
      0032B4 12 30 AE         [24] 1124 	lcall	_I2C_Write_Byte
                                   1125 ;	main.c:212: I2C_Write_Byte(databyte);
      0032B7 85 08 82         [24] 1126 	mov	dpl,_eebytew_PARM_2
      0032BA 12 30 AE         [24] 1127 	lcall	_I2C_Write_Byte
                                   1128 ;	main.c:213: I2C_Stop();
                                   1129 ;	main.c:215: }
      0032BD 02 31 9B         [24] 1130 	ljmp	_I2C_Stop
                                   1131 ;------------------------------------------------------------
                                   1132 ;Allocation info for local variables in function 'eebyter'
                                   1133 ;------------------------------------------------------------
                                   1134 ;addr                      Allocated to registers r6 r7 
                                   1135 ;rec                       Allocated to registers r7 
                                   1136 ;------------------------------------------------------------
                                   1137 ;	main.c:217: unsigned char eebyter(unsigned int addr)
                                   1138 ;	-----------------------------------------
                                   1139 ;	 function eebyter
                                   1140 ;	-----------------------------------------
      0032C0                       1141 _eebyter:
      0032C0 AE 82            [24] 1142 	mov	r6,dpl
      0032C2 AF 83            [24] 1143 	mov	r7,dph
                                   1144 ;	main.c:220: I2C_Start();
      0032C4 C0 07            [24] 1145 	push	ar7
      0032C6 C0 06            [24] 1146 	push	ar6
      0032C8 12 30 9C         [24] 1147 	lcall	_I2C_Start
      0032CB D0 06            [24] 1148 	pop	ar6
      0032CD D0 07            [24] 1149 	pop	ar7
                                   1150 ;	main.c:221: if(addr <= 0xFF)
      0032CF C3               [12] 1151 	clr	c
      0032D0 74 FF            [12] 1152 	mov	a,#0xff
      0032D2 9E               [12] 1153 	subb	a,r6
      0032D3 E4               [12] 1154 	clr	a
      0032D4 9F               [12] 1155 	subb	a,r7
      0032D5 92 00            [24] 1156 	mov	_eebyter_sloc0_1_0,c
      0032D7 40 11            [24] 1157 	jc	00122$
                                   1158 ;	main.c:223: I2C_Write_Byte((unsigned char)0xA0);
      0032D9 75 82 A0         [24] 1159 	mov	dpl,#0xa0
      0032DC C0 07            [24] 1160 	push	ar7
      0032DE C0 06            [24] 1161 	push	ar6
      0032E0 12 30 AE         [24] 1162 	lcall	_I2C_Write_Byte
      0032E3 D0 06            [24] 1163 	pop	ar6
      0032E5 D0 07            [24] 1164 	pop	ar7
      0032E7 02 33 98         [24] 1165 	ljmp	00123$
      0032EA                       1166 00122$:
                                   1167 ;	main.c:226: if(addr <= 0x1FF){
      0032EA C3               [12] 1168 	clr	c
      0032EB 74 FF            [12] 1169 	mov	a,#0xff
      0032ED 9E               [12] 1170 	subb	a,r6
      0032EE 74 01            [12] 1171 	mov	a,#0x01
      0032F0 9F               [12] 1172 	subb	a,r7
      0032F1 40 11            [24] 1173 	jc	00119$
                                   1174 ;	main.c:227: I2C_Write_Byte((unsigned char)0xA2);
      0032F3 75 82 A2         [24] 1175 	mov	dpl,#0xa2
      0032F6 C0 07            [24] 1176 	push	ar7
      0032F8 C0 06            [24] 1177 	push	ar6
      0032FA 12 30 AE         [24] 1178 	lcall	_I2C_Write_Byte
      0032FD D0 06            [24] 1179 	pop	ar6
      0032FF D0 07            [24] 1180 	pop	ar7
      003301 02 33 98         [24] 1181 	ljmp	00123$
      003304                       1182 00119$:
                                   1183 ;	main.c:230: if(addr <= 0x2FF){
      003304 C3               [12] 1184 	clr	c
      003305 74 FF            [12] 1185 	mov	a,#0xff
      003307 9E               [12] 1186 	subb	a,r6
      003308 74 02            [12] 1187 	mov	a,#0x02
      00330A 9F               [12] 1188 	subb	a,r7
      00330B 40 10            [24] 1189 	jc	00116$
                                   1190 ;	main.c:231: I2C_Write_Byte((unsigned char)0xA4);
      00330D 75 82 A4         [24] 1191 	mov	dpl,#0xa4
      003310 C0 07            [24] 1192 	push	ar7
      003312 C0 06            [24] 1193 	push	ar6
      003314 12 30 AE         [24] 1194 	lcall	_I2C_Write_Byte
      003317 D0 06            [24] 1195 	pop	ar6
      003319 D0 07            [24] 1196 	pop	ar7
      00331B 80 7B            [24] 1197 	sjmp	00123$
      00331D                       1198 00116$:
                                   1199 ;	main.c:234: if(addr <= 0x3FF){
      00331D C3               [12] 1200 	clr	c
      00331E 74 FF            [12] 1201 	mov	a,#0xff
      003320 9E               [12] 1202 	subb	a,r6
      003321 74 03            [12] 1203 	mov	a,#0x03
      003323 9F               [12] 1204 	subb	a,r7
      003324 40 10            [24] 1205 	jc	00113$
                                   1206 ;	main.c:235: I2C_Write_Byte((unsigned char)0xA6);
      003326 75 82 A6         [24] 1207 	mov	dpl,#0xa6
      003329 C0 07            [24] 1208 	push	ar7
      00332B C0 06            [24] 1209 	push	ar6
      00332D 12 30 AE         [24] 1210 	lcall	_I2C_Write_Byte
      003330 D0 06            [24] 1211 	pop	ar6
      003332 D0 07            [24] 1212 	pop	ar7
      003334 80 62            [24] 1213 	sjmp	00123$
      003336                       1214 00113$:
                                   1215 ;	main.c:238: if(addr <= 0x4FF){
      003336 C3               [12] 1216 	clr	c
      003337 74 FF            [12] 1217 	mov	a,#0xff
      003339 9E               [12] 1218 	subb	a,r6
      00333A 74 04            [12] 1219 	mov	a,#0x04
      00333C 9F               [12] 1220 	subb	a,r7
      00333D 40 10            [24] 1221 	jc	00110$
                                   1222 ;	main.c:239: I2C_Write_Byte((unsigned char)0xA8);
      00333F 75 82 A8         [24] 1223 	mov	dpl,#0xa8
      003342 C0 07            [24] 1224 	push	ar7
      003344 C0 06            [24] 1225 	push	ar6
      003346 12 30 AE         [24] 1226 	lcall	_I2C_Write_Byte
      003349 D0 06            [24] 1227 	pop	ar6
      00334B D0 07            [24] 1228 	pop	ar7
      00334D 80 49            [24] 1229 	sjmp	00123$
      00334F                       1230 00110$:
                                   1231 ;	main.c:242: if(addr <= 0x5FF){
      00334F C3               [12] 1232 	clr	c
      003350 74 FF            [12] 1233 	mov	a,#0xff
      003352 9E               [12] 1234 	subb	a,r6
      003353 74 05            [12] 1235 	mov	a,#0x05
      003355 9F               [12] 1236 	subb	a,r7
      003356 40 10            [24] 1237 	jc	00107$
                                   1238 ;	main.c:243: I2C_Write_Byte((unsigned char)0xAA);
      003358 75 82 AA         [24] 1239 	mov	dpl,#0xaa
      00335B C0 07            [24] 1240 	push	ar7
      00335D C0 06            [24] 1241 	push	ar6
      00335F 12 30 AE         [24] 1242 	lcall	_I2C_Write_Byte
      003362 D0 06            [24] 1243 	pop	ar6
      003364 D0 07            [24] 1244 	pop	ar7
      003366 80 30            [24] 1245 	sjmp	00123$
      003368                       1246 00107$:
                                   1247 ;	main.c:246: if(addr <= 0x6FF){
      003368 C3               [12] 1248 	clr	c
      003369 74 FF            [12] 1249 	mov	a,#0xff
      00336B 9E               [12] 1250 	subb	a,r6
      00336C 74 06            [12] 1251 	mov	a,#0x06
      00336E 9F               [12] 1252 	subb	a,r7
      00336F 40 10            [24] 1253 	jc	00104$
                                   1254 ;	main.c:247: I2C_Write_Byte((unsigned char)0xAC);
      003371 75 82 AC         [24] 1255 	mov	dpl,#0xac
      003374 C0 07            [24] 1256 	push	ar7
      003376 C0 06            [24] 1257 	push	ar6
      003378 12 30 AE         [24] 1258 	lcall	_I2C_Write_Byte
      00337B D0 06            [24] 1259 	pop	ar6
      00337D D0 07            [24] 1260 	pop	ar7
      00337F 80 17            [24] 1261 	sjmp	00123$
      003381                       1262 00104$:
                                   1263 ;	main.c:250: if(addr <= 0x7FF){
      003381 C3               [12] 1264 	clr	c
      003382 74 FF            [12] 1265 	mov	a,#0xff
      003384 9E               [12] 1266 	subb	a,r6
      003385 74 07            [12] 1267 	mov	a,#0x07
      003387 9F               [12] 1268 	subb	a,r7
      003388 40 0E            [24] 1269 	jc	00123$
                                   1270 ;	main.c:251: I2C_Write_Byte((unsigned char)0xAE);
      00338A 75 82 AE         [24] 1271 	mov	dpl,#0xae
      00338D C0 07            [24] 1272 	push	ar7
      00338F C0 06            [24] 1273 	push	ar6
      003391 12 30 AE         [24] 1274 	lcall	_I2C_Write_Byte
      003394 D0 06            [24] 1275 	pop	ar6
      003396 D0 07            [24] 1276 	pop	ar7
      003398                       1277 00123$:
                                   1278 ;	main.c:261: I2C_Write_Byte((unsigned char)addr);
      003398 8E 82            [24] 1279 	mov	dpl,r6
      00339A C0 07            [24] 1280 	push	ar7
      00339C C0 06            [24] 1281 	push	ar6
      00339E 12 30 AE         [24] 1282 	lcall	_I2C_Write_Byte
                                   1283 ;	main.c:262: RepeatedStartI2c();
      0033A1 12 31 BB         [24] 1284 	lcall	_RepeatedStartI2c
      0033A4 D0 06            [24] 1285 	pop	ar6
      0033A6 D0 07            [24] 1286 	pop	ar7
                                   1287 ;	main.c:263: if(addr <= 0xFF)
      0033A8 20 00 08         [24] 1288 	jb	_eebyter_sloc0_1_0,00145$
                                   1289 ;	main.c:265: I2C_Write_Byte((unsigned char)0xA1);
      0033AB 75 82 A1         [24] 1290 	mov	dpl,#0xa1
      0033AE 12 30 AE         [24] 1291 	lcall	_I2C_Write_Byte
      0033B1 80 75            [24] 1292 	sjmp	00146$
      0033B3                       1293 00145$:
                                   1294 ;	main.c:268: if(addr <= 0x1FF){
      0033B3 C3               [12] 1295 	clr	c
      0033B4 74 FF            [12] 1296 	mov	a,#0xff
      0033B6 9E               [12] 1297 	subb	a,r6
      0033B7 74 01            [12] 1298 	mov	a,#0x01
      0033B9 9F               [12] 1299 	subb	a,r7
      0033BA 40 08            [24] 1300 	jc	00142$
                                   1301 ;	main.c:269: I2C_Write_Byte((unsigned char)0xA3);
      0033BC 75 82 A3         [24] 1302 	mov	dpl,#0xa3
      0033BF 12 30 AE         [24] 1303 	lcall	_I2C_Write_Byte
      0033C2 80 64            [24] 1304 	sjmp	00146$
      0033C4                       1305 00142$:
                                   1306 ;	main.c:272: if(addr <= 0x2FF){
      0033C4 C3               [12] 1307 	clr	c
      0033C5 74 FF            [12] 1308 	mov	a,#0xff
      0033C7 9E               [12] 1309 	subb	a,r6
      0033C8 74 02            [12] 1310 	mov	a,#0x02
      0033CA 9F               [12] 1311 	subb	a,r7
      0033CB 40 08            [24] 1312 	jc	00139$
                                   1313 ;	main.c:273: I2C_Write_Byte((unsigned char)0xA5);
      0033CD 75 82 A5         [24] 1314 	mov	dpl,#0xa5
      0033D0 12 30 AE         [24] 1315 	lcall	_I2C_Write_Byte
      0033D3 80 53            [24] 1316 	sjmp	00146$
      0033D5                       1317 00139$:
                                   1318 ;	main.c:276: if(addr <= 0x3FF){
      0033D5 C3               [12] 1319 	clr	c
      0033D6 74 FF            [12] 1320 	mov	a,#0xff
      0033D8 9E               [12] 1321 	subb	a,r6
      0033D9 74 03            [12] 1322 	mov	a,#0x03
      0033DB 9F               [12] 1323 	subb	a,r7
      0033DC 40 08            [24] 1324 	jc	00136$
                                   1325 ;	main.c:277: I2C_Write_Byte((unsigned char)0xA7);
      0033DE 75 82 A7         [24] 1326 	mov	dpl,#0xa7
      0033E1 12 30 AE         [24] 1327 	lcall	_I2C_Write_Byte
      0033E4 80 42            [24] 1328 	sjmp	00146$
      0033E6                       1329 00136$:
                                   1330 ;	main.c:280: if(addr <= 0x4FF){
      0033E6 C3               [12] 1331 	clr	c
      0033E7 74 FF            [12] 1332 	mov	a,#0xff
      0033E9 9E               [12] 1333 	subb	a,r6
      0033EA 74 04            [12] 1334 	mov	a,#0x04
      0033EC 9F               [12] 1335 	subb	a,r7
      0033ED 40 08            [24] 1336 	jc	00133$
                                   1337 ;	main.c:281: I2C_Write_Byte((unsigned char)0xA9);
      0033EF 75 82 A9         [24] 1338 	mov	dpl,#0xa9
      0033F2 12 30 AE         [24] 1339 	lcall	_I2C_Write_Byte
      0033F5 80 31            [24] 1340 	sjmp	00146$
      0033F7                       1341 00133$:
                                   1342 ;	main.c:284: if(addr <= 0x5FF){
      0033F7 C3               [12] 1343 	clr	c
      0033F8 74 FF            [12] 1344 	mov	a,#0xff
      0033FA 9E               [12] 1345 	subb	a,r6
      0033FB 74 05            [12] 1346 	mov	a,#0x05
      0033FD 9F               [12] 1347 	subb	a,r7
      0033FE 40 08            [24] 1348 	jc	00130$
                                   1349 ;	main.c:285: I2C_Write_Byte((unsigned char)0xAB);
      003400 75 82 AB         [24] 1350 	mov	dpl,#0xab
      003403 12 30 AE         [24] 1351 	lcall	_I2C_Write_Byte
      003406 80 20            [24] 1352 	sjmp	00146$
      003408                       1353 00130$:
                                   1354 ;	main.c:288: if(addr <= 0x6FF){
      003408 C3               [12] 1355 	clr	c
      003409 74 FF            [12] 1356 	mov	a,#0xff
      00340B 9E               [12] 1357 	subb	a,r6
      00340C 74 06            [12] 1358 	mov	a,#0x06
      00340E 9F               [12] 1359 	subb	a,r7
      00340F 40 08            [24] 1360 	jc	00127$
                                   1361 ;	main.c:289: I2C_Write_Byte((unsigned char)0xAD);
      003411 75 82 AD         [24] 1362 	mov	dpl,#0xad
      003414 12 30 AE         [24] 1363 	lcall	_I2C_Write_Byte
      003417 80 0F            [24] 1364 	sjmp	00146$
      003419                       1365 00127$:
                                   1366 ;	main.c:292: if(addr <= 0x7FF){
      003419 C3               [12] 1367 	clr	c
      00341A 74 FF            [12] 1368 	mov	a,#0xff
      00341C 9E               [12] 1369 	subb	a,r6
      00341D 74 07            [12] 1370 	mov	a,#0x07
      00341F 9F               [12] 1371 	subb	a,r7
      003420 40 06            [24] 1372 	jc	00146$
                                   1373 ;	main.c:293: I2C_Write_Byte((unsigned char)0xAF);
      003422 75 82 AF         [24] 1374 	mov	dpl,#0xaf
      003425 12 30 AE         [24] 1375 	lcall	_I2C_Write_Byte
      003428                       1376 00146$:
                                   1377 ;	main.c:303: rec=I2C_Read_Byte();
      003428 12 31 14         [24] 1378 	lcall	_I2C_Read_Byte
      00342B AF 82            [24] 1379 	mov	r7,dpl
                                   1380 ;	main.c:304: I2C_Send_ACK();
      00342D C0 07            [24] 1381 	push	ar7
      00342F 12 31 63         [24] 1382 	lcall	_I2C_Send_ACK
                                   1383 ;	main.c:305: I2C_Stop();
      003432 12 31 9B         [24] 1384 	lcall	_I2C_Stop
      003435 D0 07            [24] 1385 	pop	ar7
                                   1386 ;	main.c:306: return rec;
      003437 8F 82            [24] 1387 	mov	dpl,r7
                                   1388 ;	main.c:307: }
      003439 22               [24] 1389 	ret
                                   1390 ;------------------------------------------------------------
                                   1391 ;Allocation info for local variables in function 'main'
                                   1392 ;------------------------------------------------------------
                                   1393 ;rx                        Allocated to registers 
                                   1394 ;addr                      Allocated with name '_main_addr_131072_92'
                                   1395 ;addr1                     Allocated with name '_main_addr1_131072_92'
                                   1396 ;start_addr                Allocated with name '_main_start_addr_131072_92'
                                   1397 ;end_addr                  Allocated with name '_main_end_addr_131072_92'
                                   1398 ;data                      Allocated with name '_main_data_131072_92'
                                   1399 ;digit                     Allocated to registers r1 r2 
                                   1400 ;ch                        Allocated to registers r4 
                                   1401 ;rd                        Allocated to registers r5 
                                   1402 ;i                         Allocated to registers r0 r1 
                                   1403 ;------------------------------------------------------------
                                   1404 ;	main.c:309: void main(void)
                                   1405 ;	-----------------------------------------
                                   1406 ;	 function main
                                   1407 ;	-----------------------------------------
      00343A                       1408 _main:
                                   1409 ;	main.c:312: I2C_init();					// Initialize i2c pins
      00343A 12 30 97         [24] 1410 	lcall	_I2C_init
                                   1411 ;	main.c:313: printf("Starting I2C application\r\n");
      00343D 74 12            [12] 1412 	mov	a,#___str_0
      00343F C0 E0            [24] 1413 	push	acc
      003441 74 43            [12] 1414 	mov	a,#(___str_0 >> 8)
      003443 C0 E0            [24] 1415 	push	acc
      003445 74 80            [12] 1416 	mov	a,#0x80
      003447 C0 E0            [24] 1417 	push	acc
      003449 12 3B 78         [24] 1418 	lcall	_printf
      00344C 15 81            [12] 1419 	dec	sp
      00344E 15 81            [12] 1420 	dec	sp
      003450 15 81            [12] 1421 	dec	sp
                                   1422 ;	main.c:314: printf("Help menu:\r\n");
      003452 74 2D            [12] 1423 	mov	a,#___str_1
      003454 C0 E0            [24] 1424 	push	acc
      003456 74 43            [12] 1425 	mov	a,#(___str_1 >> 8)
      003458 C0 E0            [24] 1426 	push	acc
      00345A 74 80            [12] 1427 	mov	a,#0x80
      00345C C0 E0            [24] 1428 	push	acc
      00345E 12 3B 78         [24] 1429 	lcall	_printf
      003461 15 81            [12] 1430 	dec	sp
      003463 15 81            [12] 1431 	dec	sp
      003465 15 81            [12] 1432 	dec	sp
                                   1433 ;	main.c:315: printf("'w': Enter an EEPROM address in hex to write data at and byte data\r\n");
      003467 74 3A            [12] 1434 	mov	a,#___str_2
      003469 C0 E0            [24] 1435 	push	acc
      00346B 74 43            [12] 1436 	mov	a,#(___str_2 >> 8)
      00346D C0 E0            [24] 1437 	push	acc
      00346F 74 80            [12] 1438 	mov	a,#0x80
      003471 C0 E0            [24] 1439 	push	acc
      003473 12 3B 78         [24] 1440 	lcall	_printf
      003476 15 81            [12] 1441 	dec	sp
      003478 15 81            [12] 1442 	dec	sp
      00347A 15 81            [12] 1443 	dec	sp
                                   1444 ;	main.c:316: printf("'r': Enter an EEPROM address in hex to read data from\r\n");
      00347C 74 7F            [12] 1445 	mov	a,#___str_3
      00347E C0 E0            [24] 1446 	push	acc
      003480 74 43            [12] 1447 	mov	a,#(___str_3 >> 8)
      003482 C0 E0            [24] 1448 	push	acc
      003484 74 80            [12] 1449 	mov	a,#0x80
      003486 C0 E0            [24] 1450 	push	acc
      003488 12 3B 78         [24] 1451 	lcall	_printf
      00348B 15 81            [12] 1452 	dec	sp
      00348D 15 81            [12] 1453 	dec	sp
      00348F 15 81            [12] 1454 	dec	sp
                                   1455 ;	main.c:317: printf("'h': Enter an EEPROM start and end addresses to dump the data\r\n");
      003491 74 B7            [12] 1456 	mov	a,#___str_4
      003493 C0 E0            [24] 1457 	push	acc
      003495 74 43            [12] 1458 	mov	a,#(___str_4 >> 8)
      003497 C0 E0            [24] 1459 	push	acc
      003499 74 80            [12] 1460 	mov	a,#0x80
      00349B C0 E0            [24] 1461 	push	acc
      00349D 12 3B 78         [24] 1462 	lcall	_printf
      0034A0 15 81            [12] 1463 	dec	sp
      0034A2 15 81            [12] 1464 	dec	sp
      0034A4 15 81            [12] 1465 	dec	sp
                                   1466 ;	main.c:318: printf("'e': Reset EEPROM\r\n");
      0034A6 74 F7            [12] 1467 	mov	a,#___str_5
      0034A8 C0 E0            [24] 1468 	push	acc
      0034AA 74 43            [12] 1469 	mov	a,#(___str_5 >> 8)
      0034AC C0 E0            [24] 1470 	push	acc
      0034AE 74 80            [12] 1471 	mov	a,#0x80
      0034B0 C0 E0            [24] 1472 	push	acc
      0034B2 12 3B 78         [24] 1473 	lcall	_printf
      0034B5 15 81            [12] 1474 	dec	sp
      0034B7 15 81            [12] 1475 	dec	sp
      0034B9 15 81            [12] 1476 	dec	sp
                                   1477 ;	main.c:320: while(1)
      0034BB E4               [12] 1478 	clr	a
      0034BC FE               [12] 1479 	mov	r6,a
      0034BD FF               [12] 1480 	mov	r7,a
      0034BE F5 0B            [12] 1481 	mov	_main_addr1_131072_92,a
      0034C0 F5 0C            [12] 1482 	mov	(_main_addr1_131072_92 + 1),a
      0034C2 F5 0D            [12] 1483 	mov	_main_start_addr_131072_92,a
      0034C4 F5 0E            [12] 1484 	mov	(_main_start_addr_131072_92 + 1),a
      0034C6                       1485 00212$:
                                   1486 ;	main.c:322: unsigned int addr, addr1, start_addr, end_addr = 0;
      0034C6 E4               [12] 1487 	clr	a
      0034C7 F5 0F            [12] 1488 	mov	_main_end_addr_131072_92,a
      0034C9 F5 10            [12] 1489 	mov	(_main_end_addr_131072_92 + 1),a
                                   1490 ;	main.c:323: unsigned int data = 0;
      0034CB F5 11            [12] 1491 	mov	_main_data_131072_92,a
      0034CD F5 12            [12] 1492 	mov	(_main_data_131072_92 + 1),a
                                   1493 ;	main.c:325: char ch = getchar();
      0034CF C0 07            [24] 1494 	push	ar7
      0034D1 C0 06            [24] 1495 	push	ar6
      0034D3 12 30 62         [24] 1496 	lcall	_getchar
      0034D6 AC 82            [24] 1497 	mov	r4,dpl
                                   1498 ;	main.c:326: putchar(ch);
      0034D8 8C 01            [24] 1499 	mov	ar1,r4
      0034DA 7D 00            [12] 1500 	mov	r5,#0x00
      0034DC 89 82            [24] 1501 	mov	dpl,r1
      0034DE 8D 83            [24] 1502 	mov	dph,r5
      0034E0 C0 04            [24] 1503 	push	ar4
      0034E2 12 30 70         [24] 1504 	lcall	_putchar
                                   1505 ;	main.c:327: printf("\r\n");
      0034E5 74 0B            [12] 1506 	mov	a,#___str_6
      0034E7 C0 E0            [24] 1507 	push	acc
      0034E9 74 44            [12] 1508 	mov	a,#(___str_6 >> 8)
      0034EB C0 E0            [24] 1509 	push	acc
      0034ED 74 80            [12] 1510 	mov	a,#0x80
      0034EF C0 E0            [24] 1511 	push	acc
      0034F1 12 3B 78         [24] 1512 	lcall	_printf
      0034F4 15 81            [12] 1513 	dec	sp
      0034F6 15 81            [12] 1514 	dec	sp
      0034F8 15 81            [12] 1515 	dec	sp
      0034FA D0 04            [24] 1516 	pop	ar4
      0034FC D0 06            [24] 1517 	pop	ar6
      0034FE D0 07            [24] 1518 	pop	ar7
                                   1519 ;	main.c:328: switch(ch)
      003500 BC 68 03         [24] 1520 	cjne	r4,#0x68,00485$
      003503 02 38 20         [24] 1521 	ljmp	00163$
      003506                       1522 00485$:
      003506 BC 72 03         [24] 1523 	cjne	r4,#0x72,00486$
      003509 02 37 09         [24] 1524 	ljmp	00142$
      00350C                       1525 00486$:
      00350C BC 77 02         [24] 1526 	cjne	r4,#0x77,00487$
      00350F 80 03            [24] 1527 	sjmp	00488$
      003511                       1528 00487$:
      003511 02 3A E3         [24] 1529 	ljmp	00209$
      003514                       1530 00488$:
                                   1531 ;	main.c:331: printf("Enter the address location to store the data at : \r\n");
      003514 C0 07            [24] 1532 	push	ar7
      003516 C0 06            [24] 1533 	push	ar6
      003518 74 0E            [12] 1534 	mov	a,#___str_7
      00351A C0 E0            [24] 1535 	push	acc
      00351C 74 44            [12] 1536 	mov	a,#(___str_7 >> 8)
      00351E C0 E0            [24] 1537 	push	acc
      003520 74 80            [12] 1538 	mov	a,#0x80
      003522 C0 E0            [24] 1539 	push	acc
      003524 12 3B 78         [24] 1540 	lcall	_printf
      003527 15 81            [12] 1541 	dec	sp
      003529 15 81            [12] 1542 	dec	sp
      00352B 15 81            [12] 1543 	dec	sp
      00352D D0 06            [24] 1544 	pop	ar6
      00352F D0 07            [24] 1545 	pop	ar7
                                   1546 ;	main.c:332: while (1) {
      003531                       1547 00117$:
                                   1548 ;	main.c:333: ch = getchar();
      003531 C0 07            [24] 1549 	push	ar7
      003533 C0 06            [24] 1550 	push	ar6
      003535 12 30 62         [24] 1551 	lcall	_getchar
      003538 AC 82            [24] 1552 	mov	r4,dpl
      00353A D0 06            [24] 1553 	pop	ar6
      00353C D0 07            [24] 1554 	pop	ar7
                                   1555 ;	main.c:335: if ((int)ch == 13) { // Check until carriage return
      00353E 8C 01            [24] 1556 	mov	ar1,r4
      003540 7D 00            [12] 1557 	mov	r5,#0x00
      003542 B9 0D 05         [24] 1558 	cjne	r1,#0x0d,00489$
      003545 BD 00 02         [24] 1559 	cjne	r5,#0x00,00489$
      003548 80 71            [24] 1560 	sjmp	00118$
      00354A                       1561 00489$:
                                   1562 ;	main.c:339: if ((ch >= '0') && (ch <= '9')) {
      00354A BC 30 00         [24] 1563 	cjne	r4,#0x30,00490$
      00354D                       1564 00490$:
      00354D 40 0F            [24] 1565 	jc	00113$
      00354F EC               [12] 1566 	mov	a,r4
      003550 24 C6            [12] 1567 	add	a,#0xff - 0x39
      003552 40 0A            [24] 1568 	jc	00113$
                                   1569 ;	main.c:340: digit = ch - '0';
      003554 E9               [12] 1570 	mov	a,r1
      003555 24 D0            [12] 1571 	add	a,#0xd0
      003557 F9               [12] 1572 	mov	r1,a
      003558 ED               [12] 1573 	mov	a,r5
      003559 34 FF            [12] 1574 	addc	a,#0xff
      00355B FD               [12] 1575 	mov	r5,a
      00355C 80 44            [24] 1576 	sjmp	00114$
      00355E                       1577 00113$:
                                   1578 ;	main.c:341: } else if ((ch >= 'A') && (ch <= 'F')) {
      00355E BC 41 00         [24] 1579 	cjne	r4,#0x41,00493$
      003561                       1580 00493$:
      003561 40 13            [24] 1581 	jc	00109$
      003563 EC               [12] 1582 	mov	a,r4
      003564 24 B9            [12] 1583 	add	a,#0xff - 0x46
      003566 40 0E            [24] 1584 	jc	00109$
                                   1585 ;	main.c:342: digit = ch - 7 - '0';
      003568 8C 00            [24] 1586 	mov	ar0,r4
      00356A 7B 00            [12] 1587 	mov	r3,#0x00
      00356C E8               [12] 1588 	mov	a,r0
      00356D 24 C9            [12] 1589 	add	a,#0xc9
      00356F F9               [12] 1590 	mov	r1,a
      003570 EB               [12] 1591 	mov	a,r3
      003571 34 FF            [12] 1592 	addc	a,#0xff
      003573 FD               [12] 1593 	mov	r5,a
      003574 80 2C            [24] 1594 	sjmp	00114$
      003576                       1595 00109$:
                                   1596 ;	main.c:343: } else if ((ch >= 'a') && (ch <= 'f')) {
      003576 BC 61 00         [24] 1597 	cjne	r4,#0x61,00496$
      003579                       1598 00496$:
      003579 40 11            [24] 1599 	jc	00105$
      00357B EC               [12] 1600 	mov	a,r4
      00357C 24 99            [12] 1601 	add	a,#0xff - 0x66
      00357E 40 0C            [24] 1602 	jc	00105$
                                   1603 ;	main.c:344: digit = ch - 32 - 7 - '0';
      003580 7B 00            [12] 1604 	mov	r3,#0x00
      003582 EC               [12] 1605 	mov	a,r4
      003583 24 A9            [12] 1606 	add	a,#0xa9
      003585 F9               [12] 1607 	mov	r1,a
      003586 EB               [12] 1608 	mov	a,r3
      003587 34 FF            [12] 1609 	addc	a,#0xff
      003589 FD               [12] 1610 	mov	r5,a
      00358A 80 16            [24] 1611 	sjmp	00114$
      00358C                       1612 00105$:
                                   1613 ;	main.c:346: printf("Invalid input. Please enter 0-9, A-F or a-f only.\r\n");
      00358C 74 43            [12] 1614 	mov	a,#___str_8
      00358E C0 E0            [24] 1615 	push	acc
      003590 74 44            [12] 1616 	mov	a,#(___str_8 >> 8)
      003592 C0 E0            [24] 1617 	push	acc
      003594 74 80            [12] 1618 	mov	a,#0x80
      003596 C0 E0            [24] 1619 	push	acc
      003598 12 3B 78         [24] 1620 	lcall	_printf
      00359B 15 81            [12] 1621 	dec	sp
      00359D 15 81            [12] 1622 	dec	sp
      00359F 15 81            [12] 1623 	dec	sp
                                   1624 ;	main.c:347: return;
      0035A1 22               [24] 1625 	ret
      0035A2                       1626 00114$:
                                   1627 ;	main.c:349: addr = addr * 16 + digit;
      0035A2 8E 03            [24] 1628 	mov	ar3,r6
      0035A4 EF               [12] 1629 	mov	a,r7
      0035A5 C4               [12] 1630 	swap	a
      0035A6 54 F0            [12] 1631 	anl	a,#0xf0
      0035A8 CB               [12] 1632 	xch	a,r3
      0035A9 C4               [12] 1633 	swap	a
      0035AA CB               [12] 1634 	xch	a,r3
      0035AB 6B               [12] 1635 	xrl	a,r3
      0035AC CB               [12] 1636 	xch	a,r3
      0035AD 54 F0            [12] 1637 	anl	a,#0xf0
      0035AF CB               [12] 1638 	xch	a,r3
      0035B0 6B               [12] 1639 	xrl	a,r3
      0035B1 FC               [12] 1640 	mov	r4,a
      0035B2 E9               [12] 1641 	mov	a,r1
      0035B3 2B               [12] 1642 	add	a,r3
      0035B4 FE               [12] 1643 	mov	r6,a
      0035B5 ED               [12] 1644 	mov	a,r5
      0035B6 3C               [12] 1645 	addc	a,r4
      0035B7 FF               [12] 1646 	mov	r7,a
      0035B8 02 35 31         [24] 1647 	ljmp	00117$
      0035BB                       1648 00118$:
                                   1649 ;	main.c:353: printf("Entered address: 0x%x\r\n", addr);
      0035BB C0 07            [24] 1650 	push	ar7
      0035BD C0 06            [24] 1651 	push	ar6
      0035BF C0 06            [24] 1652 	push	ar6
      0035C1 C0 07            [24] 1653 	push	ar7
      0035C3 74 77            [12] 1654 	mov	a,#___str_9
      0035C5 C0 E0            [24] 1655 	push	acc
      0035C7 74 44            [12] 1656 	mov	a,#(___str_9 >> 8)
      0035C9 C0 E0            [24] 1657 	push	acc
      0035CB 74 80            [12] 1658 	mov	a,#0x80
      0035CD C0 E0            [24] 1659 	push	acc
      0035CF 12 3B 78         [24] 1660 	lcall	_printf
      0035D2 E5 81            [12] 1661 	mov	a,sp
      0035D4 24 FB            [12] 1662 	add	a,#0xfb
      0035D6 F5 81            [12] 1663 	mov	sp,a
      0035D8 D0 06            [24] 1664 	pop	ar6
      0035DA D0 07            [24] 1665 	pop	ar7
                                   1666 ;	main.c:356: if ((addr < 0x0) || (addr > 0x7FF)) {
      0035DC C3               [12] 1667 	clr	c
      0035DD 74 FF            [12] 1668 	mov	a,#0xff
      0035DF 9E               [12] 1669 	subb	a,r6
      0035E0 74 07            [12] 1670 	mov	a,#0x07
      0035E2 9F               [12] 1671 	subb	a,r7
      0035E3 50 20            [24] 1672 	jnc	00120$
                                   1673 ;	main.c:357: printf("Invalid buffer address. The address should be between 0 and 7FF.\r\n");
      0035E5 C0 07            [24] 1674 	push	ar7
      0035E7 C0 06            [24] 1675 	push	ar6
      0035E9 74 8F            [12] 1676 	mov	a,#___str_10
      0035EB C0 E0            [24] 1677 	push	acc
      0035ED 74 44            [12] 1678 	mov	a,#(___str_10 >> 8)
      0035EF C0 E0            [24] 1679 	push	acc
      0035F1 74 80            [12] 1680 	mov	a,#0x80
      0035F3 C0 E0            [24] 1681 	push	acc
      0035F5 12 3B 78         [24] 1682 	lcall	_printf
      0035F8 15 81            [12] 1683 	dec	sp
      0035FA 15 81            [12] 1684 	dec	sp
      0035FC 15 81            [12] 1685 	dec	sp
      0035FE D0 06            [24] 1686 	pop	ar6
      003600 D0 07            [24] 1687 	pop	ar7
                                   1688 ;	main.c:358: break;
      003602 02 34 C6         [24] 1689 	ljmp	00212$
      003605                       1690 00120$:
                                   1691 ;	main.c:361: printf("Enter the data byte to write:\r\n");
      003605 C0 07            [24] 1692 	push	ar7
      003607 C0 06            [24] 1693 	push	ar6
      003609 74 D2            [12] 1694 	mov	a,#___str_11
      00360B C0 E0            [24] 1695 	push	acc
      00360D 74 44            [12] 1696 	mov	a,#(___str_11 >> 8)
      00360F C0 E0            [24] 1697 	push	acc
      003611 74 80            [12] 1698 	mov	a,#0x80
      003613 C0 E0            [24] 1699 	push	acc
      003615 12 3B 78         [24] 1700 	lcall	_printf
      003618 15 81            [12] 1701 	dec	sp
      00361A 15 81            [12] 1702 	dec	sp
      00361C 15 81            [12] 1703 	dec	sp
      00361E D0 06            [24] 1704 	pop	ar6
      003620 D0 07            [24] 1705 	pop	ar7
                                   1706 ;	main.c:363: while (1) {
      003622                       1707 00137$:
                                   1708 ;	main.c:364: ch = getchar();
      003622 C0 07            [24] 1709 	push	ar7
      003624 C0 06            [24] 1710 	push	ar6
      003626 12 30 62         [24] 1711 	lcall	_getchar
      003629 AC 82            [24] 1712 	mov	r4,dpl
      00362B D0 06            [24] 1713 	pop	ar6
      00362D D0 07            [24] 1714 	pop	ar7
                                   1715 ;	main.c:366: if ((int)ch == 13) { // Check until carriage return
      00362F 8C 03            [24] 1716 	mov	ar3,r4
      003631 7D 00            [12] 1717 	mov	r5,#0x00
      003633 BB 0D 05         [24] 1718 	cjne	r3,#0x0d,00500$
      003636 BD 00 02         [24] 1719 	cjne	r5,#0x00,00500$
      003639 80 6E            [24] 1720 	sjmp	00138$
      00363B                       1721 00500$:
                                   1722 ;	main.c:370: if ((ch >= '0') && (ch <= '9')) {
      00363B BC 30 00         [24] 1723 	cjne	r4,#0x30,00501$
      00363E                       1724 00501$:
      00363E 40 0F            [24] 1725 	jc	00133$
      003640 EC               [12] 1726 	mov	a,r4
      003641 24 C6            [12] 1727 	add	a,#0xff - 0x39
      003643 40 0A            [24] 1728 	jc	00133$
                                   1729 ;	main.c:371: digit = ch - '0';
      003645 EB               [12] 1730 	mov	a,r3
      003646 24 D0            [12] 1731 	add	a,#0xd0
      003648 F9               [12] 1732 	mov	r1,a
      003649 ED               [12] 1733 	mov	a,r5
      00364A 34 FF            [12] 1734 	addc	a,#0xff
      00364C FA               [12] 1735 	mov	r2,a
      00364D 80 3E            [24] 1736 	sjmp	00134$
      00364F                       1737 00133$:
                                   1738 ;	main.c:372: } else if ((ch >= 'A') && (ch <= 'F')) {
      00364F BC 41 00         [24] 1739 	cjne	r4,#0x41,00504$
      003652                       1740 00504$:
      003652 40 0F            [24] 1741 	jc	00129$
      003654 EC               [12] 1742 	mov	a,r4
      003655 24 B9            [12] 1743 	add	a,#0xff - 0x46
      003657 40 0A            [24] 1744 	jc	00129$
                                   1745 ;	main.c:373: digit = ch - 7 - '0';
      003659 EB               [12] 1746 	mov	a,r3
      00365A 24 C9            [12] 1747 	add	a,#0xc9
      00365C F9               [12] 1748 	mov	r1,a
      00365D ED               [12] 1749 	mov	a,r5
      00365E 34 FF            [12] 1750 	addc	a,#0xff
      003660 FA               [12] 1751 	mov	r2,a
      003661 80 2A            [24] 1752 	sjmp	00134$
      003663                       1753 00129$:
                                   1754 ;	main.c:374: } else if ((ch >= 'a') && (ch <= 'f')) {
      003663 BC 61 00         [24] 1755 	cjne	r4,#0x61,00507$
      003666                       1756 00507$:
      003666 40 0F            [24] 1757 	jc	00125$
      003668 EC               [12] 1758 	mov	a,r4
      003669 24 99            [12] 1759 	add	a,#0xff - 0x66
      00366B 40 0A            [24] 1760 	jc	00125$
                                   1761 ;	main.c:375: digit = ch - 32 - 7 - '0';
      00366D EB               [12] 1762 	mov	a,r3
      00366E 24 A9            [12] 1763 	add	a,#0xa9
      003670 F9               [12] 1764 	mov	r1,a
      003671 ED               [12] 1765 	mov	a,r5
      003672 34 FF            [12] 1766 	addc	a,#0xff
      003674 FA               [12] 1767 	mov	r2,a
      003675 80 16            [24] 1768 	sjmp	00134$
      003677                       1769 00125$:
                                   1770 ;	main.c:377: printf("Invalid input. Please enter 0-9, A-F or a-f only.\r\n");
      003677 74 43            [12] 1771 	mov	a,#___str_8
      003679 C0 E0            [24] 1772 	push	acc
      00367B 74 44            [12] 1773 	mov	a,#(___str_8 >> 8)
      00367D C0 E0            [24] 1774 	push	acc
      00367F 74 80            [12] 1775 	mov	a,#0x80
      003681 C0 E0            [24] 1776 	push	acc
      003683 12 3B 78         [24] 1777 	lcall	_printf
      003686 15 81            [12] 1778 	dec	sp
      003688 15 81            [12] 1779 	dec	sp
      00368A 15 81            [12] 1780 	dec	sp
                                   1781 ;	main.c:378: return;
      00368C 22               [24] 1782 	ret
      00368D                       1783 00134$:
                                   1784 ;	main.c:380: data = data * 16 + digit;
      00368D AC 11            [24] 1785 	mov	r4,_main_data_131072_92
      00368F E5 12            [12] 1786 	mov	a,(_main_data_131072_92 + 1)
      003691 C4               [12] 1787 	swap	a
      003692 54 F0            [12] 1788 	anl	a,#0xf0
      003694 CC               [12] 1789 	xch	a,r4
      003695 C4               [12] 1790 	swap	a
      003696 CC               [12] 1791 	xch	a,r4
      003697 6C               [12] 1792 	xrl	a,r4
      003698 CC               [12] 1793 	xch	a,r4
      003699 54 F0            [12] 1794 	anl	a,#0xf0
      00369B CC               [12] 1795 	xch	a,r4
      00369C 6C               [12] 1796 	xrl	a,r4
      00369D FD               [12] 1797 	mov	r5,a
      00369E E9               [12] 1798 	mov	a,r1
      00369F 2C               [12] 1799 	add	a,r4
      0036A0 F5 11            [12] 1800 	mov	_main_data_131072_92,a
      0036A2 EA               [12] 1801 	mov	a,r2
      0036A3 3D               [12] 1802 	addc	a,r5
      0036A4 F5 12            [12] 1803 	mov	(_main_data_131072_92 + 1),a
      0036A6 02 36 22         [24] 1804 	ljmp	00137$
      0036A9                       1805 00138$:
                                   1806 ;	main.c:384: printf("Entered data: 0x%x\r\n", data);
      0036A9 C0 07            [24] 1807 	push	ar7
      0036AB C0 06            [24] 1808 	push	ar6
      0036AD C0 11            [24] 1809 	push	_main_data_131072_92
      0036AF C0 12            [24] 1810 	push	(_main_data_131072_92 + 1)
      0036B1 74 F2            [12] 1811 	mov	a,#___str_12
      0036B3 C0 E0            [24] 1812 	push	acc
      0036B5 74 44            [12] 1813 	mov	a,#(___str_12 >> 8)
      0036B7 C0 E0            [24] 1814 	push	acc
      0036B9 74 80            [12] 1815 	mov	a,#0x80
      0036BB C0 E0            [24] 1816 	push	acc
      0036BD 12 3B 78         [24] 1817 	lcall	_printf
      0036C0 E5 81            [12] 1818 	mov	a,sp
      0036C2 24 FB            [12] 1819 	add	a,#0xfb
      0036C4 F5 81            [12] 1820 	mov	sp,a
      0036C6 D0 06            [24] 1821 	pop	ar6
      0036C8 D0 07            [24] 1822 	pop	ar7
                                   1823 ;	main.c:387: if ((data < 0x0) || (data > 0xFF)) {
      0036CA C3               [12] 1824 	clr	c
      0036CB 74 FF            [12] 1825 	mov	a,#0xff
      0036CD 95 11            [12] 1826 	subb	a,_main_data_131072_92
      0036CF E4               [12] 1827 	clr	a
      0036D0 95 12            [12] 1828 	subb	a,(_main_data_131072_92 + 1)
      0036D2 50 20            [24] 1829 	jnc	00140$
                                   1830 ;	main.c:388: printf("Invalid buffer data. The data should be between 0 and FF.\r\n");
      0036D4 C0 07            [24] 1831 	push	ar7
      0036D6 C0 06            [24] 1832 	push	ar6
      0036D8 74 07            [12] 1833 	mov	a,#___str_13
      0036DA C0 E0            [24] 1834 	push	acc
      0036DC 74 45            [12] 1835 	mov	a,#(___str_13 >> 8)
      0036DE C0 E0            [24] 1836 	push	acc
      0036E0 74 80            [12] 1837 	mov	a,#0x80
      0036E2 C0 E0            [24] 1838 	push	acc
      0036E4 12 3B 78         [24] 1839 	lcall	_printf
      0036E7 15 81            [12] 1840 	dec	sp
      0036E9 15 81            [12] 1841 	dec	sp
      0036EB 15 81            [12] 1842 	dec	sp
      0036ED D0 06            [24] 1843 	pop	ar6
      0036EF D0 07            [24] 1844 	pop	ar7
                                   1845 ;	main.c:389: break;
      0036F1 02 34 C6         [24] 1846 	ljmp	00212$
      0036F4                       1847 00140$:
                                   1848 ;	main.c:392: eebytew(addr, data);
      0036F4 85 11 08         [24] 1849 	mov	_eebytew_PARM_2,_main_data_131072_92
      0036F7 8E 82            [24] 1850 	mov	dpl,r6
      0036F9 8F 83            [24] 1851 	mov	dph,r7
      0036FB C0 07            [24] 1852 	push	ar7
      0036FD C0 06            [24] 1853 	push	ar6
      0036FF 12 31 DB         [24] 1854 	lcall	_eebytew
      003702 D0 06            [24] 1855 	pop	ar6
      003704 D0 07            [24] 1856 	pop	ar7
                                   1857 ;	main.c:393: break;
      003706 02 34 C6         [24] 1858 	ljmp	00212$
                                   1859 ;	main.c:396: case 'r':
      003709                       1860 00142$:
                                   1861 ;	main.c:397: printf("Enter the address location to read the data from : \r\n");
      003709 C0 07            [24] 1862 	push	ar7
      00370B C0 06            [24] 1863 	push	ar6
      00370D 74 43            [12] 1864 	mov	a,#___str_14
      00370F C0 E0            [24] 1865 	push	acc
      003711 74 45            [12] 1866 	mov	a,#(___str_14 >> 8)
      003713 C0 E0            [24] 1867 	push	acc
      003715 74 80            [12] 1868 	mov	a,#0x80
      003717 C0 E0            [24] 1869 	push	acc
      003719 12 3B 78         [24] 1870 	lcall	_printf
      00371C 15 81            [12] 1871 	dec	sp
      00371E 15 81            [12] 1872 	dec	sp
      003720 15 81            [12] 1873 	dec	sp
      003722 D0 06            [24] 1874 	pop	ar6
      003724 D0 07            [24] 1875 	pop	ar7
                                   1876 ;	main.c:398: while (1) {
      003726                       1877 00158$:
                                   1878 ;	main.c:399: ch = getchar();
      003726 C0 07            [24] 1879 	push	ar7
      003728 C0 06            [24] 1880 	push	ar6
      00372A 12 30 62         [24] 1881 	lcall	_getchar
      00372D AC 82            [24] 1882 	mov	r4,dpl
      00372F D0 06            [24] 1883 	pop	ar6
      003731 D0 07            [24] 1884 	pop	ar7
                                   1885 ;	main.c:401: if ((int)ch == 13) { // Check until carriage return
      003733 8C 03            [24] 1886 	mov	ar3,r4
      003735 7D 00            [12] 1887 	mov	r5,#0x00
      003737 BB 0D 05         [24] 1888 	cjne	r3,#0x0d,00511$
      00373A BD 00 02         [24] 1889 	cjne	r5,#0x00,00511$
      00373D 80 6E            [24] 1890 	sjmp	00159$
      00373F                       1891 00511$:
                                   1892 ;	main.c:405: if ((ch >= '0') && (ch <= '9')) {
      00373F BC 30 00         [24] 1893 	cjne	r4,#0x30,00512$
      003742                       1894 00512$:
      003742 40 0F            [24] 1895 	jc	00154$
      003744 EC               [12] 1896 	mov	a,r4
      003745 24 C6            [12] 1897 	add	a,#0xff - 0x39
      003747 40 0A            [24] 1898 	jc	00154$
                                   1899 ;	main.c:406: digit = ch - '0';
      003749 EB               [12] 1900 	mov	a,r3
      00374A 24 D0            [12] 1901 	add	a,#0xd0
      00374C F9               [12] 1902 	mov	r1,a
      00374D ED               [12] 1903 	mov	a,r5
      00374E 34 FF            [12] 1904 	addc	a,#0xff
      003750 FA               [12] 1905 	mov	r2,a
      003751 80 3E            [24] 1906 	sjmp	00155$
      003753                       1907 00154$:
                                   1908 ;	main.c:407: } else if ((ch >= 'A') && (ch <= 'F')) {
      003753 BC 41 00         [24] 1909 	cjne	r4,#0x41,00515$
      003756                       1910 00515$:
      003756 40 0F            [24] 1911 	jc	00150$
      003758 EC               [12] 1912 	mov	a,r4
      003759 24 B9            [12] 1913 	add	a,#0xff - 0x46
      00375B 40 0A            [24] 1914 	jc	00150$
                                   1915 ;	main.c:408: digit = ch - 7 - '0';
      00375D EB               [12] 1916 	mov	a,r3
      00375E 24 C9            [12] 1917 	add	a,#0xc9
      003760 F9               [12] 1918 	mov	r1,a
      003761 ED               [12] 1919 	mov	a,r5
      003762 34 FF            [12] 1920 	addc	a,#0xff
      003764 FA               [12] 1921 	mov	r2,a
      003765 80 2A            [24] 1922 	sjmp	00155$
      003767                       1923 00150$:
                                   1924 ;	main.c:409: } else if ((ch >= 'a') && (ch <= 'f')) {
      003767 BC 61 00         [24] 1925 	cjne	r4,#0x61,00518$
      00376A                       1926 00518$:
      00376A 40 0F            [24] 1927 	jc	00146$
      00376C EC               [12] 1928 	mov	a,r4
      00376D 24 99            [12] 1929 	add	a,#0xff - 0x66
      00376F 40 0A            [24] 1930 	jc	00146$
                                   1931 ;	main.c:410: digit = ch - 32 - 7 - '0';
      003771 EB               [12] 1932 	mov	a,r3
      003772 24 A9            [12] 1933 	add	a,#0xa9
      003774 F9               [12] 1934 	mov	r1,a
      003775 ED               [12] 1935 	mov	a,r5
      003776 34 FF            [12] 1936 	addc	a,#0xff
      003778 FA               [12] 1937 	mov	r2,a
      003779 80 16            [24] 1938 	sjmp	00155$
      00377B                       1939 00146$:
                                   1940 ;	main.c:412: printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
      00377B 74 79            [12] 1941 	mov	a,#___str_15
      00377D C0 E0            [24] 1942 	push	acc
      00377F 74 45            [12] 1943 	mov	a,#(___str_15 >> 8)
      003781 C0 E0            [24] 1944 	push	acc
      003783 74 80            [12] 1945 	mov	a,#0x80
      003785 C0 E0            [24] 1946 	push	acc
      003787 12 3B 78         [24] 1947 	lcall	_printf
      00378A 15 81            [12] 1948 	dec	sp
      00378C 15 81            [12] 1949 	dec	sp
      00378E 15 81            [12] 1950 	dec	sp
                                   1951 ;	main.c:413: return;
      003790 22               [24] 1952 	ret
      003791                       1953 00155$:
                                   1954 ;	main.c:415: addr1 = addr1 * 16 + digit;
      003791 AC 0B            [24] 1955 	mov	r4,_main_addr1_131072_92
      003793 E5 0C            [12] 1956 	mov	a,(_main_addr1_131072_92 + 1)
      003795 C4               [12] 1957 	swap	a
      003796 54 F0            [12] 1958 	anl	a,#0xf0
      003798 CC               [12] 1959 	xch	a,r4
      003799 C4               [12] 1960 	swap	a
      00379A CC               [12] 1961 	xch	a,r4
      00379B 6C               [12] 1962 	xrl	a,r4
      00379C CC               [12] 1963 	xch	a,r4
      00379D 54 F0            [12] 1964 	anl	a,#0xf0
      00379F CC               [12] 1965 	xch	a,r4
      0037A0 6C               [12] 1966 	xrl	a,r4
      0037A1 FD               [12] 1967 	mov	r5,a
      0037A2 E9               [12] 1968 	mov	a,r1
      0037A3 2C               [12] 1969 	add	a,r4
      0037A4 F5 0B            [12] 1970 	mov	_main_addr1_131072_92,a
      0037A6 EA               [12] 1971 	mov	a,r2
      0037A7 3D               [12] 1972 	addc	a,r5
      0037A8 F5 0C            [12] 1973 	mov	(_main_addr1_131072_92 + 1),a
      0037AA 02 37 26         [24] 1974 	ljmp	00158$
      0037AD                       1975 00159$:
                                   1976 ;	main.c:419: printf("Entered address: 0x%x\r\n", addr1);
      0037AD C0 07            [24] 1977 	push	ar7
      0037AF C0 06            [24] 1978 	push	ar6
      0037B1 C0 0B            [24] 1979 	push	_main_addr1_131072_92
      0037B3 C0 0C            [24] 1980 	push	(_main_addr1_131072_92 + 1)
      0037B5 74 77            [12] 1981 	mov	a,#___str_9
      0037B7 C0 E0            [24] 1982 	push	acc
      0037B9 74 44            [12] 1983 	mov	a,#(___str_9 >> 8)
      0037BB C0 E0            [24] 1984 	push	acc
      0037BD 74 80            [12] 1985 	mov	a,#0x80
      0037BF C0 E0            [24] 1986 	push	acc
      0037C1 12 3B 78         [24] 1987 	lcall	_printf
      0037C4 E5 81            [12] 1988 	mov	a,sp
      0037C6 24 FB            [12] 1989 	add	a,#0xfb
      0037C8 F5 81            [12] 1990 	mov	sp,a
      0037CA D0 06            [24] 1991 	pop	ar6
      0037CC D0 07            [24] 1992 	pop	ar7
                                   1993 ;	main.c:422: if ((addr1 < 0x0) || (addr1 > 0x7FF)) {
      0037CE C3               [12] 1994 	clr	c
      0037CF 74 FF            [12] 1995 	mov	a,#0xff
      0037D1 95 0B            [12] 1996 	subb	a,_main_addr1_131072_92
      0037D3 74 07            [12] 1997 	mov	a,#0x07
      0037D5 95 0C            [12] 1998 	subb	a,(_main_addr1_131072_92 + 1)
      0037D7 50 16            [24] 1999 	jnc	00161$
                                   2000 ;	main.c:423: printf("Invalid buffer address. The address should be between 0 and 7FF.\r\n");
      0037D9 74 8F            [12] 2001 	mov	a,#___str_10
      0037DB C0 E0            [24] 2002 	push	acc
      0037DD 74 44            [12] 2003 	mov	a,#(___str_10 >> 8)
      0037DF C0 E0            [24] 2004 	push	acc
      0037E1 74 80            [12] 2005 	mov	a,#0x80
      0037E3 C0 E0            [24] 2006 	push	acc
      0037E5 12 3B 78         [24] 2007 	lcall	_printf
      0037E8 15 81            [12] 2008 	dec	sp
      0037EA 15 81            [12] 2009 	dec	sp
      0037EC 15 81            [12] 2010 	dec	sp
                                   2011 ;	main.c:424: return;
      0037EE 22               [24] 2012 	ret
      0037EF                       2013 00161$:
                                   2014 ;	main.c:426: unsigned char rd = eebyter(addr1);
      0037EF 85 0B 82         [24] 2015 	mov	dpl,_main_addr1_131072_92
      0037F2 85 0C 83         [24] 2016 	mov	dph,(_main_addr1_131072_92 + 1)
      0037F5 C0 07            [24] 2017 	push	ar7
      0037F7 C0 06            [24] 2018 	push	ar6
      0037F9 12 32 C0         [24] 2019 	lcall	_eebyter
      0037FC AD 82            [24] 2020 	mov	r5,dpl
                                   2021 ;	main.c:427: printf("read data: 0x%x\r\n", rd);
      0037FE 7C 00            [12] 2022 	mov	r4,#0x00
      003800 C0 05            [24] 2023 	push	ar5
      003802 C0 04            [24] 2024 	push	ar4
      003804 74 A8            [12] 2025 	mov	a,#___str_16
      003806 C0 E0            [24] 2026 	push	acc
      003808 74 45            [12] 2027 	mov	a,#(___str_16 >> 8)
      00380A C0 E0            [24] 2028 	push	acc
      00380C 74 80            [12] 2029 	mov	a,#0x80
      00380E C0 E0            [24] 2030 	push	acc
      003810 12 3B 78         [24] 2031 	lcall	_printf
      003813 E5 81            [12] 2032 	mov	a,sp
      003815 24 FB            [12] 2033 	add	a,#0xfb
      003817 F5 81            [12] 2034 	mov	sp,a
      003819 D0 06            [24] 2035 	pop	ar6
      00381B D0 07            [24] 2036 	pop	ar7
                                   2037 ;	main.c:428: break;
      00381D 02 34 C6         [24] 2038 	ljmp	00212$
                                   2039 ;	main.c:430: case 'h':
      003820                       2040 00163$:
                                   2041 ;	main.c:431: printf("Enter the start address for dump:\r\n");
      003820 74 BA            [12] 2042 	mov	a,#___str_17
      003822 C0 E0            [24] 2043 	push	acc
      003824 74 45            [12] 2044 	mov	a,#(___str_17 >> 8)
      003826 C0 E0            [24] 2045 	push	acc
      003828 74 80            [12] 2046 	mov	a,#0x80
      00382A C0 E0            [24] 2047 	push	acc
      00382C 12 3B 78         [24] 2048 	lcall	_printf
      00382F 15 81            [12] 2049 	dec	sp
      003831 15 81            [12] 2050 	dec	sp
      003833 15 81            [12] 2051 	dec	sp
                                   2052 ;	main.c:432: while (1) {
      003835                       2053 00179$:
                                   2054 ;	main.c:433: ch = getchar();
      003835 12 30 62         [24] 2055 	lcall	_getchar
      003838 AC 82            [24] 2056 	mov	r4,dpl
                                   2057 ;	main.c:435: if ((int)ch == 13) { // Check until carriage return
      00383A 8C 05            [24] 2058 	mov	ar5,r4
      00383C 7B 00            [12] 2059 	mov	r3,#0x00
      00383E BD 0D 05         [24] 2060 	cjne	r5,#0x0d,00522$
      003841 BB 00 02         [24] 2061 	cjne	r3,#0x00,00522$
      003844 80 74            [24] 2062 	sjmp	00180$
      003846                       2063 00522$:
                                   2064 ;	main.c:439: if ((ch >= '0') && (ch <= '9')) {
      003846 BC 30 00         [24] 2065 	cjne	r4,#0x30,00523$
      003849                       2066 00523$:
      003849 40 0F            [24] 2067 	jc	00175$
      00384B EC               [12] 2068 	mov	a,r4
      00384C 24 C6            [12] 2069 	add	a,#0xff - 0x39
      00384E 40 0A            [24] 2070 	jc	00175$
                                   2071 ;	main.c:440: digit = ch - '0';
      003850 ED               [12] 2072 	mov	a,r5
      003851 24 D0            [12] 2073 	add	a,#0xd0
      003853 FD               [12] 2074 	mov	r5,a
      003854 EB               [12] 2075 	mov	a,r3
      003855 34 FF            [12] 2076 	addc	a,#0xff
      003857 FB               [12] 2077 	mov	r3,a
      003858 80 44            [24] 2078 	sjmp	00176$
      00385A                       2079 00175$:
                                   2080 ;	main.c:441: } else if ((ch >= 'A') && (ch <= 'F')) {
      00385A BC 41 00         [24] 2081 	cjne	r4,#0x41,00526$
      00385D                       2082 00526$:
      00385D 40 13            [24] 2083 	jc	00171$
      00385F EC               [12] 2084 	mov	a,r4
      003860 24 B9            [12] 2085 	add	a,#0xff - 0x46
      003862 40 0E            [24] 2086 	jc	00171$
                                   2087 ;	main.c:442: digit = ch - 7 - '0';
      003864 8C 01            [24] 2088 	mov	ar1,r4
      003866 7A 00            [12] 2089 	mov	r2,#0x00
      003868 E9               [12] 2090 	mov	a,r1
      003869 24 C9            [12] 2091 	add	a,#0xc9
      00386B FD               [12] 2092 	mov	r5,a
      00386C EA               [12] 2093 	mov	a,r2
      00386D 34 FF            [12] 2094 	addc	a,#0xff
      00386F FB               [12] 2095 	mov	r3,a
      003870 80 2C            [24] 2096 	sjmp	00176$
      003872                       2097 00171$:
                                   2098 ;	main.c:443: } else if ((ch >= 'a') && (ch <= 'f')) {
      003872 BC 61 00         [24] 2099 	cjne	r4,#0x61,00529$
      003875                       2100 00529$:
      003875 40 11            [24] 2101 	jc	00167$
      003877 EC               [12] 2102 	mov	a,r4
      003878 24 99            [12] 2103 	add	a,#0xff - 0x66
      00387A 40 0C            [24] 2104 	jc	00167$
                                   2105 ;	main.c:444: digit = ch - 32 - 7 - '0';
      00387C 7A 00            [12] 2106 	mov	r2,#0x00
      00387E EC               [12] 2107 	mov	a,r4
      00387F 24 A9            [12] 2108 	add	a,#0xa9
      003881 FD               [12] 2109 	mov	r5,a
      003882 EA               [12] 2110 	mov	a,r2
      003883 34 FF            [12] 2111 	addc	a,#0xff
      003885 FB               [12] 2112 	mov	r3,a
      003886 80 16            [24] 2113 	sjmp	00176$
      003888                       2114 00167$:
                                   2115 ;	main.c:446: printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
      003888 74 79            [12] 2116 	mov	a,#___str_15
      00388A C0 E0            [24] 2117 	push	acc
      00388C 74 45            [12] 2118 	mov	a,#(___str_15 >> 8)
      00388E C0 E0            [24] 2119 	push	acc
      003890 74 80            [12] 2120 	mov	a,#0x80
      003892 C0 E0            [24] 2121 	push	acc
      003894 12 3B 78         [24] 2122 	lcall	_printf
      003897 15 81            [12] 2123 	dec	sp
      003899 15 81            [12] 2124 	dec	sp
      00389B 15 81            [12] 2125 	dec	sp
                                   2126 ;	main.c:447: return;
      00389D 22               [24] 2127 	ret
      00389E                       2128 00176$:
                                   2129 ;	main.c:449: start_addr = start_addr * 16 + digit;
      00389E AA 0D            [24] 2130 	mov	r2,_main_start_addr_131072_92
      0038A0 E5 0E            [12] 2131 	mov	a,(_main_start_addr_131072_92 + 1)
      0038A2 C4               [12] 2132 	swap	a
      0038A3 54 F0            [12] 2133 	anl	a,#0xf0
      0038A5 CA               [12] 2134 	xch	a,r2
      0038A6 C4               [12] 2135 	swap	a
      0038A7 CA               [12] 2136 	xch	a,r2
      0038A8 6A               [12] 2137 	xrl	a,r2
      0038A9 CA               [12] 2138 	xch	a,r2
      0038AA 54 F0            [12] 2139 	anl	a,#0xf0
      0038AC CA               [12] 2140 	xch	a,r2
      0038AD 6A               [12] 2141 	xrl	a,r2
      0038AE FC               [12] 2142 	mov	r4,a
      0038AF ED               [12] 2143 	mov	a,r5
      0038B0 2A               [12] 2144 	add	a,r2
      0038B1 F5 0D            [12] 2145 	mov	_main_start_addr_131072_92,a
      0038B3 EB               [12] 2146 	mov	a,r3
      0038B4 3C               [12] 2147 	addc	a,r4
      0038B5 F5 0E            [12] 2148 	mov	(_main_start_addr_131072_92 + 1),a
      0038B7 02 38 35         [24] 2149 	ljmp	00179$
      0038BA                       2150 00180$:
                                   2151 ;	main.c:453: printf("Entered start address: 0x%x\r\n", start_addr);
      0038BA C0 0D            [24] 2152 	push	_main_start_addr_131072_92
      0038BC C0 0E            [24] 2153 	push	(_main_start_addr_131072_92 + 1)
      0038BE 74 DE            [12] 2154 	mov	a,#___str_18
      0038C0 C0 E0            [24] 2155 	push	acc
      0038C2 74 45            [12] 2156 	mov	a,#(___str_18 >> 8)
      0038C4 C0 E0            [24] 2157 	push	acc
      0038C6 74 80            [12] 2158 	mov	a,#0x80
      0038C8 C0 E0            [24] 2159 	push	acc
      0038CA 12 3B 78         [24] 2160 	lcall	_printf
      0038CD E5 81            [12] 2161 	mov	a,sp
      0038CF 24 FB            [12] 2162 	add	a,#0xfb
      0038D1 F5 81            [12] 2163 	mov	sp,a
                                   2164 ;	main.c:456: if ((start_addr < 0x0) || (start_addr > 0x7FF)) {
      0038D3 C3               [12] 2165 	clr	c
      0038D4 74 FF            [12] 2166 	mov	a,#0xff
      0038D6 95 0D            [12] 2167 	subb	a,_main_start_addr_131072_92
      0038D8 74 07            [12] 2168 	mov	a,#0x07
      0038DA 95 0E            [12] 2169 	subb	a,(_main_start_addr_131072_92 + 1)
      0038DC 50 16            [24] 2170 	jnc	00182$
                                   2171 ;	main.c:457: printf("Invalid start address. The address should be between 0 and 7FF.\r\n");
      0038DE 74 FC            [12] 2172 	mov	a,#___str_19
      0038E0 C0 E0            [24] 2173 	push	acc
      0038E2 74 45            [12] 2174 	mov	a,#(___str_19 >> 8)
      0038E4 C0 E0            [24] 2175 	push	acc
      0038E6 74 80            [12] 2176 	mov	a,#0x80
      0038E8 C0 E0            [24] 2177 	push	acc
      0038EA 12 3B 78         [24] 2178 	lcall	_printf
      0038ED 15 81            [12] 2179 	dec	sp
      0038EF 15 81            [12] 2180 	dec	sp
      0038F1 15 81            [12] 2181 	dec	sp
                                   2182 ;	main.c:458: return;
      0038F3 22               [24] 2183 	ret
      0038F4                       2184 00182$:
                                   2185 ;	main.c:461: printf("Enter the end address for dump:\r\n");
      0038F4 74 3E            [12] 2186 	mov	a,#___str_20
      0038F6 C0 E0            [24] 2187 	push	acc
      0038F8 74 46            [12] 2188 	mov	a,#(___str_20 >> 8)
      0038FA C0 E0            [24] 2189 	push	acc
      0038FC 74 80            [12] 2190 	mov	a,#0x80
      0038FE C0 E0            [24] 2191 	push	acc
      003900 12 3B 78         [24] 2192 	lcall	_printf
      003903 15 81            [12] 2193 	dec	sp
      003905 15 81            [12] 2194 	dec	sp
      003907 15 81            [12] 2195 	dec	sp
                                   2196 ;	main.c:462: while (1) {
      003909                       2197 00199$:
                                   2198 ;	main.c:463: ch = getchar();
      003909 12 30 62         [24] 2199 	lcall	_getchar
      00390C AC 82            [24] 2200 	mov	r4,dpl
                                   2201 ;	main.c:465: if ((int)ch == 13) { // Check until carriage return
      00390E 8C 03            [24] 2202 	mov	ar3,r4
      003910 7D 00            [12] 2203 	mov	r5,#0x00
      003912 BB 0D 05         [24] 2204 	cjne	r3,#0x0d,00533$
      003915 BD 00 02         [24] 2205 	cjne	r5,#0x00,00533$
      003918 80 6D            [24] 2206 	sjmp	00200$
      00391A                       2207 00533$:
                                   2208 ;	main.c:469: if ((ch >= '0') && (ch <= '9')) {
      00391A BC 30 00         [24] 2209 	cjne	r4,#0x30,00534$
      00391D                       2210 00534$:
      00391D 40 0F            [24] 2211 	jc	00195$
      00391F EC               [12] 2212 	mov	a,r4
      003920 24 C6            [12] 2213 	add	a,#0xff - 0x39
      003922 40 0A            [24] 2214 	jc	00195$
                                   2215 ;	main.c:470: digit = ch - '0';
      003924 EB               [12] 2216 	mov	a,r3
      003925 24 D0            [12] 2217 	add	a,#0xd0
      003927 FA               [12] 2218 	mov	r2,a
      003928 ED               [12] 2219 	mov	a,r5
      003929 34 FF            [12] 2220 	addc	a,#0xff
      00392B F9               [12] 2221 	mov	r1,a
      00392C 80 3E            [24] 2222 	sjmp	00196$
      00392E                       2223 00195$:
                                   2224 ;	main.c:471: } else if ((ch >= 'A') && (ch <= 'F')) {
      00392E BC 41 00         [24] 2225 	cjne	r4,#0x41,00537$
      003931                       2226 00537$:
      003931 40 0F            [24] 2227 	jc	00191$
      003933 EC               [12] 2228 	mov	a,r4
      003934 24 B9            [12] 2229 	add	a,#0xff - 0x46
      003936 40 0A            [24] 2230 	jc	00191$
                                   2231 ;	main.c:472: digit = ch - 7 - '0';
      003938 EB               [12] 2232 	mov	a,r3
      003939 24 C9            [12] 2233 	add	a,#0xc9
      00393B FA               [12] 2234 	mov	r2,a
      00393C ED               [12] 2235 	mov	a,r5
      00393D 34 FF            [12] 2236 	addc	a,#0xff
      00393F F9               [12] 2237 	mov	r1,a
      003940 80 2A            [24] 2238 	sjmp	00196$
      003942                       2239 00191$:
                                   2240 ;	main.c:473: } else if ((ch >= 'a') && (ch <= 'f')) {
      003942 BC 61 00         [24] 2241 	cjne	r4,#0x61,00540$
      003945                       2242 00540$:
      003945 40 0F            [24] 2243 	jc	00187$
      003947 EC               [12] 2244 	mov	a,r4
      003948 24 99            [12] 2245 	add	a,#0xff - 0x66
      00394A 40 0A            [24] 2246 	jc	00187$
                                   2247 ;	main.c:474: digit = ch - 32 - 7 - '0';
      00394C EB               [12] 2248 	mov	a,r3
      00394D 24 A9            [12] 2249 	add	a,#0xa9
      00394F FA               [12] 2250 	mov	r2,a
      003950 ED               [12] 2251 	mov	a,r5
      003951 34 FF            [12] 2252 	addc	a,#0xff
      003953 F9               [12] 2253 	mov	r1,a
      003954 80 16            [24] 2254 	sjmp	00196$
      003956                       2255 00187$:
                                   2256 ;	main.c:476: printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
      003956 74 79            [12] 2257 	mov	a,#___str_15
      003958 C0 E0            [24] 2258 	push	acc
      00395A 74 45            [12] 2259 	mov	a,#(___str_15 >> 8)
      00395C C0 E0            [24] 2260 	push	acc
      00395E 74 80            [12] 2261 	mov	a,#0x80
      003960 C0 E0            [24] 2262 	push	acc
      003962 12 3B 78         [24] 2263 	lcall	_printf
      003965 15 81            [12] 2264 	dec	sp
      003967 15 81            [12] 2265 	dec	sp
      003969 15 81            [12] 2266 	dec	sp
                                   2267 ;	main.c:477: return;
      00396B 22               [24] 2268 	ret
      00396C                       2269 00196$:
                                   2270 ;	main.c:479: end_addr = end_addr * 16 + digit;
      00396C AC 0F            [24] 2271 	mov	r4,_main_end_addr_131072_92
      00396E E5 10            [12] 2272 	mov	a,(_main_end_addr_131072_92 + 1)
      003970 C4               [12] 2273 	swap	a
      003971 54 F0            [12] 2274 	anl	a,#0xf0
      003973 CC               [12] 2275 	xch	a,r4
      003974 C4               [12] 2276 	swap	a
      003975 CC               [12] 2277 	xch	a,r4
      003976 6C               [12] 2278 	xrl	a,r4
      003977 CC               [12] 2279 	xch	a,r4
      003978 54 F0            [12] 2280 	anl	a,#0xf0
      00397A CC               [12] 2281 	xch	a,r4
      00397B 6C               [12] 2282 	xrl	a,r4
      00397C FD               [12] 2283 	mov	r5,a
      00397D EA               [12] 2284 	mov	a,r2
      00397E 2C               [12] 2285 	add	a,r4
      00397F F5 0F            [12] 2286 	mov	_main_end_addr_131072_92,a
      003981 E9               [12] 2287 	mov	a,r1
      003982 3D               [12] 2288 	addc	a,r5
      003983 F5 10            [12] 2289 	mov	(_main_end_addr_131072_92 + 1),a
      003985 80 82            [24] 2290 	sjmp	00199$
      003987                       2291 00200$:
                                   2292 ;	main.c:483: printf("Entered end address: 0x%x\r\n", end_addr);
      003987 C0 0F            [24] 2293 	push	_main_end_addr_131072_92
      003989 C0 10            [24] 2294 	push	(_main_end_addr_131072_92 + 1)
      00398B 74 60            [12] 2295 	mov	a,#___str_21
      00398D C0 E0            [24] 2296 	push	acc
      00398F 74 46            [12] 2297 	mov	a,#(___str_21 >> 8)
      003991 C0 E0            [24] 2298 	push	acc
      003993 74 80            [12] 2299 	mov	a,#0x80
      003995 C0 E0            [24] 2300 	push	acc
      003997 12 3B 78         [24] 2301 	lcall	_printf
      00399A E5 81            [12] 2302 	mov	a,sp
      00399C 24 FB            [12] 2303 	add	a,#0xfb
      00399E F5 81            [12] 2304 	mov	sp,a
                                   2305 ;	main.c:486: if ((end_addr < 0x0) || (end_addr > 0x7FF) || (end_addr < start_addr)) {
      0039A0 C3               [12] 2306 	clr	c
      0039A1 74 FF            [12] 2307 	mov	a,#0xff
      0039A3 95 0F            [12] 2308 	subb	a,_main_end_addr_131072_92
      0039A5 74 07            [12] 2309 	mov	a,#0x07
      0039A7 95 10            [12] 2310 	subb	a,(_main_end_addr_131072_92 + 1)
      0039A9 40 0A            [24] 2311 	jc	00201$
      0039AB E5 0F            [12] 2312 	mov	a,_main_end_addr_131072_92
      0039AD 95 0D            [12] 2313 	subb	a,_main_start_addr_131072_92
      0039AF E5 10            [12] 2314 	mov	a,(_main_end_addr_131072_92 + 1)
      0039B1 95 0E            [12] 2315 	subb	a,(_main_start_addr_131072_92 + 1)
      0039B3 50 16            [24] 2316 	jnc	00202$
      0039B5                       2317 00201$:
                                   2318 ;	main.c:487: printf("Invalid end address. The address should be between 0-7FF and more than the start address.\r\n");
      0039B5 74 7C            [12] 2319 	mov	a,#___str_22
      0039B7 C0 E0            [24] 2320 	push	acc
      0039B9 74 46            [12] 2321 	mov	a,#(___str_22 >> 8)
      0039BB C0 E0            [24] 2322 	push	acc
      0039BD 74 80            [12] 2323 	mov	a,#0x80
      0039BF C0 E0            [24] 2324 	push	acc
      0039C1 12 3B 78         [24] 2325 	lcall	_printf
      0039C4 15 81            [12] 2326 	dec	sp
      0039C6 15 81            [12] 2327 	dec	sp
      0039C8 15 81            [12] 2328 	dec	sp
                                   2329 ;	main.c:488: return;
      0039CA 22               [24] 2330 	ret
      0039CB                       2331 00202$:
                                   2332 ;	main.c:491: printf("%x:", start_addr);
      0039CB C0 0D            [24] 2333 	push	_main_start_addr_131072_92
      0039CD C0 0E            [24] 2334 	push	(_main_start_addr_131072_92 + 1)
      0039CF 74 D8            [12] 2335 	mov	a,#___str_23
      0039D1 C0 E0            [24] 2336 	push	acc
      0039D3 74 46            [12] 2337 	mov	a,#(___str_23 >> 8)
      0039D5 C0 E0            [24] 2338 	push	acc
      0039D7 74 80            [12] 2339 	mov	a,#0x80
      0039D9 C0 E0            [24] 2340 	push	acc
      0039DB 12 3B 78         [24] 2341 	lcall	_printf
      0039DE E5 81            [12] 2342 	mov	a,sp
      0039E0 24 FB            [12] 2343 	add	a,#0xfb
      0039E2 F5 81            [12] 2344 	mov	sp,a
                                   2345 ;	main.c:493: for (int i=0; i<end_addr - start_addr; i++)
      0039E4 E5 0F            [12] 2346 	mov	a,_main_end_addr_131072_92
      0039E6 C3               [12] 2347 	clr	c
      0039E7 95 0D            [12] 2348 	subb	a,_main_start_addr_131072_92
      0039E9 FC               [12] 2349 	mov	r4,a
      0039EA E5 10            [12] 2350 	mov	a,(_main_end_addr_131072_92 + 1)
      0039EC 95 0E            [12] 2351 	subb	a,(_main_start_addr_131072_92 + 1)
      0039EE FD               [12] 2352 	mov	r5,a
      0039EF 85 0D 09         [24] 2353 	mov	_main_addr_131072_92,_main_start_addr_131072_92
      0039F2 85 0E 0A         [24] 2354 	mov	(_main_addr_131072_92 + 1),(_main_start_addr_131072_92 + 1)
      0039F5 78 00            [12] 2355 	mov	r0,#0x00
      0039F7 79 00            [12] 2356 	mov	r1,#0x00
      0039F9                       2357 00215$:
      0039F9 88 02            [24] 2358 	mov	ar2,r0
      0039FB 89 03            [24] 2359 	mov	ar3,r1
      0039FD C3               [12] 2360 	clr	c
      0039FE EA               [12] 2361 	mov	a,r2
      0039FF 9C               [12] 2362 	subb	a,r4
      003A00 EB               [12] 2363 	mov	a,r3
      003A01 9D               [12] 2364 	subb	a,r5
      003A02 40 03            [24] 2365 	jc	00545$
      003A04 02 3A BF         [24] 2366 	ljmp	00272$
      003A07                       2367 00545$:
                                   2368 ;	main.c:495: if (i > 0 && i % 16 == 0) {
      003A07 C3               [12] 2369 	clr	c
      003A08 E4               [12] 2370 	clr	a
      003A09 98               [12] 2371 	subb	a,r0
      003A0A 74 80            [12] 2372 	mov	a,#(0x00 ^ 0x80)
      003A0C 89 F0            [24] 2373 	mov	b,r1
      003A0E 63 F0 80         [24] 2374 	xrl	b,#0x80
      003A11 95 F0            [12] 2375 	subb	a,b
      003A13 50 64            [24] 2376 	jnc	00206$
      003A15 75 15 10         [24] 2377 	mov	__modsint_PARM_2,#0x10
      003A18 75 16 00         [24] 2378 	mov	(__modsint_PARM_2 + 1),#0x00
      003A1B 88 82            [24] 2379 	mov	dpl,r0
      003A1D 89 83            [24] 2380 	mov	dph,r1
      003A1F C0 05            [24] 2381 	push	ar5
      003A21 C0 04            [24] 2382 	push	ar4
      003A23 C0 01            [24] 2383 	push	ar1
      003A25 C0 00            [24] 2384 	push	ar0
      003A27 12 42 D8         [24] 2385 	lcall	__modsint
      003A2A E5 82            [12] 2386 	mov	a,dpl
      003A2C 85 83 F0         [24] 2387 	mov	b,dph
      003A2F D0 00            [24] 2388 	pop	ar0
      003A31 D0 01            [24] 2389 	pop	ar1
      003A33 D0 04            [24] 2390 	pop	ar4
      003A35 D0 05            [24] 2391 	pop	ar5
      003A37 45 F0            [12] 2392 	orl	a,b
      003A39 70 3E            [24] 2393 	jnz	00206$
                                   2394 ;	main.c:496: printf("\r\n");  // Start a new line after every 16 bytes
      003A3B C0 05            [24] 2395 	push	ar5
      003A3D C0 04            [24] 2396 	push	ar4
      003A3F C0 01            [24] 2397 	push	ar1
      003A41 C0 00            [24] 2398 	push	ar0
      003A43 74 0B            [12] 2399 	mov	a,#___str_6
      003A45 C0 E0            [24] 2400 	push	acc
      003A47 74 44            [12] 2401 	mov	a,#(___str_6 >> 8)
      003A49 C0 E0            [24] 2402 	push	acc
      003A4B 74 80            [12] 2403 	mov	a,#0x80
      003A4D C0 E0            [24] 2404 	push	acc
      003A4F 12 3B 78         [24] 2405 	lcall	_printf
      003A52 15 81            [12] 2406 	dec	sp
      003A54 15 81            [12] 2407 	dec	sp
      003A56 15 81            [12] 2408 	dec	sp
                                   2409 ;	main.c:497: printf("%x:", addr);
      003A58 C0 09            [24] 2410 	push	_main_addr_131072_92
      003A5A C0 0A            [24] 2411 	push	(_main_addr_131072_92 + 1)
      003A5C 74 D8            [12] 2412 	mov	a,#___str_23
      003A5E C0 E0            [24] 2413 	push	acc
      003A60 74 46            [12] 2414 	mov	a,#(___str_23 >> 8)
      003A62 C0 E0            [24] 2415 	push	acc
      003A64 74 80            [12] 2416 	mov	a,#0x80
      003A66 C0 E0            [24] 2417 	push	acc
      003A68 12 3B 78         [24] 2418 	lcall	_printf
      003A6B E5 81            [12] 2419 	mov	a,sp
      003A6D 24 FB            [12] 2420 	add	a,#0xfb
      003A6F F5 81            [12] 2421 	mov	sp,a
      003A71 D0 00            [24] 2422 	pop	ar0
      003A73 D0 01            [24] 2423 	pop	ar1
      003A75 D0 04            [24] 2424 	pop	ar4
      003A77 D0 05            [24] 2425 	pop	ar5
      003A79                       2426 00206$:
                                   2427 ;	main.c:499: printf("%x ", eebyter(addr));
      003A79 85 09 82         [24] 2428 	mov	dpl,_main_addr_131072_92
      003A7C 85 0A 83         [24] 2429 	mov	dph,(_main_addr_131072_92 + 1)
      003A7F C0 05            [24] 2430 	push	ar5
      003A81 C0 04            [24] 2431 	push	ar4
      003A83 C0 01            [24] 2432 	push	ar1
      003A85 C0 00            [24] 2433 	push	ar0
      003A87 12 32 C0         [24] 2434 	lcall	_eebyter
      003A8A AB 82            [24] 2435 	mov	r3,dpl
      003A8C 7A 00            [12] 2436 	mov	r2,#0x00
      003A8E C0 03            [24] 2437 	push	ar3
      003A90 C0 02            [24] 2438 	push	ar2
      003A92 74 DC            [12] 2439 	mov	a,#___str_24
      003A94 C0 E0            [24] 2440 	push	acc
      003A96 74 46            [12] 2441 	mov	a,#(___str_24 >> 8)
      003A98 C0 E0            [24] 2442 	push	acc
      003A9A 74 80            [12] 2443 	mov	a,#0x80
      003A9C C0 E0            [24] 2444 	push	acc
      003A9E 12 3B 78         [24] 2445 	lcall	_printf
      003AA1 E5 81            [12] 2446 	mov	a,sp
      003AA3 24 FB            [12] 2447 	add	a,#0xfb
      003AA5 F5 81            [12] 2448 	mov	sp,a
      003AA7 D0 00            [24] 2449 	pop	ar0
      003AA9 D0 01            [24] 2450 	pop	ar1
      003AAB D0 04            [24] 2451 	pop	ar4
      003AAD D0 05            [24] 2452 	pop	ar5
                                   2453 ;	main.c:500: addr += 1;
      003AAF 05 09            [12] 2454 	inc	_main_addr_131072_92
      003AB1 E4               [12] 2455 	clr	a
      003AB2 B5 09 02         [24] 2456 	cjne	a,_main_addr_131072_92,00548$
      003AB5 05 0A            [12] 2457 	inc	(_main_addr_131072_92 + 1)
      003AB7                       2458 00548$:
                                   2459 ;	main.c:493: for (int i=0; i<end_addr - start_addr; i++)
      003AB7 08               [12] 2460 	inc	r0
      003AB8 B8 00 01         [24] 2461 	cjne	r0,#0x00,00549$
      003ABB 09               [12] 2462 	inc	r1
      003ABC                       2463 00549$:
      003ABC 02 39 F9         [24] 2464 	ljmp	00215$
      003ABF                       2465 00272$:
      003ABF AE 09            [24] 2466 	mov	r6,_main_addr_131072_92
      003AC1 AF 0A            [24] 2467 	mov	r7,(_main_addr_131072_92 + 1)
                                   2468 ;	main.c:502: printf("\r\n");
      003AC3 C0 07            [24] 2469 	push	ar7
      003AC5 C0 06            [24] 2470 	push	ar6
      003AC7 74 0B            [12] 2471 	mov	a,#___str_6
      003AC9 C0 E0            [24] 2472 	push	acc
      003ACB 74 44            [12] 2473 	mov	a,#(___str_6 >> 8)
      003ACD C0 E0            [24] 2474 	push	acc
      003ACF 74 80            [12] 2475 	mov	a,#0x80
      003AD1 C0 E0            [24] 2476 	push	acc
      003AD3 12 3B 78         [24] 2477 	lcall	_printf
      003AD6 15 81            [12] 2478 	dec	sp
      003AD8 15 81            [12] 2479 	dec	sp
      003ADA 15 81            [12] 2480 	dec	sp
      003ADC D0 06            [24] 2481 	pop	ar6
      003ADE D0 07            [24] 2482 	pop	ar7
                                   2483 ;	main.c:504: break;
      003AE0 02 34 C6         [24] 2484 	ljmp	00212$
                                   2485 ;	main.c:511: default:
      003AE3                       2486 00209$:
                                   2487 ;	main.c:512: printf("Invalid input\r\n");
      003AE3 C0 07            [24] 2488 	push	ar7
      003AE5 C0 06            [24] 2489 	push	ar6
      003AE7 74 E0            [12] 2490 	mov	a,#___str_25
      003AE9 C0 E0            [24] 2491 	push	acc
      003AEB 74 46            [12] 2492 	mov	a,#(___str_25 >> 8)
      003AED C0 E0            [24] 2493 	push	acc
      003AEF 74 80            [12] 2494 	mov	a,#0x80
      003AF1 C0 E0            [24] 2495 	push	acc
      003AF3 12 3B 78         [24] 2496 	lcall	_printf
      003AF6 15 81            [12] 2497 	dec	sp
      003AF8 15 81            [12] 2498 	dec	sp
      003AFA 15 81            [12] 2499 	dec	sp
      003AFC D0 06            [24] 2500 	pop	ar6
      003AFE D0 07            [24] 2501 	pop	ar7
                                   2502 ;	main.c:515: }
                                   2503 ;	main.c:559: }
      003B00 02 34 C6         [24] 2504 	ljmp	00212$
                                   2505 	.area CSEG    (CODE)
                                   2506 	.area CONST   (CODE)
                                   2507 	.area CONST   (CODE)
      004312                       2508 ___str_0:
      004312 53 74 61 72 74 69 6E  2509 	.ascii "Starting I2C application"
             67 20 49 32 43 20 61
             70 70 6C 69 63 61 74
             69 6F 6E
      00432A 0D                    2510 	.db 0x0d
      00432B 0A                    2511 	.db 0x0a
      00432C 00                    2512 	.db 0x00
                                   2513 	.area CSEG    (CODE)
                                   2514 	.area CONST   (CODE)
      00432D                       2515 ___str_1:
      00432D 48 65 6C 70 20 6D 65  2516 	.ascii "Help menu:"
             6E 75 3A
      004337 0D                    2517 	.db 0x0d
      004338 0A                    2518 	.db 0x0a
      004339 00                    2519 	.db 0x00
                                   2520 	.area CSEG    (CODE)
                                   2521 	.area CONST   (CODE)
      00433A                       2522 ___str_2:
      00433A 27 77 27 3A 20 45 6E  2523 	.ascii "'w': Enter an EEPROM address in hex to write data at and byt"
             74 65 72 20 61 6E 20
             45 45 50 52 4F 4D 20
             61 64 64 72 65 73 73
             20 69 6E 20 68 65 78
             20 74 6F 20 77 72 69
             74 65 20 64 61 74 61
             20 61 74 20 61 6E 64
             20 62 79 74
      004376 65 20 64 61 74 61     2524 	.ascii "e data"
      00437C 0D                    2525 	.db 0x0d
      00437D 0A                    2526 	.db 0x0a
      00437E 00                    2527 	.db 0x00
                                   2528 	.area CSEG    (CODE)
                                   2529 	.area CONST   (CODE)
      00437F                       2530 ___str_3:
      00437F 27 72 27 3A 20 45 6E  2531 	.ascii "'r': Enter an EEPROM address in hex to read data from"
             74 65 72 20 61 6E 20
             45 45 50 52 4F 4D 20
             61 64 64 72 65 73 73
             20 69 6E 20 68 65 78
             20 74 6F 20 72 65 61
             64 20 64 61 74 61 20
             66 72 6F 6D
      0043B4 0D                    2532 	.db 0x0d
      0043B5 0A                    2533 	.db 0x0a
      0043B6 00                    2534 	.db 0x00
                                   2535 	.area CSEG    (CODE)
                                   2536 	.area CONST   (CODE)
      0043B7                       2537 ___str_4:
      0043B7 27 68 27 3A 20 45 6E  2538 	.ascii "'h': Enter an EEPROM start and end addresses to dump the dat"
             74 65 72 20 61 6E 20
             45 45 50 52 4F 4D 20
             73 74 61 72 74 20 61
             6E 64 20 65 6E 64 20
             61 64 64 72 65 73 73
             65 73 20 74 6F 20 64
             75 6D 70 20 74 68 65
             20 64 61 74
      0043F3 61                    2539 	.ascii "a"
      0043F4 0D                    2540 	.db 0x0d
      0043F5 0A                    2541 	.db 0x0a
      0043F6 00                    2542 	.db 0x00
                                   2543 	.area CSEG    (CODE)
                                   2544 	.area CONST   (CODE)
      0043F7                       2545 ___str_5:
      0043F7 27 65 27 3A 20 52 65  2546 	.ascii "'e': Reset EEPROM"
             73 65 74 20 45 45 50
             52 4F 4D
      004408 0D                    2547 	.db 0x0d
      004409 0A                    2548 	.db 0x0a
      00440A 00                    2549 	.db 0x00
                                   2550 	.area CSEG    (CODE)
                                   2551 	.area CONST   (CODE)
      00440B                       2552 ___str_6:
      00440B 0D                    2553 	.db 0x0d
      00440C 0A                    2554 	.db 0x0a
      00440D 00                    2555 	.db 0x00
                                   2556 	.area CSEG    (CODE)
                                   2557 	.area CONST   (CODE)
      00440E                       2558 ___str_7:
      00440E 45 6E 74 65 72 20 74  2559 	.ascii "Enter the address location to store the data at : "
             68 65 20 61 64 64 72
             65 73 73 20 6C 6F 63
             61 74 69 6F 6E 20 74
             6F 20 73 74 6F 72 65
             20 74 68 65 20 64 61
             74 61 20 61 74 20 3A
             20
      004440 0D                    2560 	.db 0x0d
      004441 0A                    2561 	.db 0x0a
      004442 00                    2562 	.db 0x00
                                   2563 	.area CSEG    (CODE)
                                   2564 	.area CONST   (CODE)
      004443                       2565 ___str_8:
      004443 49 6E 76 61 6C 69 64  2566 	.ascii "Invalid input. Please enter 0-9, A-F or a-f only."
             20 69 6E 70 75 74 2E
             20 50 6C 65 61 73 65
             20 65 6E 74 65 72 20
             30 2D 39 2C 20 41 2D
             46 20 6F 72 20 61 2D
             66 20 6F 6E 6C 79 2E
      004474 0D                    2567 	.db 0x0d
      004475 0A                    2568 	.db 0x0a
      004476 00                    2569 	.db 0x00
                                   2570 	.area CSEG    (CODE)
                                   2571 	.area CONST   (CODE)
      004477                       2572 ___str_9:
      004477 45 6E 74 65 72 65 64  2573 	.ascii "Entered address: 0x%x"
             20 61 64 64 72 65 73
             73 3A 20 30 78 25 78
      00448C 0D                    2574 	.db 0x0d
      00448D 0A                    2575 	.db 0x0a
      00448E 00                    2576 	.db 0x00
                                   2577 	.area CSEG    (CODE)
                                   2578 	.area CONST   (CODE)
      00448F                       2579 ___str_10:
      00448F 49 6E 76 61 6C 69 64  2580 	.ascii "Invalid buffer address. The address should be between 0 and "
             20 62 75 66 66 65 72
             20 61 64 64 72 65 73
             73 2E 20 54 68 65 20
             61 64 64 72 65 73 73
             20 73 68 6F 75 6C 64
             20 62 65 20 62 65 74
             77 65 65 6E 20 30 20
             61 6E 64 20
      0044CB 37 46 46 2E           2581 	.ascii "7FF."
      0044CF 0D                    2582 	.db 0x0d
      0044D0 0A                    2583 	.db 0x0a
      0044D1 00                    2584 	.db 0x00
                                   2585 	.area CSEG    (CODE)
                                   2586 	.area CONST   (CODE)
      0044D2                       2587 ___str_11:
      0044D2 45 6E 74 65 72 20 74  2588 	.ascii "Enter the data byte to write:"
             68 65 20 64 61 74 61
             20 62 79 74 65 20 74
             6F 20 77 72 69 74 65
             3A
      0044EF 0D                    2589 	.db 0x0d
      0044F0 0A                    2590 	.db 0x0a
      0044F1 00                    2591 	.db 0x00
                                   2592 	.area CSEG    (CODE)
                                   2593 	.area CONST   (CODE)
      0044F2                       2594 ___str_12:
      0044F2 45 6E 74 65 72 65 64  2595 	.ascii "Entered data: 0x%x"
             20 64 61 74 61 3A 20
             30 78 25 78
      004504 0D                    2596 	.db 0x0d
      004505 0A                    2597 	.db 0x0a
      004506 00                    2598 	.db 0x00
                                   2599 	.area CSEG    (CODE)
                                   2600 	.area CONST   (CODE)
      004507                       2601 ___str_13:
      004507 49 6E 76 61 6C 69 64  2602 	.ascii "Invalid buffer data. The data should be between 0 and FF."
             20 62 75 66 66 65 72
             20 64 61 74 61 2E 20
             54 68 65 20 64 61 74
             61 20 73 68 6F 75 6C
             64 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             20 61 6E 64 20 46 46
             2E
      004540 0D                    2603 	.db 0x0d
      004541 0A                    2604 	.db 0x0a
      004542 00                    2605 	.db 0x00
                                   2606 	.area CSEG    (CODE)
                                   2607 	.area CONST   (CODE)
      004543                       2608 ___str_14:
      004543 45 6E 74 65 72 20 74  2609 	.ascii "Enter the address location to read the data from : "
             68 65 20 61 64 64 72
             65 73 73 20 6C 6F 63
             61 74 69 6F 6E 20 74
             6F 20 72 65 61 64 20
             74 68 65 20 64 61 74
             61 20 66 72 6F 6D 20
             3A 20
      004576 0D                    2610 	.db 0x0d
      004577 0A                    2611 	.db 0x0a
      004578 00                    2612 	.db 0x00
                                   2613 	.area CSEG    (CODE)
                                   2614 	.area CONST   (CODE)
      004579                       2615 ___str_15:
      004579 49 6E 76 61 6C 69 64  2616 	.ascii "Invalid input. Please enter 0-9, A-F or a-f."
             20 69 6E 70 75 74 2E
             20 50 6C 65 61 73 65
             20 65 6E 74 65 72 20
             30 2D 39 2C 20 41 2D
             46 20 6F 72 20 61 2D
             66 2E
      0045A5 0D                    2617 	.db 0x0d
      0045A6 0A                    2618 	.db 0x0a
      0045A7 00                    2619 	.db 0x00
                                   2620 	.area CSEG    (CODE)
                                   2621 	.area CONST   (CODE)
      0045A8                       2622 ___str_16:
      0045A8 72 65 61 64 20 64 61  2623 	.ascii "read data: 0x%x"
             74 61 3A 20 30 78 25
             78
      0045B7 0D                    2624 	.db 0x0d
      0045B8 0A                    2625 	.db 0x0a
      0045B9 00                    2626 	.db 0x00
                                   2627 	.area CSEG    (CODE)
                                   2628 	.area CONST   (CODE)
      0045BA                       2629 ___str_17:
      0045BA 45 6E 74 65 72 20 74  2630 	.ascii "Enter the start address for dump:"
             68 65 20 73 74 61 72
             74 20 61 64 64 72 65
             73 73 20 66 6F 72 20
             64 75 6D 70 3A
      0045DB 0D                    2631 	.db 0x0d
      0045DC 0A                    2632 	.db 0x0a
      0045DD 00                    2633 	.db 0x00
                                   2634 	.area CSEG    (CODE)
                                   2635 	.area CONST   (CODE)
      0045DE                       2636 ___str_18:
      0045DE 45 6E 74 65 72 65 64  2637 	.ascii "Entered start address: 0x%x"
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             3A 20 30 78 25 78
      0045F9 0D                    2638 	.db 0x0d
      0045FA 0A                    2639 	.db 0x0a
      0045FB 00                    2640 	.db 0x00
                                   2641 	.area CSEG    (CODE)
                                   2642 	.area CONST   (CODE)
      0045FC                       2643 ___str_19:
      0045FC 49 6E 76 61 6C 69 64  2644 	.ascii "Invalid start address. The address should be between 0 and 7"
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             2E 20 54 68 65 20 61
             64 64 72 65 73 73 20
             73 68 6F 75 6C 64 20
             62 65 20 62 65 74 77
             65 65 6E 20 30 20 61
             6E 64 20 37
      004638 46 46 2E              2645 	.ascii "FF."
      00463B 0D                    2646 	.db 0x0d
      00463C 0A                    2647 	.db 0x0a
      00463D 00                    2648 	.db 0x00
                                   2649 	.area CSEG    (CODE)
                                   2650 	.area CONST   (CODE)
      00463E                       2651 ___str_20:
      00463E 45 6E 74 65 72 20 74  2652 	.ascii "Enter the end address for dump:"
             68 65 20 65 6E 64 20
             61 64 64 72 65 73 73
             20 66 6F 72 20 64 75
             6D 70 3A
      00465D 0D                    2653 	.db 0x0d
      00465E 0A                    2654 	.db 0x0a
      00465F 00                    2655 	.db 0x00
                                   2656 	.area CSEG    (CODE)
                                   2657 	.area CONST   (CODE)
      004660                       2658 ___str_21:
      004660 45 6E 74 65 72 65 64  2659 	.ascii "Entered end address: 0x%x"
             20 65 6E 64 20 61 64
             64 72 65 73 73 3A 20
             30 78 25 78
      004679 0D                    2660 	.db 0x0d
      00467A 0A                    2661 	.db 0x0a
      00467B 00                    2662 	.db 0x00
                                   2663 	.area CSEG    (CODE)
                                   2664 	.area CONST   (CODE)
      00467C                       2665 ___str_22:
      00467C 49 6E 76 61 6C 69 64  2666 	.ascii "Invalid end address. The address should be between 0-7FF and"
             20 65 6E 64 20 61 64
             64 72 65 73 73 2E 20
             54 68 65 20 61 64 64
             72 65 73 73 20 73 68
             6F 75 6C 64 20 62 65
             20 62 65 74 77 65 65
             6E 20 30 2D 37 46 46
             20 61 6E 64
      0046B8 20 6D 6F 72 65 20 74  2667 	.ascii " more than the start address."
             68 61 6E 20 74 68 65
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             2E
      0046D5 0D                    2668 	.db 0x0d
      0046D6 0A                    2669 	.db 0x0a
      0046D7 00                    2670 	.db 0x00
                                   2671 	.area CSEG    (CODE)
                                   2672 	.area CONST   (CODE)
      0046D8                       2673 ___str_23:
      0046D8 25 78 3A              2674 	.ascii "%x:"
      0046DB 00                    2675 	.db 0x00
                                   2676 	.area CSEG    (CODE)
                                   2677 	.area CONST   (CODE)
      0046DC                       2678 ___str_24:
      0046DC 25 78 20              2679 	.ascii "%x "
      0046DF 00                    2680 	.db 0x00
                                   2681 	.area CSEG    (CODE)
                                   2682 	.area CONST   (CODE)
      0046E0                       2683 ___str_25:
      0046E0 49 6E 76 61 6C 69 64  2684 	.ascii "Invalid input"
             20 69 6E 70 75 74
      0046ED 0D                    2685 	.db 0x0d
      0046EE 0A                    2686 	.db 0x0a
      0046EF 00                    2687 	.db 0x00
                                   2688 	.area CSEG    (CODE)
                                   2689 	.area XINIT   (CODE)
                                   2690 	.area CABS    (ABS,CODE)
