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

```
$ [ $(( 3 * (2 + 10) )) -gt $(( 5 * 7 )) ] # 36 > 35
$ echo $? # 0

$ test $(( (2 + 10) / 3 )) -le $(( 1 + 2 )) # 4 <= 3
$ echo $? # 1
```

Lec_02_03.sh

* `[`또는 `test`: 판정 결과를 종료 상태 변수로 반환해주는 명령어

산술 확장을 이용한 수식의 계산 결과를 쉡 스크립트에서도 이용할 수 있다.

```
#!/bin/bash

sum=0
first=1
i=$first
while [ $i -le 10 ]
do 
	sum=$(( $sum + $i ))
	i=$(( $i + 1))
done
echo "${first}에서 ${i}까지의 합은 ${sum}입니다."
```

Lec_02_04.sh


## Lecture 03
  - 인수
  - 함수
  - case

### 인수 
쉘 스크립트에서 인수를 받는 방법은 크게 두 가지가 있다.

#### 지정한 순서대로 인수 값 참조하기
```
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
```

Lec_03_01.sh

#### 옵션 이름으로 인수 값 참조하기
```
#!/bin/bash

while getopts a:b:c: OPT
do
	case $OPT in
		a) a="OPTARG" ;;
		b) b="OPTARG" ;;
		c) c="OPTARG" ;;
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
```

Lec_03_02.sh

#### 함수
```
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
```
Lec_03_03.sh

#### case
case 문에서는 패턴에 따른 분기도 가능하다
```
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
```

Lec_03_04.sh

## Lecture 04
 - 서브 쉘(Sub Shell)

아래는 `dir1`, `dir2`, `dir3` 디렉토리를 만들어 각각의 디렉토리에 `file.txt` 파일을 추가하는 스크립트이다.
```
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
```

Lec_04_01.sh

for문이 끝날 때마다 다시 부모 디렉토리로 돌아가기 위해 `cd ..`명령어가 필요하다.

이 때 *서브 쉘(Sub Shell)*을 이용하면 더 깔끔하게 스크립트를 작성할 수 있다. *서브 쉘*은 쉘에서 일시적인 분신을 만들어 그 쪽에서 명령어를 실행하는 방법이다. *서브 쉘*로 실행하고 싶은 명령어열 전체를 괄호로 감싸면 된다.
```
#!/bin/bash

mkdir Lec_04_02_01
mkdir Lec_04_02_02
mkdir Lec_04_02_03

for dir in Lec_04_02_01 Lec_04_02_02 Lec_04_02_03
do
	(cd $dir
	touch Lec_04_02.txt)
done
```

Lec_04_02.sh


## Lecture 05
 - read
 - 프롬프트 출력

 *read*는 표준 입력(파이프라인 입력 또는 키보드 입력)에서 한 줄의 내용씩 읽어 들이는 명령어이다.
```
#!/bin/bash

read input
echo "<${input}>을 입력하셨습니다."
```

Lec_05_01.sh

`while`을 이용해 표준 입력의 모든 줄을 읽을 수도 있다.
```
#!/bin/bash

count=1
while read line
do
	echo "${count}번째 줄은 <$line>입니다."
	count=$(($count + 1))
done
```

Lec_05_02.sh
`$ cat Lec_05_02.txt | sh Lec_05_02.sh`

### 프롬프트 출력
 -p 옵션을 사용해 프롬프트를 출력할 수도 있다.
 ```
 #!/bin/bash

 read -p "성은? > " last_name
 read -p "이름은? > " first_name
 echo "성은 ${last_name}이고, 이름은 ${first_name}입니다."
 ```

Lec_05_03.sh

`echo` -n 옵션을 이용해서도 똑같은 결과를 얻을 수 있다. 이 방식은 프롬프트 부분과 문자 입력 부분을 확실하게 구분할 수 있고, 프롬프트의 문자 색을 변경할 수 있다는 장점이 있다. 


### 공백이 들어있는 파일명을 반복문에 사용
```
find . -name "my *"
```
현재 디렉토리에서 "my"로 시작하는 파일 3개를 모두 삭제하는 스크립트를 만들려고 한다.

```
#!/bin/bash

for file in $(find . -name "my *")
do
	rm file
done 
```

Lec_05_04.sh

위의 스크립트를 실행하면 해당 파일을 찾을 수 없다는 에러가 발생할 것이다. 왜냐하면 for 반복문은 기본적으로 공백을 구분자로 항목을 순서대로 처리하기 때문이다. 따라서 지금처럼 파일명에 공백이 있는 경우 `find` 명령어의 결과 `./my movie.txt`, `./my music.txt`, `./my picture.txt`는 `./my`, `movie.exe`, `./my`, `music.txt`, `./my`, `picture.txt`, 6개의 항목으로 구분되어 처리되게 된다.


이 때 `end` 명령어의 한 줄씩 읽는 특성을 이용하면 쉽게 해결할 수 있다.
```
#!/bin/bash

find . -name "my *" |
while read fiel
do
	rm "$file"
done
```


# References

1. https://jupiny.com/2017/07/10/shell-script-basic-1/

