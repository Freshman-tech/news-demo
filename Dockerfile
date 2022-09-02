FROM golang:1.18 AS builder

WORKDIR /go/src/app
COPY . .

RUN go mod download
RUN CGO_ENABLED=0 go build -o /go/bin/news-demo

FROM gcr.io/distroless/static-debian11

COPY --from=builder /go/bin/news-demo /
COPY --from=builder /go/src/app/index.html /
COPY --from=builder /go/src/app/assets/ /

EXPOSE 3000

CMD ["/news-demo"]
