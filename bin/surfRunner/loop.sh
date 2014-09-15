#!/bin/bash

if [ ! -f flow ]; then
	cd ../..;
fi

while true; do
	./flow surfrunner:deploywaitingfromqueue;

	sleep 4;
done