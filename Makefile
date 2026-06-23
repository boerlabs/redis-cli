.PHONY: build build-amd64 build-arm64 tidy clean

build: build-amd64 build-arm64

build-amd64:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o redis-cli-linux-amd64 .

build-arm64:
	CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -o redis-cli-linux-arm64 .

tidy:
	go mod tidy

clean:
	rm -f redis-cli-linux-amd64 redis-cli-linux-arm64
