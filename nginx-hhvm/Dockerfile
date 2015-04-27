FROM stackbrew/debian:jessie

ENV DEBIAN_FRONTEND noninteractive

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449
RUN echo deb http://dl.hhvm.com/debian jessie main >/etc/apt/sources.list.d/hhvm.list
RUN apt-get update && apt-get install -y nginx hhvm supervisor

RUN sed -i 's@hhvm.server.port.*@hhvm.server.file_socket = /var/run/hhvm/fastcgi.sock@' /etc/hhvm/server.ini

COPY default /etc/nginx/sites-enabled/default
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

VOLUME /srv
EXPOSE 80
CMD ["supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]
