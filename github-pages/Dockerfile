FROM stackbrew/debian:jessie

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y ruby python-pygments ruby-dev build-essential nodejs nodejs-legacy zlib1g-dev

RUN gem install github-pages

VOLUME /srv
WORKDIR /srv
CMD ["jekyll", "serve"]
