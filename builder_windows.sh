export CGO_ENABLED=1
export CC=x86_64-w64-mingw32-gcc
export GOOS=windows
export GOARCH=amd64

# 通过 在根目录 make build
# 获取 编译的信息
go build  "-trimpath" -ldflags="-X "github.com/gocnpan/kubo".CurrentCommit=e70db6531" -o "cmd/ipfs/ipfs.exe" "github.com/gocnpan/kubo/cmd/ipfs"