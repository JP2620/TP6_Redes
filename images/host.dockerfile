# Host 
#
# VERSION 0.0.1

FROM alpine:3.10

LABEL maintainer.name="Natasha Tomattis" \
      maintainer.email="natasha.tomattis@mi.unc.edu.ar" \
      version="0.0.1" \
      description="Host ejemplo para redes de computadoras"

RUN apk --update upgrade && \
    apk add --update vim bind-tools tcpdump curl && \
    rm -rf /var/cache/apk/*