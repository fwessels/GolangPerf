package named_return_params

type objectInfo struct {
	arg1 int64
	arg2 uint64
	arg3 string
	arg4 []int
}

func NamedReturnParams(i int) (oi objectInfo) {

	if i == 1 {
		return
	}

	if i == 2 {
		return
	}

	if i == 3 {
		return
	}

	return
}