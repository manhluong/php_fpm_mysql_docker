############################################################
# Dockerfile with php and mysql
############################################################

FROM php:7-fpm
LABEL maintainer="Luong Bui"
SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
 docker-php-ext-install mysqli pdo_mysql && \
 apt-get autoremove -y --purge && \
 apt-get clean

