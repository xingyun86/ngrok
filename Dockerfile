FROM golang:1.7.1-alpine
MAINTAINER abler <mail@xiechaoyi.com>

ADD *.sh /
ADD ./cert /cert
ADD ./ngrok /ngrok
RUN apk add --no-cache git make openssl

ENV DOMAIN wlniao.cn
ENV MY_FILES /wln

EXPOSE 4443
EXPOSE 443
EXPOSE 80
VOLUME ["/wln"]
CMD /bin/sh /start.sh