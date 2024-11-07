g use 1.22.8

rm cmd/ipfs/ipfs.amd

export GOOS=android
export GOARCH=386
export CGO_ENABLED=1
export CC=/home/ap/android-ndk/android-ndk-r26c/toolchains/llvm/prebuilt/linux-x86_64/bin/i686-linux-android33-clang

go build "-trimpath" \
 "-trimpath" -ldflags="-X "github.com/gocnpan/kubo".CurrentCommit=yzv0280" \
 -o "cmd/ipfs/ipfs.amd" "github.com/gocnpan/kubo/cmd/ipfs"