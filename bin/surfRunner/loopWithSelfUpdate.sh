#!/bin/bash

PULLCOUNTDOWN=0;

if [ ! -f flow ]; then
	cd ../..;
fi

while true; do
	((PULLCOUNTDOWN--));
	if [ $PULLCOUNTDOWN -lt 1 ]; then

		PULLCOUNTDOWN=600;
	fi

	./flow surfrunner:deploywaitingfromqueue;

	sleep 2;
done