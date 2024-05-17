g use 1.22.3

rm cmd/ipfs/ipfs.arm64

export GOOS=android
export CGO_ENABLED=1
export CC=/home/ap/android-ndk/android-ndk-r26c/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android33-clang
export GOARCH=arm64
export GOARM=7

go build "-trimpath" \
 "-trimpath" -ldflags="-X "github.com/gocnpan/kubo".CurrentCommit=yzv0280" \
 -o "cmd/ipfs/ipfs.arm64" "github.com/gocnpan/kubo/cmd/ipfs"