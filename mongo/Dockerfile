FROM stackbrew/debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y mongodb-server

RUN sed -i "/^bind_ip/d" /etc/mongodb.conf

VOLUME /var/lib/mongodb
ADD start.sh /srv/
EXPOSE 27017
CMD /srv/start.sh
