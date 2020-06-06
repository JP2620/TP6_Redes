# Quagga
#
# VERSION 0.0.2

FROM alpine:latest

RUN apk update
RUN apk add supervisor quagga heimdal tcpdump

RUN echo "ospfd=yes" >> /etc/quagga/daemons
RUN echo "zebra=yes" >> /etc/quagga/daemons

RUN touch /etc/supervisord.conf

ENTRYPOINT ["/usr/bin/supervisord"]
