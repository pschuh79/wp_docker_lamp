FROM php:8.3-apache

RUN apt update && apt install -y \
        libicu-dev \
        libpng-dev \
        libcurl4-openssl-dev \
        libonig-dev \
    && apt clean \
    && docker-php-ext-install mysqli intl pdo_mysql gd curl mbstring

RUN a2enmod rewrite

WORKDIR /var/www/html