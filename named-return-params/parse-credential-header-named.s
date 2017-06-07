"".parseCredentialHeader t=1 size=863 args=0x68 locals=0xb8
	0x0000 00000 (parse-credential-header-named.go:27)	TEXT	"".parseCredentialHeader(SB), $184-104
	0x0000 00000 (parse-credential-header-named.go:27)	MOVQ	(TLS), CX
	0x0009 00009 (parse-credential-header-named.go:27)	LEAQ	-56(SP), AX
	0x000e 00014 (parse-credential-header-named.go:27)	CMPQ	AX, 16(CX)
	0x0012 00018 (parse-credential-header-named.go:27)	JLS	853
	0x0018 00024 (parse-credential-header-named.go:27)	SUBQ	$184, SP
	0x001f 00031 (parse-credential-header-named.go:27)	MOVQ	BP, 176(SP)
	0x0027 00039 (parse-credential-header-named.go:27)	LEAQ	176(SP), BP
	0x002f 00047 (parse-credential-header-named.go:27)	FUNCDATA	$0, gclocals·ffb4b0e44257a4e1571ee2c765c52d52(SB)
	0x002f 00047 (parse-credential-header-named.go:27)	FUNCDATA	$1, gclocals·0dbd1877290f6460e7d9f2638bdb524e(SB)
	0x002f 00047 (parse-credential-header-named.go:27)	MOVQ	$0, "".ch+208(FP)
	0x003b 00059 (parse-credential-header-named.go:27)	LEAQ	"".ch+216(FP), DI
	0x0043 00067 (parse-credential-header-named.go:27)	XORPS	X0, X0
	0x0046 00070 (parse-credential-header-named.go:27)	ADDQ	$-48, DI
	0x004a 00074 (parse-credential-header-named.go:27)	DUFFZERO	$277
	0x005d 00093 (parse-credential-header-named.go:28)	MOVQ	"".credElement+192(FP), AX
	0x0065 00101 (parse-credential-header-named.go:28)	MOVQ	AX, (SP)
	0x0069 00105 (parse-credential-header-named.go:28)	MOVQ	"".credElement+200(FP), AX
	0x0071 00113 (parse-credential-header-named.go:28)	MOVQ	AX, 8(SP)
	0x0076 00118 (parse-credential-header-named.go:28)	PCDATA	$0, $1
	0x0076 00118 (parse-credential-header-named.go:28)	CALL	strings.TrimSpace(SB)
	0x007b 00123 (parse-credential-header-named.go:28)	MOVQ	16(SP), AX
	0x0080 00128 (parse-credential-header-named.go:28)	MOVQ	24(SP), CX
	0x0085 00133 (parse-credential-header-named.go:28)	MOVQ	AX, (SP)
	0x0089 00137 (parse-credential-header-named.go:28)	MOVQ	CX, 8(SP)
	0x008e 00142 (parse-credential-header-named.go:28)	LEAQ	go.string."="(SB), AX
	0x0095 00149 (parse-credential-header-named.go:28)	MOVQ	AX, 16(SP)
	0x009a 00154 (parse-credential-header-named.go:28)	MOVQ	$1, 24(SP)
	0x00a3 00163 (parse-credential-header-named.go:28)	PCDATA	$0, $1
	0x00a3 00163 (parse-credential-header-named.go:28)	CALL	strings.Split(SB)
	0x00a8 00168 (parse-credential-header-named.go:28)	MOVQ	32(SP), AX
	0x00ad 00173 (parse-credential-header-named.go:28)	MOVQ	AX, "".creds.ptr+72(SP)
	0x00b2 00178 (parse-credential-header-named.go:28)	MOVQ	40(SP), CX
	0x00b7 00183 (parse-credential-header-named.go:29)	CMPQ	CX, $2
	0x00bb 00187 (parse-credential-header-named.go:29)	JNE	$0, 837
	0x00c1 00193 (parse-credential-header-named.go:32)	MOVQ	(AX), CX
	0x00c4 00196 (parse-credential-header-named.go:32)	MOVQ	8(AX), DX
	0x00c8 00200 (parse-credential-header-named.go:32)	CMPQ	DX, $10
	0x00cc 00204 (parse-credential-header-named.go:32)	JEQ	$0, 222
	0x00ce 00206 (parse-credential-header-named.go:33)	MOVQ	176(SP), BP
	0x00d6 00214 (parse-credential-header-named.go:33)	ADDQ	$184, SP
	0x00dd 00221 (parse-credential-header-named.go:33)	RET
	0x00de 00222 (parse-credential-header-named.go:32)	MOVQ	CX, (SP)
	0x00e2 00226 (parse-credential-header-named.go:32)	MOVQ	DX, 8(SP)
	0x00e7 00231 (parse-credential-header-named.go:32)	LEAQ	go.string."Credential"(SB), CX
	0x00ee 00238 (parse-credential-header-named.go:32)	MOVQ	CX, 16(SP)
	0x00f3 00243 (parse-credential-header-named.go:32)	MOVQ	$10, 24(SP)
	0x00fc 00252 (parse-credential-header-named.go:32)	PCDATA	$0, $2
	0x00fc 00252 (parse-credential-header-named.go:32)	CALL	runtime.eqstring(SB)
	0x0101 00257 (parse-credential-header-named.go:32)	MOVBLZX	32(SP), AX
	0x0106 00262 (parse-credential-header-named.go:32)	TESTB	AL, AL
	0x0108 00264 (parse-credential-header-named.go:32)	JNE	$1, 268
	0x010a 00266 (parse-credential-header-named.go:33)	JMP	206
	0x010c 00268 (parse-credential-header-named.go:35)	MOVQ	"".creds.ptr+72(SP), AX
	0x0111 00273 (parse-credential-header-named.go:35)	MOVQ	16(AX), CX
	0x0115 00277 (parse-credential-header-named.go:35)	MOVQ	24(AX), AX
	0x0119 00281 (parse-credential-header-named.go:35)	MOVQ	CX, (SP)
	0x011d 00285 (parse-credential-header-named.go:35)	MOVQ	AX, 8(SP)
	0x0122 00290 (parse-credential-header-named.go:35)	PCDATA	$0, $1
	0x0122 00290 (parse-credential-header-named.go:35)	CALL	strings.TrimSpace(SB)
	0x0127 00295 (parse-credential-header-named.go:35)	MOVQ	16(SP), AX
	0x012c 00300 (parse-credential-header-named.go:35)	MOVQ	24(SP), CX
	0x0131 00305 (parse-credential-header-named.go:35)	MOVQ	AX, (SP)
	0x0135 00309 (parse-credential-header-named.go:35)	MOVQ	CX, 8(SP)
	0x013a 00314 (parse-credential-header-named.go:35)	LEAQ	go.string."/"(SB), AX
	0x0141 00321 (parse-credential-header-named.go:35)	MOVQ	AX, 16(SP)
	0x0146 00326 (parse-credential-header-named.go:35)	MOVQ	$1, 24(SP)
	0x014f 00335 (parse-credential-header-named.go:35)	PCDATA	$0, $1
	0x014f 00335 (parse-credential-header-named.go:35)	CALL	strings.Split(SB)
	0x0154 00340 (parse-credential-header-named.go:35)	MOVQ	32(SP), AX
	0x0159 00345 (parse-credential-header-named.go:35)	MOVQ	AX, "".credElements.ptr+80(SP)
	0x015e 00350 (parse-credential-header-named.go:35)	MOVQ	40(SP), CX
	0x0163 00355 (parse-credential-header-named.go:36)	CMPQ	CX, $5
	0x0167 00359 (parse-credential-header-named.go:36)	JNE	$0, 821
	0x016d 00365 (parse-credential-header-named.go:43)	MOVQ	$0, "".cred+88(SP)
	0x0176 00374 (parse-credential-header-named.go:43)	LEAQ	"".cred+96(SP), DI
	0x017b 00379 (parse-credential-header-named.go:27)	XORPS	X0, X0
	0x017e 00382 (parse-credential-header-named.go:43)	ADDQ	$-48, DI
	0x0182 00386 (parse-credential-header-named.go:43)	DUFFZERO	$277
	0x0195 00405 (parse-credential-header-named.go:44)	MOVQ	(AX), CX
	0x0198 00408 (parse-credential-header-named.go:44)	MOVQ	8(AX), DX
	0x019c 00412 (parse-credential-header-named.go:44)	MOVQ	CX, "".cred+88(SP)
	0x01a1 00417 (parse-credential-header-named.go:44)	MOVQ	DX, "".cred+96(SP)
	0x01a6 00422 (parse-credential-header-named.go:47)	LEAQ	go.string."20060102"(SB), CX
	0x01ad 00429 (parse-credential-header-named.go:47)	MOVQ	CX, (SP)
	0x01b1 00433 (parse-credential-header-named.go:47)	MOVQ	$8, 8(SP)
	0x01ba 00442 (parse-credential-header-named.go:47)	MOVQ	16(AX), CX
	0x01be 00446 (parse-credential-header-named.go:47)	MOVQ	24(AX), DX
	0x01c2 00450 (parse-credential-header-named.go:47)	MOVQ	CX, 16(SP)
	0x01c7 00455 (parse-credential-header-named.go:47)	MOVQ	DX, 24(SP)
	0x01cc 00460 (parse-credential-header-named.go:47)	PCDATA	$0, $3
	0x01cc 00460 (parse-credential-header-named.go:47)	CALL	time.Parse(SB)
	0x01d1 00465 (parse-credential-header-named.go:47)	MOVQ	48(SP), AX
	0x01d6 00470 (parse-credential-header-named.go:47)	MOVQ	32(SP), CX
	0x01db 00475 (parse-credential-header-named.go:47)	MOVL	40(SP), DX
	0x01df 00479 (parse-credential-header-named.go:47)	MOVQ	CX, "".cred+104(SP)
	0x01e4 00484 (parse-credential-header-named.go:47)	MOVL	DX, "".cred+112(SP)
	0x01e8 00488 (parse-credential-header-named.go:47)	MOVQ	AX, "".cred+120(SP)
	0x01ed 00493 (parse-credential-header-named.go:47)	MOVQ	56(SP), AX
	0x01f2 00498 (parse-credential-header-named.go:48)	TESTQ	AX, AX
	0x01f5 00501 (parse-credential-header-named.go:48)	JNE	$0, 805
	0x01fb 00507 (parse-credential-header-named.go:51)	MOVQ	"".credElements.ptr+80(SP), AX
	0x0200 00512 (parse-credential-header-named.go:51)	MOVQ	32(AX), CX
	0x0204 00516 (parse-credential-header-named.go:51)	MOVQ	40(AX), DX
	0x0208 00520 (parse-credential-header-named.go:51)	MOVQ	CX, "".cred+128(SP)
	0x0210 00528 (parse-credential-header-named.go:51)	MOVQ	DX, "".cred+136(SP)
	0x0218 00536 (parse-credential-header-named.go:52)	MOVQ	48(AX), CX
	0x021c 00540 (parse-credential-header-named.go:52)	MOVQ	56(AX), DX
	0x0220 00544 (parse-credential-header-named.go:52)	CMPQ	DX, $2
	0x0224 00548 (parse-credential-header-named.go:52)	JEQ	$0, 566
	0x0226 00550 (parse-credential-header-named.go:53)	MOVQ	176(SP), BP
	0x022e 00558 (parse-credential-header-named.go:53)	ADDQ	$184, SP
	0x0235 00565 (parse-credential-header-named.go:53)	RET
	0x0236 00566 (parse-credential-header-named.go:52)	MOVQ	CX, (SP)
	0x023a 00570 (parse-credential-header-named.go:52)	MOVQ	DX, 8(SP)
	0x023f 00575 (parse-credential-header-named.go:52)	LEAQ	go.string."s3"(SB), CX
	0x0246 00582 (parse-credential-header-named.go:52)	MOVQ	CX, 16(SP)
	0x024b 00587 (parse-credential-header-named.go:52)	MOVQ	$2, 24(SP)
	0x0254 00596 (parse-credential-header-named.go:52)	PCDATA	$0, $3
	0x0254 00596 (parse-credential-header-named.go:52)	CALL	runtime.eqstring(SB)
	0x0259 00601 (parse-credential-header-named.go:52)	MOVBLZX	32(SP), AX
	0x025e 00606 (parse-credential-header-named.go:52)	TESTB	AL, AL
	0x0260 00608 (parse-credential-header-named.go:52)	JEQ	550
	0x0262 00610 (parse-credential-header-named.go:55)	MOVQ	"".credElements.ptr+80(SP), AX
	0x0267 00615 (parse-credential-header-named.go:55)	MOVQ	48(AX), CX
	0x026b 00619 (parse-credential-header-named.go:55)	MOVQ	56(AX), DX
	0x026f 00623 (parse-credential-header-named.go:55)	MOVQ	CX, "".cred+144(SP)
	0x0277 00631 (parse-credential-header-named.go:55)	MOVQ	DX, "".cred+152(SP)
	0x027f 00639 (parse-credential-header-named.go:56)	MOVQ	64(AX), CX
	0x0283 00643 (parse-credential-header-named.go:56)	MOVQ	72(AX), DX
	0x0287 00647 (parse-credential-header-named.go:56)	CMPQ	DX, $12
	0x028b 00651 (parse-credential-header-named.go:56)	JEQ	$0, 669
	0x028d 00653 (parse-credential-header-named.go:57)	MOVQ	176(SP), BP
	0x0295 00661 (parse-credential-header-named.go:57)	ADDQ	$184, SP
	0x029c 00668 (parse-credential-header-named.go:57)	RET
	0x029d 00669 (parse-credential-header-named.go:56)	MOVQ	CX, (SP)
	0x02a1 00673 (parse-credential-header-named.go:56)	MOVQ	DX, 8(SP)
	0x02a6 00678 (parse-credential-header-named.go:56)	LEAQ	go.string."aws4_request"(SB), CX
	0x02ad 00685 (parse-credential-header-named.go:56)	MOVQ	CX, 16(SP)
	0x02b2 00690 (parse-credential-header-named.go:56)	MOVQ	$12, 24(SP)
	0x02bb 00699 (parse-credential-header-named.go:56)	PCDATA	$0, $3
	0x02bb 00699 (parse-credential-header-named.go:56)	CALL	runtime.eqstring(SB)
	0x02c0 00704 (parse-credential-header-named.go:56)	MOVBLZX	32(SP), AX
	0x02c5 00709 (parse-credential-header-named.go:56)	TESTB	AL, AL
	0x02c7 00711 (parse-credential-header-named.go:56)	JNE	$1, 715
	0x02c9 00713 (parse-credential-header-named.go:57)	JMP	653
	0x02cb 00715 (parse-credential-header-named.go:59)	MOVQ	"".credElements.ptr+80(SP), AX
	0x02d0 00720 (parse-credential-header-named.go:59)	MOVQ	64(AX), CX
	0x02d4 00724 (parse-credential-header-named.go:59)	MOVQ	72(AX), AX
	0x02d8 00728 (parse-credential-header-named.go:59)	MOVQ	CX, "".cred+160(SP)
	0x02e0 00736 (parse-credential-header-named.go:59)	MOVQ	AX, "".cred+168(SP)
	0x02e8 00744 (parse-credential-header-named.go:60)	MOVQ	"".cred+88(SP), AX
	0x02ed 00749 (parse-credential-header-named.go:60)	MOVQ	AX, "".ch+208(FP)
	0x02f5 00757 (parse-credential-header-named.go:60)	LEAQ	"".ch+216(FP), DI
	0x02fd 00765 (parse-credential-header-named.go:60)	LEAQ	"".cred+96(SP), SI
	0x0302 00770 (parse-credential-header-named.go:60)	DUFFCOPY	$826
	0x0315 00789 (parse-credential-header-named.go:60)	MOVQ	176(SP), BP
	0x031d 00797 (parse-credential-header-named.go:60)	ADDQ	$184, SP
	0x0324 00804 (parse-credential-header-named.go:60)	RET
	0x0325 00805 (parse-credential-header-named.go:49)	MOVQ	176(SP), BP
	0x032d 00813 (parse-credential-header-named.go:49)	ADDQ	$184, SP
	0x0334 00820 (parse-credential-header-named.go:49)	RET
	0x0335 00821 (parse-credential-header-named.go:37)	MOVQ	176(SP), BP
	0x033d 00829 (parse-credential-header-named.go:37)	ADDQ	$184, SP
	0x0344 00836 (parse-credential-header-named.go:37)	RET
	0x0345 00837 (parse-credential-header-named.go:30)	MOVQ	176(SP), BP
	0x034d 00845 (parse-credential-header-named.go:30)	ADDQ	$184, SP
	0x0354 00852 (parse-credential-header-named.go:30)	RET
	0x0355 00853 (parse-credential-header-named.go:30)	NOP
	0x0355 00853 (parse-credential-header-named.go:27)	CALL	runtime.morestack_noctxt(SB)
	0x035a 00858 (parse-credential-header-named.go:27)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 8d 44 24 c8 48 3b  eH..%....H.D$.H;
	0x0010 41 10 0f 86 3d 03 00 00 48 81 ec b8 00 00 00 48  A...=...H......H
	0x0020 89 ac 24 b0 00 00 00 48 8d ac 24 b0 00 00 00 48  ..$....H..$....H
	0x0030 c7 84 24 d0 00 00 00 00 00 00 00 48 8d bc 24 d8  ..$........H..$.
	0x0040 00 00 00 0f 57 c0 48 83 c7 d0 48 89 6c 24 f0 48  ....W.H...H.l$.H
	0x0050 8d 6c 24 f0 e8 00 00 00 00 48 8b 6d 00 48 8b 84  .l$......H.m.H..
	0x0060 24 c0 00 00 00 48 89 04 24 48 8b 84 24 c8 00 00  $....H..$H..$...
	0x0070 00 48 89 44 24 08 e8 00 00 00 00 48 8b 44 24 10  .H.D$......H.D$.
	0x0080 48 8b 4c 24 18 48 89 04 24 48 89 4c 24 08 48 8d  H.L$.H..$H.L$.H.
	0x0090 05 00 00 00 00 48 89 44 24 10 48 c7 44 24 18 01  .....H.D$.H.D$..
	0x00a0 00 00 00 e8 00 00 00 00 48 8b 44 24 20 48 89 44  ........H.D$ H.D
	0x00b0 24 48 48 8b 4c 24 28 48 83 f9 02 0f 85 84 02 00  $HH.L$(H........
	0x00c0 00 48 8b 08 48 8b 50 08 48 83 fa 0a 74 10 48 8b  .H..H.P.H...t.H.
	0x00d0 ac 24 b0 00 00 00 48 81 c4 b8 00 00 00 c3 48 89  .$....H.......H.
	0x00e0 0c 24 48 89 54 24 08 48 8d 0d 00 00 00 00 48 89  .$H.T$.H......H.
	0x00f0 4c 24 10 48 c7 44 24 18 0a 00 00 00 e8 00 00 00  L$.H.D$.........
	0x0100 00 0f b6 44 24 20 84 c0 75 02 eb c2 48 8b 44 24  ...D$ ..u...H.D$
	0x0110 48 48 8b 48 10 48 8b 40 18 48 89 0c 24 48 89 44  HH.H.H.@.H..$H.D
	0x0120 24 08 e8 00 00 00 00 48 8b 44 24 10 48 8b 4c 24  $......H.D$.H.L$
	0x0130 18 48 89 04 24 48 89 4c 24 08 48 8d 05 00 00 00  .H..$H.L$.H.....
	0x0140 00 48 89 44 24 10 48 c7 44 24 18 01 00 00 00 e8  .H.D$.H.D$......
	0x0150 00 00 00 00 48 8b 44 24 20 48 89 44 24 50 48 8b  ....H.D$ H.D$PH.
	0x0160 4c 24 28 48 83 f9 05 0f 85 c8 01 00 00 48 c7 44  L$(H.........H.D
	0x0170 24 58 00 00 00 00 48 8d 7c 24 60 0f 57 c0 48 83  $X....H.|$`.W.H.
	0x0180 c7 d0 48 89 6c 24 f0 48 8d 6c 24 f0 e8 00 00 00  ..H.l$.H.l$.....
	0x0190 00 48 8b 6d 00 48 8b 08 48 8b 50 08 48 89 4c 24  .H.m.H..H.P.H.L$
	0x01a0 58 48 89 54 24 60 48 8d 0d 00 00 00 00 48 89 0c  XH.T$`H......H..
	0x01b0 24 48 c7 44 24 08 08 00 00 00 48 8b 48 10 48 8b  $H.D$.....H.H.H.
	0x01c0 50 18 48 89 4c 24 10 48 89 54 24 18 e8 00 00 00  P.H.L$.H.T$.....
	0x01d0 00 48 8b 44 24 30 48 8b 4c 24 20 8b 54 24 28 48  .H.D$0H.L$ .T$(H
	0x01e0 89 4c 24 68 89 54 24 70 48 89 44 24 78 48 8b 44  .L$h.T$pH.D$xH.D
	0x01f0 24 38 48 85 c0 0f 85 2a 01 00 00 48 8b 44 24 50  $8H....*...H.D$P
	0x0200 48 8b 48 20 48 8b 50 28 48 89 8c 24 80 00 00 00  H.H H.P(H..$....
	0x0210 48 89 94 24 88 00 00 00 48 8b 48 30 48 8b 50 38  H..$....H.H0H.P8
	0x0220 48 83 fa 02 74 10 48 8b ac 24 b0 00 00 00 48 81  H...t.H..$....H.
	0x0230 c4 b8 00 00 00 c3 48 89 0c 24 48 89 54 24 08 48  ......H..$H.T$.H
	0x0240 8d 0d 00 00 00 00 48 89 4c 24 10 48 c7 44 24 18  ......H.L$.H.D$.
	0x0250 02 00 00 00 e8 00 00 00 00 0f b6 44 24 20 84 c0  ...........D$ ..
	0x0260 74 c4 48 8b 44 24 50 48 8b 48 30 48 8b 50 38 48  t.H.D$PH.H0H.P8H
	0x0270 89 8c 24 90 00 00 00 48 89 94 24 98 00 00 00 48  ..$....H..$....H
	0x0280 8b 48 40 48 8b 50 48 48 83 fa 0c 74 10 48 8b ac  .H@H.PHH...t.H..
	0x0290 24 b0 00 00 00 48 81 c4 b8 00 00 00 c3 48 89 0c  $....H.......H..
	0x02a0 24 48 89 54 24 08 48 8d 0d 00 00 00 00 48 89 4c  $H.T$.H......H.L
	0x02b0 24 10 48 c7 44 24 18 0c 00 00 00 e8 00 00 00 00  $.H.D$..........
	0x02c0 0f b6 44 24 20 84 c0 75 02 eb c2 48 8b 44 24 50  ..D$ ..u...H.D$P
	0x02d0 48 8b 48 40 48 8b 40 48 48 89 8c 24 a0 00 00 00  H.H@H.@HH..$....
	0x02e0 48 89 84 24 a8 00 00 00 48 8b 44 24 58 48 89 84  H..$....H.D$XH..
	0x02f0 24 d0 00 00 00 48 8d bc 24 d8 00 00 00 48 8d 74  $....H..$....H.t
	0x0300 24 60 48 89 6c 24 f0 48 8d 6c 24 f0 e8 00 00 00  $`H.l$.H.l$.....
	0x0310 00 48 8b 6d 00 48 8b ac 24 b0 00 00 00 48 81 c4  .H.m.H..$....H..
	0x0320 b8 00 00 00 c3 48 8b ac 24 b0 00 00 00 48 81 c4  .....H..$....H..
	0x0330 b8 00 00 00 c3 48 8b ac 24 b0 00 00 00 48 81 c4  .....H..$....H..
	0x0340 b8 00 00 00 c3 48 8b ac 24 b0 00 00 00 48 81 c4  .....H..$....H..
	0x0350 b8 00 00 00 c3 e8 00 00 00 00 e9 a1 fc ff ff     ...............
	rel 5+4 t=15 TLS+0
	rel 85+4 t=7 runtime.duffzero+277
	rel 119+4 t=7 strings.TrimSpace+0
	rel 145+4 t=14 go.string."="+0
	rel 164+4 t=7 strings.Split+0
	rel 234+4 t=14 go.string."Credential"+0
	rel 253+4 t=7 runtime.eqstring+0
	rel 291+4 t=7 strings.TrimSpace+0
	rel 317+4 t=14 go.string."/"+0
	rel 336+4 t=7 strings.Split+0
	rel 397+4 t=7 runtime.duffzero+277
	rel 425+4 t=14 go.string."20060102"+0
	rel 461+4 t=7 time.Parse+0
	rel 578+4 t=14 go.string."s3"+0
	rel 597+4 t=7 runtime.eqstring+0
	rel 681+4 t=14 go.string."aws4_request"+0
	rel 700+4 t=7 runtime.eqstring+0
	rel 781+4 t=7 runtime.duffcopy+826
	rel 854+4 t=7 runtime.morestack_noctxt+0
"".init t=1 size=66 args=0x0 locals=0x0
	0x0000 00000 (parse-credential-header-named.go:62)	TEXT	"".init(SB), $0-0
	0x0000 00000 (parse-credential-header-named.go:62)	MOVQ	(TLS), CX
	0x0009 00009 (parse-credential-header-named.go:62)	CMPQ	SP, 16(CX)
	0x000d 00013 (parse-credential-header-named.go:62)	JLS	59
	0x000f 00015 (parse-credential-header-named.go:62)	NOP
	0x000f 00015 (parse-credential-header-named.go:62)	NOP
	0x000f 00015 (parse-credential-header-named.go:62)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (parse-credential-header-named.go:62)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x000f 00015 (parse-credential-header-named.go:62)	MOVBLZX	"".initdone·(SB), AX
	0x0016 00022 (parse-credential-header-named.go:62)	CMPB	AL, $1
	0x0018 00024 (parse-credential-header-named.go:62)	JLS	$0, 27
	0x001a 00026 (parse-credential-header-named.go:62)	RET
	0x001b 00027 (parse-credential-header-named.go:62)	JNE	$0, 34
	0x001d 00029 (parse-credential-header-named.go:62)	PCDATA	$0, $0
	0x001d 00029 (parse-credential-header-named.go:62)	CALL	runtime.throwinit(SB)
	0x0022 00034 (parse-credential-header-named.go:62)	MOVB	$1, "".initdone·(SB)
	0x0029 00041 (parse-credential-header-named.go:62)	PCDATA	$0, $0
	0x0029 00041 (parse-credential-header-named.go:62)	CALL	strings.init(SB)
	0x002e 00046 (parse-credential-header-named.go:62)	PCDATA	$0, $0
	0x002e 00046 (parse-credential-header-named.go:62)	CALL	time.init(SB)
	0x0033 00051 (parse-credential-header-named.go:62)	MOVB	$2, "".initdone·(SB)
	0x003a 00058 (parse-credential-header-named.go:62)	RET
	0x003b 00059 (parse-credential-header-named.go:62)	NOP
	0x003b 00059 (parse-credential-header-named.go:62)	CALL	runtime.morestack_noctxt(SB)
	0x0040 00064 (parse-credential-header-named.go:62)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 2c 0f  eH..%....H;a.v,.
	0x0010 b6 05 00 00 00 00 3c 01 76 01 c3 75 05 e8 00 00  ......<.v..u....
	0x0020 00 00 c6 05 00 00 00 00 01 e8 00 00 00 00 e8 00  ................
	0x0030 00 00 00 c6 05 00 00 00 00 02 c3 e8 00 00 00 00  ................
	0x0040 eb be                                            ..
	rel 5+4 t=15 TLS+0
	rel 18+4 t=14 "".initdone·+0
	rel 30+4 t=7 runtime.throwinit+0
	rel 36+4 t=14 "".initdone·+-1
	rel 42+4 t=7 strings.init+0
	rel 47+4 t=7 time.init+0
	rel 53+4 t=14 "".initdone·+-1
	rel 60+4 t=7 runtime.morestack_noctxt+0
type..hash.struct { date time.Time; region string; service string; request string } t=1 dupok size=171 args=0x18 locals=0x20
	0x0000 00000 (parse-credential-header-named.go:1)	TEXT	type..hash.struct { date time.Time; region string; service string; request string }(SB), $32-24
	0x0000 00000 (parse-credential-header-named.go:1)	MOVQ	(TLS), CX
	0x0009 00009 (parse-credential-header-named.go:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (parse-credential-header-named.go:1)	JLS	161
	0x0013 00019 (parse-credential-header-named.go:1)	SUBQ	$32, SP
	0x0017 00023 (parse-credential-header-named.go:1)	MOVQ	BP, 24(SP)
	0x001c 00028 (parse-credential-header-named.go:1)	LEAQ	24(SP), BP
	0x0021 00033 (parse-credential-header-named.go:1)	FUNCDATA	$0, gclocals·0b86ef39f3fed835f14ba5f4d7c62fa2(SB)
	0x0021 00033 (parse-credential-header-named.go:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (parse-credential-header-named.go:1)	MOVQ	"".p+40(FP), AX
	0x0026 00038 (parse-credential-header-named.go:1)	MOVQ	AX, (SP)
	0x002a 00042 (parse-credential-header-named.go:1)	MOVQ	"".h+48(FP), CX
	0x002f 00047 (parse-credential-header-named.go:1)	MOVQ	CX, 8(SP)
	0x0034 00052 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x0034 00052 (parse-credential-header-named.go:1)	CALL	type..hash.time.Time(SB)
	0x0039 00057 (parse-credential-header-named.go:1)	MOVQ	16(SP), AX
	0x003e 00062 (parse-credential-header-named.go:1)	MOVQ	"".p+40(FP), CX
	0x0043 00067 (parse-credential-header-named.go:1)	LEAQ	24(CX), DX
	0x0047 00071 (parse-credential-header-named.go:1)	MOVQ	DX, (SP)
	0x004b 00075 (parse-credential-header-named.go:1)	MOVQ	AX, 8(SP)
	0x0050 00080 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x0050 00080 (parse-credential-header-named.go:1)	CALL	runtime.strhash(SB)
	0x0055 00085 (parse-credential-header-named.go:1)	MOVQ	16(SP), AX
	0x005a 00090 (parse-credential-header-named.go:1)	MOVQ	"".p+40(FP), CX
	0x005f 00095 (parse-credential-header-named.go:1)	LEAQ	40(CX), DX
	0x0063 00099 (parse-credential-header-named.go:1)	MOVQ	DX, (SP)
	0x0067 00103 (parse-credential-header-named.go:1)	MOVQ	AX, 8(SP)
	0x006c 00108 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x006c 00108 (parse-credential-header-named.go:1)	CALL	runtime.strhash(SB)
	0x0071 00113 (parse-credential-header-named.go:1)	MOVQ	16(SP), AX
	0x0076 00118 (parse-credential-header-named.go:1)	MOVQ	"".p+40(FP), CX
	0x007b 00123 (parse-credential-header-named.go:1)	LEAQ	56(CX), DX
	0x007f 00127 (parse-credential-header-named.go:1)	MOVQ	DX, (SP)
	0x0083 00131 (parse-credential-header-named.go:1)	MOVQ	AX, 8(SP)
	0x0088 00136 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x0088 00136 (parse-credential-header-named.go:1)	CALL	runtime.strhash(SB)
	0x008d 00141 (parse-credential-header-named.go:1)	MOVQ	16(SP), AX
	0x0092 00146 (parse-credential-header-named.go:1)	MOVQ	AX, "".~r2+56(FP)
	0x0097 00151 (parse-credential-header-named.go:1)	MOVQ	24(SP), BP
	0x009c 00156 (parse-credential-header-named.go:1)	ADDQ	$32, SP
	0x00a0 00160 (parse-credential-header-named.go:1)	RET
	0x00a1 00161 (parse-credential-header-named.go:1)	NOP
	0x00a1 00161 (parse-credential-header-named.go:1)	CALL	runtime.morestack_noctxt(SB)
	0x00a6 00166 (parse-credential-header-named.go:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 8e  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 20 48 89 6c 24 18 48 8d 6c 24  ...H.. H.l$.H.l$
	0x0020 18 48 8b 44 24 28 48 89 04 24 48 8b 4c 24 30 48  .H.D$(H..$H.L$0H
	0x0030 89 4c 24 08 e8 00 00 00 00 48 8b 44 24 10 48 8b  .L$......H.D$.H.
	0x0040 4c 24 28 48 8d 51 18 48 89 14 24 48 89 44 24 08  L$(H.Q.H..$H.D$.
	0x0050 e8 00 00 00 00 48 8b 44 24 10 48 8b 4c 24 28 48  .....H.D$.H.L$(H
	0x0060 8d 51 28 48 89 14 24 48 89 44 24 08 e8 00 00 00  .Q(H..$H.D$.....
	0x0070 00 48 8b 44 24 10 48 8b 4c 24 28 48 8d 51 38 48  .H.D$.H.L$(H.Q8H
	0x0080 89 14 24 48 89 44 24 08 e8 00 00 00 00 48 8b 44  ..$H.D$......H.D
	0x0090 24 10 48 89 44 24 38 48 8b 6c 24 18 48 83 c4 20  $.H.D$8H.l$.H.. 
	0x00a0 c3 e8 00 00 00 00 e9 55 ff ff ff                 .......U...
	rel 5+4 t=15 TLS+0
	rel 53+4 t=7 type..hash.time.Time+0
	rel 81+4 t=7 runtime.strhash+0
	rel 109+4 t=7 runtime.strhash+0
	rel 137+4 t=7 runtime.strhash+0
	rel 162+4 t=7 runtime.morestack_noctxt+0
type..eq.struct { date time.Time; region string; service string; request string } t=1 dupok size=356 args=0x18 locals=0x30
	0x0000 00000 (parse-credential-header-named.go:1)	TEXT	type..eq.struct { date time.Time; region string; service string; request string }(SB), $48-24
	0x0000 00000 (parse-credential-header-named.go:1)	MOVQ	(TLS), CX
	0x0009 00009 (parse-credential-header-named.go:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (parse-credential-header-named.go:1)	JLS	346
	0x0013 00019 (parse-credential-header-named.go:1)	SUBQ	$48, SP
	0x0017 00023 (parse-credential-header-named.go:1)	MOVQ	BP, 40(SP)
	0x001c 00028 (parse-credential-header-named.go:1)	LEAQ	40(SP), BP
	0x0021 00033 (parse-credential-header-named.go:1)	FUNCDATA	$0, gclocals·3bb21ca8fe1d99a3e492463bd711418a(SB)
	0x0021 00033 (parse-credential-header-named.go:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (parse-credential-header-named.go:1)	MOVQ	"".p+56(FP), AX
	0x0026 00038 (parse-credential-header-named.go:1)	MOVQ	(AX), CX
	0x0029 00041 (parse-credential-header-named.go:1)	MOVQ	"".q+64(FP), DX
	0x002e 00046 (parse-credential-header-named.go:1)	MOVQ	(DX), BX
	0x0031 00049 (parse-credential-header-named.go:1)	CMPQ	CX, BX
	0x0034 00052 (parse-credential-header-named.go:1)	JNE	339
	0x003a 00058 (parse-credential-header-named.go:1)	MOVL	8(AX), CX
	0x003d 00061 (parse-credential-header-named.go:1)	MOVL	8(DX), BX
	0x0040 00064 (parse-credential-header-named.go:1)	CMPL	CX, BX
	0x0042 00066 (parse-credential-header-named.go:1)	JNE	332
	0x0048 00072 (parse-credential-header-named.go:1)	MOVQ	16(AX), CX
	0x004c 00076 (parse-credential-header-named.go:1)	MOVQ	16(DX), BX
	0x0050 00080 (parse-credential-header-named.go:1)	CMPQ	CX, BX
	0x0053 00083 (parse-credential-header-named.go:1)	JNE	325
	0x0059 00089 (parse-credential-header-named.go:1)	MOVQ	32(DX), CX
	0x005d 00093 (parse-credential-header-named.go:1)	MOVQ	24(DX), BX
	0x0061 00097 (parse-credential-header-named.go:1)	MOVQ	32(AX), SI
	0x0065 00101 (parse-credential-header-named.go:1)	MOVQ	24(AX), DI
	0x0069 00105 (parse-credential-header-named.go:1)	CMPQ	SI, CX
	0x006c 00108 (parse-credential-header-named.go:1)	JEQ	$0, 281
	0x0072 00114 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x0074 00116 (parse-credential-header-named.go:1)	TESTB	CL, CL
	0x0076 00118 (parse-credential-header-named.go:1)	JEQ	274
	0x007c 00124 (parse-credential-header-named.go:1)	MOVQ	48(DX), CX
	0x0080 00128 (parse-credential-header-named.go:1)	MOVQ	40(DX), BX
	0x0084 00132 (parse-credential-header-named.go:1)	MOVQ	40(AX), SI
	0x0088 00136 (parse-credential-header-named.go:1)	MOVQ	48(AX), DI
	0x008c 00140 (parse-credential-header-named.go:1)	CMPQ	DI, CX
	0x008f 00143 (parse-credential-header-named.go:1)	JEQ	$0, 233
	0x0091 00145 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x0093 00147 (parse-credential-header-named.go:1)	TESTB	CL, CL
	0x0095 00149 (parse-credential-header-named.go:1)	JEQ	229
	0x0097 00151 (parse-credential-header-named.go:1)	MOVQ	56(DX), CX
	0x009b 00155 (parse-credential-header-named.go:1)	MOVQ	64(AX), BX
	0x009f 00159 (parse-credential-header-named.go:1)	MOVQ	56(AX), SI
	0x00a3 00163 (parse-credential-header-named.go:1)	MOVQ	64(DX), DI
	0x00a7 00167 (parse-credential-header-named.go:1)	CMPQ	BX, DI
	0x00aa 00170 (parse-credential-header-named.go:1)	JEQ	$0, 188
	0x00ac 00172 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x00ae 00174 (parse-credential-header-named.go:1)	MOVB	CL, "".~r2+72(FP)
	0x00b2 00178 (parse-credential-header-named.go:1)	MOVQ	40(SP), BP
	0x00b7 00183 (parse-credential-header-named.go:1)	ADDQ	$48, SP
	0x00bb 00187 (parse-credential-header-named.go:1)	RET
	0x00bc 00188 (parse-credential-header-named.go:1)	MOVQ	SI, (SP)
	0x00c0 00192 (parse-credential-header-named.go:1)	MOVQ	BX, 8(SP)
	0x00c5 00197 (parse-credential-header-named.go:1)	MOVQ	CX, 16(SP)
	0x00ca 00202 (parse-credential-header-named.go:1)	MOVQ	DI, 24(SP)
	0x00cf 00207 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x00cf 00207 (parse-credential-header-named.go:1)	CALL	runtime.eqstring(SB)
	0x00d4 00212 (parse-credential-header-named.go:1)	MOVBLZX	32(SP), CX
	0x00d9 00217 (parse-credential-header-named.go:1)	MOVQ	"".p+56(FP), AX
	0x00de 00222 (parse-credential-header-named.go:1)	MOVQ	"".q+64(FP), DX
	0x00e3 00227 (parse-credential-header-named.go:1)	JMP	174
	0x00e5 00229 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x00e7 00231 (parse-credential-header-named.go:1)	JMP	174
	0x00e9 00233 (parse-credential-header-named.go:1)	MOVQ	SI, (SP)
	0x00ed 00237 (parse-credential-header-named.go:1)	MOVQ	DI, 8(SP)
	0x00f2 00242 (parse-credential-header-named.go:1)	MOVQ	BX, 16(SP)
	0x00f7 00247 (parse-credential-header-named.go:1)	MOVQ	CX, 24(SP)
	0x00fc 00252 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x00fc 00252 (parse-credential-header-named.go:1)	CALL	runtime.eqstring(SB)
	0x0101 00257 (parse-credential-header-named.go:1)	MOVBLZX	32(SP), CX
	0x0106 00262 (parse-credential-header-named.go:1)	MOVQ	"".p+56(FP), AX
	0x010b 00267 (parse-credential-header-named.go:1)	MOVQ	"".q+64(FP), DX
	0x0110 00272 (parse-credential-header-named.go:1)	JMP	147
	0x0112 00274 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x0114 00276 (parse-credential-header-named.go:1)	JMP	147
	0x0119 00281 (parse-credential-header-named.go:1)	MOVQ	DI, (SP)
	0x011d 00285 (parse-credential-header-named.go:1)	MOVQ	SI, 8(SP)
	0x0122 00290 (parse-credential-header-named.go:1)	MOVQ	BX, 16(SP)
	0x0127 00295 (parse-credential-header-named.go:1)	MOVQ	CX, 24(SP)
	0x012c 00300 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x012c 00300 (parse-credential-header-named.go:1)	CALL	runtime.eqstring(SB)
	0x0131 00305 (parse-credential-header-named.go:1)	MOVBLZX	32(SP), CX
	0x0136 00310 (parse-credential-header-named.go:1)	MOVQ	"".p+56(FP), AX
	0x013b 00315 (parse-credential-header-named.go:1)	MOVQ	"".q+64(FP), DX
	0x0140 00320 (parse-credential-header-named.go:1)	JMP	116
	0x0145 00325 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x0147 00327 (parse-credential-header-named.go:1)	JMP	116
	0x014c 00332 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x014e 00334 (parse-credential-header-named.go:1)	JMP	116
	0x0153 00339 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x0155 00341 (parse-credential-header-named.go:1)	JMP	116
	0x015a 00346 (parse-credential-header-named.go:1)	NOP
	0x015a 00346 (parse-credential-header-named.go:1)	CALL	runtime.morestack_noctxt(SB)
	0x015f 00351 (parse-credential-header-named.go:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 47  eH..%....H;a...G
	0x0010 01 00 00 48 83 ec 30 48 89 6c 24 28 48 8d 6c 24  ...H..0H.l$(H.l$
	0x0020 28 48 8b 44 24 38 48 8b 08 48 8b 54 24 40 48 8b  (H.D$8H..H.T$@H.
	0x0030 1a 48 39 d9 0f 85 19 01 00 00 8b 48 08 8b 5a 08  .H9........H..Z.
	0x0040 39 d9 0f 85 04 01 00 00 48 8b 48 10 48 8b 5a 10  9.......H.H.H.Z.
	0x0050 48 39 d9 0f 85 ec 00 00 00 48 8b 4a 20 48 8b 5a  H9.......H.J H.Z
	0x0060 18 48 8b 70 20 48 8b 78 18 48 39 ce 0f 84 a7 00  .H.p H.x.H9.....
	0x0070 00 00 31 c9 84 c9 0f 84 96 00 00 00 48 8b 4a 30  ..1.........H.J0
	0x0080 48 8b 5a 28 48 8b 70 28 48 8b 78 30 48 39 cf 74  H.Z(H.p(H.x0H9.t
	0x0090 58 31 c9 84 c9 74 4e 48 8b 4a 38 48 8b 58 40 48  X1...tNH.J8H.X@H
	0x00a0 8b 70 38 48 8b 7a 40 48 39 fb 74 10 31 c9 88 4c  .p8H.z@H9.t.1..L
	0x00b0 24 48 48 8b 6c 24 28 48 83 c4 30 c3 48 89 34 24  $HH.l$(H..0.H.4$
	0x00c0 48 89 5c 24 08 48 89 4c 24 10 48 89 7c 24 18 e8  H.\$.H.L$.H.|$..
	0x00d0 00 00 00 00 0f b6 4c 24 20 48 8b 44 24 38 48 8b  ......L$ H.D$8H.
	0x00e0 54 24 40 eb c9 31 c9 eb c5 48 89 34 24 48 89 7c  T$@..1...H.4$H.|
	0x00f0 24 08 48 89 5c 24 10 48 89 4c 24 18 e8 00 00 00  $.H.\$.H.L$.....
	0x0100 00 0f b6 4c 24 20 48 8b 44 24 38 48 8b 54 24 40  ...L$ H.D$8H.T$@
	0x0110 eb 81 31 c9 e9 7a ff ff ff 48 89 3c 24 48 89 74  ..1..z...H.<$H.t
	0x0120 24 08 48 89 5c 24 10 48 89 4c 24 18 e8 00 00 00  $.H.\$.H.L$.....
	0x0130 00 0f b6 4c 24 20 48 8b 44 24 38 48 8b 54 24 40  ...L$ H.D$8H.T$@
	0x0140 e9 2f ff ff ff 31 c9 e9 28 ff ff ff 31 c9 e9 21  ./...1..(...1..!
	0x0150 ff ff ff 31 c9 e9 1a ff ff ff e8 00 00 00 00 e9  ...1............
	0x0160 9c fe ff ff                                      ....
	rel 5+4 t=15 TLS+0
	rel 208+4 t=7 runtime.eqstring+0
	rel 253+4 t=7 runtime.eqstring+0
	rel 301+4 t=7 runtime.eqstring+0
	rel 347+4 t=7 runtime.morestack_noctxt+0
type..hash."".credentialHeader t=1 dupok size=108 args=0x18 locals=0x20
	0x0000 00000 (parse-credential-header-named.go:1)	TEXT	type..hash."".credentialHeader(SB), $32-24
	0x0000 00000 (parse-credential-header-named.go:1)	MOVQ	(TLS), CX
	0x0009 00009 (parse-credential-header-named.go:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (parse-credential-header-named.go:1)	JLS	101
	0x000f 00015 (parse-credential-header-named.go:1)	SUBQ	$32, SP
	0x0013 00019 (parse-credential-header-named.go:1)	MOVQ	BP, 24(SP)
	0x0018 00024 (parse-credential-header-named.go:1)	LEAQ	24(SP), BP
	0x001d 00029 (parse-credential-header-named.go:1)	FUNCDATA	$0, gclocals·0b86ef39f3fed835f14ba5f4d7c62fa2(SB)
	0x001d 00029 (parse-credential-header-named.go:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (parse-credential-header-named.go:1)	MOVQ	"".p+40(FP), AX
	0x0022 00034 (parse-credential-header-named.go:1)	MOVQ	AX, (SP)
	0x0026 00038 (parse-credential-header-named.go:1)	MOVQ	"".h+48(FP), CX
	0x002b 00043 (parse-credential-header-named.go:1)	MOVQ	CX, 8(SP)
	0x0030 00048 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x0030 00048 (parse-credential-header-named.go:1)	CALL	runtime.strhash(SB)
	0x0035 00053 (parse-credential-header-named.go:1)	MOVQ	16(SP), AX
	0x003a 00058 (parse-credential-header-named.go:1)	MOVQ	"".p+40(FP), CX
	0x003f 00063 (parse-credential-header-named.go:1)	LEAQ	16(CX), DX
	0x0043 00067 (parse-credential-header-named.go:1)	MOVQ	DX, (SP)
	0x0047 00071 (parse-credential-header-named.go:1)	MOVQ	AX, 8(SP)
	0x004c 00076 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x004c 00076 (parse-credential-header-named.go:1)	CALL	type..hash.struct { date time.Time; region string; service string; request string }(SB)
	0x0051 00081 (parse-credential-header-named.go:1)	MOVQ	16(SP), AX
	0x0056 00086 (parse-credential-header-named.go:1)	MOVQ	AX, "".~r2+56(FP)
	0x005b 00091 (parse-credential-header-named.go:1)	MOVQ	24(SP), BP
	0x0060 00096 (parse-credential-header-named.go:1)	ADDQ	$32, SP
	0x0064 00100 (parse-credential-header-named.go:1)	RET
	0x0065 00101 (parse-credential-header-named.go:1)	NOP
	0x0065 00101 (parse-credential-header-named.go:1)	CALL	runtime.morestack_noctxt(SB)
	0x006a 00106 (parse-credential-header-named.go:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 56 48  eH..%....H;a.vVH
	0x0010 83 ec 20 48 89 6c 24 18 48 8d 6c 24 18 48 8b 44  .. H.l$.H.l$.H.D
	0x0020 24 28 48 89 04 24 48 8b 4c 24 30 48 89 4c 24 08  $(H..$H.L$0H.L$.
	0x0030 e8 00 00 00 00 48 8b 44 24 10 48 8b 4c 24 28 48  .....H.D$.H.L$(H
	0x0040 8d 51 10 48 89 14 24 48 89 44 24 08 e8 00 00 00  .Q.H..$H.D$.....
	0x0050 00 48 8b 44 24 10 48 89 44 24 38 48 8b 6c 24 18  .H.D$.H.D$8H.l$.
	0x0060 48 83 c4 20 c3 e8 00 00 00 00 eb 94              H.. ........
	rel 5+4 t=15 TLS+0
	rel 49+4 t=7 runtime.strhash+0
	rel 77+4 t=7 type..hash.struct { date time.Time; region string; service string; request string }+0
	rel 102+4 t=7 runtime.morestack_noctxt+0
type..eq."".credentialHeader t=1 dupok size=442 args=0x18 locals=0x30
	0x0000 00000 (parse-credential-header-named.go:1)	TEXT	type..eq."".credentialHeader(SB), $48-24
	0x0000 00000 (parse-credential-header-named.go:1)	MOVQ	(TLS), CX
	0x0009 00009 (parse-credential-header-named.go:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (parse-credential-header-named.go:1)	JLS	432
	0x0013 00019 (parse-credential-header-named.go:1)	SUBQ	$48, SP
	0x0017 00023 (parse-credential-header-named.go:1)	MOVQ	BP, 40(SP)
	0x001c 00028 (parse-credential-header-named.go:1)	LEAQ	40(SP), BP
	0x0021 00033 (parse-credential-header-named.go:1)	FUNCDATA	$0, gclocals·3bb21ca8fe1d99a3e492463bd711418a(SB)
	0x0021 00033 (parse-credential-header-named.go:1)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0021 00033 (parse-credential-header-named.go:1)	MOVQ	"".q+64(FP), AX
	0x0026 00038 (parse-credential-header-named.go:1)	MOVQ	8(AX), CX
	0x002a 00042 (parse-credential-header-named.go:1)	MOVQ	(AX), DX
	0x002d 00045 (parse-credential-header-named.go:1)	MOVQ	"".p+56(FP), BX
	0x0032 00050 (parse-credential-header-named.go:1)	MOVQ	8(BX), SI
	0x0036 00054 (parse-credential-header-named.go:1)	MOVQ	(BX), DI
	0x0039 00057 (parse-credential-header-named.go:1)	CMPQ	SI, CX
	0x003c 00060 (parse-credential-header-named.go:1)	JEQ	$0, 388
	0x0042 00066 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x0044 00068 (parse-credential-header-named.go:1)	TESTB	CL, CL
	0x0046 00070 (parse-credential-header-named.go:1)	JEQ	381
	0x004c 00076 (parse-credential-header-named.go:1)	MOVQ	16(BX), CX
	0x0050 00080 (parse-credential-header-named.go:1)	MOVQ	16(AX), DX
	0x0054 00084 (parse-credential-header-named.go:1)	CMPQ	CX, DX
	0x0057 00087 (parse-credential-header-named.go:1)	JNE	374
	0x005d 00093 (parse-credential-header-named.go:1)	MOVL	24(BX), CX
	0x0060 00096 (parse-credential-header-named.go:1)	MOVL	24(AX), DX
	0x0063 00099 (parse-credential-header-named.go:1)	CMPL	CX, DX
	0x0065 00101 (parse-credential-header-named.go:1)	JNE	367
	0x006b 00107 (parse-credential-header-named.go:1)	MOVQ	32(BX), CX
	0x006f 00111 (parse-credential-header-named.go:1)	MOVQ	32(AX), DX
	0x0073 00115 (parse-credential-header-named.go:1)	CMPQ	CX, DX
	0x0076 00118 (parse-credential-header-named.go:1)	JNE	360
	0x007c 00124 (parse-credential-header-named.go:1)	MOVQ	48(AX), CX
	0x0080 00128 (parse-credential-header-named.go:1)	MOVQ	40(AX), DX
	0x0084 00132 (parse-credential-header-named.go:1)	MOVQ	48(BX), SI
	0x0088 00136 (parse-credential-header-named.go:1)	MOVQ	40(BX), DI
	0x008c 00140 (parse-credential-header-named.go:1)	CMPQ	SI, CX
	0x008f 00143 (parse-credential-header-named.go:1)	JEQ	$0, 316
	0x0095 00149 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x0097 00151 (parse-credential-header-named.go:1)	TESTB	CL, CL
	0x0099 00153 (parse-credential-header-named.go:1)	JEQ	309
	0x009f 00159 (parse-credential-header-named.go:1)	MOVQ	64(BX), CX
	0x00a3 00163 (parse-credential-header-named.go:1)	MOVQ	56(BX), DX
	0x00a7 00167 (parse-credential-header-named.go:1)	MOVQ	64(AX), SI
	0x00ab 00171 (parse-credential-header-named.go:1)	MOVQ	56(AX), DI
	0x00af 00175 (parse-credential-header-named.go:1)	CMPQ	CX, SI
	0x00b2 00178 (parse-credential-header-named.go:1)	JEQ	$0, 268
	0x00b4 00180 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x00b6 00182 (parse-credential-header-named.go:1)	TESTB	CL, CL
	0x00b8 00184 (parse-credential-header-named.go:1)	JEQ	264
	0x00ba 00186 (parse-credential-header-named.go:1)	MOVQ	80(AX), CX
	0x00be 00190 (parse-credential-header-named.go:1)	MOVQ	72(AX), DX
	0x00c2 00194 (parse-credential-header-named.go:1)	MOVQ	80(BX), SI
	0x00c6 00198 (parse-credential-header-named.go:1)	MOVQ	72(BX), DI
	0x00ca 00202 (parse-credential-header-named.go:1)	CMPQ	SI, CX
	0x00cd 00205 (parse-credential-header-named.go:1)	JEQ	$0, 223
	0x00cf 00207 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x00d1 00209 (parse-credential-header-named.go:1)	MOVB	CL, "".~r2+72(FP)
	0x00d5 00213 (parse-credential-header-named.go:1)	MOVQ	40(SP), BP
	0x00da 00218 (parse-credential-header-named.go:1)	ADDQ	$48, SP
	0x00de 00222 (parse-credential-header-named.go:1)	RET
	0x00df 00223 (parse-credential-header-named.go:1)	MOVQ	DI, (SP)
	0x00e3 00227 (parse-credential-header-named.go:1)	MOVQ	SI, 8(SP)
	0x00e8 00232 (parse-credential-header-named.go:1)	MOVQ	DX, 16(SP)
	0x00ed 00237 (parse-credential-header-named.go:1)	MOVQ	CX, 24(SP)
	0x00f2 00242 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x00f2 00242 (parse-credential-header-named.go:1)	CALL	runtime.eqstring(SB)
	0x00f7 00247 (parse-credential-header-named.go:1)	MOVBLZX	32(SP), CX
	0x00fc 00252 (parse-credential-header-named.go:1)	MOVQ	"".q+64(FP), AX
	0x0101 00257 (parse-credential-header-named.go:1)	MOVQ	"".p+56(FP), BX
	0x0106 00262 (parse-credential-header-named.go:1)	JMP	209
	0x0108 00264 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x010a 00266 (parse-credential-header-named.go:1)	JMP	209
	0x010c 00268 (parse-credential-header-named.go:1)	MOVQ	DX, (SP)
	0x0110 00272 (parse-credential-header-named.go:1)	MOVQ	CX, 8(SP)
	0x0115 00277 (parse-credential-header-named.go:1)	MOVQ	DI, 16(SP)
	0x011a 00282 (parse-credential-header-named.go:1)	MOVQ	SI, 24(SP)
	0x011f 00287 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x011f 00287 (parse-credential-header-named.go:1)	CALL	runtime.eqstring(SB)
	0x0124 00292 (parse-credential-header-named.go:1)	MOVBLZX	32(SP), CX
	0x0129 00297 (parse-credential-header-named.go:1)	MOVQ	"".q+64(FP), AX
	0x012e 00302 (parse-credential-header-named.go:1)	MOVQ	"".p+56(FP), BX
	0x0133 00307 (parse-credential-header-named.go:1)	JMP	182
	0x0135 00309 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x0137 00311 (parse-credential-header-named.go:1)	JMP	182
	0x013c 00316 (parse-credential-header-named.go:1)	MOVQ	DI, (SP)
	0x0140 00320 (parse-credential-header-named.go:1)	MOVQ	SI, 8(SP)
	0x0145 00325 (parse-credential-header-named.go:1)	MOVQ	DX, 16(SP)
	0x014a 00330 (parse-credential-header-named.go:1)	MOVQ	CX, 24(SP)
	0x014f 00335 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x014f 00335 (parse-credential-header-named.go:1)	CALL	runtime.eqstring(SB)
	0x0154 00340 (parse-credential-header-named.go:1)	MOVBLZX	32(SP), CX
	0x0159 00345 (parse-credential-header-named.go:1)	MOVQ	"".q+64(FP), AX
	0x015e 00350 (parse-credential-header-named.go:1)	MOVQ	"".p+56(FP), BX
	0x0163 00355 (parse-credential-header-named.go:1)	JMP	151
	0x0168 00360 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x016a 00362 (parse-credential-header-named.go:1)	JMP	151
	0x016f 00367 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x0171 00369 (parse-credential-header-named.go:1)	JMP	151
	0x0176 00374 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x0178 00376 (parse-credential-header-named.go:1)	JMP	151
	0x017d 00381 (parse-credential-header-named.go:1)	MOVL	$0, CX
	0x017f 00383 (parse-credential-header-named.go:1)	JMP	209
	0x0184 00388 (parse-credential-header-named.go:1)	MOVQ	DI, (SP)
	0x0188 00392 (parse-credential-header-named.go:1)	MOVQ	SI, 8(SP)
	0x018d 00397 (parse-credential-header-named.go:1)	MOVQ	DX, 16(SP)
	0x0192 00402 (parse-credential-header-named.go:1)	MOVQ	CX, 24(SP)
	0x0197 00407 (parse-credential-header-named.go:1)	PCDATA	$0, $0
	0x0197 00407 (parse-credential-header-named.go:1)	CALL	runtime.eqstring(SB)
	0x019c 00412 (parse-credential-header-named.go:1)	MOVBLZX	32(SP), CX
	0x01a1 00417 (parse-credential-header-named.go:1)	MOVQ	"".q+64(FP), AX
	0x01a6 00422 (parse-credential-header-named.go:1)	MOVQ	"".p+56(FP), BX
	0x01ab 00427 (parse-credential-header-named.go:1)	JMP	68
	0x01b0 00432 (parse-credential-header-named.go:1)	NOP
	0x01b0 00432 (parse-credential-header-named.go:1)	CALL	runtime.morestack_noctxt(SB)
	0x01b5 00437 (parse-credential-header-named.go:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 9d  eH..%....H;a....
	0x0010 01 00 00 48 83 ec 30 48 89 6c 24 28 48 8d 6c 24  ...H..0H.l$(H.l$
	0x0020 28 48 8b 44 24 40 48 8b 48 08 48 8b 10 48 8b 5c  (H.D$@H.H.H..H.\
	0x0030 24 38 48 8b 73 08 48 8b 3b 48 39 ce 0f 84 42 01  $8H.s.H.;H9...B.
	0x0040 00 00 31 c9 84 c9 0f 84 31 01 00 00 48 8b 4b 10  ..1.....1...H.K.
	0x0050 48 8b 50 10 48 39 d1 0f 85 19 01 00 00 8b 4b 18  H.P.H9........K.
	0x0060 8b 50 18 39 d1 0f 85 04 01 00 00 48 8b 4b 20 48  .P.9.......H.K H
	0x0070 8b 50 20 48 39 d1 0f 85 ec 00 00 00 48 8b 48 30  .P H9.......H.H0
	0x0080 48 8b 50 28 48 8b 73 30 48 8b 7b 28 48 39 ce 0f  H.P(H.s0H.{(H9..
	0x0090 84 a7 00 00 00 31 c9 84 c9 0f 84 96 00 00 00 48  .....1.........H
	0x00a0 8b 4b 40 48 8b 53 38 48 8b 70 40 48 8b 78 38 48  .K@H.S8H.p@H.x8H
	0x00b0 39 f1 74 58 31 c9 84 c9 74 4e 48 8b 48 50 48 8b  9.tX1...tNH.HPH.
	0x00c0 50 48 48 8b 73 50 48 8b 7b 48 48 39 ce 74 10 31  PHH.sPH.{HH9.t.1
	0x00d0 c9 88 4c 24 48 48 8b 6c 24 28 48 83 c4 30 c3 48  ..L$HH.l$(H..0.H
	0x00e0 89 3c 24 48 89 74 24 08 48 89 54 24 10 48 89 4c  .<$H.t$.H.T$.H.L
	0x00f0 24 18 e8 00 00 00 00 0f b6 4c 24 20 48 8b 44 24  $........L$ H.D$
	0x0100 40 48 8b 5c 24 38 eb c9 31 c9 eb c5 48 89 14 24  @H.\$8..1...H..$
	0x0110 48 89 4c 24 08 48 89 7c 24 10 48 89 74 24 18 e8  H.L$.H.|$.H.t$..
	0x0120 00 00 00 00 0f b6 4c 24 20 48 8b 44 24 40 48 8b  ......L$ H.D$@H.
	0x0130 5c 24 38 eb 81 31 c9 e9 7a ff ff ff 48 89 3c 24  \$8..1..z...H.<$
	0x0140 48 89 74 24 08 48 89 54 24 10 48 89 4c 24 18 e8  H.t$.H.T$.H.L$..
	0x0150 00 00 00 00 0f b6 4c 24 20 48 8b 44 24 40 48 8b  ......L$ H.D$@H.
	0x0160 5c 24 38 e9 2f ff ff ff 31 c9 e9 28 ff ff ff 31  \$8./...1..(...1
	0x0170 c9 e9 21 ff ff ff 31 c9 e9 1a ff ff ff 31 c9 e9  ..!...1......1..
	0x0180 4d ff ff ff 48 89 3c 24 48 89 74 24 08 48 89 54  M...H.<$H.t$.H.T
	0x0190 24 10 48 89 4c 24 18 e8 00 00 00 00 0f b6 4c 24  $.H.L$........L$
	0x01a0 20 48 8b 44 24 40 48 8b 5c 24 38 e9 94 fe ff ff   H.D$@H.\$8.....
	0x01b0 e8 00 00 00 00 e9 46 fe ff ff                    ......F...
	rel 5+4 t=15 TLS+0
	rel 243+4 t=7 runtime.eqstring+0
	rel 288+4 t=7 runtime.eqstring+0
	rel 336+4 t=7 runtime.eqstring+0
	rel 408+4 t=7 runtime.eqstring+0
	rel 433+4 t=7 runtime.morestack_noctxt+0
go.string.hdr."=" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."="+0
go.string."=" t=9 dupok size=1
	0x0000 3d                                               =
go.string.hdr."Credential" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 0a 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."Credential"+0
go.string."Credential" t=9 dupok size=10
	0x0000 43 72 65 64 65 6e 74 69 61 6c                    Credential
go.string.hdr."/" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."/"+0
go.string."/" t=9 dupok size=1
	0x0000 2f                                               /
go.string.hdr."20060102" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."20060102"+0
go.string."20060102" t=9 dupok size=8
	0x0000 32 30 30 36 30 31 30 32                          20060102
go.string.hdr."s3" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."s3"+0
go.string."s3" t=9 dupok size=2
	0x0000 73 33                                            s3
go.string.hdr."aws4_request" t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 0c 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."aws4_request"+0
go.string."aws4_request" t=9 dupok size=12
	0x0000 61 77 73 34 5f 72 65 71 75 65 73 74              aws4_request
gclocals·0dbd1877290f6460e7d9f2638bdb524e t=9 dupok size=24
	0x0000 04 00 00 00 0d 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 01 00 00 00 c6 0a 00 00                          ........
gclocals·ffb4b0e44257a4e1571ee2c765c52d52 t=9 dupok size=24
	0x0000 04 00 00 00 0d 00 00 00 01 00 00 00 c5 0a 00 00  ................
	0x0010 c5 0a 00 00 c5 0a 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=9 dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
"".initdone· t=34 size=1
"".parseCredentialHeader·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".parseCredentialHeader+0
"".init·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".init+0
gclocals·0b86ef39f3fed835f14ba5f4d7c62fa2 t=9 dupok size=12
	0x0000 01 00 00 00 03 00 00 00 01 00 00 00              ............
gclocals·3bb21ca8fe1d99a3e492463bd711418a t=9 dupok size=12
	0x0000 01 00 00 00 03 00 00 00 03 00 00 00              ............
type..hashfunc.struct { date time.Time; region string; service string; request string } t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash.struct { date time.Time; region string; service string; request string }+0
type..eqfunc.struct { date time.Time; region string; service string; request string } t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq.struct { date time.Time; region string; service string; request string }+0
type..alg.struct { date time.Time; region string; service string; request string } t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc.struct { date time.Time; region string; service string; request string }+0
	rel 8+8 t=1 type..eqfunc.struct { date time.Time; region string; service string; request string }+0
runtime.gcbits.ac t=9 dupok size=1
	0x0000 ac                                               .
type..namedata.*struct { date time.Time; region string; service string; request string }. t=9 dupok size=76
	0x0000 00 00 49 2a 73 74 72 75 63 74 20 7b 20 64 61 74  ..I*struct { dat
	0x0010 65 20 74 69 6d 65 2e 54 69 6d 65 3b 20 72 65 67  e time.Time; reg
	0x0020 69 6f 6e 20 73 74 72 69 6e 67 3b 20 73 65 72 76  ion string; serv
	0x0030 69 63 65 20 73 74 72 69 6e 67 3b 20 72 65 71 75  ice string; requ
	0x0040 65 73 74 20 73 74 72 69 6e 67 20 7d              est string }
type..namedata.date. t=9 dupok size=7
	0x0000 00 00 04 64 61 74 65                             ...date
type..namedata.region. t=9 dupok size=9
	0x0000 00 00 06 72 65 67 69 6f 6e                       ...region
type..namedata.service. t=9 dupok size=10
	0x0000 00 00 07 73 65 72 76 69 63 65                    ...service
type..namedata.request. t=9 dupok size=10
	0x0000 00 00 07 72 65 71 75 65 73 74                    ...request
type.struct { date time.Time; region string; service string; request string } t=9 dupok size=176
	0x0000 48 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00  H.......@.......
	0x0010 2d be 0e af 02 08 08 19 00 00 00 00 00 00 00 00  -...............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 04 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 18 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 28 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  (...............
	0x00a0 00 00 00 00 00 00 00 00 38 00 00 00 00 00 00 00  ........8.......
	rel 24+8 t=1 type..alg.struct { date time.Time; region string; service string; request string }+0
	rel 32+8 t=1 runtime.gcbits.ac+0
	rel 40+4 t=5 type..namedata.*struct { date time.Time; region string; service string; request string }.+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type.struct { date time.Time; region string; service string; request string }+80
	rel 80+8 t=1 type..namedata.date.+0
	rel 88+8 t=1 type.time.Time+0
	rel 104+8 t=1 type..namedata.region.+0
	rel 112+8 t=1 type.string+0
	rel 128+8 t=1 type..namedata.service.+0
	rel 136+8 t=1 type.string+0
	rel 152+8 t=1 type..namedata.request.+0
	rel 160+8 t=1 type.string+0
go.typelink.struct { date time.Time; region string; service string; request string } t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.struct { date time.Time; region string; service string; request string }+0
type..hashfunc."".credentialHeader t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash."".credentialHeader+0
type..eqfunc."".credentialHeader t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq."".credentialHeader+0
type..alg."".credentialHeader t=9 dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc."".credentialHeader+0
	rel 8+8 t=1 type..eqfunc."".credentialHeader+0
runtime.gcbits.01 t=9 dupok size=1
	0x0000 01                                               .
type..namedata.*named_return_params2.credentialHeader. t=9 dupok size=41
	0x0000 00 00 26 2a 6e 61 6d 65 64 5f 72 65 74 75 72 6e  ..&*named_return
	0x0010 5f 70 61 72 61 6d 73 32 2e 63 72 65 64 65 6e 74  _params2.credent
	0x0020 69 61 6c 48 65 61 64 65 72                       ialHeader
type.*"".credentialHeader t=9 size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 e8 f4 a5 04 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*named_return_params2.credentialHeader.+0
	rel 48+8 t=1 type."".credentialHeader+0
go.typelink.*"".credentialHeader t=9 size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.*"".credentialHeader+0
runtime.gcbits.b102 t=9 dupok size=2
	0x0000 b1 02                                            ..
type..namedata.accessKey. t=9 dupok size=12
	0x0000 00 00 09 61 63 63 65 73 73 4b 65 79              ...accessKey
type..namedata.scope. t=9 dupok size=8
	0x0000 00 00 05 73 63 6f 70 65                          ...scope
type."".credentialHeader t=9 size=144
	0x0000 58 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00  X.......P.......
	0x0010 1c bb 3c 70 07 08 08 19 00 00 00 00 00 00 00 00  ..<p............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00 02 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00  ........@.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 type..alg."".credentialHeader+0
	rel 32+8 t=1 runtime.gcbits.b102+0
	rel 40+4 t=5 type..namedata.*named_return_params2.credentialHeader.+0
	rel 44+4 t=5 type.*"".credentialHeader+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".credentialHeader+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.accessKey.+0
	rel 104+8 t=1 type.string+0
	rel 120+8 t=1 type..namedata.scope.+0
	rel 128+8 t=1 type.struct { date time.Time; region string; service string; request string }+0
type..namedata.*[]string. t=9 dupok size=12
	0x0000 00 00 09 2a 5b 5d 73 74 72 69 6e 67              ...*[]string
type.[]string t=9 dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 d3 a8 f3 0a 02 08 08 17 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]string.+0
	rel 48+8 t=1 type.string+0
go.typelink.[]string t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.[]string+0
type.*struct { date time.Time; region string; service string; request string } t=9 dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 9f 02 f5 53 00 08 08 36 00 00 00 00 00 00 00 00  ...S...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { date time.Time; region string; service string; request string }.+0
	rel 48+8 t=1 type.struct { date time.Time; region string; service string; request string }+0
go.typelink.*struct { date time.Time; region string; service string; request string } t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.*struct { date time.Time; region string; service string; request string }+0
type..importpath.strings. t=9 dupok size=10
	0x0000 00 00 07 73 74 72 69 6e 67 73                    ...strings
type..importpath.time. t=9 dupok size=7
	0x0000 00 00 04 74 69 6d 65                             ...time
type..hash.struct { date time.Time; region string; service string; request string }·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash.struct { date time.Time; region string; service string; request string }+0
type..eq.struct { date time.Time; region string; service string; request string }·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq.struct { date time.Time; region string; service string; request string }+0
type..hash."".credentialHeader·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash."".credentialHeader+0
type..eq."".credentialHeader·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq."".credentialHeader+0
