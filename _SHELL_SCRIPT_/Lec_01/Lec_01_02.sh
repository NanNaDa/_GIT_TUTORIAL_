#!/bin/bash

dirname="Lec_01_02"
filename="File_01_02.txt"

touch_new_file() {
	cd $dirname
	touch $filename
	echo "Hello World" > $filename
}

error_message() {
	echo "The directory already exists."
}

mkdir $dirname
if [ $? = 0 ]
then
	touch_new_file
else
	error_message
fi