DOCKER_REG_RUN := go-kubernetes
DOCKER_TAG_RUN := latest

app-run:
	@go run basic/app/main.go

app-build:
	@go build -ldflags="-w -s" -o basic/app/bin-kubernetes basic/app/main.go

app-image:
	@docker build -f basic/app/Dockerfile -t $(DOCKER_USER)/$(DOCKER_REG_RUN):$(DOCKER_TAG_RUN) .
	@docker push prakasa1904/go-kubernetes:latest