FROM alpine:3.12

MAINTAINER Maxime Bossard <mxbossard@pm.me>

WORKDIR /root

ENV NAME=

COPY helloWorld.sh .

CMD ["/bin/sh", "-c", "./helloWorld.sh $NAME World un_autre_argument ..."]
