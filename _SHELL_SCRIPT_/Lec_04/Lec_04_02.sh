#!/bin/bash

mkdir Lec_04_02_01
mkdir Lec_04_02_02
mkdir Lec_04_02_03

for dir in Lec_04_02_01 Lec_04_02_02 Lec_04_02_03
do
	(cd $dir
	touch Lec_04_02.txt)
done
