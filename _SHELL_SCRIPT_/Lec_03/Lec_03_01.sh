#!/bin/bash

args1=$1
args2=$2

if [ $# = 0 ]
then
	echo "인수가 없습니다."
elif [ $# = 1 ]
then
	echo "첫 번째 인수는 $args1"
elif [ $# = 2 ]
then
	echo "첫 번째 인수는 $args1"
	echo "두 번째 인수는 $args2"
else
	echo "인수는 2개 이하 이어야 합니다."
fi