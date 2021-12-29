FROM alpine:edge
MAINTAINER Nicolas Lorin <androw95220@gmail.com>

RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN apk add --update --no-cache gortr=0.14.7-r2 ca-certificates

EXPOSE 8282

CMD ["/usr/bin/gortr","-tls.bind","127.0.0.1:8282","-tls.bind","[::0]:8282"]
