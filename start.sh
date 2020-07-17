#!/bin/sh

pdns_server --daemon=no \
            --launch=gpgsql \
            --webserver=no \
            --api=no \
            --chroot=/ \
            --gpgsql-host="$DB_HOST" \
            --gpgsql-port="$DB_PORT" \
            --gpgsql-dbname="$DB_NAME" \
            --gpgsql-user="$DB_USER" \
            --gpgsql-password="$DB_PASS" \
            --loglevel="$LOGLEVEL" \
            --log-dns-details="$LOG_DNS_DETAILS" \
            --log-dns-queries="$LOG_DNS_QUERIES"
