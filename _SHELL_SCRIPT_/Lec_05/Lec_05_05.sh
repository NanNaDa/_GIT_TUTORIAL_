#!/bin/bash

find . -name "my *" |
while read file
do
	rm "$file"
done
