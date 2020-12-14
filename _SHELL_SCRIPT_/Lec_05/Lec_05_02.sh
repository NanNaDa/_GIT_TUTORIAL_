#!/bin/bash

count=1
while read line
do
	echo "${count}번째 줄은 <$line>입니다."
	count=$(($count + 1))
done
