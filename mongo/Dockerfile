FROM stackbrew/debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y mongodb-server

RUN sed -i "/^bind_ip/d" /etc/mongodb.conf

VOLUME /var/lib/mongodb
COPY start.sh /srv/
EXPOSE 27017
CMD ["/srv/start.sh"]
