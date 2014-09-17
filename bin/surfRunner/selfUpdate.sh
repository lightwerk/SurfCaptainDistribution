#!/bin/sh

cd `dirname $0`/../..;

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