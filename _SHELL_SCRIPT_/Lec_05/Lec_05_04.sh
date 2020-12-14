#!/bin/bash

for file in $(find . -name "my *")
do
	echo $file "begin"
	rm $file
	echo $file "end"
done 
