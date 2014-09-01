FROM stackbrew/debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y nginx

EXPOSE 80 443
VOLUME /etc/nginx/sites-enabled
CMD /etc/init.d/nginx start && bash
