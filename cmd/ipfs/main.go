package main

import (
	"os"

	"github.com/gocnpan/kubo/cmd/ipfs/kubo"
)

func main() {
	os.Exit(kubo.Start(kubo.BuildDefaultEnv))
}
