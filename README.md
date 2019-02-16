# php-parallel-docker

A docker image based on PHP:7.3-zts that adds the [parallel extension](https://github.com/krakjoe/parallel)

```
docker pull sarkedev/php-parallel
```

```
docker run --rm -v `pwd`:`pwd` -w `pwd` sarkedev/php-parallel php yourphpfile.php
```
