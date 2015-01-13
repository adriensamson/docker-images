# docker-images

This is my collection of docker images based on debian wheezy (stable).

## Daemon images

### mysql

```
docker run -itd -v /path/data/mysql:/var/lib/mysql adriensamson/mysql
```

### mongo

```
docker run -itd -v /path/data/mongodb:/var/lib/mongodb adriensamson/mysql
```

### nginx

```
docker run -itd -v /path/conf/nginx:/etc/nginx/sites-enabled adriensamson/nginx
```

### pound

```
docker run -itd -v /path/conf/pound.cfg:/srv/pound.cfg adriensamson/pound
```

## CLI images

### composer

```
docker run -it -v /path/src:/srv adriensamson/composer composer install
docker run -it -v /path/src:/srv adriensamson/composer php -S 0.0.0.0:8080
```

### grunt (based on debian jessie)

```
docker run -it -v /path/src:/srv adriensamson/grunt npm install
docker run -it -v /path/src:/srv adriensamson/grunt bower install --allow-root
docker run -it -v /path/src:/srv adriensamson/grunt grunt build
```
