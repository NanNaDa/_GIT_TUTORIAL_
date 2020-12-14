#!/bin/bash

today=$(date +%Y-%m-%d)
filename="Lec_02_01-${today}.txt"
touch ${filename}
echo "Hello World" > $filename
echo "End" >> $filename
echo "마지막 줄은 '$(tail -n 1 $filename)' 입니다."