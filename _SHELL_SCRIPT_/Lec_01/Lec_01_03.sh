#!/bin/bash

dirname="Lec_01_03"
filename="File_01_03.txt"

touch_new_file() {
	cd $dirname
	touch $filename
	echo "Hello World" > $filename
}

error_message() {
	echo "The directory already exists."
}

mkdir $dirname && touch_new_file || error_message