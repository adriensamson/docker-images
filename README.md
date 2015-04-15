# docker-images

This is my collection of docker images based on debian wheezy (stable) when possible.

These images are not in the docker hub repository but you can build them easily with the `build` script.

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

### nginx + php-fpm

```
docker run -itd -v /path:/srv adriensamson/nginx-php-fpm
```

### nginx for Symfony

```
docker run -itd -v /path:/srv adriensamson/nginx-symfony
```

### pound

```
docker run -itd -v /path/conf/pound.cfg:/srv/pound.cfg adriensamson/pound
```

### github-pages

```
docker run -it -v /path:/srv adriensamson/github-pages
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
