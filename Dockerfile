FROM alpine:3.12

MAINTAINER Maxime Bossard <mxbossard@pm.me>

WORKDIR /root

ENV NAME=

COPY helloWorld.sh .

# Remplace le /bin/sh par défaut
ENTRYPOINT ["./helloWorld.sh"]

# Les arguments de l'entrypoint par défaut
CMD ["World", "un_autre_argument", "..."]
