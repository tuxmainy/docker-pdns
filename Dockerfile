FROM alpine:latest

RUN apk update && apk add --no-cache pdns-backend-pgsql && rm -rf /var/cache/apk/*
RUN sed -i 's/^use-logfile=/#use-logfile=/' /etc/pdns/pdns.conf && \
    sed -i 's/^wildcards=/#wildcards=/' /etc/pdns/pdns.conf

COPY start.sh /
RUN chmod a+x /start.sh

EXPOSE 53/udp

CMD /start.sh
