FROM alpine:edge
MAINTAINER Nicolas Lorin <androw95220@gmail.com>

RUN apk add --update --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing gortr=0.14.8-r2 ca-certificates

EXPOSE 8282

CMD ["/usr/bin/gortr","-verify.key","/usr/share/gortr/cf.pub"]
