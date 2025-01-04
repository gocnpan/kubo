rm cmd/ipfs/ipfs.amd

export GOOS=android
export GOARCH=386
export CGO_ENABLED=1
export CC=/home/ap/android-ndk/android-ndk-r26c/toolchains/llvm/prebuilt/linux-x86_64/bin/i686-linux-android33-clang
# https://github.com/wlynxg/anet
# anet 库在内部依赖于 go：linkname 指令。
# 由于 go：linkname 的使用从 Go 1.23.0 开始受到限制（Go 1.23 发行说明），
# 因此在使用 Go 1.23.0 或更高版本构建 anet 包时，
# 需要指定 -checklinkname=0 链接器标志。
# 如果没有此标志，将发生以下链接器错误：
# link: github.com/wlynxg/anet: invalid reference to net.zoneCache

go build "-trimpath" \
 -ldflags="-checklinkname=0 -X "github.com/gocnpan/kubo".CurrentCommit=yzv0320" \
 -o "cmd/ipfs/ipfs.amd" "github.com/gocnpan/kubo/cmd/ipfs"