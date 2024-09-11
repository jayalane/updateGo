#! /bin/bash

set -x
set -e

unset GOPROXY

go install golang.org/dl/go1.23.1@latest
go1.23.1 download
rm ~/go/bin/go
ln -s ~/go/bin/go1.23.1 ~/go/bin/go

go install github.com/go-delve/delve/cmd/dlv@latest
go install mvdan.cc/gofumpt@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
go install golang.org/x/vuln/cmd/govulncheck@latest

 go install go.uber.org/nilaway/cmd/nilaway@latest
