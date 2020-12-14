#!/bin/bash

for filename in $(cd ${PWD}/log; ls *.log | grep -v error.log)
do
	echo $filename
done