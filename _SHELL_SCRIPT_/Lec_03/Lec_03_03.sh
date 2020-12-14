#!/bin/bash

main() {
	hello Peter Tom Jack
	hello
	if [ $? != 0 ]
	then
		echo "명령어 실패"
	fi
}

hello() {
	people=$*
	if [ "$people" = "" ]
	then
		echo "인수가 없습니다."
		return 1
	fi
	for person in $people
	do
		echo "Hello, $person, Today is $(today)"
	done
}

today() {
	date +%Y-%m-%d
}

main
