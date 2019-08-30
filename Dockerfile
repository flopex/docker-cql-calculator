FROM golang:alpine

RUN apk update && \
    apk add --no-cache \
      git

RUN go get -u github.com/johnnywidth/cql-calculator/cmd/cql-calculator

ENTRYPOINT ["/go/bin/cql-calculator"]
