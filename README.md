# php-parallel-docker

[![Docker Pulls](https://img.shields.io/docker/pulls/sarkedev/php-parallel)](https://hub.docker.com/r/sarkedev/php-parallel)

A docker image based on the official PHP:7.4-zts or PHP:8.0-zts images that adds the [parallel extension](https://github.com/krakjoe/parallel)

```
docker pull sarkedev/php-parallel
```

```
docker run --rm -v `pwd`:`pwd` -w `pwd` sarkedev/php-parallel php yourphpfile.php
```

## Alpine

For a smaller image use `sarkedev/php-parallel:alpine` instead.
