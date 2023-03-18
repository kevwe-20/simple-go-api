#FROM golang:latest
FROM golang:alpine

WORKDIR /app

COPY . .
#RUN go mod download

#CMD go mod init simple-go-api

RUN go mod init simple-go-api
CMD go get -u github.com/gorilla/mux
CMD go build
#RUN sh run.sh

EXPOSE 8080
RUN ls -alt
CMD ["./simple-go-api"]
#CMD ["go", "build","main.go"]
