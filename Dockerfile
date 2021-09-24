ARG PHP_VERSION=7.4
FROM --platform=${TARGETPLATFORM} nlss/php-fpm:${PHP_VERSION}

ENV WEB_ROOT html

RUN apk add --update nginx tzdata

# Install gomplate
COPY --from=hairyhenderson/gomplate:v3.9.0-alpine /bin/gomplate  /usr/local/bin/gomplate

ADD rootfs /

EXPOSE 80/TCP
