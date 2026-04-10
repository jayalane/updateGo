#! /bin/bash

set -o emacs
set -x
set -e


# ideally this will take a plain mac and install all deps for countserv
# it assumes you have Java installed

# xcode-select --install  #  sudo? nothing else here should require it

mkdir ~/homebrew || echo exists && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C ~/homebrew 
export PATH=$PATH:~/homebrew/bin

brew update
brew upgrade

# go

brew install go

export GOPATH=~/go
mkdir -p $GOPATH

go install github.com/kisielk/errcheck@latest
go install golang.org/x/lint/golint@latest
go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install github.com/mitchellh/gox@latest
go install gotest.tools/gotestsum@latest
go install go.uber.org/nilaway/cmd/nilaway@latest
brew install grpcurl

brew install protobuf
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2@v2.15.0
go install github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway@v2.15.0
go install github.com/google/gnostic/cmd/protoc-gen-openapi@latest
brew install swagger-codegen

