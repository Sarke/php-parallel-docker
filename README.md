# php-parallel-docker

[![Docker Pulls](https://img.shields.io/docker/pulls/sarkedev/php-parallel)](https://hub.docker.com/r/sarkedev/php-parallel)

A docker image based on the official PHP:7.4-zts or PHP:8.0-zts images that adds the [parallel extension](https://github.com/krakjoe/parallel)

```
docker pull sarkedev/php-parallel
```

```
docker run --rm -v `pwd`:`pwd` -w `pwd` sarkedev/php-parallel php yourphpfile.php
```

## Latest

The default tag `latest` is based on `php:7.4-zts-alpine` and the release branch of [krakjoe/parallel](https://github.com/krakjoe/parallel).

## Development builds

The default is based on the `release` branch and only builds if the `make test` succeeds.  If you want to try the `develop` branch you can try the `sarkedev/php-parallel:develop` and similar tags.

Images are also tagged with the short commit hash of the [krakjoe/parallel](https://github.com/krakjoe/parallel) commit it is building.
