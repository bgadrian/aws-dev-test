#!/usr/bin/env bash
#build
rm webserver
GOOS=linux GOARCH=amd64 go build -o webserver ./main.go

aws s3 mb s3://gowebserver
aws s3 cp webserver s3://gowebserver


