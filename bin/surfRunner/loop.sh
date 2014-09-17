#!/bin/bash

cd `dirname $0`/../..;

while true; do
	./flow surfrunner:deploywaitingfromqueue;

	sleep 4;
done