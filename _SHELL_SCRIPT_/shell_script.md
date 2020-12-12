# Shell Script

## Lecture 01 (환경변수, 종료 상태 변수)
  - 환경 변수
  - 종료 상태 변수($?)

### 환경 변수
  - $env
```
#!/bin/bash

mkdir ${PWD}/directory
cd ${PWD}/directory
touch file.txt
echo "My name is ${USER}" > file.txt

# ${HOME} : home directory
# ${PWD} : current directory
```

Lec_01_01.sh


### 종료 상태 변수($?)
 - $? : 바로 전에 실행한 명령어의 종료 상태를 나타내는 변수
 	- 정상 종료 : 0
 	- 이상 종료 : 1 ~ 255

```
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
```

Lec_01_02.sh


 종료 상태 변수를 사용하지 않고 `&&`, `||`을 사용하여 더 간단하게 표현할 수 도 있다.

```
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
```

Lec_01_03.sh


## Lecture 02 (명령어 치환, 산술 확장)

### 명령어 치환
  - $(명령어열) 또는 '명령어열'

쉡 스크립트에서는 명령어열 실행 결과(표준 출력)을 문자열로 치환 할 수 있다.

```
#!/bin/bash

today=$(date +%Y-%m-%d)
filename="file-${today}.txt"
touch ${filename}
echo "Hello World" > $filename
echo "End" >> $filename
echo "마지막 줄은 '$(tail -n 1 $filename)' 입니다."
```

Lec_02_01.sh

for 문에서도 아래와 같이 명령어 치환을 사용할 수 있다.
```
#!/bin/bash

for filename in $(cd ${PWD}/log; ls *.log | grep -v error.log)
do
	echo $filename
done
```

Lec_02_02.sh


### 산술 확장
  - $(( 계산식 ))

# References
1. https://jupiny.com/2017/07/10/shell-script-basic-1/

