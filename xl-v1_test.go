package main

import (
	"testing"
)

func BenchmarkXlObjects_ReceiverByVal(b *testing.B) {

	xl, _ := newXLObjectLayer()

	for i := 0; i < b.N; i++ {
		xl.ReceiverByVal(/*123*/)
	}
}


func BenchmarkXlObjects_ReceiverByRef(b *testing.B) {

	xl, _ := newXLObjectLayer()

	for i := 0; i < b.N; i++ {
		xl.ReceiverByRef(/*123*/)
	}
}
