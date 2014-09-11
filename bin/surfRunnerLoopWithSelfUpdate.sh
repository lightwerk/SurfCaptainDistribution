#!/bin/bash

PULLCOUNTDOWN=0;

cd ..;

while true; do
	((PULLCOUNTDOWN--));
	if [ $PULLCOUNTDOWN -lt 1 ]; then
		git fetch --all;

		if [ `git rev-list HEAD...origin --count` != 0 ]; then
			git checkout -- . && \
			git clean -f -f -d && \
			git pull && \
			composer install --no-dev --no-interaction && \
			export FLOW_CONTEXT=Production && \
			./flow flow:cache:flush --force && \
			./flow cache:warmup && \
			./flow doctrine:migrate;
		fi

		PULLCOUNTDOWN=600;
	fi

	export FLOW_CONTEXT=Production && ./flow surfrunner:deploywaitingfromqueue;

	sleep 2;
done