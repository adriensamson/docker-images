FROM debian:wheezy

MAINTAINER Adrien Samson <adrien@kyklydse.com>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y pound

COPY pound /etc/default/pound
VOLUME /srv
CMD /etc/init.d/pound start && /bin/bash
