FROM php:8.3-apache

RUN apt update && apt install -y \
        libicu-dev \
        libpng-dev \
        libcurl4-openssl-dev \
        libonig-dev \
    && apt clean \
    && docker-php-ext-install mysqli intl pdo_mysql gd curl mbstring

RUN a2enmod rewrite

WORKDIR /var/www

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

RUN chown 1000:1000 /usr/local/bin/wp

RUN chmod +x /usr/local/bin/wp

WORKDIR /var/www

