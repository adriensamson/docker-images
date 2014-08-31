FROM stackbrew/debian:jessie

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y nodejs nodejs-legacy npm git

RUN npm install -g grunt-cli bower

RUN echo '{"analytics":false}' > /root/.bowerrc
ENV HOME /root/

VOLUME /srv
WORKDIR /srv

