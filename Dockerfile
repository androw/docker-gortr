FROM alpine:latest
MAINTAINER Nicolas Lorin <androw95220@gmail.com>

RUN apk add --update --no-cache gortr=4.3.8-r0 ca-certificates

EXPOSE 8282

CMD gortr
