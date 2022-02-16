FROM golang:1.15-alpine3.14 AS builder

WORKDIR /go/src/github.com/sm43/news-demo
COPY . .

RUN go build -o news-demo .

EXPOSE 3000

CMD [ "/go/src/github.com/sm43/news-demo/news-demo" ]