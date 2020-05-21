# Dockerfile

# Use PHP 5.6 with Apache for the base image
FROM php:5.6-apache

# Enable the Rewrite Apache mod
RUN cd /etc/apache2/mods-enabled && \
    ln -s ../mods-available/rewrite.load

# Install required PHP extensions
# -- GD
RUN apt-get update && \
    apt-get install -y libfreetype6-dev && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd
# -- mysql
RUN docker-php-ext-install -j$(nproc) mysql pdo_mysql

# Copy HTTP server config
COPY default.conf /etc/apache2/sites-available/