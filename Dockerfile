FROM ubuntu:16.04

# RUN apk --update upgrade && \
#     apk add curl ca-certificates && \
#     update-ca-certificates && \
#     rm -rf /var/cache/apk/*

RUN apt-get update
RUN apt-get install -y ca-certificates

add ./helm /
CMD ["/helm"]
