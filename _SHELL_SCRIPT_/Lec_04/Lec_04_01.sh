#!/bin/bash

mkdir Lec_04_01_01
mkdir Lec_04_01_02
mkdir Lec_04_01_03

for dir in Lec_04_01_01 Lec_04_01_02 Lec_04_01_03
do
	cd $dir
	touch Lec_04_01.txt
	cd .. # 주목
done
