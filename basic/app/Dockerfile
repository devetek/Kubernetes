FROM golang:1.12-alpine

ADD . /go/src/app
RUN ls /go/src/app/basic
RUN go build -ldflags="-w -s" -o /go/src/app/basic/app/bin-kubernetes /go/src/app/basic/app/main.go

FROM alpine:latest
COPY --from=0 /go/src/app/basic/app/bin-kubernetes .
ENV PORT 8080
CMD ["./bin-kubernetes"]