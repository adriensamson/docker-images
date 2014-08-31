FROM stackbrew/debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y curl php5-cli

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

WORKDIR /var/www
CMD composer
