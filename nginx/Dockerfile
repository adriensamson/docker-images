FROM stackbrew/debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y nginx

EXPOSE 80 443
VOLUME /etc/nginx/sites-enabled
CMD ["nginx", "-g", "daemon off;"]
