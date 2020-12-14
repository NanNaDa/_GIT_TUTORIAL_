
#!/bin/bash

birth_date=$1

case $birth_date in
	921207)
		echo "저와 생일이 같으시군요!"
		;;
	??03??|??04??|??05??)
		echo "봄에 태어나셨군요!"
		;;
	??06??|??07??|??08??)
		echo "여름에 태어나셨군요!"
		;;
	??09??|??10??|??11??)
		echo "가을에 태어나셨군요!"
		;;
	??01??|??02??|??12??)
		echo "겨울에 태어나셨군요!"
		;;
esac