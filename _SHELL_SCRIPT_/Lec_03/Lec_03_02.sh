#!/bin/bash

while getopts a:b:c: OPT
do
	case $OPT in
		a) a="$OPTARG" ;;
		b) b="$OPTARG" ;;
		c) c="$OPTARG" ;;
	esac
done

if [ "$a" != "" ]
then echo "a 값은 $a"
fi
if [ "$b" != "" ]
then echo "b 값은 $b"
fi
if [ "$c" != "" ]
then echo "c 값은 $c"
fi