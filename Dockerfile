FROM alpine:3.7

RUN apk --update upgrade && \
    apk add curl ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*

add ./helm /
CMD ["/helm"]
