
### Single call

| struct (sizeof) | by-value | by-reference | factor 
|----------------|----------|--------|------
| xlObjects (88) |     5.06 |   2.21 | 2.3x |
| xlObjects* (112) |     5.35 |   2.19 | 2.4x 
| xlObjects** (48) |     4.20 |   2.51 | 1.7x
| xlObjects**** (32) |     3.79 |   2.52 | 1.5x
| xlObjects**** (24) |     2.53 |   2.50 | 1.0x

### Nested call (3 deep)

| struct (sizeof) | by-value | by-reference | factor |
|----------------|----------|--------|-------
| xlObjects (88) |     13.7 |   5.37 | 2.6x | 
| xlObjects* (112) |    14.8 |   5.24 | 2.8x |
| xlObjects** (48) |     11.8 |   5.62 | 2.1x | 
| xlObjects*** (32) |   10.5 |   5.72 | 1.8x | 
| xlObjects**** (24) |     6.24 |   5.44 | 1.2x | 

### Nested call (10 deep)

| struct (sizeof) | by-value | by-reference | factor |
|----------------|----------|--------|-------
| xlObjects (88) |     44.6 |   16.3 | 2.7x | 
| xlObjects* (112) |   48.0 |   16.3 | 2.9x |
| xlObjects** (48) |   38.5 |   19.2 | 2.0x | 
| xlObjects*** (32) |   34.9 |   19.4 | 1.8x | 
| xlObjects**** (24) |   22.2 |   19.6 | 1.2x | 


### by-value or by-reference 


```go
"".xlObjects.ReceiverByVal t=1 size=27 args=0x68 locals=0x0
	0x0000 00000 (xl-v1.go:107)	TEXT	"".xlObjects.ReceiverByVal(SB), $0-104
	0x0000 00000 (xl-v1.go:107)	NOP
	0x0000 00000 (xl-v1.go:107)	NOP
	0x0000 00000 (xl-v1.go:107)	FUNCDATA	$0, gclocals·df06f131e3512499e9fcc113358547bf(SB)
	0x0000 00000 (xl-v1.go:107)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (xl-v1.go:108)	MOVQ	"".xl+40(FP), AX
	0x0005 00005 (xl-v1.go:108)	MOVQ	"".xl+48(FP), CX
	0x000a 00010 (xl-v1.go:108)	MOVQ	"".arg1+96(FP), DX
	0x000f 00015 (xl-v1.go:108)	ADDQ	DX, AX
	0x0012 00018 (xl-v1.go:108)	ADDQ	CX, AX
	0x0015 00021 (xl-v1.go:108)	MOVQ	AX, "".~r1+104(FP)
	0x001a 00026 (xl-v1.go:108)	RET
```

```go
"".(*xlObjects).ReceiverByRef t=1 size=30 args=0x18 locals=0x0
	0x0000 00000 (xl-v1.go:112)	TEXT	"".(*xlObjects).ReceiverByRef(SB), $0-24
	0x0000 00000 (xl-v1.go:112)	NOP
	0x0000 00000 (xl-v1.go:112)	NOP
	0x0000 00000 (xl-v1.go:112)	FUNCDATA	$0, gclocals·0b86ef39f3fed835f14ba5f4d7c62fa2(SB)
	0x0000 00000 (xl-v1.go:112)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (xl-v1.go:113)	MOVQ	"".xl+8(FP), AX
	0x0005 00005 (xl-v1.go:113)	MOVQ	32(AX), CX
	0x0009 00009 (xl-v1.go:113)	MOVQ	40(AX), DX
	0x000d 00013 (xl-v1.go:113)	MOVQ	"".arg1+16(FP), BX
	0x0012 00018 (xl-v1.go:113)	ADDQ	BX, CX
	0x0015 00021 (xl-v1.go:113)	ADDQ	DX, CX
	0x0018 00024 (xl-v1.go:113)	MOVQ	CX, "".~r1+24(FP)
	0x001d 00029 (xl-v1.go:113)	RET
```

`sizeof(struct) >= 32`
```go
	0x00f2 00242 (xl-v1.go:123)	MOVQ	"".xl+120(SP), AX
	0x00f7 00247 (xl-v1.go:123)	MOVQ	(AX), CX
	0x00fa 00250 (xl-v1.go:123)	MOVQ	CX, (SP)
	0x00fe 00254 (xl-v1.go:123)	LEAQ	8(AX), SI
	0x0102 00258 (xl-v1.go:123)	LEAQ	8(SP), DI
	0x0107 00263 (xl-v1.go:123)	DUFFCOPY	$826        # Copy object -- function call
	0x011a 00282 (xl-v1.go:123)	MOVQ	$123, 88(SP)
	0x0123 00291 (xl-v1.go:123)	PCDATA	$0, $2
	0x0123 00291 (xl-v1.go:123)	CALL	"".xlObjects.ReceiverByVal(SB)
```

`sizeof(struct) <= 24`
```go
	0x0072 00114 (xl-v1.go:297)	MOVQ	"".xl+48(SP), AX
	0x0077 00119 (xl-v1.go:297)	MOVQ	(AX), CX
	0x007a 00122 (xl-v1.go:297)	MOVQ	CX, (SP)
	0x007e 00126 (xl-v1.go:297)	MOVUPS	8(AX), X0
	0x0082 00130 (xl-v1.go:297)	MOVUPS	X0, 8(SP)
	0x0087 00135 (xl-v1.go:297)	PCDATA	$0, $1
	0x0087 00135 (xl-v1.go:297)	CALL	"".xlObjects.ReceiverByVal(SB)
```

`*struct`
```go
	0x01aa 00426 (xl-v1.go:124)	MOVQ	"".xl+120(SP), AX
	0x01af 00431 (xl-v1.go:124)	MOVQ	AX, (SP)
	0x01b3 00435 (xl-v1.go:124)	MOVQ	$123, 8(SP)
	0x01bc 00444 (xl-v1.go:124)	PCDATA	$0, $4
	0x01bc 00444 (xl-v1.go:124)	CALL	"".(*xlObjects).ReceiverByRef(SB)

```


### return values

```go
func (xl *xlObjects) StorageInfo() StorageInfo {
	return StorageInfo{}
}

func (xl *xlObjects) StorageInfoP() *StorageInfo {
	return &StorageInfo{}
}
```

```go
"".(*xlObjects).StorageInfo t=1 size=84 args=0x40 locals=0x0
	0x0000 00000 (xl-v1.go:143)	TEXT	"".(*xlObjects).StorageInfo(SB), $0-64
```

```go
`"".(*xlObjects).StorageInfoP t=1 size=109 args=0x10 locals=0x18
	0x0000 00000 (xl-v1.go:147)	TEXT	"".(*xlObjects).StorageInfoP(SB), $24-16
```

