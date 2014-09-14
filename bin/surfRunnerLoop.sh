#!/bin/bash

cd ..;

while true; do
	./flow surfrunner:deploywaitingfromqueue;

	sleep 4;
done