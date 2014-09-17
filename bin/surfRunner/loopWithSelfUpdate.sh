#!/bin/bash

PULLCOUNTDOWN=0;

cd `dirname $0`/../..;

while true; do
	((PULLCOUNTDOWN--));
	if [ $PULLCOUNTDOWN -lt 1 ]; then

		PULLCOUNTDOWN=600;
	fi

	./flow surfrunner:deploywaitingfromqueue;

	sleep 2;
done