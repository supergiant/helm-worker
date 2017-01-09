FROM alpine:3.5

RUN apk --update upgrade && \
    apk add curl ca-certificates && \
    update-ca-certificates && \
    rm -rf /var/cache/apk/*

add ./helm /
CMD ["/helm"]
