#!/bin/bash

sum=0
first=1
i=$first
while [ $i -le 10 ]
do 
	sum=$(( $sum + $i ))
	i=$(( $i + 1))
done
echo "${first}에서 ${i}까지의 합은 ${sum}입니다."