FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN go build
RUN go test ./...

CMD ./server
