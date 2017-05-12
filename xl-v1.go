package main

import (
	"sync"
	"time"
	"github.com/minio/minio/pkg/disk"
	_ "github.com/minio/minio/pkg/objcache"
	"os"
	"fmt"
	_ "io"
	"unsafe"
)

type listParams struct {
	bucket    string
	recursive bool
	marker    string
	prefix    string
	heal      bool
}

type treeWalk struct {
	resultCh   chan struct{}
	endWalkCh  chan struct{}   // To signal when treeWalk go-routine should end.
	endTimerCh chan<- struct{} // To signal when timer go-routine should end.
}

type treeWalkPool struct {
	pool    map[listParams][]treeWalk
	timeOut time.Duration
	lock    *sync.Mutex
}

// VolInfo - represents volume stat information.
type VolInfo struct {
	// Name of the volume.
	Name string

	// Date and time when the volume was created.
	Created time.Time
}

// FileInfo - represents file stat information.
type FileInfo struct {
	// Name of the volume.
	Volume string

	// Name of the file.
	Name string

	// Date and time when the file was last modified.
	ModTime time.Time

	// Total file size.
	Size int64

	// File mode bits.
	Mode os.FileMode
}

type StorageAPI interface {
	// Stringified version of disk.
	String() string

	// Storage operations.
	Init() (err error)
	Close() (err error)
	DiskInfo() (info disk.Info, err error)

	// Volume operations.
	MakeVol(volume string) (err error)
	ListVols() (vols []VolInfo, err error)
	StatVol(volume string) (vol VolInfo, err error)
	DeleteVol(volume string) (err error)

	// File operations.
	ListDir(volume, dirPath string) ([]string, error)
	ReadFile(volume string, path string, offset int64, buf []byte) (n int64, err error)
	PrepareFile(volume string, path string, len int64) (err error)
	AppendFile(volume string, path string, buf []byte) (err error)
	RenameFile(srcVolume, srcPath, dstVolume, dstPath string) error
	StatFile(volume string, path string) (file FileInfo, err error)
	DeleteFile(volume string, path string) (err error)

	// Read all.
	ReadAll(volume string, path string) (buf []byte, err error)
}

// BackendType - represents different backend types.
type BackendType int

// StorageInfo - represents total capacity of underlying storage.
type StorageInfo struct {
	// Total disk space.
	Total int64
	// Free available disk space.
	Free int64
	// Backend type.
	Backend struct {
		// Represents various backend types, currently on FS and Erasure.
		Type BackendType

		// Following fields are only meaningful if BackendType is Erasure.
		OnlineDisks  int // Online disks during server startup.
		OfflineDisks int // Offline disks during server startup.
		ReadQuorum   int // Minimum disks required for successful read operations.
		WriteQuorum  int // Minimum disks required for successful write operations.
	}
}

// BucketInfo - represents bucket metadata.
type BucketInfo struct {
	// Name of the bucket.
	Name string

	// Date and time when the bucket was created.
	Created time.Time
}

// xlObjects - Implements XL object layer.
type xlObjects struct {
	mutex        *sync.Mutex /* 8 */
//	storageDisks *[]StorageAPI // Collection of initialized backend disks. /* 32 = 24 + 8 */
	dataBlocks   uint8          // dataBlocks count caculated for erasure. /* 40 = 32 + 8 */
	parityBlocks uint8          // parityBlocks count calculated for erasure. /* 48 = 40 + 8 */
	readQuorum   uint8          // readQuorum minimum required disks to read data. /* 56 = 48 + 8 */
	writeQuorum  uint8          // writeQuorum minimum required disks to write data. /* 64 = 56 + 8 */

	// ListObjects pool management.
	listPool *treeWalkPool /* 72 = 64 + 8 */

	// Object cache for caching objects.
//	objCache *objcache.Cache /* 80 = 72 + 8 */

	// Object cache enabled.
//	objCacheEnabled bool /* 88 = 80 + 8 */

//	var1 int
//	var2 int
//	var3 int
//	var4 int
//	var5 int
}

func (xl xlObjects) Shutdown() error {
	return nil
}

func (xl *xlObjects) StorageInfo() StorageInfo {
	return StorageInfo{}
}

func (xl *xlObjects) StorageInfoP() *StorageInfo {
	return &StorageInfo{}
}


//go:noinline
func (xl xlObjects) ReceiverByVal(/*arg1 int*/) /*int*/ {
	//xl.ReceiverByVal2()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl xlObjects) ReceiverByVal2(/*arg1 int*/) /*int*/ {
	xl.ReceiverByVal3()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl xlObjects) ReceiverByVal3(/*arg1 int*/) /*int*/ {
	//xl.ReceiverByVal4()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl xlObjects) ReceiverByVal4(/*arg1 int*/) /*int*/ {
	xl.ReceiverByVal5()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl xlObjects) ReceiverByVal5(/*arg1 int*/) /*int*/ {
	xl.ReceiverByVal6()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl xlObjects) ReceiverByVal6(/*arg1 int*/) /*int*/ {
	xl.ReceiverByVal7()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl xlObjects) ReceiverByVal7(/*arg1 int*/) /*int*/ {
	xl.ReceiverByVal8()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl xlObjects) ReceiverByVal8(/*arg1 int*/) /*int*/ {
	xl.ReceiverByVal9()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl xlObjects) ReceiverByVal9(/*arg1 int*/) /*int*/ {
	xl.ReceiverByVal10()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl xlObjects) ReceiverByVal10(/*arg1 int*/) /*int*/ {
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}


//go:noinline
func (xl *xlObjects) ReceiverByRef(/*arg1 int*/) /*int*/ {
	//xl.ReceiverByRef2()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl *xlObjects) ReceiverByRef2(/*arg1 int*/) /*int*/ {
	xl.ReceiverByRef3()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl *xlObjects) ReceiverByRef3(/*arg1 int*/) /*int*/ {
	//xl.ReceiverByRef4()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl *xlObjects) ReceiverByRef4(/*arg1 int*/) /*int*/ {
	xl.ReceiverByRef5()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl *xlObjects) ReceiverByRef5(/*arg1 int*/) /*int*/ {
	xl.ReceiverByRef6()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl *xlObjects) ReceiverByRef6(/*arg1 int*/) /*int*/ {
	xl.ReceiverByRef7()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl *xlObjects) ReceiverByRef7(/*arg1 int*/) /*int*/ {
	xl.ReceiverByRef8()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl *xlObjects) ReceiverByRef8(/*arg1 int*/) /*int*/ {
	xl.ReceiverByRef9()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl *xlObjects) ReceiverByRef9(/*arg1 int*/) /*int*/ {
	xl.ReceiverByRef10()
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}

//go:noinline
func (xl *xlObjects) ReceiverByRef10(/*arg1 int*/) /*int*/ {
	return /*arg1*/ /*+ xl.dataBlocks + xl.parityBlocks */
}


// newXLObjectLayer - initialize any object layer depending on the number of disks.
func newXLObjectLayer() (*xlObjects, error) {

	// Initialize xl objects.
	xl := &xlObjects{
		mutex:         &sync.Mutex{},
	}

	fmt.Println(unsafe.Sizeof(*xl))

	// Success.
	return xl, nil
}

func main() {

	xl, _ := newXLObjectLayer()

	fmt.Println(xl)
	/*//fmt.Println(*/xl.ReceiverByVal(/*123*/)/*)*/
	/*//fmt.Println(*/xl.ReceiverByRef(/*123*/)/*)*/
}