export CGO_ENABLED=0
export GOOS=linux
export GOARCH=amd64

# 通过 在根目录 make build
# 获取 编译的信息
go build  "-trimpath" -ldflags="-X "github.com/gocnpan/kubo".CurrentCommit=e70db6531" -o "cmd/ipfs/ipfs" "github.com/gocnpan/kubo/cmd/ipfs"