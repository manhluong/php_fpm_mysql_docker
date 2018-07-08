############################################################
# Dockerfile based on official php-fpm with mysql support
# enabled.
############################################################

FROM arm32v7/php:7-fpm
LABEL maintainer="Luong Bui"
SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y libxml2-dev libbz2-dev zlib1g-dev && \
 docker-php-ext-install bz2 zip soap mysqli mbstring pdo pdo_mysql && \
 apt-get autoremove -y --purge && \
 apt-get clean

