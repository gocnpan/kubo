g use 1.22.3

export CGO_ENABLED=0
export GOOS=linux
export GOARCH=arm64

# 通过 在根目录 make build
# 获取 编译的信息
go build "-trimpath" -ldflags="-X "github.com/gocnpan/kubo".CurrentCommit=v0290" -o "cmd/ipfs/ipfs.aarch64" "github.com/gocnpan/kubo/cmd/ipfs"

# mv cmd/ipfs/ipfs ./