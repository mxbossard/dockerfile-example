FROM alpine:3.12

MAINTAINER Maxime Bossard <mxbossard@pm.me>

WORKDIR /root

ENV NAME=${NAME:-World}

CMD while true; do echo "Hello ${NAME} !"; sleep 1 ; done
