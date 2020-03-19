FROM nlss/php-fpm

RUN apk add --update nginx tzdata

# Install gomplate
COPY --from=hairyhenderson/gomplate:v3.6.0-slim /gomplate  /usr/bin/gomplate

ADD rootfs /