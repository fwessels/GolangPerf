"".NamedReturnParams t=1 size=67 args=0x40 locals=0x0
	0x0000 00000 (named-return-params.go:10)	TEXT	"".NamedReturnParams(SB), $0-64
	0x0000 00000 (named-return-params.go:10)	NOP
	0x0000 00000 (named-return-params.go:10)	NOP
	0x0000 00000 (named-return-params.go:10)	FUNCDATA	$0, gclocals·895d0569a38a56443b84805daa09d838(SB)
	0x0000 00000 (named-return-params.go:10)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (named-return-params.go:10)	MOVQ	$0, "".oi+16(FP)
	0x0009 00009 (named-return-params.go:10)	LEAQ	"".oi+24(FP), DI
	0x000e 00014 (named-return-params.go:10)	XORPS	X0, X0
	0x0011 00017 (named-return-params.go:10)	ADDQ	$-16, DI
	0x0015 00021 (named-return-params.go:10)	DUFFZERO	$288
	0x0028 00040 (named-return-params.go:12)	MOVQ	"".i+8(FP), AX
	0x002d 00045 (named-return-params.go:12)	CMPQ	AX, $1
	0x0031 00049 (named-return-params.go:12)	JEQ	$0, 66
	0x0033 00051 (named-return-params.go:16)	CMPQ	AX, $2
	0x0037 00055 (named-return-params.go:16)	JEQ	$0, 65
	0x0039 00057 (named-return-params.go:20)	CMPQ	AX, $3
	0x003d 00061 (named-return-params.go:20)	JNE	64
	0x003f 00063 (named-return-params.go:21)	RET
	0x0040 00064 (named-return-params.go:24)	RET
	0x0041 00065 (named-return-params.go:17)	RET
	0x0042 00066 (named-return-params.go:13)	RET
	0x0000 48 c7 44 24 10 00 00 00 00 48 8d 7c 24 18 0f 57  H.D$.....H.|$..W
	0x0010 c0 48 83 c7 f0 48 89 6c 24 f0 48 8d 6c 24 f0 e8  .H...H.l$.H.l$..
	0x0020 00 00 00 00 48 8b 6d 00 48 8b 44 24 08 48 83 f8  ....H.m.H.D$.H..
	0x0030 01 74 0f 48 83 f8 02 74 08 48 83 f8 03 75 01 c3  .t.H...t.H...u..
	0x0040 c3 c3 c3                                         ...
	rel 32+4 t=7 runtime.duffzero+288
gclocals·33cdeccccebe80329f1fdbee7f5874cb t=9 dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·895d0569a38a56443b84805daa09d838 t=9 dupok size=12
	0x0000 01 00 00 00 08 00 00 00 00 00 00 00              ............
"".NamedReturnParams·f t=9 dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".NamedReturnParams+0
runtime.gcbits.01 t=9 dupok size=1
	0x0000 01                                               .
type..namedata.*[]int. t=9 dupok size=9
	0x0000 00 00 06 2a 5b 5d 69 6e 74                       ...*[]int
type.[]int t=9 dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 8e 66 f9 1b 02 08 08 17 00 00 00 00 00 00 00 00  .f..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]int.+0
	rel 48+8 t=1 type.int+0
go.typelink.[]int t=9 dupok size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.[]int+0
type..namedata.*named_return_params.objectInfo. t=9 dupok size=34
	0x0000 00 00 1f 2a 6e 61 6d 65 64 5f 72 65 74 75 72 6e  ...*named_return
	0x0010 5f 70 61 72 61 6d 73 2e 6f 62 6a 65 63 74 49 6e  _params.objectIn
	0x0020 66 6f                                            fo
type.*"".objectInfo t=9 size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a9 2d 39 98 00 08 08 36 00 00 00 00 00 00 00 00  .-9....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*named_return_params.objectInfo.+0
	rel 48+8 t=1 type."".objectInfo+0
go.typelink.*"".objectInfo t=9 size=4
	0x0000 00 00 00 00                                      ....
	rel 0+4 t=5 type.*"".objectInfo+0
runtime.gcbits.14 t=9 dupok size=1
	0x0000 14                                               .
type..namedata.arg1. t=9 dupok size=7
	0x0000 00 00 04 61 72 67 31                             ...arg1
type..namedata.arg2. t=9 dupok size=7
	0x0000 00 00 04 61 72 67 32                             ...arg2
type..namedata.arg3. t=9 dupok size=7
	0x0000 00 00 04 61 72 67 33                             ...arg3
type..namedata.arg4. t=9 dupok size=7
	0x0000 00 00 04 61 72 67 34                             ...arg4
type."".objectInfo t=9 size=192
	0x0000 38 00 00 00 00 00 00 00 28 00 00 00 00 00 00 00  8.......(.......
	0x0010 43 26 5e 53 07 08 08 19 00 00 00 00 00 00 00 00  C&^S............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 04 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 70 00 00 00 00 00 00 00  ........p.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 10 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.14+0
	rel 40+4 t=5 type..namedata.*named_return_params.objectInfo.+0
	rel 44+4 t=5 type.*"".objectInfo+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type."".objectInfo+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.arg1.+0
	rel 104+8 t=1 type.int64+0
	rel 120+8 t=1 type..namedata.arg2.+0
	rel 128+8 t=1 type.uint64+0
	rel 144+8 t=1 type..namedata.arg3.+0
	rel 152+8 t=1 type.string+0
	rel 168+8 t=1 type..namedata.arg4.+0
	rel 176+8 t=1 type.[]int+0
