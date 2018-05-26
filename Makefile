.PHONY: test

fmt:
	gofmt -l -w -s vaku/

test:
	docker-compose up -d
	export VAULT_ADDR=http://localhost:8300 && \
	export VAULT_TOKEN=hunter2 && \
	go test -cover -v ./...
