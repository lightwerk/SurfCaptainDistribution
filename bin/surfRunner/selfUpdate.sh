#!/bin/sh

if [ ! -f flow ]; then
	cd ../..;
fi

git fetch --all;

if [ `git rev-list HEAD...origin --count` != 0 ]; then
	git checkout -- . && \
	git clean -f -f -d && \
	git pull && \
	composer install --no-dev --no-interaction && \
	./flow flow:cache:flush --force && \
	./flow cache:warmup && \
	./flow doctrine:migrate;
fi