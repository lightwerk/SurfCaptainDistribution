#!/bin/bash

cd ..;

while true; do
	export FLOW_CONTEXT=Production && ./flow surfrunner:deploywaitingfromqueue;

	sleep 4;
done