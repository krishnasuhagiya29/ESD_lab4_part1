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
      000009                        466 _main_addr_131072_47:
      000009                        467 	.ds 2
      00000B                        468 _main_start_addr_131072_47:
      00000B                        469 	.ds 2
      00000D                        470 _main_end_addr_131072_47:
      00000D                        471 	.ds 2
      00000F                        472 _main_data_131072_47:
      00000F                        473 	.ds 2
                                    474 ;--------------------------------------------------------
                                    475 ; overlayable items in internal ram
                                    476 ;--------------------------------------------------------
                                    477 	.area	OSEG    (OVR,DATA)
                                    478 	.area	OSEG    (OVR,DATA)
                                    479 ;--------------------------------------------------------
                                    480 ; Stack segment in internal ram
                                    481 ;--------------------------------------------------------
                                    482 	.area	SSEG
      00004A                        483 __start__stack:
      00004A                        484 	.ds	1
                                    485 
                                    486 ;--------------------------------------------------------
                                    487 ; indirectly addressable internal ram data
                                    488 ;--------------------------------------------------------
                                    489 	.area ISEG    (DATA)
                                    490 ;--------------------------------------------------------
                                    491 ; absolute internal ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area IABS    (ABS,DATA)
                                    494 	.area IABS    (ABS,DATA)
                                    495 ;--------------------------------------------------------
                                    496 ; bit data
                                    497 ;--------------------------------------------------------
                                    498 	.area BSEG    (BIT)
                                    499 ;--------------------------------------------------------
                                    500 ; paged external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area PSEG    (PAG,XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; external ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XSEG    (XDATA)
                                    507 ;--------------------------------------------------------
                                    508 ; absolute external ram data
                                    509 ;--------------------------------------------------------
                                    510 	.area XABS    (ABS,XDATA)
                                    511 ;--------------------------------------------------------
                                    512 ; external initialized ram data
                                    513 ;--------------------------------------------------------
                                    514 	.area XISEG   (XDATA)
                                    515 	.area HOME    (CODE)
                                    516 	.area GSINIT0 (CODE)
                                    517 	.area GSINIT1 (CODE)
                                    518 	.area GSINIT2 (CODE)
                                    519 	.area GSINIT3 (CODE)
                                    520 	.area GSINIT4 (CODE)
                                    521 	.area GSINIT5 (CODE)
                                    522 	.area GSINIT  (CODE)
                                    523 	.area GSFINAL (CODE)
                                    524 	.area CSEG    (CODE)
                                    525 ;--------------------------------------------------------
                                    526 ; interrupt vector
                                    527 ;--------------------------------------------------------
                                    528 	.area HOME    (CODE)
      003000                        529 __interrupt_vect:
      003000 02 30 06         [24]  530 	ljmp	__sdcc_gsinit_startup
                                    531 ;--------------------------------------------------------
                                    532 ; global & static initialisations
                                    533 ;--------------------------------------------------------
                                    534 	.area HOME    (CODE)
                                    535 	.area GSINIT  (CODE)
                                    536 	.area GSFINAL (CODE)
                                    537 	.area GSINIT  (CODE)
                                    538 	.globl __sdcc_gsinit_startup
                                    539 	.globl __sdcc_program_startup
                                    540 	.globl __start__stack
                                    541 	.globl __mcs51_genXINIT
                                    542 	.globl __mcs51_genXRAMCLEAR
                                    543 	.globl __mcs51_genRAMCLEAR
                                    544 	.area GSFINAL (CODE)
      00305F 02 30 03         [24]  545 	ljmp	__sdcc_program_startup
                                    546 ;--------------------------------------------------------
                                    547 ; Home
                                    548 ;--------------------------------------------------------
                                    549 	.area HOME    (CODE)
                                    550 	.area HOME    (CODE)
      003003                        551 __sdcc_program_startup:
      003003 02 32 33         [24]  552 	ljmp	_main
                                    553 ;	return from main will return to caller
                                    554 ;--------------------------------------------------------
                                    555 ; code
                                    556 ;--------------------------------------------------------
                                    557 	.area CSEG    (CODE)
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'getchar'
                                    560 ;------------------------------------------------------------
                                    561 ;	main.c:17: int getchar (void)
                                    562 ;	-----------------------------------------
                                    563 ;	 function getchar
                                    564 ;	-----------------------------------------
      003062                        565 _getchar:
                           000007   566 	ar7 = 0x07
                           000006   567 	ar6 = 0x06
                           000005   568 	ar5 = 0x05
                           000004   569 	ar4 = 0x04
                           000003   570 	ar3 = 0x03
                           000002   571 	ar2 = 0x02
                           000001   572 	ar1 = 0x01
                           000000   573 	ar0 = 0x00
                                    574 ;	main.c:19: while (!RI);
      003062                        575 00101$:
                                    576 ;	main.c:21: RI = 0;                         // clear RI flag
                                    577 ;	assignBit
      003062 10 98 02         [24]  578 	jbc	_RI,00114$
      003065 80 FB            [24]  579 	sjmp	00101$
      003067                        580 00114$:
                                    581 ;	main.c:22: return SBUF;                    // return character from SBUF
      003067 AE 99            [24]  582 	mov	r6,_SBUF
      003069 7F 00            [12]  583 	mov	r7,#0x00
      00306B 8E 82            [24]  584 	mov	dpl,r6
      00306D 8F 83            [24]  585 	mov	dph,r7
                                    586 ;	main.c:23: }
      00306F 22               [24]  587 	ret
                                    588 ;------------------------------------------------------------
                                    589 ;Allocation info for local variables in function 'putchar'
                                    590 ;------------------------------------------------------------
                                    591 ;c                         Allocated to registers r6 r7 
                                    592 ;------------------------------------------------------------
                                    593 ;	main.c:25: int putchar (int c)
                                    594 ;	-----------------------------------------
                                    595 ;	 function putchar
                                    596 ;	-----------------------------------------
      003070                        597 _putchar:
      003070 AE 82            [24]  598 	mov	r6,dpl
      003072 AF 83            [24]  599 	mov	r7,dph
                                    600 ;	main.c:27: while (!TI);
      003074                        601 00101$:
      003074 30 99 FD         [24]  602 	jnb	_TI,00101$
                                    603 ;	main.c:29: SBUF = c;           // load serial port with transmit value
      003077 8E 99            [24]  604 	mov	_SBUF,r6
                                    605 ;	main.c:30: TI = 0;             // clear TI flag
                                    606 ;	assignBit
      003079 C2 99            [12]  607 	clr	_TI
                                    608 ;	main.c:32: return c;
      00307B 8E 82            [24]  609 	mov	dpl,r6
      00307D 8F 83            [24]  610 	mov	dph,r7
                                    611 ;	main.c:33: }
      00307F 22               [24]  612 	ret
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'delay'
                                    615 ;------------------------------------------------------------
                                    616 ;count                     Allocated to registers r6 r7 
                                    617 ;i                         Allocated to registers r4 r5 
                                    618 ;------------------------------------------------------------
                                    619 ;	main.c:36: void delay(unsigned int count)
                                    620 ;	-----------------------------------------
                                    621 ;	 function delay
                                    622 ;	-----------------------------------------
      003080                        623 _delay:
      003080 AE 82            [24]  624 	mov	r6,dpl
      003082 AF 83            [24]  625 	mov	r7,dph
                                    626 ;	main.c:39: for(i=0;i<count;i++);
      003084 7C 00            [12]  627 	mov	r4,#0x00
      003086 7D 00            [12]  628 	mov	r5,#0x00
      003088                        629 00103$:
      003088 C3               [12]  630 	clr	c
      003089 EC               [12]  631 	mov	a,r4
      00308A 9E               [12]  632 	subb	a,r6
      00308B ED               [12]  633 	mov	a,r5
      00308C 9F               [12]  634 	subb	a,r7
      00308D 50 07            [24]  635 	jnc	00105$
      00308F 0C               [12]  636 	inc	r4
      003090 BC 00 F5         [24]  637 	cjne	r4,#0x00,00103$
      003093 0D               [12]  638 	inc	r5
      003094 80 F2            [24]  639 	sjmp	00103$
      003096                        640 00105$:
                                    641 ;	main.c:40: }
      003096 22               [24]  642 	ret
                                    643 ;------------------------------------------------------------
                                    644 ;Allocation info for local variables in function 'I2C_init'
                                    645 ;------------------------------------------------------------
                                    646 ;	main.c:44: void I2C_init(void)
                                    647 ;	-----------------------------------------
                                    648 ;	 function I2C_init
                                    649 ;	-----------------------------------------
      003097                        650 _I2C_init:
                                    651 ;	main.c:47: SDA = 1;
                                    652 ;	assignBit
      003097 D2 97            [12]  653 	setb	_P1_7
                                    654 ;	main.c:48: SCL = 1;
                                    655 ;	assignBit
      003099 D2 96            [12]  656 	setb	_P1_6
                                    657 ;	main.c:49: }
      00309B 22               [24]  658 	ret
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'I2C_Start'
                                    661 ;------------------------------------------------------------
                                    662 ;	main.c:52: void I2C_Start(void)
                                    663 ;	-----------------------------------------
                                    664 ;	 function I2C_Start
                                    665 ;	-----------------------------------------
      00309C                        666 _I2C_Start:
                                    667 ;	main.c:54: set_SCL_high;				// Make SCL pin high
                                    668 ;	assignBit
      00309C D2 96            [12]  669 	setb	_P1_6
                                    670 ;	main.c:55: set_SDA_high;				// Make SDA pin High
                                    671 ;	assignBit
      00309E D2 97            [12]  672 	setb	_P1_7
                                    673 ;	main.c:56: delay(50);	// Half bit delay
      0030A0 90 00 32         [24]  674 	mov	dptr,#0x0032
      0030A3 12 30 80         [24]  675 	lcall	_delay
                                    676 ;	main.c:57: set_SDA_low;				// Make SDA Low
                                    677 ;	assignBit
      0030A6 C2 97            [12]  678 	clr	_P1_7
                                    679 ;	main.c:58: delay(50);	// Half bit delay
      0030A8 90 00 32         [24]  680 	mov	dptr,#0x0032
                                    681 ;	main.c:59: }
      0030AB 02 30 80         [24]  682 	ljmp	_delay
                                    683 ;------------------------------------------------------------
                                    684 ;Allocation info for local variables in function 'I2C_Write_Byte'
                                    685 ;------------------------------------------------------------
                                    686 ;Byte                      Allocated to registers r7 
                                    687 ;i                         Allocated to registers r6 
                                    688 ;------------------------------------------------------------
                                    689 ;	main.c:61: unsigned char I2C_Write_Byte(unsigned char Byte)
                                    690 ;	-----------------------------------------
                                    691 ;	 function I2C_Write_Byte
                                    692 ;	-----------------------------------------
      0030AE                        693 _I2C_Write_Byte:
      0030AE AF 82            [24]  694 	mov	r7,dpl
                                    695 ;	main.c:65: for(i=0;i<8;i++)		// Repeat for every bit
      0030B0 7E 00            [12]  696 	mov	r6,#0x00
      0030B2                        697 00105$:
                                    698 ;	main.c:67: set_SCL_low;		// Make SCL pin low
                                    699 ;	assignBit
      0030B2 C2 96            [12]  700 	clr	_P1_6
                                    701 ;	main.c:69: delay(50);	// Data pin should change it's value,
      0030B4 90 00 32         [24]  702 	mov	dptr,#0x0032
      0030B7 C0 07            [24]  703 	push	ar7
      0030B9 C0 06            [24]  704 	push	ar6
      0030BB 12 30 80         [24]  705 	lcall	_delay
      0030BE D0 06            [24]  706 	pop	ar6
      0030C0 D0 07            [24]  707 	pop	ar7
                                    708 ;	main.c:72: if((Byte<<i)&0x80)  // Place data bit value on SDA pin
      0030C2 8F 04            [24]  709 	mov	ar4,r7
      0030C4 7D 00            [12]  710 	mov	r5,#0x00
      0030C6 8E F0            [24]  711 	mov	b,r6
      0030C8 05 F0            [12]  712 	inc	b
      0030CA 80 06            [24]  713 	sjmp	00123$
      0030CC                        714 00122$:
      0030CC EC               [12]  715 	mov	a,r4
      0030CD 2C               [12]  716 	add	a,r4
      0030CE FC               [12]  717 	mov	r4,a
      0030CF ED               [12]  718 	mov	a,r5
      0030D0 33               [12]  719 	rlc	a
      0030D1 FD               [12]  720 	mov	r5,a
      0030D2                        721 00123$:
      0030D2 D5 F0 F7         [24]  722 	djnz	b,00122$
      0030D5 EC               [12]  723 	mov	a,r4
      0030D6 30 E7 04         [24]  724 	jnb	acc.7,00102$
                                    725 ;	main.c:73: set_SDA_high;	// If bit is high, make SDA high
                                    726 ;	assignBit
      0030D9 D2 97            [12]  727 	setb	_P1_7
      0030DB 80 02            [24]  728 	sjmp	00103$
      0030DD                        729 00102$:
                                    730 ;	main.c:75: set_SDA_low;	// If bit is low, make SDA low
                                    731 ;	assignBit
      0030DD C2 97            [12]  732 	clr	_P1_7
      0030DF                        733 00103$:
                                    734 ;	main.c:77: delay(50);	// Toggle SCL pin
      0030DF 90 00 32         [24]  735 	mov	dptr,#0x0032
      0030E2 C0 07            [24]  736 	push	ar7
      0030E4 C0 06            [24]  737 	push	ar6
      0030E6 12 30 80         [24]  738 	lcall	_delay
                                    739 ;	main.c:78: set_SCL_high;				// So that slave can
                                    740 ;	assignBit
      0030E9 D2 96            [12]  741 	setb	_P1_6
                                    742 ;	main.c:79: delay(50);	// latch data bit
      0030EB 90 00 32         [24]  743 	mov	dptr,#0x0032
      0030EE 12 30 80         [24]  744 	lcall	_delay
      0030F1 D0 06            [24]  745 	pop	ar6
      0030F3 D0 07            [24]  746 	pop	ar7
                                    747 ;	main.c:65: for(i=0;i<8;i++)		// Repeat for every bit
      0030F5 0E               [12]  748 	inc	r6
      0030F6 BE 08 00         [24]  749 	cjne	r6,#0x08,00125$
      0030F9                        750 00125$:
      0030F9 40 B7            [24]  751 	jc	00105$
                                    752 ;	main.c:83: set_SCL_low;
                                    753 ;	assignBit
      0030FB C2 96            [12]  754 	clr	_P1_6
                                    755 ;	main.c:84: set_SDA_high;
                                    756 ;	assignBit
      0030FD D2 97            [12]  757 	setb	_P1_7
                                    758 ;	main.c:85: delay(50);
      0030FF 90 00 32         [24]  759 	mov	dptr,#0x0032
      003102 12 30 80         [24]  760 	lcall	_delay
                                    761 ;	main.c:86: set_SCL_high;
                                    762 ;	assignBit
      003105 D2 96            [12]  763 	setb	_P1_6
                                    764 ;	main.c:87: delay(50);
      003107 90 00 32         [24]  765 	mov	dptr,#0x0032
      00310A 12 30 80         [24]  766 	lcall	_delay
                                    767 ;	main.c:89: return SDA;
      00310D A2 97            [12]  768 	mov	c,_P1_7
      00310F E4               [12]  769 	clr	a
      003110 33               [12]  770 	rlc	a
      003111 F5 82            [12]  771 	mov	dpl,a
                                    772 ;	main.c:90: }
      003113 22               [24]  773 	ret
                                    774 ;------------------------------------------------------------
                                    775 ;Allocation info for local variables in function 'I2C_Read_Byte'
                                    776 ;------------------------------------------------------------
                                    777 ;i                         Allocated to registers r6 
                                    778 ;d                         Allocated to registers r5 
                                    779 ;RxData                    Allocated to registers r7 
                                    780 ;------------------------------------------------------------
                                    781 ;	main.c:93: unsigned char I2C_Read_Byte(void)
                                    782 ;	-----------------------------------------
                                    783 ;	 function I2C_Read_Byte
                                    784 ;	-----------------------------------------
      003114                        785 _I2C_Read_Byte:
                                    786 ;	main.c:95: unsigned char i, d, RxData = 0;
      003114 7F 00            [12]  787 	mov	r7,#0x00
                                    788 ;	main.c:97: for(i=0;i<8;i++)
      003116 7E 00            [12]  789 	mov	r6,#0x00
      003118                        790 00102$:
                                    791 ;	main.c:99: set_SCL_low;					// Make SCL pin low
                                    792 ;	assignBit
      003118 C2 96            [12]  793 	clr	_P1_6
                                    794 ;	main.c:100: set_SDA_high;					// Don't drive SDA
                                    795 ;	assignBit
      00311A D2 97            [12]  796 	setb	_P1_7
                                    797 ;	main.c:101: delay(50);		// Half bit delay
      00311C 90 00 32         [24]  798 	mov	dptr,#0x0032
      00311F C0 07            [24]  799 	push	ar7
      003121 C0 06            [24]  800 	push	ar6
      003123 12 30 80         [24]  801 	lcall	_delay
                                    802 ;	main.c:102: set_SCL_high;					// Make SCL pin high
                                    803 ;	assignBit
      003126 D2 96            [12]  804 	setb	_P1_6
                                    805 ;	main.c:103: delay(50);		// 1/4 bit delay
      003128 90 00 32         [24]  806 	mov	dptr,#0x0032
      00312B 12 30 80         [24]  807 	lcall	_delay
      00312E D0 06            [24]  808 	pop	ar6
      003130 D0 07            [24]  809 	pop	ar7
                                    810 ;	main.c:104: d = SDA;					    // Capture Received Bit
      003132 A2 97            [12]  811 	mov	c,_P1_7
      003134 E4               [12]  812 	clr	a
      003135 33               [12]  813 	rlc	a
      003136 FD               [12]  814 	mov	r5,a
                                    815 ;	main.c:105: RxData = RxData|(d<<(7-i));   	// Copy it in RxData
      003137 8E 04            [24]  816 	mov	ar4,r6
      003139 74 07            [12]  817 	mov	a,#0x07
      00313B C3               [12]  818 	clr	c
      00313C 9C               [12]  819 	subb	a,r4
      00313D FC               [12]  820 	mov	r4,a
      00313E 8C F0            [24]  821 	mov	b,r4
      003140 05 F0            [12]  822 	inc	b
      003142 ED               [12]  823 	mov	a,r5
      003143 80 02            [24]  824 	sjmp	00117$
      003145                        825 00115$:
      003145 25 E0            [12]  826 	add	a,acc
      003147                        827 00117$:
      003147 D5 F0 FB         [24]  828 	djnz	b,00115$
      00314A 42 07            [12]  829 	orl	ar7,a
                                    830 ;	main.c:106: delay(50);		// 1/4 bit delay
      00314C 90 00 32         [24]  831 	mov	dptr,#0x0032
      00314F C0 07            [24]  832 	push	ar7
      003151 C0 06            [24]  833 	push	ar6
      003153 12 30 80         [24]  834 	lcall	_delay
      003156 D0 06            [24]  835 	pop	ar6
      003158 D0 07            [24]  836 	pop	ar7
                                    837 ;	main.c:97: for(i=0;i<8;i++)
      00315A 0E               [12]  838 	inc	r6
      00315B BE 08 00         [24]  839 	cjne	r6,#0x08,00118$
      00315E                        840 00118$:
      00315E 40 B8            [24]  841 	jc	00102$
                                    842 ;	main.c:109: return RxData;						// Return received byte
      003160 8F 82            [24]  843 	mov	dpl,r7
                                    844 ;	main.c:110: }
      003162 22               [24]  845 	ret
                                    846 ;------------------------------------------------------------
                                    847 ;Allocation info for local variables in function 'I2C_Send_ACK'
                                    848 ;------------------------------------------------------------
                                    849 ;	main.c:113: void I2C_Send_ACK(void)
                                    850 ;	-----------------------------------------
                                    851 ;	 function I2C_Send_ACK
                                    852 ;	-----------------------------------------
      003163                        853 _I2C_Send_ACK:
                                    854 ;	main.c:115: set_SCL_low;				// Make SCL pin low
                                    855 ;	assignBit
      003163 C2 96            [12]  856 	clr	_P1_6
                                    857 ;	main.c:116: delay(50);	// Data pin should change it's value,
      003165 90 00 32         [24]  858 	mov	dptr,#0x0032
      003168 12 30 80         [24]  859 	lcall	_delay
                                    860 ;	main.c:118: set_SDA_high;				// Make SDA Low
                                    861 ;	assignBit
      00316B D2 97            [12]  862 	setb	_P1_7
                                    863 ;	main.c:119: delay(50);	// 1/4 bit delay
      00316D 90 00 32         [24]  864 	mov	dptr,#0x0032
      003170 12 30 80         [24]  865 	lcall	_delay
                                    866 ;	main.c:120: set_SCL_high;				// Make SCL pin high
                                    867 ;	assignBit
      003173 D2 96            [12]  868 	setb	_P1_6
                                    869 ;	main.c:121: delay(50);	// Half bit delay
      003175 90 00 32         [24]  870 	mov	dptr,#0x0032
                                    871 ;	main.c:122: }
      003178 02 30 80         [24]  872 	ljmp	_delay
                                    873 ;------------------------------------------------------------
                                    874 ;Allocation info for local variables in function 'I2C_ReStart'
                                    875 ;------------------------------------------------------------
                                    876 ;	main.c:125: void I2C_ReStart(void)
                                    877 ;	-----------------------------------------
                                    878 ;	 function I2C_ReStart
                                    879 ;	-----------------------------------------
      00317B                        880 _I2C_ReStart:
                                    881 ;	main.c:127: set_SCL_low;				// Make SCL pin low
                                    882 ;	assignBit
      00317B C2 96            [12]  883 	clr	_P1_6
                                    884 ;	main.c:129: delay(50);	// Data pin should change it's value,
      00317D 90 00 32         [24]  885 	mov	dptr,#0x0032
      003180 12 30 80         [24]  886 	lcall	_delay
                                    887 ;	main.c:131: set_SDA_high;				// Make SDA pin High
                                    888 ;	assignBit
      003183 D2 97            [12]  889 	setb	_P1_7
                                    890 ;	main.c:133: delay(50);	// 1/4 bit delay
      003185 90 00 32         [24]  891 	mov	dptr,#0x0032
      003188 12 30 80         [24]  892 	lcall	_delay
                                    893 ;	main.c:134: set_SCL_high;				// Make SCL pin high
                                    894 ;	assignBit
      00318B D2 96            [12]  895 	setb	_P1_6
                                    896 ;	main.c:135: delay(50);	// 1/4 bit delay
      00318D 90 00 32         [24]  897 	mov	dptr,#0x0032
      003190 12 30 80         [24]  898 	lcall	_delay
                                    899 ;	main.c:136: set_SDA_low;				// Make SDA Low
                                    900 ;	assignBit
      003193 C2 97            [12]  901 	clr	_P1_7
                                    902 ;	main.c:137: delay(50);	// 1/4 bit delay
      003195 90 00 32         [24]  903 	mov	dptr,#0x0032
                                    904 ;	main.c:138: }
      003198 02 30 80         [24]  905 	ljmp	_delay
                                    906 ;------------------------------------------------------------
                                    907 ;Allocation info for local variables in function 'I2C_Stop'
                                    908 ;------------------------------------------------------------
                                    909 ;	main.c:142: void I2C_Stop(void)
                                    910 ;	-----------------------------------------
                                    911 ;	 function I2C_Stop
                                    912 ;	-----------------------------------------
      00319B                        913 _I2C_Stop:
                                    914 ;	main.c:144: set_SCL_low;				// Make SCL pin low
                                    915 ;	assignBit
      00319B C2 96            [12]  916 	clr	_P1_6
                                    917 ;	main.c:146: delay(50);	// Data pin should change it's value,
      00319D 90 00 32         [24]  918 	mov	dptr,#0x0032
      0031A0 12 30 80         [24]  919 	lcall	_delay
                                    920 ;	main.c:148: set_SDA_low;				// Make SDA pin low
                                    921 ;	assignBit
      0031A3 C2 97            [12]  922 	clr	_P1_7
                                    923 ;	main.c:150: delay(50);	// 1/4 bit delay
      0031A5 90 00 32         [24]  924 	mov	dptr,#0x0032
      0031A8 12 30 80         [24]  925 	lcall	_delay
                                    926 ;	main.c:151: set_SCL_high;				// Make SCL pin high
                                    927 ;	assignBit
      0031AB D2 96            [12]  928 	setb	_P1_6
                                    929 ;	main.c:152: delay(50);	// 1/4 bit delay
      0031AD 90 00 32         [24]  930 	mov	dptr,#0x0032
      0031B0 12 30 80         [24]  931 	lcall	_delay
                                    932 ;	main.c:153: set_SDA_high;				// Make SDA high
                                    933 ;	assignBit
      0031B3 D2 97            [12]  934 	setb	_P1_7
                                    935 ;	main.c:154: delay(50);	// 1/4 bit delay
      0031B5 90 00 32         [24]  936 	mov	dptr,#0x0032
                                    937 ;	main.c:155: }
      0031B8 02 30 80         [24]  938 	ljmp	_delay
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'RepeatedStartI2c'
                                    941 ;------------------------------------------------------------
                                    942 ;	main.c:157: void RepeatedStartI2c()
                                    943 ;	-----------------------------------------
                                    944 ;	 function RepeatedStartI2c
                                    945 ;	-----------------------------------------
      0031BB                        946 _RepeatedStartI2c:
                                    947 ;	main.c:159: SCL  = 0;
                                    948 ;	assignBit
      0031BB C2 96            [12]  949 	clr	_P1_6
                                    950 ;	main.c:160: delay(50);
      0031BD 90 00 32         [24]  951 	mov	dptr,#0x0032
      0031C0 12 30 80         [24]  952 	lcall	_delay
                                    953 ;	main.c:161: SDA  = 1;
                                    954 ;	assignBit
      0031C3 D2 97            [12]  955 	setb	_P1_7
                                    956 ;	main.c:162: delay(50);
      0031C5 90 00 32         [24]  957 	mov	dptr,#0x0032
      0031C8 12 30 80         [24]  958 	lcall	_delay
                                    959 ;	main.c:163: SCL  = 1;
                                    960 ;	assignBit
      0031CB D2 96            [12]  961 	setb	_P1_6
                                    962 ;	main.c:164: delay(50);
      0031CD 90 00 32         [24]  963 	mov	dptr,#0x0032
      0031D0 12 30 80         [24]  964 	lcall	_delay
                                    965 ;	main.c:165: SDA  = 0;
                                    966 ;	assignBit
      0031D3 C2 97            [12]  967 	clr	_P1_7
                                    968 ;	main.c:166: delay(50);
      0031D5 90 00 32         [24]  969 	mov	dptr,#0x0032
                                    970 ;	main.c:167: }
      0031D8 02 30 80         [24]  971 	ljmp	_delay
                                    972 ;------------------------------------------------------------
                                    973 ;Allocation info for local variables in function 'eebytew'
                                    974 ;------------------------------------------------------------
                                    975 ;databyte                  Allocated with name '_eebytew_PARM_2'
                                    976 ;addr                      Allocated to registers r6 r7 
                                    977 ;------------------------------------------------------------
                                    978 ;	main.c:169: void eebytew(unsigned int addr, unsigned char databyte)
                                    979 ;	-----------------------------------------
                                    980 ;	 function eebytew
                                    981 ;	-----------------------------------------
      0031DB                        982 _eebytew:
      0031DB AE 82            [24]  983 	mov	r6,dpl
      0031DD AF 83            [24]  984 	mov	r7,dph
                                    985 ;	main.c:171: I2C_Start();
      0031DF C0 07            [24]  986 	push	ar7
      0031E1 C0 06            [24]  987 	push	ar6
      0031E3 12 30 9C         [24]  988 	lcall	_I2C_Start
                                    989 ;	main.c:172: I2C_Write_Byte((unsigned char)0xA0);
      0031E6 75 82 A0         [24]  990 	mov	dpl,#0xa0
      0031E9 12 30 AE         [24]  991 	lcall	_I2C_Write_Byte
      0031EC D0 06            [24]  992 	pop	ar6
      0031EE D0 07            [24]  993 	pop	ar7
                                    994 ;	main.c:173: I2C_Write_Byte((unsigned char)addr);
      0031F0 8E 82            [24]  995 	mov	dpl,r6
      0031F2 12 30 AE         [24]  996 	lcall	_I2C_Write_Byte
                                    997 ;	main.c:174: I2C_Write_Byte(databyte);
      0031F5 85 08 82         [24]  998 	mov	dpl,_eebytew_PARM_2
      0031F8 12 30 AE         [24]  999 	lcall	_I2C_Write_Byte
                                   1000 ;	main.c:175: I2C_Stop();
                                   1001 ;	main.c:177: }
      0031FB 02 31 9B         [24] 1002 	ljmp	_I2C_Stop
                                   1003 ;------------------------------------------------------------
                                   1004 ;Allocation info for local variables in function 'eebyter'
                                   1005 ;------------------------------------------------------------
                                   1006 ;addr                      Allocated to registers r6 r7 
                                   1007 ;rec                       Allocated to registers r7 
                                   1008 ;------------------------------------------------------------
                                   1009 ;	main.c:179: unsigned char eebyter(unsigned int addr)
                                   1010 ;	-----------------------------------------
                                   1011 ;	 function eebyter
                                   1012 ;	-----------------------------------------
      0031FE                       1013 _eebyter:
      0031FE AE 82            [24] 1014 	mov	r6,dpl
      003200 AF 83            [24] 1015 	mov	r7,dph
                                   1016 ;	main.c:182: I2C_Start();
      003202 C0 07            [24] 1017 	push	ar7
      003204 C0 06            [24] 1018 	push	ar6
      003206 12 30 9C         [24] 1019 	lcall	_I2C_Start
                                   1020 ;	main.c:183: I2C_Write_Byte((unsigned char)0xA0);
      003209 75 82 A0         [24] 1021 	mov	dpl,#0xa0
      00320C 12 30 AE         [24] 1022 	lcall	_I2C_Write_Byte
      00320F D0 06            [24] 1023 	pop	ar6
      003211 D0 07            [24] 1024 	pop	ar7
                                   1025 ;	main.c:184: I2C_Write_Byte((unsigned char)addr);
      003213 8E 82            [24] 1026 	mov	dpl,r6
      003215 12 30 AE         [24] 1027 	lcall	_I2C_Write_Byte
                                   1028 ;	main.c:185: RepeatedStartI2c();
      003218 12 31 BB         [24] 1029 	lcall	_RepeatedStartI2c
                                   1030 ;	main.c:186: I2C_Write_Byte((unsigned char)0xA1);
      00321B 75 82 A1         [24] 1031 	mov	dpl,#0xa1
      00321E 12 30 AE         [24] 1032 	lcall	_I2C_Write_Byte
                                   1033 ;	main.c:187: rec=I2C_Read_Byte();
      003221 12 31 14         [24] 1034 	lcall	_I2C_Read_Byte
      003224 AF 82            [24] 1035 	mov	r7,dpl
                                   1036 ;	main.c:188: I2C_Send_ACK();
      003226 C0 07            [24] 1037 	push	ar7
      003228 12 31 63         [24] 1038 	lcall	_I2C_Send_ACK
                                   1039 ;	main.c:189: I2C_Stop();
      00322B 12 31 9B         [24] 1040 	lcall	_I2C_Stop
      00322E D0 07            [24] 1041 	pop	ar7
                                   1042 ;	main.c:190: return rec;
      003230 8F 82            [24] 1043 	mov	dpl,r7
                                   1044 ;	main.c:191: }
      003232 22               [24] 1045 	ret
                                   1046 ;------------------------------------------------------------
                                   1047 ;Allocation info for local variables in function 'main'
                                   1048 ;------------------------------------------------------------
                                   1049 ;rx                        Allocated to registers 
                                   1050 ;addr                      Allocated with name '_main_addr_131072_47'
                                   1051 ;start_addr                Allocated with name '_main_start_addr_131072_47'
                                   1052 ;end_addr                  Allocated with name '_main_end_addr_131072_47'
                                   1053 ;data                      Allocated with name '_main_data_131072_47'
                                   1054 ;digit                     Allocated to registers r1 r2 
                                   1055 ;ch                        Allocated to registers r4 
                                   1056 ;rd                        Allocated to registers r5 
                                   1057 ;i                         Allocated to registers r0 r1 
                                   1058 ;------------------------------------------------------------
                                   1059 ;	main.c:193: void main(void)
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function main
                                   1062 ;	-----------------------------------------
      003233                       1063 _main:
                                   1064 ;	main.c:196: I2C_init();					// Initialize i2c pins
      003233 12 30 97         [24] 1065 	lcall	_I2C_init
                                   1066 ;	main.c:197: printf("Starting I2C application\r\n");
      003236 74 00            [12] 1067 	mov	a,#___str_0
      003238 C0 E0            [24] 1068 	push	acc
      00323A 74 41            [12] 1069 	mov	a,#(___str_0 >> 8)
      00323C C0 E0            [24] 1070 	push	acc
      00323E 74 80            [12] 1071 	mov	a,#0x80
      003240 C0 E0            [24] 1072 	push	acc
      003242 12 39 66         [24] 1073 	lcall	_printf
      003245 15 81            [12] 1074 	dec	sp
      003247 15 81            [12] 1075 	dec	sp
      003249 15 81            [12] 1076 	dec	sp
                                   1077 ;	main.c:198: printf("Help menu:\r\n");
      00324B 74 1B            [12] 1078 	mov	a,#___str_1
      00324D C0 E0            [24] 1079 	push	acc
      00324F 74 41            [12] 1080 	mov	a,#(___str_1 >> 8)
      003251 C0 E0            [24] 1081 	push	acc
      003253 74 80            [12] 1082 	mov	a,#0x80
      003255 C0 E0            [24] 1083 	push	acc
      003257 12 39 66         [24] 1084 	lcall	_printf
      00325A 15 81            [12] 1085 	dec	sp
      00325C 15 81            [12] 1086 	dec	sp
      00325E 15 81            [12] 1087 	dec	sp
                                   1088 ;	main.c:199: printf("'w': Enter an EEPROM address in hex to write data at and byte data\r\n");
      003260 74 28            [12] 1089 	mov	a,#___str_2
      003262 C0 E0            [24] 1090 	push	acc
      003264 74 41            [12] 1091 	mov	a,#(___str_2 >> 8)
      003266 C0 E0            [24] 1092 	push	acc
      003268 74 80            [12] 1093 	mov	a,#0x80
      00326A C0 E0            [24] 1094 	push	acc
      00326C 12 39 66         [24] 1095 	lcall	_printf
      00326F 15 81            [12] 1096 	dec	sp
      003271 15 81            [12] 1097 	dec	sp
      003273 15 81            [12] 1098 	dec	sp
                                   1099 ;	main.c:200: printf("'r': Enter an EEPROM address in hex to read data from\r\n");
      003275 74 6D            [12] 1100 	mov	a,#___str_3
      003277 C0 E0            [24] 1101 	push	acc
      003279 74 41            [12] 1102 	mov	a,#(___str_3 >> 8)
      00327B C0 E0            [24] 1103 	push	acc
      00327D 74 80            [12] 1104 	mov	a,#0x80
      00327F C0 E0            [24] 1105 	push	acc
      003281 12 39 66         [24] 1106 	lcall	_printf
      003284 15 81            [12] 1107 	dec	sp
      003286 15 81            [12] 1108 	dec	sp
      003288 15 81            [12] 1109 	dec	sp
                                   1110 ;	main.c:201: printf("'h': Enter an EEPROM start and end addresses to dump the data\r\n");
      00328A 74 A5            [12] 1111 	mov	a,#___str_4
      00328C C0 E0            [24] 1112 	push	acc
      00328E 74 41            [12] 1113 	mov	a,#(___str_4 >> 8)
      003290 C0 E0            [24] 1114 	push	acc
      003292 74 80            [12] 1115 	mov	a,#0x80
      003294 C0 E0            [24] 1116 	push	acc
      003296 12 39 66         [24] 1117 	lcall	_printf
      003299 15 81            [12] 1118 	dec	sp
      00329B 15 81            [12] 1119 	dec	sp
      00329D 15 81            [12] 1120 	dec	sp
                                   1121 ;	main.c:202: printf("'e': Reset EEPROM\r\n");
      00329F 74 E5            [12] 1122 	mov	a,#___str_5
      0032A1 C0 E0            [24] 1123 	push	acc
      0032A3 74 41            [12] 1124 	mov	a,#(___str_5 >> 8)
      0032A5 C0 E0            [24] 1125 	push	acc
      0032A7 74 80            [12] 1126 	mov	a,#0x80
      0032A9 C0 E0            [24] 1127 	push	acc
      0032AB 12 39 66         [24] 1128 	lcall	_printf
      0032AE 15 81            [12] 1129 	dec	sp
      0032B0 15 81            [12] 1130 	dec	sp
      0032B2 15 81            [12] 1131 	dec	sp
                                   1132 ;	main.c:204: while(1)
      0032B4 E4               [12] 1133 	clr	a
      0032B5 FE               [12] 1134 	mov	r6,a
      0032B6 FF               [12] 1135 	mov	r7,a
      0032B7 F5 0B            [12] 1136 	mov	_main_start_addr_131072_47,a
      0032B9 F5 0C            [12] 1137 	mov	(_main_start_addr_131072_47 + 1),a
      0032BB                       1138 00212$:
                                   1139 ;	main.c:206: unsigned int addr, start_addr, end_addr = 0;
      0032BB E4               [12] 1140 	clr	a
      0032BC F5 0D            [12] 1141 	mov	_main_end_addr_131072_47,a
      0032BE F5 0E            [12] 1142 	mov	(_main_end_addr_131072_47 + 1),a
                                   1143 ;	main.c:207: unsigned int data = 0;
      0032C0 F5 0F            [12] 1144 	mov	_main_data_131072_47,a
      0032C2 F5 10            [12] 1145 	mov	(_main_data_131072_47 + 1),a
                                   1146 ;	main.c:209: char ch = getchar();
      0032C4 C0 07            [24] 1147 	push	ar7
      0032C6 C0 06            [24] 1148 	push	ar6
      0032C8 12 30 62         [24] 1149 	lcall	_getchar
      0032CB A8 82            [24] 1150 	mov	r0,dpl
                                   1151 ;	main.c:210: putchar(ch);
      0032CD 88 01            [24] 1152 	mov	ar1,r0
      0032CF 7B 00            [12] 1153 	mov	r3,#0x00
      0032D1 89 82            [24] 1154 	mov	dpl,r1
      0032D3 8B 83            [24] 1155 	mov	dph,r3
      0032D5 C0 00            [24] 1156 	push	ar0
      0032D7 12 30 70         [24] 1157 	lcall	_putchar
                                   1158 ;	main.c:211: printf("\r\n");
      0032DA 74 F9            [12] 1159 	mov	a,#___str_6
      0032DC C0 E0            [24] 1160 	push	acc
      0032DE 74 41            [12] 1161 	mov	a,#(___str_6 >> 8)
      0032E0 C0 E0            [24] 1162 	push	acc
      0032E2 74 80            [12] 1163 	mov	a,#0x80
      0032E4 C0 E0            [24] 1164 	push	acc
      0032E6 12 39 66         [24] 1165 	lcall	_printf
      0032E9 15 81            [12] 1166 	dec	sp
      0032EB 15 81            [12] 1167 	dec	sp
      0032ED 15 81            [12] 1168 	dec	sp
      0032EF D0 00            [24] 1169 	pop	ar0
      0032F1 D0 06            [24] 1170 	pop	ar6
      0032F3 D0 07            [24] 1171 	pop	ar7
                                   1172 ;	main.c:212: switch(ch)
      0032F5 B8 68 03         [24] 1173 	cjne	r0,#0x68,00485$
      0032F8 02 36 0E         [24] 1174 	ljmp	00163$
      0032FB                       1175 00485$:
      0032FB B8 72 03         [24] 1176 	cjne	r0,#0x72,00486$
      0032FE 02 34 FE         [24] 1177 	ljmp	00142$
      003301                       1178 00486$:
      003301 B8 77 02         [24] 1179 	cjne	r0,#0x77,00487$
      003304 80 03            [24] 1180 	sjmp	00488$
      003306                       1181 00487$:
      003306 02 38 D1         [24] 1182 	ljmp	00209$
      003309                       1183 00488$:
                                   1184 ;	main.c:215: printf("Enter the address location to store the data at : \r\n");
      003309 C0 07            [24] 1185 	push	ar7
      00330B C0 06            [24] 1186 	push	ar6
      00330D 74 FC            [12] 1187 	mov	a,#___str_7
      00330F C0 E0            [24] 1188 	push	acc
      003311 74 41            [12] 1189 	mov	a,#(___str_7 >> 8)
      003313 C0 E0            [24] 1190 	push	acc
      003315 74 80            [12] 1191 	mov	a,#0x80
      003317 C0 E0            [24] 1192 	push	acc
      003319 12 39 66         [24] 1193 	lcall	_printf
      00331C 15 81            [12] 1194 	dec	sp
      00331E 15 81            [12] 1195 	dec	sp
      003320 15 81            [12] 1196 	dec	sp
      003322 D0 06            [24] 1197 	pop	ar6
      003324 D0 07            [24] 1198 	pop	ar7
                                   1199 ;	main.c:216: while (1) {
      003326                       1200 00117$:
                                   1201 ;	main.c:217: ch = getchar();
      003326 C0 07            [24] 1202 	push	ar7
      003328 C0 06            [24] 1203 	push	ar6
      00332A 12 30 62         [24] 1204 	lcall	_getchar
      00332D AA 82            [24] 1205 	mov	r2,dpl
      00332F D0 06            [24] 1206 	pop	ar6
      003331 D0 07            [24] 1207 	pop	ar7
                                   1208 ;	main.c:219: if ((int)ch == 13) { // Check until carriage return
      003333 8A 01            [24] 1209 	mov	ar1,r2
      003335 7B 00            [12] 1210 	mov	r3,#0x00
      003337 B9 0D 05         [24] 1211 	cjne	r1,#0x0d,00489$
      00333A BB 00 02         [24] 1212 	cjne	r3,#0x00,00489$
      00333D 80 71            [24] 1213 	sjmp	00118$
      00333F                       1214 00489$:
                                   1215 ;	main.c:223: if ((ch >= '0') && (ch <= '9')) {
      00333F BA 30 00         [24] 1216 	cjne	r2,#0x30,00490$
      003342                       1217 00490$:
      003342 40 0F            [24] 1218 	jc	00113$
      003344 EA               [12] 1219 	mov	a,r2
      003345 24 C6            [12] 1220 	add	a,#0xff - 0x39
      003347 40 0A            [24] 1221 	jc	00113$
                                   1222 ;	main.c:224: digit = ch - '0';
      003349 E9               [12] 1223 	mov	a,r1
      00334A 24 D0            [12] 1224 	add	a,#0xd0
      00334C F9               [12] 1225 	mov	r1,a
      00334D EB               [12] 1226 	mov	a,r3
      00334E 34 FF            [12] 1227 	addc	a,#0xff
      003350 FB               [12] 1228 	mov	r3,a
      003351 80 44            [24] 1229 	sjmp	00114$
      003353                       1230 00113$:
                                   1231 ;	main.c:225: } else if ((ch >= 'A') && (ch <= 'F')) {
      003353 BA 41 00         [24] 1232 	cjne	r2,#0x41,00493$
      003356                       1233 00493$:
      003356 40 13            [24] 1234 	jc	00109$
      003358 EA               [12] 1235 	mov	a,r2
      003359 24 B9            [12] 1236 	add	a,#0xff - 0x46
      00335B 40 0E            [24] 1237 	jc	00109$
                                   1238 ;	main.c:226: digit = ch - 7 - '0';
      00335D 8A 00            [24] 1239 	mov	ar0,r2
      00335F 7D 00            [12] 1240 	mov	r5,#0x00
      003361 E8               [12] 1241 	mov	a,r0
      003362 24 C9            [12] 1242 	add	a,#0xc9
      003364 F9               [12] 1243 	mov	r1,a
      003365 ED               [12] 1244 	mov	a,r5
      003366 34 FF            [12] 1245 	addc	a,#0xff
      003368 FB               [12] 1246 	mov	r3,a
      003369 80 2C            [24] 1247 	sjmp	00114$
      00336B                       1248 00109$:
                                   1249 ;	main.c:227: } else if ((ch >= 'a') && (ch <= 'f')) {
      00336B BA 61 00         [24] 1250 	cjne	r2,#0x61,00496$
      00336E                       1251 00496$:
      00336E 40 11            [24] 1252 	jc	00105$
      003370 EA               [12] 1253 	mov	a,r2
      003371 24 99            [12] 1254 	add	a,#0xff - 0x66
      003373 40 0C            [24] 1255 	jc	00105$
                                   1256 ;	main.c:228: digit = ch - 32 - 7 - '0';
      003375 7D 00            [12] 1257 	mov	r5,#0x00
      003377 EA               [12] 1258 	mov	a,r2
      003378 24 A9            [12] 1259 	add	a,#0xa9
      00337A F9               [12] 1260 	mov	r1,a
      00337B ED               [12] 1261 	mov	a,r5
      00337C 34 FF            [12] 1262 	addc	a,#0xff
      00337E FB               [12] 1263 	mov	r3,a
      00337F 80 16            [24] 1264 	sjmp	00114$
      003381                       1265 00105$:
                                   1266 ;	main.c:230: printf("Invalid input. Please enter 0-9, A-F or a-f only.\r\n");
      003381 74 31            [12] 1267 	mov	a,#___str_8
      003383 C0 E0            [24] 1268 	push	acc
      003385 74 42            [12] 1269 	mov	a,#(___str_8 >> 8)
      003387 C0 E0            [24] 1270 	push	acc
      003389 74 80            [12] 1271 	mov	a,#0x80
      00338B C0 E0            [24] 1272 	push	acc
      00338D 12 39 66         [24] 1273 	lcall	_printf
      003390 15 81            [12] 1274 	dec	sp
      003392 15 81            [12] 1275 	dec	sp
      003394 15 81            [12] 1276 	dec	sp
                                   1277 ;	main.c:231: return;
      003396 22               [24] 1278 	ret
      003397                       1279 00114$:
                                   1280 ;	main.c:233: addr = addr * 16 + digit;
      003397 8E 04            [24] 1281 	mov	ar4,r6
      003399 EF               [12] 1282 	mov	a,r7
      00339A C4               [12] 1283 	swap	a
      00339B 54 F0            [12] 1284 	anl	a,#0xf0
      00339D CC               [12] 1285 	xch	a,r4
      00339E C4               [12] 1286 	swap	a
      00339F CC               [12] 1287 	xch	a,r4
      0033A0 6C               [12] 1288 	xrl	a,r4
      0033A1 CC               [12] 1289 	xch	a,r4
      0033A2 54 F0            [12] 1290 	anl	a,#0xf0
      0033A4 CC               [12] 1291 	xch	a,r4
      0033A5 6C               [12] 1292 	xrl	a,r4
      0033A6 FD               [12] 1293 	mov	r5,a
      0033A7 E9               [12] 1294 	mov	a,r1
      0033A8 2C               [12] 1295 	add	a,r4
      0033A9 FE               [12] 1296 	mov	r6,a
      0033AA EB               [12] 1297 	mov	a,r3
      0033AB 3D               [12] 1298 	addc	a,r5
      0033AC FF               [12] 1299 	mov	r7,a
      0033AD 02 33 26         [24] 1300 	ljmp	00117$
      0033B0                       1301 00118$:
                                   1302 ;	main.c:237: printf("Entered address: 0x%x\r\n", addr);
      0033B0 C0 07            [24] 1303 	push	ar7
      0033B2 C0 06            [24] 1304 	push	ar6
      0033B4 C0 06            [24] 1305 	push	ar6
      0033B6 C0 07            [24] 1306 	push	ar7
      0033B8 74 65            [12] 1307 	mov	a,#___str_9
      0033BA C0 E0            [24] 1308 	push	acc
      0033BC 74 42            [12] 1309 	mov	a,#(___str_9 >> 8)
      0033BE C0 E0            [24] 1310 	push	acc
      0033C0 74 80            [12] 1311 	mov	a,#0x80
      0033C2 C0 E0            [24] 1312 	push	acc
      0033C4 12 39 66         [24] 1313 	lcall	_printf
      0033C7 E5 81            [12] 1314 	mov	a,sp
      0033C9 24 FB            [12] 1315 	add	a,#0xfb
      0033CB F5 81            [12] 1316 	mov	sp,a
      0033CD D0 06            [24] 1317 	pop	ar6
      0033CF D0 07            [24] 1318 	pop	ar7
                                   1319 ;	main.c:240: if ((addr < 0x0) || (addr > 0x7FF)) {
      0033D1 C3               [12] 1320 	clr	c
      0033D2 74 FF            [12] 1321 	mov	a,#0xff
      0033D4 9E               [12] 1322 	subb	a,r6
      0033D5 74 07            [12] 1323 	mov	a,#0x07
      0033D7 9F               [12] 1324 	subb	a,r7
      0033D8 50 20            [24] 1325 	jnc	00120$
                                   1326 ;	main.c:241: printf("Invalid buffer address. The address should be between 0 and 7FF.\r\n");
      0033DA C0 07            [24] 1327 	push	ar7
      0033DC C0 06            [24] 1328 	push	ar6
      0033DE 74 7D            [12] 1329 	mov	a,#___str_10
      0033E0 C0 E0            [24] 1330 	push	acc
      0033E2 74 42            [12] 1331 	mov	a,#(___str_10 >> 8)
      0033E4 C0 E0            [24] 1332 	push	acc
      0033E6 74 80            [12] 1333 	mov	a,#0x80
      0033E8 C0 E0            [24] 1334 	push	acc
      0033EA 12 39 66         [24] 1335 	lcall	_printf
      0033ED 15 81            [12] 1336 	dec	sp
      0033EF 15 81            [12] 1337 	dec	sp
      0033F1 15 81            [12] 1338 	dec	sp
      0033F3 D0 06            [24] 1339 	pop	ar6
      0033F5 D0 07            [24] 1340 	pop	ar7
                                   1341 ;	main.c:242: break;
      0033F7 02 32 BB         [24] 1342 	ljmp	00212$
      0033FA                       1343 00120$:
                                   1344 ;	main.c:245: printf("Enter the data byte to write:\r\n");
      0033FA C0 07            [24] 1345 	push	ar7
      0033FC C0 06            [24] 1346 	push	ar6
      0033FE 74 C0            [12] 1347 	mov	a,#___str_11
      003400 C0 E0            [24] 1348 	push	acc
      003402 74 42            [12] 1349 	mov	a,#(___str_11 >> 8)
      003404 C0 E0            [24] 1350 	push	acc
      003406 74 80            [12] 1351 	mov	a,#0x80
      003408 C0 E0            [24] 1352 	push	acc
      00340A 12 39 66         [24] 1353 	lcall	_printf
      00340D 15 81            [12] 1354 	dec	sp
      00340F 15 81            [12] 1355 	dec	sp
      003411 15 81            [12] 1356 	dec	sp
      003413 D0 06            [24] 1357 	pop	ar6
      003415 D0 07            [24] 1358 	pop	ar7
                                   1359 ;	main.c:247: while (1) {
      003417                       1360 00137$:
                                   1361 ;	main.c:248: ch = getchar();
      003417 C0 07            [24] 1362 	push	ar7
      003419 C0 06            [24] 1363 	push	ar6
      00341B 12 30 62         [24] 1364 	lcall	_getchar
      00341E AC 82            [24] 1365 	mov	r4,dpl
      003420 D0 06            [24] 1366 	pop	ar6
      003422 D0 07            [24] 1367 	pop	ar7
                                   1368 ;	main.c:250: if ((int)ch == 13) { // Check until carriage return
      003424 8C 03            [24] 1369 	mov	ar3,r4
      003426 7D 00            [12] 1370 	mov	r5,#0x00
      003428 BB 0D 05         [24] 1371 	cjne	r3,#0x0d,00500$
      00342B BD 00 02         [24] 1372 	cjne	r5,#0x00,00500$
      00342E 80 6E            [24] 1373 	sjmp	00138$
      003430                       1374 00500$:
                                   1375 ;	main.c:254: if ((ch >= '0') && (ch <= '9')) {
      003430 BC 30 00         [24] 1376 	cjne	r4,#0x30,00501$
      003433                       1377 00501$:
      003433 40 0F            [24] 1378 	jc	00133$
      003435 EC               [12] 1379 	mov	a,r4
      003436 24 C6            [12] 1380 	add	a,#0xff - 0x39
      003438 40 0A            [24] 1381 	jc	00133$
                                   1382 ;	main.c:255: digit = ch - '0';
      00343A EB               [12] 1383 	mov	a,r3
      00343B 24 D0            [12] 1384 	add	a,#0xd0
      00343D FA               [12] 1385 	mov	r2,a
      00343E ED               [12] 1386 	mov	a,r5
      00343F 34 FF            [12] 1387 	addc	a,#0xff
      003441 F9               [12] 1388 	mov	r1,a
      003442 80 3E            [24] 1389 	sjmp	00134$
      003444                       1390 00133$:
                                   1391 ;	main.c:256: } else if ((ch >= 'A') && (ch <= 'F')) {
      003444 BC 41 00         [24] 1392 	cjne	r4,#0x41,00504$
      003447                       1393 00504$:
      003447 40 0F            [24] 1394 	jc	00129$
      003449 EC               [12] 1395 	mov	a,r4
      00344A 24 B9            [12] 1396 	add	a,#0xff - 0x46
      00344C 40 0A            [24] 1397 	jc	00129$
                                   1398 ;	main.c:257: digit = ch - 7 - '0';
      00344E EB               [12] 1399 	mov	a,r3
      00344F 24 C9            [12] 1400 	add	a,#0xc9
      003451 FA               [12] 1401 	mov	r2,a
      003452 ED               [12] 1402 	mov	a,r5
      003453 34 FF            [12] 1403 	addc	a,#0xff
      003455 F9               [12] 1404 	mov	r1,a
      003456 80 2A            [24] 1405 	sjmp	00134$
      003458                       1406 00129$:
                                   1407 ;	main.c:258: } else if ((ch >= 'a') && (ch <= 'f')) {
      003458 BC 61 00         [24] 1408 	cjne	r4,#0x61,00507$
      00345B                       1409 00507$:
      00345B 40 0F            [24] 1410 	jc	00125$
      00345D EC               [12] 1411 	mov	a,r4
      00345E 24 99            [12] 1412 	add	a,#0xff - 0x66
      003460 40 0A            [24] 1413 	jc	00125$
                                   1414 ;	main.c:259: digit = ch - 32 - 7 - '0';
      003462 EB               [12] 1415 	mov	a,r3
      003463 24 A9            [12] 1416 	add	a,#0xa9
      003465 FA               [12] 1417 	mov	r2,a
      003466 ED               [12] 1418 	mov	a,r5
      003467 34 FF            [12] 1419 	addc	a,#0xff
      003469 F9               [12] 1420 	mov	r1,a
      00346A 80 16            [24] 1421 	sjmp	00134$
      00346C                       1422 00125$:
                                   1423 ;	main.c:261: printf("Invalid input. Please enter 0-9, A-F or a-f only.\r\n");
      00346C 74 31            [12] 1424 	mov	a,#___str_8
      00346E C0 E0            [24] 1425 	push	acc
      003470 74 42            [12] 1426 	mov	a,#(___str_8 >> 8)
      003472 C0 E0            [24] 1427 	push	acc
      003474 74 80            [12] 1428 	mov	a,#0x80
      003476 C0 E0            [24] 1429 	push	acc
      003478 12 39 66         [24] 1430 	lcall	_printf
      00347B 15 81            [12] 1431 	dec	sp
      00347D 15 81            [12] 1432 	dec	sp
      00347F 15 81            [12] 1433 	dec	sp
                                   1434 ;	main.c:262: return;
      003481 22               [24] 1435 	ret
      003482                       1436 00134$:
                                   1437 ;	main.c:264: data = data * 16 + digit;
      003482 AC 0F            [24] 1438 	mov	r4,_main_data_131072_47
      003484 E5 10            [12] 1439 	mov	a,(_main_data_131072_47 + 1)
      003486 C4               [12] 1440 	swap	a
      003487 54 F0            [12] 1441 	anl	a,#0xf0
      003489 CC               [12] 1442 	xch	a,r4
      00348A C4               [12] 1443 	swap	a
      00348B CC               [12] 1444 	xch	a,r4
      00348C 6C               [12] 1445 	xrl	a,r4
      00348D CC               [12] 1446 	xch	a,r4
      00348E 54 F0            [12] 1447 	anl	a,#0xf0
      003490 CC               [12] 1448 	xch	a,r4
      003491 6C               [12] 1449 	xrl	a,r4
      003492 FD               [12] 1450 	mov	r5,a
      003493 EA               [12] 1451 	mov	a,r2
      003494 2C               [12] 1452 	add	a,r4
      003495 F5 0F            [12] 1453 	mov	_main_data_131072_47,a
      003497 E9               [12] 1454 	mov	a,r1
      003498 3D               [12] 1455 	addc	a,r5
      003499 F5 10            [12] 1456 	mov	(_main_data_131072_47 + 1),a
      00349B 02 34 17         [24] 1457 	ljmp	00137$
      00349E                       1458 00138$:
                                   1459 ;	main.c:268: printf("Entered data: 0x%x\r\n", data);
      00349E C0 07            [24] 1460 	push	ar7
      0034A0 C0 06            [24] 1461 	push	ar6
      0034A2 C0 0F            [24] 1462 	push	_main_data_131072_47
      0034A4 C0 10            [24] 1463 	push	(_main_data_131072_47 + 1)
      0034A6 74 E0            [12] 1464 	mov	a,#___str_12
      0034A8 C0 E0            [24] 1465 	push	acc
      0034AA 74 42            [12] 1466 	mov	a,#(___str_12 >> 8)
      0034AC C0 E0            [24] 1467 	push	acc
      0034AE 74 80            [12] 1468 	mov	a,#0x80
      0034B0 C0 E0            [24] 1469 	push	acc
      0034B2 12 39 66         [24] 1470 	lcall	_printf
      0034B5 E5 81            [12] 1471 	mov	a,sp
      0034B7 24 FB            [12] 1472 	add	a,#0xfb
      0034B9 F5 81            [12] 1473 	mov	sp,a
      0034BB D0 06            [24] 1474 	pop	ar6
      0034BD D0 07            [24] 1475 	pop	ar7
                                   1476 ;	main.c:271: if ((data < 0x0) || (data > 0xFF)) {
      0034BF C3               [12] 1477 	clr	c
      0034C0 74 FF            [12] 1478 	mov	a,#0xff
      0034C2 95 0F            [12] 1479 	subb	a,_main_data_131072_47
      0034C4 E4               [12] 1480 	clr	a
      0034C5 95 10            [12] 1481 	subb	a,(_main_data_131072_47 + 1)
      0034C7 50 20            [24] 1482 	jnc	00140$
                                   1483 ;	main.c:272: printf("Invalid buffer data. The data should be between 0 and FF.\r\n");
      0034C9 C0 07            [24] 1484 	push	ar7
      0034CB C0 06            [24] 1485 	push	ar6
      0034CD 74 F5            [12] 1486 	mov	a,#___str_13
      0034CF C0 E0            [24] 1487 	push	acc
      0034D1 74 42            [12] 1488 	mov	a,#(___str_13 >> 8)
      0034D3 C0 E0            [24] 1489 	push	acc
      0034D5 74 80            [12] 1490 	mov	a,#0x80
      0034D7 C0 E0            [24] 1491 	push	acc
      0034D9 12 39 66         [24] 1492 	lcall	_printf
      0034DC 15 81            [12] 1493 	dec	sp
      0034DE 15 81            [12] 1494 	dec	sp
      0034E0 15 81            [12] 1495 	dec	sp
      0034E2 D0 06            [24] 1496 	pop	ar6
      0034E4 D0 07            [24] 1497 	pop	ar7
                                   1498 ;	main.c:273: break;
      0034E6 02 32 BB         [24] 1499 	ljmp	00212$
      0034E9                       1500 00140$:
                                   1501 ;	main.c:276: eebytew(addr, data);
      0034E9 85 0F 08         [24] 1502 	mov	_eebytew_PARM_2,_main_data_131072_47
      0034EC 8E 82            [24] 1503 	mov	dpl,r6
      0034EE 8F 83            [24] 1504 	mov	dph,r7
      0034F0 C0 07            [24] 1505 	push	ar7
      0034F2 C0 06            [24] 1506 	push	ar6
      0034F4 12 31 DB         [24] 1507 	lcall	_eebytew
      0034F7 D0 06            [24] 1508 	pop	ar6
      0034F9 D0 07            [24] 1509 	pop	ar7
                                   1510 ;	main.c:277: break;
      0034FB 02 32 BB         [24] 1511 	ljmp	00212$
                                   1512 ;	main.c:280: case 'r':
      0034FE                       1513 00142$:
                                   1514 ;	main.c:281: printf("Enter the address location to read the data from : \r\n");
      0034FE C0 07            [24] 1515 	push	ar7
      003500 C0 06            [24] 1516 	push	ar6
      003502 74 31            [12] 1517 	mov	a,#___str_14
      003504 C0 E0            [24] 1518 	push	acc
      003506 74 43            [12] 1519 	mov	a,#(___str_14 >> 8)
      003508 C0 E0            [24] 1520 	push	acc
      00350A 74 80            [12] 1521 	mov	a,#0x80
      00350C C0 E0            [24] 1522 	push	acc
      00350E 12 39 66         [24] 1523 	lcall	_printf
      003511 15 81            [12] 1524 	dec	sp
      003513 15 81            [12] 1525 	dec	sp
      003515 15 81            [12] 1526 	dec	sp
      003517 D0 06            [24] 1527 	pop	ar6
      003519 D0 07            [24] 1528 	pop	ar7
                                   1529 ;	main.c:282: while (1) {
      00351B                       1530 00158$:
                                   1531 ;	main.c:283: ch = getchar();
      00351B C0 07            [24] 1532 	push	ar7
      00351D C0 06            [24] 1533 	push	ar6
      00351F 12 30 62         [24] 1534 	lcall	_getchar
      003522 AC 82            [24] 1535 	mov	r4,dpl
      003524 D0 06            [24] 1536 	pop	ar6
      003526 D0 07            [24] 1537 	pop	ar7
                                   1538 ;	main.c:285: if ((int)ch == 13) { // Check until carriage return
      003528 8C 03            [24] 1539 	mov	ar3,r4
      00352A 7D 00            [12] 1540 	mov	r5,#0x00
      00352C BB 0D 05         [24] 1541 	cjne	r3,#0x0d,00511$
      00352F BD 00 02         [24] 1542 	cjne	r5,#0x00,00511$
      003532 80 6B            [24] 1543 	sjmp	00159$
      003534                       1544 00511$:
                                   1545 ;	main.c:289: if ((ch >= '0') && (ch <= '9')) {
      003534 BC 30 00         [24] 1546 	cjne	r4,#0x30,00512$
      003537                       1547 00512$:
      003537 40 0F            [24] 1548 	jc	00154$
      003539 EC               [12] 1549 	mov	a,r4
      00353A 24 C6            [12] 1550 	add	a,#0xff - 0x39
      00353C 40 0A            [24] 1551 	jc	00154$
                                   1552 ;	main.c:290: digit = ch - '0';
      00353E EB               [12] 1553 	mov	a,r3
      00353F 24 D0            [12] 1554 	add	a,#0xd0
      003541 F9               [12] 1555 	mov	r1,a
      003542 ED               [12] 1556 	mov	a,r5
      003543 34 FF            [12] 1557 	addc	a,#0xff
      003545 FA               [12] 1558 	mov	r2,a
      003546 80 3E            [24] 1559 	sjmp	00155$
      003548                       1560 00154$:
                                   1561 ;	main.c:291: } else if ((ch >= 'A') && (ch <= 'F')) {
      003548 BC 41 00         [24] 1562 	cjne	r4,#0x41,00515$
      00354B                       1563 00515$:
      00354B 40 0F            [24] 1564 	jc	00150$
      00354D EC               [12] 1565 	mov	a,r4
      00354E 24 B9            [12] 1566 	add	a,#0xff - 0x46
      003550 40 0A            [24] 1567 	jc	00150$
                                   1568 ;	main.c:292: digit = ch - 7 - '0';
      003552 EB               [12] 1569 	mov	a,r3
      003553 24 C9            [12] 1570 	add	a,#0xc9
      003555 F9               [12] 1571 	mov	r1,a
      003556 ED               [12] 1572 	mov	a,r5
      003557 34 FF            [12] 1573 	addc	a,#0xff
      003559 FA               [12] 1574 	mov	r2,a
      00355A 80 2A            [24] 1575 	sjmp	00155$
      00355C                       1576 00150$:
                                   1577 ;	main.c:293: } else if ((ch >= 'a') && (ch <= 'f')) {
      00355C BC 61 00         [24] 1578 	cjne	r4,#0x61,00518$
      00355F                       1579 00518$:
      00355F 40 0F            [24] 1580 	jc	00146$
      003561 EC               [12] 1581 	mov	a,r4
      003562 24 99            [12] 1582 	add	a,#0xff - 0x66
      003564 40 0A            [24] 1583 	jc	00146$
                                   1584 ;	main.c:294: digit = ch - 32 - 7 - '0';
      003566 EB               [12] 1585 	mov	a,r3
      003567 24 A9            [12] 1586 	add	a,#0xa9
      003569 F9               [12] 1587 	mov	r1,a
      00356A ED               [12] 1588 	mov	a,r5
      00356B 34 FF            [12] 1589 	addc	a,#0xff
      00356D FA               [12] 1590 	mov	r2,a
      00356E 80 16            [24] 1591 	sjmp	00155$
      003570                       1592 00146$:
                                   1593 ;	main.c:296: printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
      003570 74 67            [12] 1594 	mov	a,#___str_15
      003572 C0 E0            [24] 1595 	push	acc
      003574 74 43            [12] 1596 	mov	a,#(___str_15 >> 8)
      003576 C0 E0            [24] 1597 	push	acc
      003578 74 80            [12] 1598 	mov	a,#0x80
      00357A C0 E0            [24] 1599 	push	acc
      00357C 12 39 66         [24] 1600 	lcall	_printf
      00357F 15 81            [12] 1601 	dec	sp
      003581 15 81            [12] 1602 	dec	sp
      003583 15 81            [12] 1603 	dec	sp
                                   1604 ;	main.c:297: return;
      003585 22               [24] 1605 	ret
      003586                       1606 00155$:
                                   1607 ;	main.c:299: addr = addr * 16 + digit;
      003586 8E 04            [24] 1608 	mov	ar4,r6
      003588 EF               [12] 1609 	mov	a,r7
      003589 C4               [12] 1610 	swap	a
      00358A 54 F0            [12] 1611 	anl	a,#0xf0
      00358C CC               [12] 1612 	xch	a,r4
      00358D C4               [12] 1613 	swap	a
      00358E CC               [12] 1614 	xch	a,r4
      00358F 6C               [12] 1615 	xrl	a,r4
      003590 CC               [12] 1616 	xch	a,r4
      003591 54 F0            [12] 1617 	anl	a,#0xf0
      003593 CC               [12] 1618 	xch	a,r4
      003594 6C               [12] 1619 	xrl	a,r4
      003595 FD               [12] 1620 	mov	r5,a
      003596 E9               [12] 1621 	mov	a,r1
      003597 2C               [12] 1622 	add	a,r4
      003598 FE               [12] 1623 	mov	r6,a
      003599 EA               [12] 1624 	mov	a,r2
      00359A 3D               [12] 1625 	addc	a,r5
      00359B FF               [12] 1626 	mov	r7,a
      00359C 02 35 1B         [24] 1627 	ljmp	00158$
      00359F                       1628 00159$:
                                   1629 ;	main.c:303: printf("Entered address: 0x%x\r\n", addr);
      00359F C0 07            [24] 1630 	push	ar7
      0035A1 C0 06            [24] 1631 	push	ar6
      0035A3 C0 06            [24] 1632 	push	ar6
      0035A5 C0 07            [24] 1633 	push	ar7
      0035A7 74 65            [12] 1634 	mov	a,#___str_9
      0035A9 C0 E0            [24] 1635 	push	acc
      0035AB 74 42            [12] 1636 	mov	a,#(___str_9 >> 8)
      0035AD C0 E0            [24] 1637 	push	acc
      0035AF 74 80            [12] 1638 	mov	a,#0x80
      0035B1 C0 E0            [24] 1639 	push	acc
      0035B3 12 39 66         [24] 1640 	lcall	_printf
      0035B6 E5 81            [12] 1641 	mov	a,sp
      0035B8 24 FB            [12] 1642 	add	a,#0xfb
      0035BA F5 81            [12] 1643 	mov	sp,a
      0035BC D0 06            [24] 1644 	pop	ar6
      0035BE D0 07            [24] 1645 	pop	ar7
                                   1646 ;	main.c:306: if ((addr < 0x0) || (addr > 0x7FF)) {
      0035C0 C3               [12] 1647 	clr	c
      0035C1 74 FF            [12] 1648 	mov	a,#0xff
      0035C3 9E               [12] 1649 	subb	a,r6
      0035C4 74 07            [12] 1650 	mov	a,#0x07
      0035C6 9F               [12] 1651 	subb	a,r7
      0035C7 50 16            [24] 1652 	jnc	00161$
                                   1653 ;	main.c:307: printf("Invalid buffer address. The address should be between 0 and 7FF.\r\n");
      0035C9 74 7D            [12] 1654 	mov	a,#___str_10
      0035CB C0 E0            [24] 1655 	push	acc
      0035CD 74 42            [12] 1656 	mov	a,#(___str_10 >> 8)
      0035CF C0 E0            [24] 1657 	push	acc
      0035D1 74 80            [12] 1658 	mov	a,#0x80
      0035D3 C0 E0            [24] 1659 	push	acc
      0035D5 12 39 66         [24] 1660 	lcall	_printf
      0035D8 15 81            [12] 1661 	dec	sp
      0035DA 15 81            [12] 1662 	dec	sp
      0035DC 15 81            [12] 1663 	dec	sp
                                   1664 ;	main.c:308: return;
      0035DE 22               [24] 1665 	ret
      0035DF                       1666 00161$:
                                   1667 ;	main.c:310: unsigned char rd = eebyter(addr);
      0035DF 8E 82            [24] 1668 	mov	dpl,r6
      0035E1 8F 83            [24] 1669 	mov	dph,r7
      0035E3 C0 07            [24] 1670 	push	ar7
      0035E5 C0 06            [24] 1671 	push	ar6
      0035E7 12 31 FE         [24] 1672 	lcall	_eebyter
      0035EA AD 82            [24] 1673 	mov	r5,dpl
                                   1674 ;	main.c:311: printf("read data: 0x%x\r\n", rd);
      0035EC 7C 00            [12] 1675 	mov	r4,#0x00
      0035EE C0 05            [24] 1676 	push	ar5
      0035F0 C0 04            [24] 1677 	push	ar4
      0035F2 74 96            [12] 1678 	mov	a,#___str_16
      0035F4 C0 E0            [24] 1679 	push	acc
      0035F6 74 43            [12] 1680 	mov	a,#(___str_16 >> 8)
      0035F8 C0 E0            [24] 1681 	push	acc
      0035FA 74 80            [12] 1682 	mov	a,#0x80
      0035FC C0 E0            [24] 1683 	push	acc
      0035FE 12 39 66         [24] 1684 	lcall	_printf
      003601 E5 81            [12] 1685 	mov	a,sp
      003603 24 FB            [12] 1686 	add	a,#0xfb
      003605 F5 81            [12] 1687 	mov	sp,a
      003607 D0 06            [24] 1688 	pop	ar6
      003609 D0 07            [24] 1689 	pop	ar7
                                   1690 ;	main.c:312: break;
      00360B 02 32 BB         [24] 1691 	ljmp	00212$
                                   1692 ;	main.c:314: case 'h':
      00360E                       1693 00163$:
                                   1694 ;	main.c:315: printf("Enter the start address for dump:\r\n");
      00360E 74 A8            [12] 1695 	mov	a,#___str_17
      003610 C0 E0            [24] 1696 	push	acc
      003612 74 43            [12] 1697 	mov	a,#(___str_17 >> 8)
      003614 C0 E0            [24] 1698 	push	acc
      003616 74 80            [12] 1699 	mov	a,#0x80
      003618 C0 E0            [24] 1700 	push	acc
      00361A 12 39 66         [24] 1701 	lcall	_printf
      00361D 15 81            [12] 1702 	dec	sp
      00361F 15 81            [12] 1703 	dec	sp
      003621 15 81            [12] 1704 	dec	sp
                                   1705 ;	main.c:316: while (1) {
      003623                       1706 00179$:
                                   1707 ;	main.c:317: ch = getchar();
      003623 12 30 62         [24] 1708 	lcall	_getchar
      003626 AC 82            [24] 1709 	mov	r4,dpl
                                   1710 ;	main.c:319: if ((int)ch == 13) { // Check until carriage return
      003628 8C 03            [24] 1711 	mov	ar3,r4
      00362A 7D 00            [12] 1712 	mov	r5,#0x00
      00362C BB 0D 05         [24] 1713 	cjne	r3,#0x0d,00522$
      00362F BD 00 02         [24] 1714 	cjne	r5,#0x00,00522$
      003632 80 74            [24] 1715 	sjmp	00180$
      003634                       1716 00522$:
                                   1717 ;	main.c:323: if ((ch >= '0') && (ch <= '9')) {
      003634 BC 30 00         [24] 1718 	cjne	r4,#0x30,00523$
      003637                       1719 00523$:
      003637 40 0F            [24] 1720 	jc	00175$
      003639 EC               [12] 1721 	mov	a,r4
      00363A 24 C6            [12] 1722 	add	a,#0xff - 0x39
      00363C 40 0A            [24] 1723 	jc	00175$
                                   1724 ;	main.c:324: digit = ch - '0';
      00363E EB               [12] 1725 	mov	a,r3
      00363F 24 D0            [12] 1726 	add	a,#0xd0
      003641 FB               [12] 1727 	mov	r3,a
      003642 ED               [12] 1728 	mov	a,r5
      003643 34 FF            [12] 1729 	addc	a,#0xff
      003645 FD               [12] 1730 	mov	r5,a
      003646 80 44            [24] 1731 	sjmp	00176$
      003648                       1732 00175$:
                                   1733 ;	main.c:325: } else if ((ch >= 'A') && (ch <= 'F')) {
      003648 BC 41 00         [24] 1734 	cjne	r4,#0x41,00526$
      00364B                       1735 00526$:
      00364B 40 13            [24] 1736 	jc	00171$
      00364D EC               [12] 1737 	mov	a,r4
      00364E 24 B9            [12] 1738 	add	a,#0xff - 0x46
      003650 40 0E            [24] 1739 	jc	00171$
                                   1740 ;	main.c:326: digit = ch - 7 - '0';
      003652 8C 01            [24] 1741 	mov	ar1,r4
      003654 7A 00            [12] 1742 	mov	r2,#0x00
      003656 E9               [12] 1743 	mov	a,r1
      003657 24 C9            [12] 1744 	add	a,#0xc9
      003659 FB               [12] 1745 	mov	r3,a
      00365A EA               [12] 1746 	mov	a,r2
      00365B 34 FF            [12] 1747 	addc	a,#0xff
      00365D FD               [12] 1748 	mov	r5,a
      00365E 80 2C            [24] 1749 	sjmp	00176$
      003660                       1750 00171$:
                                   1751 ;	main.c:327: } else if ((ch >= 'a') && (ch <= 'f')) {
      003660 BC 61 00         [24] 1752 	cjne	r4,#0x61,00529$
      003663                       1753 00529$:
      003663 40 11            [24] 1754 	jc	00167$
      003665 EC               [12] 1755 	mov	a,r4
      003666 24 99            [12] 1756 	add	a,#0xff - 0x66
      003668 40 0C            [24] 1757 	jc	00167$
                                   1758 ;	main.c:328: digit = ch - 32 - 7 - '0';
      00366A 7A 00            [12] 1759 	mov	r2,#0x00
      00366C EC               [12] 1760 	mov	a,r4
      00366D 24 A9            [12] 1761 	add	a,#0xa9
      00366F FB               [12] 1762 	mov	r3,a
      003670 EA               [12] 1763 	mov	a,r2
      003671 34 FF            [12] 1764 	addc	a,#0xff
      003673 FD               [12] 1765 	mov	r5,a
      003674 80 16            [24] 1766 	sjmp	00176$
      003676                       1767 00167$:
                                   1768 ;	main.c:330: printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
      003676 74 67            [12] 1769 	mov	a,#___str_15
      003678 C0 E0            [24] 1770 	push	acc
      00367A 74 43            [12] 1771 	mov	a,#(___str_15 >> 8)
      00367C C0 E0            [24] 1772 	push	acc
      00367E 74 80            [12] 1773 	mov	a,#0x80
      003680 C0 E0            [24] 1774 	push	acc
      003682 12 39 66         [24] 1775 	lcall	_printf
      003685 15 81            [12] 1776 	dec	sp
      003687 15 81            [12] 1777 	dec	sp
      003689 15 81            [12] 1778 	dec	sp
                                   1779 ;	main.c:331: return;
      00368B 22               [24] 1780 	ret
      00368C                       1781 00176$:
                                   1782 ;	main.c:333: start_addr = start_addr * 16 + digit;
      00368C AC 0B            [24] 1783 	mov	r4,_main_start_addr_131072_47
      00368E E5 0C            [12] 1784 	mov	a,(_main_start_addr_131072_47 + 1)
      003690 C4               [12] 1785 	swap	a
      003691 54 F0            [12] 1786 	anl	a,#0xf0
      003693 CC               [12] 1787 	xch	a,r4
      003694 C4               [12] 1788 	swap	a
      003695 CC               [12] 1789 	xch	a,r4
      003696 6C               [12] 1790 	xrl	a,r4
      003697 CC               [12] 1791 	xch	a,r4
      003698 54 F0            [12] 1792 	anl	a,#0xf0
      00369A CC               [12] 1793 	xch	a,r4
      00369B 6C               [12] 1794 	xrl	a,r4
      00369C FA               [12] 1795 	mov	r2,a
      00369D EB               [12] 1796 	mov	a,r3
      00369E 2C               [12] 1797 	add	a,r4
      00369F F5 0B            [12] 1798 	mov	_main_start_addr_131072_47,a
      0036A1 ED               [12] 1799 	mov	a,r5
      0036A2 3A               [12] 1800 	addc	a,r2
      0036A3 F5 0C            [12] 1801 	mov	(_main_start_addr_131072_47 + 1),a
      0036A5 02 36 23         [24] 1802 	ljmp	00179$
      0036A8                       1803 00180$:
                                   1804 ;	main.c:337: printf("Entered start address: 0x%x\r\n", start_addr);
      0036A8 C0 0B            [24] 1805 	push	_main_start_addr_131072_47
      0036AA C0 0C            [24] 1806 	push	(_main_start_addr_131072_47 + 1)
      0036AC 74 CC            [12] 1807 	mov	a,#___str_18
      0036AE C0 E0            [24] 1808 	push	acc
      0036B0 74 43            [12] 1809 	mov	a,#(___str_18 >> 8)
      0036B2 C0 E0            [24] 1810 	push	acc
      0036B4 74 80            [12] 1811 	mov	a,#0x80
      0036B6 C0 E0            [24] 1812 	push	acc
      0036B8 12 39 66         [24] 1813 	lcall	_printf
      0036BB E5 81            [12] 1814 	mov	a,sp
      0036BD 24 FB            [12] 1815 	add	a,#0xfb
      0036BF F5 81            [12] 1816 	mov	sp,a
                                   1817 ;	main.c:340: if ((start_addr < 0x0) || (start_addr > 0x7FF)) {
      0036C1 C3               [12] 1818 	clr	c
      0036C2 74 FF            [12] 1819 	mov	a,#0xff
      0036C4 95 0B            [12] 1820 	subb	a,_main_start_addr_131072_47
      0036C6 74 07            [12] 1821 	mov	a,#0x07
      0036C8 95 0C            [12] 1822 	subb	a,(_main_start_addr_131072_47 + 1)
      0036CA 50 16            [24] 1823 	jnc	00182$
                                   1824 ;	main.c:341: printf("Invalid start address. The address should be between 0 and 7FF.\r\n");
      0036CC 74 EA            [12] 1825 	mov	a,#___str_19
      0036CE C0 E0            [24] 1826 	push	acc
      0036D0 74 43            [12] 1827 	mov	a,#(___str_19 >> 8)
      0036D2 C0 E0            [24] 1828 	push	acc
      0036D4 74 80            [12] 1829 	mov	a,#0x80
      0036D6 C0 E0            [24] 1830 	push	acc
      0036D8 12 39 66         [24] 1831 	lcall	_printf
      0036DB 15 81            [12] 1832 	dec	sp
      0036DD 15 81            [12] 1833 	dec	sp
      0036DF 15 81            [12] 1834 	dec	sp
                                   1835 ;	main.c:342: return;
      0036E1 22               [24] 1836 	ret
      0036E2                       1837 00182$:
                                   1838 ;	main.c:345: printf("Enter the end address for dump:\r\n");
      0036E2 74 2C            [12] 1839 	mov	a,#___str_20
      0036E4 C0 E0            [24] 1840 	push	acc
      0036E6 74 44            [12] 1841 	mov	a,#(___str_20 >> 8)
      0036E8 C0 E0            [24] 1842 	push	acc
      0036EA 74 80            [12] 1843 	mov	a,#0x80
      0036EC C0 E0            [24] 1844 	push	acc
      0036EE 12 39 66         [24] 1845 	lcall	_printf
      0036F1 15 81            [12] 1846 	dec	sp
      0036F3 15 81            [12] 1847 	dec	sp
      0036F5 15 81            [12] 1848 	dec	sp
                                   1849 ;	main.c:346: while (1) {
      0036F7                       1850 00199$:
                                   1851 ;	main.c:347: ch = getchar();
      0036F7 12 30 62         [24] 1852 	lcall	_getchar
      0036FA AC 82            [24] 1853 	mov	r4,dpl
                                   1854 ;	main.c:349: if ((int)ch == 13) { // Check until carriage return
      0036FC 8C 03            [24] 1855 	mov	ar3,r4
      0036FE 7D 00            [12] 1856 	mov	r5,#0x00
      003700 BB 0D 05         [24] 1857 	cjne	r3,#0x0d,00533$
      003703 BD 00 02         [24] 1858 	cjne	r5,#0x00,00533$
      003706 80 6D            [24] 1859 	sjmp	00200$
      003708                       1860 00533$:
                                   1861 ;	main.c:353: if ((ch >= '0') && (ch <= '9')) {
      003708 BC 30 00         [24] 1862 	cjne	r4,#0x30,00534$
      00370B                       1863 00534$:
      00370B 40 0F            [24] 1864 	jc	00195$
      00370D EC               [12] 1865 	mov	a,r4
      00370E 24 C6            [12] 1866 	add	a,#0xff - 0x39
      003710 40 0A            [24] 1867 	jc	00195$
                                   1868 ;	main.c:354: digit = ch - '0';
      003712 EB               [12] 1869 	mov	a,r3
      003713 24 D0            [12] 1870 	add	a,#0xd0
      003715 FA               [12] 1871 	mov	r2,a
      003716 ED               [12] 1872 	mov	a,r5
      003717 34 FF            [12] 1873 	addc	a,#0xff
      003719 F9               [12] 1874 	mov	r1,a
      00371A 80 3E            [24] 1875 	sjmp	00196$
      00371C                       1876 00195$:
                                   1877 ;	main.c:355: } else if ((ch >= 'A') && (ch <= 'F')) {
      00371C BC 41 00         [24] 1878 	cjne	r4,#0x41,00537$
      00371F                       1879 00537$:
      00371F 40 0F            [24] 1880 	jc	00191$
      003721 EC               [12] 1881 	mov	a,r4
      003722 24 B9            [12] 1882 	add	a,#0xff - 0x46
      003724 40 0A            [24] 1883 	jc	00191$
                                   1884 ;	main.c:356: digit = ch - 7 - '0';
      003726 EB               [12] 1885 	mov	a,r3
      003727 24 C9            [12] 1886 	add	a,#0xc9
      003729 FA               [12] 1887 	mov	r2,a
      00372A ED               [12] 1888 	mov	a,r5
      00372B 34 FF            [12] 1889 	addc	a,#0xff
      00372D F9               [12] 1890 	mov	r1,a
      00372E 80 2A            [24] 1891 	sjmp	00196$
      003730                       1892 00191$:
                                   1893 ;	main.c:357: } else if ((ch >= 'a') && (ch <= 'f')) {
      003730 BC 61 00         [24] 1894 	cjne	r4,#0x61,00540$
      003733                       1895 00540$:
      003733 40 0F            [24] 1896 	jc	00187$
      003735 EC               [12] 1897 	mov	a,r4
      003736 24 99            [12] 1898 	add	a,#0xff - 0x66
      003738 40 0A            [24] 1899 	jc	00187$
                                   1900 ;	main.c:358: digit = ch - 32 - 7 - '0';
      00373A EB               [12] 1901 	mov	a,r3
      00373B 24 A9            [12] 1902 	add	a,#0xa9
      00373D FA               [12] 1903 	mov	r2,a
      00373E ED               [12] 1904 	mov	a,r5
      00373F 34 FF            [12] 1905 	addc	a,#0xff
      003741 F9               [12] 1906 	mov	r1,a
      003742 80 16            [24] 1907 	sjmp	00196$
      003744                       1908 00187$:
                                   1909 ;	main.c:360: printf("Invalid input. Please enter 0-9, A-F or a-f.\r\n");
      003744 74 67            [12] 1910 	mov	a,#___str_15
      003746 C0 E0            [24] 1911 	push	acc
      003748 74 43            [12] 1912 	mov	a,#(___str_15 >> 8)
      00374A C0 E0            [24] 1913 	push	acc
      00374C 74 80            [12] 1914 	mov	a,#0x80
      00374E C0 E0            [24] 1915 	push	acc
      003750 12 39 66         [24] 1916 	lcall	_printf
      003753 15 81            [12] 1917 	dec	sp
      003755 15 81            [12] 1918 	dec	sp
      003757 15 81            [12] 1919 	dec	sp
                                   1920 ;	main.c:361: return;
      003759 22               [24] 1921 	ret
      00375A                       1922 00196$:
                                   1923 ;	main.c:363: end_addr = end_addr * 16 + digit;
      00375A AC 0D            [24] 1924 	mov	r4,_main_end_addr_131072_47
      00375C E5 0E            [12] 1925 	mov	a,(_main_end_addr_131072_47 + 1)
      00375E C4               [12] 1926 	swap	a
      00375F 54 F0            [12] 1927 	anl	a,#0xf0
      003761 CC               [12] 1928 	xch	a,r4
      003762 C4               [12] 1929 	swap	a
      003763 CC               [12] 1930 	xch	a,r4
      003764 6C               [12] 1931 	xrl	a,r4
      003765 CC               [12] 1932 	xch	a,r4
      003766 54 F0            [12] 1933 	anl	a,#0xf0
      003768 CC               [12] 1934 	xch	a,r4
      003769 6C               [12] 1935 	xrl	a,r4
      00376A FD               [12] 1936 	mov	r5,a
      00376B EA               [12] 1937 	mov	a,r2
      00376C 2C               [12] 1938 	add	a,r4
      00376D F5 0D            [12] 1939 	mov	_main_end_addr_131072_47,a
      00376F E9               [12] 1940 	mov	a,r1
      003770 3D               [12] 1941 	addc	a,r5
      003771 F5 0E            [12] 1942 	mov	(_main_end_addr_131072_47 + 1),a
      003773 80 82            [24] 1943 	sjmp	00199$
      003775                       1944 00200$:
                                   1945 ;	main.c:367: printf("Entered end address: 0x%x\r\n", end_addr);
      003775 C0 0D            [24] 1946 	push	_main_end_addr_131072_47
      003777 C0 0E            [24] 1947 	push	(_main_end_addr_131072_47 + 1)
      003779 74 4E            [12] 1948 	mov	a,#___str_21
      00377B C0 E0            [24] 1949 	push	acc
      00377D 74 44            [12] 1950 	mov	a,#(___str_21 >> 8)
      00377F C0 E0            [24] 1951 	push	acc
      003781 74 80            [12] 1952 	mov	a,#0x80
      003783 C0 E0            [24] 1953 	push	acc
      003785 12 39 66         [24] 1954 	lcall	_printf
      003788 E5 81            [12] 1955 	mov	a,sp
      00378A 24 FB            [12] 1956 	add	a,#0xfb
      00378C F5 81            [12] 1957 	mov	sp,a
                                   1958 ;	main.c:370: if ((end_addr < 0x0) || (end_addr > 0x7FF) || (end_addr < start_addr)) {
      00378E C3               [12] 1959 	clr	c
      00378F 74 FF            [12] 1960 	mov	a,#0xff
      003791 95 0D            [12] 1961 	subb	a,_main_end_addr_131072_47
      003793 74 07            [12] 1962 	mov	a,#0x07
      003795 95 0E            [12] 1963 	subb	a,(_main_end_addr_131072_47 + 1)
      003797 40 0A            [24] 1964 	jc	00201$
      003799 E5 0D            [12] 1965 	mov	a,_main_end_addr_131072_47
      00379B 95 0B            [12] 1966 	subb	a,_main_start_addr_131072_47
      00379D E5 0E            [12] 1967 	mov	a,(_main_end_addr_131072_47 + 1)
      00379F 95 0C            [12] 1968 	subb	a,(_main_start_addr_131072_47 + 1)
      0037A1 50 16            [24] 1969 	jnc	00202$
      0037A3                       1970 00201$:
                                   1971 ;	main.c:371: printf("Invalid end address. The address should be between 0-7FF and more than the start address.\r\n");
      0037A3 74 6A            [12] 1972 	mov	a,#___str_22
      0037A5 C0 E0            [24] 1973 	push	acc
      0037A7 74 44            [12] 1974 	mov	a,#(___str_22 >> 8)
      0037A9 C0 E0            [24] 1975 	push	acc
      0037AB 74 80            [12] 1976 	mov	a,#0x80
      0037AD C0 E0            [24] 1977 	push	acc
      0037AF 12 39 66         [24] 1978 	lcall	_printf
      0037B2 15 81            [12] 1979 	dec	sp
      0037B4 15 81            [12] 1980 	dec	sp
      0037B6 15 81            [12] 1981 	dec	sp
                                   1982 ;	main.c:372: return;
      0037B8 22               [24] 1983 	ret
      0037B9                       1984 00202$:
                                   1985 ;	main.c:375: printf("%x:", start_addr);
      0037B9 C0 0B            [24] 1986 	push	_main_start_addr_131072_47
      0037BB C0 0C            [24] 1987 	push	(_main_start_addr_131072_47 + 1)
      0037BD 74 C6            [12] 1988 	mov	a,#___str_23
      0037BF C0 E0            [24] 1989 	push	acc
      0037C1 74 44            [12] 1990 	mov	a,#(___str_23 >> 8)
      0037C3 C0 E0            [24] 1991 	push	acc
      0037C5 74 80            [12] 1992 	mov	a,#0x80
      0037C7 C0 E0            [24] 1993 	push	acc
      0037C9 12 39 66         [24] 1994 	lcall	_printf
      0037CC E5 81            [12] 1995 	mov	a,sp
      0037CE 24 FB            [12] 1996 	add	a,#0xfb
      0037D0 F5 81            [12] 1997 	mov	sp,a
                                   1998 ;	main.c:377: for (int i=0; i<end_addr - start_addr; i++)
      0037D2 E5 0D            [12] 1999 	mov	a,_main_end_addr_131072_47
      0037D4 C3               [12] 2000 	clr	c
      0037D5 95 0B            [12] 2001 	subb	a,_main_start_addr_131072_47
      0037D7 FC               [12] 2002 	mov	r4,a
      0037D8 E5 0E            [12] 2003 	mov	a,(_main_end_addr_131072_47 + 1)
      0037DA 95 0C            [12] 2004 	subb	a,(_main_start_addr_131072_47 + 1)
      0037DC FD               [12] 2005 	mov	r5,a
      0037DD 85 0B 09         [24] 2006 	mov	_main_addr_131072_47,_main_start_addr_131072_47
      0037E0 85 0C 0A         [24] 2007 	mov	(_main_addr_131072_47 + 1),(_main_start_addr_131072_47 + 1)
      0037E3 78 00            [12] 2008 	mov	r0,#0x00
      0037E5 79 00            [12] 2009 	mov	r1,#0x00
      0037E7                       2010 00215$:
      0037E7 88 02            [24] 2011 	mov	ar2,r0
      0037E9 89 03            [24] 2012 	mov	ar3,r1
      0037EB C3               [12] 2013 	clr	c
      0037EC EA               [12] 2014 	mov	a,r2
      0037ED 9C               [12] 2015 	subb	a,r4
      0037EE EB               [12] 2016 	mov	a,r3
      0037EF 9D               [12] 2017 	subb	a,r5
      0037F0 40 03            [24] 2018 	jc	00545$
      0037F2 02 38 AD         [24] 2019 	ljmp	00272$
      0037F5                       2020 00545$:
                                   2021 ;	main.c:379: if (i > 0 && i % 16 == 0) {
      0037F5 C3               [12] 2022 	clr	c
      0037F6 E4               [12] 2023 	clr	a
      0037F7 98               [12] 2024 	subb	a,r0
      0037F8 74 80            [12] 2025 	mov	a,#(0x00 ^ 0x80)
      0037FA 89 F0            [24] 2026 	mov	b,r1
      0037FC 63 F0 80         [24] 2027 	xrl	b,#0x80
      0037FF 95 F0            [12] 2028 	subb	a,b
      003801 50 64            [24] 2029 	jnc	00206$
      003803 75 41 10         [24] 2030 	mov	__modsint_PARM_2,#0x10
      003806 75 42 00         [24] 2031 	mov	(__modsint_PARM_2 + 1),#0x00
      003809 88 82            [24] 2032 	mov	dpl,r0
      00380B 89 83            [24] 2033 	mov	dph,r1
      00380D C0 05            [24] 2034 	push	ar5
      00380F C0 04            [24] 2035 	push	ar4
      003811 C0 01            [24] 2036 	push	ar1
      003813 C0 00            [24] 2037 	push	ar0
      003815 12 40 C6         [24] 2038 	lcall	__modsint
      003818 E5 82            [12] 2039 	mov	a,dpl
      00381A 85 83 F0         [24] 2040 	mov	b,dph
      00381D D0 00            [24] 2041 	pop	ar0
      00381F D0 01            [24] 2042 	pop	ar1
      003821 D0 04            [24] 2043 	pop	ar4
      003823 D0 05            [24] 2044 	pop	ar5
      003825 45 F0            [12] 2045 	orl	a,b
      003827 70 3E            [24] 2046 	jnz	00206$
                                   2047 ;	main.c:380: printf("\r\n");  // Start a new line after every 16 bytes
      003829 C0 05            [24] 2048 	push	ar5
      00382B C0 04            [24] 2049 	push	ar4
      00382D C0 01            [24] 2050 	push	ar1
      00382F C0 00            [24] 2051 	push	ar0
      003831 74 F9            [12] 2052 	mov	a,#___str_6
      003833 C0 E0            [24] 2053 	push	acc
      003835 74 41            [12] 2054 	mov	a,#(___str_6 >> 8)
      003837 C0 E0            [24] 2055 	push	acc
      003839 74 80            [12] 2056 	mov	a,#0x80
      00383B C0 E0            [24] 2057 	push	acc
      00383D 12 39 66         [24] 2058 	lcall	_printf
      003840 15 81            [12] 2059 	dec	sp
      003842 15 81            [12] 2060 	dec	sp
      003844 15 81            [12] 2061 	dec	sp
                                   2062 ;	main.c:381: printf("%x:", addr);
      003846 C0 09            [24] 2063 	push	_main_addr_131072_47
      003848 C0 0A            [24] 2064 	push	(_main_addr_131072_47 + 1)
      00384A 74 C6            [12] 2065 	mov	a,#___str_23
      00384C C0 E0            [24] 2066 	push	acc
      00384E 74 44            [12] 2067 	mov	a,#(___str_23 >> 8)
      003850 C0 E0            [24] 2068 	push	acc
      003852 74 80            [12] 2069 	mov	a,#0x80
      003854 C0 E0            [24] 2070 	push	acc
      003856 12 39 66         [24] 2071 	lcall	_printf
      003859 E5 81            [12] 2072 	mov	a,sp
      00385B 24 FB            [12] 2073 	add	a,#0xfb
      00385D F5 81            [12] 2074 	mov	sp,a
      00385F D0 00            [24] 2075 	pop	ar0
      003861 D0 01            [24] 2076 	pop	ar1
      003863 D0 04            [24] 2077 	pop	ar4
      003865 D0 05            [24] 2078 	pop	ar5
      003867                       2079 00206$:
                                   2080 ;	main.c:383: printf("%x ", eebyter(addr));
      003867 85 09 82         [24] 2081 	mov	dpl,_main_addr_131072_47
      00386A 85 0A 83         [24] 2082 	mov	dph,(_main_addr_131072_47 + 1)
      00386D C0 05            [24] 2083 	push	ar5
      00386F C0 04            [24] 2084 	push	ar4
      003871 C0 01            [24] 2085 	push	ar1
      003873 C0 00            [24] 2086 	push	ar0
      003875 12 31 FE         [24] 2087 	lcall	_eebyter
      003878 AB 82            [24] 2088 	mov	r3,dpl
      00387A 7A 00            [12] 2089 	mov	r2,#0x00
      00387C C0 03            [24] 2090 	push	ar3
      00387E C0 02            [24] 2091 	push	ar2
      003880 74 CA            [12] 2092 	mov	a,#___str_24
      003882 C0 E0            [24] 2093 	push	acc
      003884 74 44            [12] 2094 	mov	a,#(___str_24 >> 8)
      003886 C0 E0            [24] 2095 	push	acc
      003888 74 80            [12] 2096 	mov	a,#0x80
      00388A C0 E0            [24] 2097 	push	acc
      00388C 12 39 66         [24] 2098 	lcall	_printf
      00388F E5 81            [12] 2099 	mov	a,sp
      003891 24 FB            [12] 2100 	add	a,#0xfb
      003893 F5 81            [12] 2101 	mov	sp,a
      003895 D0 00            [24] 2102 	pop	ar0
      003897 D0 01            [24] 2103 	pop	ar1
      003899 D0 04            [24] 2104 	pop	ar4
      00389B D0 05            [24] 2105 	pop	ar5
                                   2106 ;	main.c:384: addr += 1;
      00389D 05 09            [12] 2107 	inc	_main_addr_131072_47
      00389F E4               [12] 2108 	clr	a
      0038A0 B5 09 02         [24] 2109 	cjne	a,_main_addr_131072_47,00548$
      0038A3 05 0A            [12] 2110 	inc	(_main_addr_131072_47 + 1)
      0038A5                       2111 00548$:
                                   2112 ;	main.c:377: for (int i=0; i<end_addr - start_addr; i++)
      0038A5 08               [12] 2113 	inc	r0
      0038A6 B8 00 01         [24] 2114 	cjne	r0,#0x00,00549$
      0038A9 09               [12] 2115 	inc	r1
      0038AA                       2116 00549$:
      0038AA 02 37 E7         [24] 2117 	ljmp	00215$
      0038AD                       2118 00272$:
      0038AD AE 09            [24] 2119 	mov	r6,_main_addr_131072_47
      0038AF AF 0A            [24] 2120 	mov	r7,(_main_addr_131072_47 + 1)
                                   2121 ;	main.c:386: printf("\r\n");
      0038B1 C0 07            [24] 2122 	push	ar7
      0038B3 C0 06            [24] 2123 	push	ar6
      0038B5 74 F9            [12] 2124 	mov	a,#___str_6
      0038B7 C0 E0            [24] 2125 	push	acc
      0038B9 74 41            [12] 2126 	mov	a,#(___str_6 >> 8)
      0038BB C0 E0            [24] 2127 	push	acc
      0038BD 74 80            [12] 2128 	mov	a,#0x80
      0038BF C0 E0            [24] 2129 	push	acc
      0038C1 12 39 66         [24] 2130 	lcall	_printf
      0038C4 15 81            [12] 2131 	dec	sp
      0038C6 15 81            [12] 2132 	dec	sp
      0038C8 15 81            [12] 2133 	dec	sp
      0038CA D0 06            [24] 2134 	pop	ar6
      0038CC D0 07            [24] 2135 	pop	ar7
                                   2136 ;	main.c:388: break;
      0038CE 02 32 BB         [24] 2137 	ljmp	00212$
                                   2138 ;	main.c:395: default:
      0038D1                       2139 00209$:
                                   2140 ;	main.c:396: printf("Invalid input\r\n");
      0038D1 C0 07            [24] 2141 	push	ar7
      0038D3 C0 06            [24] 2142 	push	ar6
      0038D5 74 CE            [12] 2143 	mov	a,#___str_25
      0038D7 C0 E0            [24] 2144 	push	acc
      0038D9 74 44            [12] 2145 	mov	a,#(___str_25 >> 8)
      0038DB C0 E0            [24] 2146 	push	acc
      0038DD 74 80            [12] 2147 	mov	a,#0x80
      0038DF C0 E0            [24] 2148 	push	acc
      0038E1 12 39 66         [24] 2149 	lcall	_printf
      0038E4 15 81            [12] 2150 	dec	sp
      0038E6 15 81            [12] 2151 	dec	sp
      0038E8 15 81            [12] 2152 	dec	sp
      0038EA D0 06            [24] 2153 	pop	ar6
      0038EC D0 07            [24] 2154 	pop	ar7
                                   2155 ;	main.c:399: }
                                   2156 ;	main.c:443: }
      0038EE 02 32 BB         [24] 2157 	ljmp	00212$
                                   2158 	.area CSEG    (CODE)
                                   2159 	.area CONST   (CODE)
                                   2160 	.area CONST   (CODE)
      004100                       2161 ___str_0:
      004100 53 74 61 72 74 69 6E  2162 	.ascii "Starting I2C application"
             67 20 49 32 43 20 61
             70 70 6C 69 63 61 74
             69 6F 6E
      004118 0D                    2163 	.db 0x0d
      004119 0A                    2164 	.db 0x0a
      00411A 00                    2165 	.db 0x00
                                   2166 	.area CSEG    (CODE)
                                   2167 	.area CONST   (CODE)
      00411B                       2168 ___str_1:
      00411B 48 65 6C 70 20 6D 65  2169 	.ascii "Help menu:"
             6E 75 3A
      004125 0D                    2170 	.db 0x0d
      004126 0A                    2171 	.db 0x0a
      004127 00                    2172 	.db 0x00
                                   2173 	.area CSEG    (CODE)
                                   2174 	.area CONST   (CODE)
      004128                       2175 ___str_2:
      004128 27 77 27 3A 20 45 6E  2176 	.ascii "'w': Enter an EEPROM address in hex to write data at and byt"
             74 65 72 20 61 6E 20
             45 45 50 52 4F 4D 20
             61 64 64 72 65 73 73
             20 69 6E 20 68 65 78
             20 74 6F 20 77 72 69
             74 65 20 64 61 74 61
             20 61 74 20 61 6E 64
             20 62 79 74
      004164 65 20 64 61 74 61     2177 	.ascii "e data"
      00416A 0D                    2178 	.db 0x0d
      00416B 0A                    2179 	.db 0x0a
      00416C 00                    2180 	.db 0x00
                                   2181 	.area CSEG    (CODE)
                                   2182 	.area CONST   (CODE)
      00416D                       2183 ___str_3:
      00416D 27 72 27 3A 20 45 6E  2184 	.ascii "'r': Enter an EEPROM address in hex to read data from"
             74 65 72 20 61 6E 20
             45 45 50 52 4F 4D 20
             61 64 64 72 65 73 73
             20 69 6E 20 68 65 78
             20 74 6F 20 72 65 61
             64 20 64 61 74 61 20
             66 72 6F 6D
      0041A2 0D                    2185 	.db 0x0d
      0041A3 0A                    2186 	.db 0x0a
      0041A4 00                    2187 	.db 0x00
                                   2188 	.area CSEG    (CODE)
                                   2189 	.area CONST   (CODE)
      0041A5                       2190 ___str_4:
      0041A5 27 68 27 3A 20 45 6E  2191 	.ascii "'h': Enter an EEPROM start and end addresses to dump the dat"
             74 65 72 20 61 6E 20
             45 45 50 52 4F 4D 20
             73 74 61 72 74 20 61
             6E 64 20 65 6E 64 20
             61 64 64 72 65 73 73
             65 73 20 74 6F 20 64
             75 6D 70 20 74 68 65
             20 64 61 74
      0041E1 61                    2192 	.ascii "a"
      0041E2 0D                    2193 	.db 0x0d
      0041E3 0A                    2194 	.db 0x0a
      0041E4 00                    2195 	.db 0x00
                                   2196 	.area CSEG    (CODE)
                                   2197 	.area CONST   (CODE)
      0041E5                       2198 ___str_5:
      0041E5 27 65 27 3A 20 52 65  2199 	.ascii "'e': Reset EEPROM"
             73 65 74 20 45 45 50
             52 4F 4D
      0041F6 0D                    2200 	.db 0x0d
      0041F7 0A                    2201 	.db 0x0a
      0041F8 00                    2202 	.db 0x00
                                   2203 	.area CSEG    (CODE)
                                   2204 	.area CONST   (CODE)
      0041F9                       2205 ___str_6:
      0041F9 0D                    2206 	.db 0x0d
      0041FA 0A                    2207 	.db 0x0a
      0041FB 00                    2208 	.db 0x00
                                   2209 	.area CSEG    (CODE)
                                   2210 	.area CONST   (CODE)
      0041FC                       2211 ___str_7:
      0041FC 45 6E 74 65 72 20 74  2212 	.ascii "Enter the address location to store the data at : "
             68 65 20 61 64 64 72
             65 73 73 20 6C 6F 63
             61 74 69 6F 6E 20 74
             6F 20 73 74 6F 72 65
             20 74 68 65 20 64 61
             74 61 20 61 74 20 3A
             20
      00422E 0D                    2213 	.db 0x0d
      00422F 0A                    2214 	.db 0x0a
      004230 00                    2215 	.db 0x00
                                   2216 	.area CSEG    (CODE)
                                   2217 	.area CONST   (CODE)
      004231                       2218 ___str_8:
      004231 49 6E 76 61 6C 69 64  2219 	.ascii "Invalid input. Please enter 0-9, A-F or a-f only."
             20 69 6E 70 75 74 2E
             20 50 6C 65 61 73 65
             20 65 6E 74 65 72 20
             30 2D 39 2C 20 41 2D
             46 20 6F 72 20 61 2D
             66 20 6F 6E 6C 79 2E
      004262 0D                    2220 	.db 0x0d
      004263 0A                    2221 	.db 0x0a
      004264 00                    2222 	.db 0x00
                                   2223 	.area CSEG    (CODE)
                                   2224 	.area CONST   (CODE)
      004265                       2225 ___str_9:
      004265 45 6E 74 65 72 65 64  2226 	.ascii "Entered address: 0x%x"
             20 61 64 64 72 65 73
             73 3A 20 30 78 25 78
      00427A 0D                    2227 	.db 0x0d
      00427B 0A                    2228 	.db 0x0a
      00427C 00                    2229 	.db 0x00
                                   2230 	.area CSEG    (CODE)
                                   2231 	.area CONST   (CODE)
      00427D                       2232 ___str_10:
      00427D 49 6E 76 61 6C 69 64  2233 	.ascii "Invalid buffer address. The address should be between 0 and "
             20 62 75 66 66 65 72
             20 61 64 64 72 65 73
             73 2E 20 54 68 65 20
             61 64 64 72 65 73 73
             20 73 68 6F 75 6C 64
             20 62 65 20 62 65 74
             77 65 65 6E 20 30 20
             61 6E 64 20
      0042B9 37 46 46 2E           2234 	.ascii "7FF."
      0042BD 0D                    2235 	.db 0x0d
      0042BE 0A                    2236 	.db 0x0a
      0042BF 00                    2237 	.db 0x00
                                   2238 	.area CSEG    (CODE)
                                   2239 	.area CONST   (CODE)
      0042C0                       2240 ___str_11:
      0042C0 45 6E 74 65 72 20 74  2241 	.ascii "Enter the data byte to write:"
             68 65 20 64 61 74 61
             20 62 79 74 65 20 74
             6F 20 77 72 69 74 65
             3A
      0042DD 0D                    2242 	.db 0x0d
      0042DE 0A                    2243 	.db 0x0a
      0042DF 00                    2244 	.db 0x00
                                   2245 	.area CSEG    (CODE)
                                   2246 	.area CONST   (CODE)
      0042E0                       2247 ___str_12:
      0042E0 45 6E 74 65 72 65 64  2248 	.ascii "Entered data: 0x%x"
             20 64 61 74 61 3A 20
             30 78 25 78
      0042F2 0D                    2249 	.db 0x0d
      0042F3 0A                    2250 	.db 0x0a
      0042F4 00                    2251 	.db 0x00
                                   2252 	.area CSEG    (CODE)
                                   2253 	.area CONST   (CODE)
      0042F5                       2254 ___str_13:
      0042F5 49 6E 76 61 6C 69 64  2255 	.ascii "Invalid buffer data. The data should be between 0 and FF."
             20 62 75 66 66 65 72
             20 64 61 74 61 2E 20
             54 68 65 20 64 61 74
             61 20 73 68 6F 75 6C
             64 20 62 65 20 62 65
             74 77 65 65 6E 20 30
             20 61 6E 64 20 46 46
             2E
      00432E 0D                    2256 	.db 0x0d
      00432F 0A                    2257 	.db 0x0a
      004330 00                    2258 	.db 0x00
                                   2259 	.area CSEG    (CODE)
                                   2260 	.area CONST   (CODE)
      004331                       2261 ___str_14:
      004331 45 6E 74 65 72 20 74  2262 	.ascii "Enter the address location to read the data from : "
             68 65 20 61 64 64 72
             65 73 73 20 6C 6F 63
             61 74 69 6F 6E 20 74
             6F 20 72 65 61 64 20
             74 68 65 20 64 61 74
             61 20 66 72 6F 6D 20
             3A 20
      004364 0D                    2263 	.db 0x0d
      004365 0A                    2264 	.db 0x0a
      004366 00                    2265 	.db 0x00
                                   2266 	.area CSEG    (CODE)
                                   2267 	.area CONST   (CODE)
      004367                       2268 ___str_15:
      004367 49 6E 76 61 6C 69 64  2269 	.ascii "Invalid input. Please enter 0-9, A-F or a-f."
             20 69 6E 70 75 74 2E
             20 50 6C 65 61 73 65
             20 65 6E 74 65 72 20
             30 2D 39 2C 20 41 2D
             46 20 6F 72 20 61 2D
             66 2E
      004393 0D                    2270 	.db 0x0d
      004394 0A                    2271 	.db 0x0a
      004395 00                    2272 	.db 0x00
                                   2273 	.area CSEG    (CODE)
                                   2274 	.area CONST   (CODE)
      004396                       2275 ___str_16:
      004396 72 65 61 64 20 64 61  2276 	.ascii "read data: 0x%x"
             74 61 3A 20 30 78 25
             78
      0043A5 0D                    2277 	.db 0x0d
      0043A6 0A                    2278 	.db 0x0a
      0043A7 00                    2279 	.db 0x00
                                   2280 	.area CSEG    (CODE)
                                   2281 	.area CONST   (CODE)
      0043A8                       2282 ___str_17:
      0043A8 45 6E 74 65 72 20 74  2283 	.ascii "Enter the start address for dump:"
             68 65 20 73 74 61 72
             74 20 61 64 64 72 65
             73 73 20 66 6F 72 20
             64 75 6D 70 3A
      0043C9 0D                    2284 	.db 0x0d
      0043CA 0A                    2285 	.db 0x0a
      0043CB 00                    2286 	.db 0x00
                                   2287 	.area CSEG    (CODE)
                                   2288 	.area CONST   (CODE)
      0043CC                       2289 ___str_18:
      0043CC 45 6E 74 65 72 65 64  2290 	.ascii "Entered start address: 0x%x"
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             3A 20 30 78 25 78
      0043E7 0D                    2291 	.db 0x0d
      0043E8 0A                    2292 	.db 0x0a
      0043E9 00                    2293 	.db 0x00
                                   2294 	.area CSEG    (CODE)
                                   2295 	.area CONST   (CODE)
      0043EA                       2296 ___str_19:
      0043EA 49 6E 76 61 6C 69 64  2297 	.ascii "Invalid start address. The address should be between 0 and 7"
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             2E 20 54 68 65 20 61
             64 64 72 65 73 73 20
             73 68 6F 75 6C 64 20
             62 65 20 62 65 74 77
             65 65 6E 20 30 20 61
             6E 64 20 37
      004426 46 46 2E              2298 	.ascii "FF."
      004429 0D                    2299 	.db 0x0d
      00442A 0A                    2300 	.db 0x0a
      00442B 00                    2301 	.db 0x00
                                   2302 	.area CSEG    (CODE)
                                   2303 	.area CONST   (CODE)
      00442C                       2304 ___str_20:
      00442C 45 6E 74 65 72 20 74  2305 	.ascii "Enter the end address for dump:"
             68 65 20 65 6E 64 20
             61 64 64 72 65 73 73
             20 66 6F 72 20 64 75
             6D 70 3A
      00444B 0D                    2306 	.db 0x0d
      00444C 0A                    2307 	.db 0x0a
      00444D 00                    2308 	.db 0x00
                                   2309 	.area CSEG    (CODE)
                                   2310 	.area CONST   (CODE)
      00444E                       2311 ___str_21:
      00444E 45 6E 74 65 72 65 64  2312 	.ascii "Entered end address: 0x%x"
             20 65 6E 64 20 61 64
             64 72 65 73 73 3A 20
             30 78 25 78
      004467 0D                    2313 	.db 0x0d
      004468 0A                    2314 	.db 0x0a
      004469 00                    2315 	.db 0x00
                                   2316 	.area CSEG    (CODE)
                                   2317 	.area CONST   (CODE)
      00446A                       2318 ___str_22:
      00446A 49 6E 76 61 6C 69 64  2319 	.ascii "Invalid end address. The address should be between 0-7FF and"
             20 65 6E 64 20 61 64
             64 72 65 73 73 2E 20
             54 68 65 20 61 64 64
             72 65 73 73 20 73 68
             6F 75 6C 64 20 62 65
             20 62 65 74 77 65 65
             6E 20 30 2D 37 46 46
             20 61 6E 64
      0044A6 20 6D 6F 72 65 20 74  2320 	.ascii " more than the start address."
             68 61 6E 20 74 68 65
             20 73 74 61 72 74 20
             61 64 64 72 65 73 73
             2E
      0044C3 0D                    2321 	.db 0x0d
      0044C4 0A                    2322 	.db 0x0a
      0044C5 00                    2323 	.db 0x00
                                   2324 	.area CSEG    (CODE)
                                   2325 	.area CONST   (CODE)
      0044C6                       2326 ___str_23:
      0044C6 25 78 3A              2327 	.ascii "%x:"
      0044C9 00                    2328 	.db 0x00
                                   2329 	.area CSEG    (CODE)
                                   2330 	.area CONST   (CODE)
      0044CA                       2331 ___str_24:
      0044CA 25 78 20              2332 	.ascii "%x "
      0044CD 00                    2333 	.db 0x00
                                   2334 	.area CSEG    (CODE)
                                   2335 	.area CONST   (CODE)
      0044CE                       2336 ___str_25:
      0044CE 49 6E 76 61 6C 69 64  2337 	.ascii "Invalid input"
             20 69 6E 70 75 74
      0044DB 0D                    2338 	.db 0x0d
      0044DC 0A                    2339 	.db 0x0a
      0044DD 00                    2340 	.db 0x00
                                   2341 	.area CSEG    (CODE)
                                   2342 	.area XINIT   (CODE)
                                   2343 	.area CABS    (ABS,CODE)
