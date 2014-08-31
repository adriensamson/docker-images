FROM stackbrew/debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y mysql-server

RUN sed -i "s/^bind-address.*/bind-address=0.0.0.0/" /etc/mysql/my.cnf

ADD setup.sh /srv/

VOLUME /var/lib/mysql

EXPOSE 3306
CMD /srv/setup.sh && /etc/init.d/mysql start && /bin/bash

