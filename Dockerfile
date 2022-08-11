# syntax=docker/dockerfile:1

FROM golang:1.18-alpine

WORKDIR /workspace
# Copy all files into the image
COPY . .

RUN go mod download

COPY *.go .

RUN go build -o main

EXPOSE 8080

CMD [ "main" ]