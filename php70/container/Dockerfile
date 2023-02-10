# enough for running phpunit test suite
FROM php:7.0-cli-alpine
LABEL maintainer="andre.rademacher.business@googlemail.com"
COPY --from=composer/composer:2.2-bin /composer /usr/local/bin/composer
USER 1000
WORKDIR /app
