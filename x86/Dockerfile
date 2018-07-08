############################################################
# Dockerfile based on official php-fpm with mysql support
# enabled.
############################################################

FROM php:7-fpm
LABEL maintainer="Luong Bui"
SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y libgmp-dev libxml2-dev libbz2-dev zlib1g-dev && \
 docker-php-ext-install bz2 zip soap mysqli mbstring pdo pdo_mysql gmp && \
 apt-get autoremove -y --purge && \
 apt-get clean

