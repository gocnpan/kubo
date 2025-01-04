rm cmd/ipfs/ipfs.arm

export GOOS=android
export CGO_ENABLED=1
export CC=/home/ap/android-ndk/android-ndk-r26c/toolchains/llvm/prebuilt/linux-x86_64/bin/armv7a-linux-androideabi33-clang
export GOARCH=arm
export GOARM=7

go build "-trimpath" \
 -ldflags="-checklinkname=0 -X "github.com/gocnpan/kubo".CurrentCommit=yzv0320" \
 -o "cmd/ipfs/ipfs.arm" "github.com/gocnpan/kubo/cmd/ipfs"