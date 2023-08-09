FROM golang:1.21

# Static analysis tools
RUN go get -u -v golang.org/x/tools/cmd/goimports
RUN go get -u -v golang.org/x/lint/golint
RUN curl -sfL https://raw.githubusercontent.com/securego/gosec/master/install.sh | sh -s -- -b $(go env GOPATH)/bin latest

# Install golangci-lint
RUN curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin latest

# InSpec - linux-baseline
RUN chmod 711 /etc/cron.daily

# Upgrade OS packages
RUN apt-get update -qq && apt-get upgrade -qq