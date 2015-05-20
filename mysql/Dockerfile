FROM stackbrew/debian:jessie

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y mysql-server

RUN sed -i "s/^bind-address.*/bind-address=0.0.0.0/" /etc/mysql/my.cnf

COPY setup.sh /srv/

VOLUME /var/lib/mysql
EXPOSE 3306
CMD mysqld_safe
