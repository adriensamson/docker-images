FROM debian:wheezy

MAINTAINER Adrien Samson <adrien@kyklydse.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y pound

ADD pound /etc/default/pound
VOLUME /srv
CMD /etc/init.d/pound start && /bin/bash
