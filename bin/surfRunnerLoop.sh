#!/bin/bash

PULLCOUNTDOWN=0

while true; do
	((PULLCOUNTDOWN--))
	if [ $PULLCOUNTDOWN -lt 1 ]; then
		cd .. && \
		git checkout -- . && \
		git clean -f -f -d && \
		git pull && \
		composer install --no-dev && \
		./flow flow:cache:flush --force
		PULLCOUNTDOWN=500
	fi

	cd .. && export FLOW_CONTEXT=Production && ./flow surfrunner:deploywaitingfromqueue

	sleep 2
done