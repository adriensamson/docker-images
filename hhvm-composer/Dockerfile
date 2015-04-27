FROM stackbrew/debian:jessie

ENV DEBIAN_FRONTEND noninteractive

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449
RUN echo deb http://dl.hhvm.com/debian jessie main >/etc/apt/sources.list.d/hhvm.list
RUN apt-get update && apt-get install -y curl hhvm

RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

VOLUME /srv
WORKDIR /srv
CMD composer
