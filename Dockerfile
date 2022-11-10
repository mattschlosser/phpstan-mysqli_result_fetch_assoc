FROM composer:2 as vendor

WORKDIR /tmp

COPY composer.json composer.lock /tmp/
RUN composer install

FROM php:8.1
RUN docker-php-ext-install mysqli
WORKDIR /app

COPY . /app

COPY --from=vendor /tmp/vendor/ /app/vendor/

CMD bash -c "sleep 3 && vendor/bin/phpstan analyze -l 6 src/index.php"

