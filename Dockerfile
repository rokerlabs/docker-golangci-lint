FROM golang:1.16

# Static analysis tools
RUN go get -u -v golang.org/x/tools/cmd/goimports
RUN go get -u -v golang.org/x/lint/golint
RUN curl -sfL https://raw.githubusercontent.com/securego/gosec/master/install.sh | sh -s -- -b $(go env GOPATH)/bin latest

# Install golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin latest

# Upgrade OS packages
RUN apt-get update -qq && apt-get upgrade -qq