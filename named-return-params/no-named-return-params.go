package named_return_params

type objectInfo struct {
	arg1 int64
	arg2 uint64
	arg3 string
	arg4 []int
}

func NoNamedReturnParams(i int) (objectInfo) {

	if i == 1 {
		return objectInfo{}
	}

	if i == 2 {
		return objectInfo{}
	}

	if i == 3 {
		return objectInfo{}
	}

	return objectInfo{}
}