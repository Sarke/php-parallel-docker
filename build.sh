#!/bin/sh
set -ex

EXT="parallel"

cd "/usr/src/php/ext/$EXT"

docker-php-source extract

docker-php-ext-configure $EXT

if [ $1 = "test" ]; then
	make test TESTS="-q --show-diff tests"
else
	make test TESTS="-q --show-diff tests" || true
fi

docker-php-ext-install $EXT

#docker-php-source delete

set +x
EXTENSION_DIR=`php-config --extension-dir 2>/dev/null`

echo "====================================================================="
echo "Finished building. SHA256:"
sha256sum "$EXTENSION_DIR/$EXT.so" | sed "s/  /\n/"
echo "====================================================================="
