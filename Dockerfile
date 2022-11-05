FROM alpine:edge
MAINTAINER Nicolas Lorin <androw95220@gmail.com>

RUN apk add --update --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing gortr=0.14.7-r10 ca-certificates

COPY cf.pub /usr/share/gortr/

EXPOSE 8282

CMD ["/usr/bin/gortr","-bind",":8282","-verify.key","/usr/share/gortr/cf.pub"]
