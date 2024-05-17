g use 1.22.3

rm cmd/ipfs/ipfs.amd64

export GOOS=android
export GOARCH=amd64
export CGO_ENABLED=1
export CC=/home/ap/android-ndk/android-ndk-r26c/toolchains/llvm/prebuilt/linux-x86_64/bin/x86_64-linux-android33-clang

go build "-trimpath" \
 "-trimpath" -ldflags="-X "github.com/gocnpan/kubo".CurrentCommit=yzv0280" \
 -o "cmd/ipfs/ipfs.amd64" "github.com/gocnpan/kubo/cmd/ipfs"