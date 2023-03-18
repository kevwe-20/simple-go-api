FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod init simple-go-api
RUN go get -u github.com/gorilla/mux
RUN go build

EXPOSE 8080
RUN ls -alt
CMD ["./simple-go-api"]
