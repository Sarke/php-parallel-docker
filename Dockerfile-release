FROM php:7.3-zts-stretch AS build

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
		git procps

RUN git clone --single-branch --branch release https://github.com/krakjoe/parallel

WORKDIR /parallel

RUN phpize

RUN ./configure

RUN make install

RUN EXTENSION_DIR=`php-config --extension-dir 2>/dev/null` && \
	cp "$EXTENSION_DIR/parallel.so" /parallel.so

RUN sha256sum /parallel.so

FROM php:7.3-zts-stretch

COPY --from=build /parallel.so /parallel.so

RUN EXTENSION_DIR=`php-config --extension-dir 2>/dev/null` && \
	mv /parallel.so "$EXTENSION_DIR/parallel.so" && \
	docker-php-ext-enable parallel