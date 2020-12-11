# comment (not use markdown)
  - // 




# Headers
```
# This is a H1			
## This is a H2       	
### This is a H3		
#### This is a H4		
##### This is a H5			
###### This is a H6			
```
# This is a H1			
## This is a H2       	
### This is a H3		
#### This is a H4		
##### This is a H5			
###### This is a H6		
####### This is a H7	(not supported)


# BlockQuote
```
> This is a first blockquote.
>	> This is a second blockquote.
>	>	> This is a third blockquote.
```
> This is a first blockquote.
>	> This is a second blockquote.
>	>	> This is a third blockquote.


# 목록
- 순서있는 목록(번호)
```
1. 첫번째	
2. 두번째	
3. 세번째	
```
1. 첫번째	
2. 두번째	
3. 세번째	

- 순서없는 목록(글머리 기호: *, +, - 지원, 섞어서 사용 가능)
```
* 빨강
	* 녹색
		* 파랑
```
* 빨강
	* 녹색
		* 파랑
```
+ 빨강
	+ 녹색
		+ 파랑
```
+ 빨강
	+ 녹색
		+ 파랑
```
- 빨강
	- 녹색
		- 파랑
```
- 빨강
	- 녹색
		- 파랑


# 코드(Code)
 4개의 공백 또는 하나의 탭으로 들여쓰기를 만나면 변환되기 시작하여 들여쓰지 않은 행을 만날때까지 변환이 계속된다.

## 들여쓰기
```
This is a normal paragraph:

	This is a code block.

end code block.
```
This is a normal paragraph:

	This is a code block.

end code block.

 중간에 한 줄 띄어쓰지 않으면 인식이 제대로 되지 않는 문제가 발생한다.


## Code Block
 코드블럭(Code Block)은 다음과 같이 2가지 방식

- `<pre><code>{code}</code></pre>` 이용 방식


```
<pre>
<code>
public class BootSpringBootApplication {
	public static void main(String[] args) {
		System.out.println("Hello, Honeymoon")
	}
}
</code>
</pre>
```
<pre>
<code>
public class BootSpringBootApplication {
	public static void main(String[] args) {
		System.out.println("Hello, Honeymoon")
	}
}
</code>
</pre>



- 코드블럭코드`("```")`을 이용하는 방법
<pre>
	<code>
```
public class BootSpringBootApplication {
	public static void main(String[] args) {
		System.out.println("Hello, Honeymoon")
	}
}
```
	</code>
</pre>

```
public class BootSpringBootApplication {
	public static void main(String[] args) {
		System.out.println("Hello, Honeymoon")
	}
}
```


# 수평선 <hr />
 아래 줄은 모두 수평선을 만든다. 마크다운 문서를 미리보기로 출력할 때 페이지 나누기 용도로 많이 사용한다.

```
* * *

***

*****

- - -

--------------------
``` 

* * *

***

*****

- - -

--------------------


# 링크(Link)
- 참조링크
```
[link kehword][id]

[id]: URL "Optional Title here"

// code
Link: [Google][googlelink]
[googlelink]: https://google.com "Go google"
```

Link: [Google][googlelink]

[googlelink]: https://google.com "Go google"

- 외부링크
```
사용문법: [Title](link)
적용예: [Google](https://google.com, "google link")
```
[Google](https://google.com, "google link")

- 자동연결
```
일반적인 URL 혹은 이메일주소인 경우 적절한 형식으로 링크를 형성한다.

* 외부링크: <http://example.com/>
* 이메일링크: <address@example.com>
```
* 외부링크: <http://example.com/>
* 이메일링크: <address@example.com>


# 강조
```
*single asterisks*
_single underscores_
**double asterisks**
__double underscores__
~~cancelline~~
```

*single asterisks*

_single underscores_

**double asterisks**

__double underscores__

~~cancelline~~

> `문장 중간에 사용할 경우에는 **띄어쓰기** 를 사요하는 것이 좋다.`
> 문장 중간에 사용할 경우에는 **띄어쓰기** 를 사요하는 것이 좋다.


# 이미지
```
![Alt text](/path/to/img.jpg)
![Alt text](/path/to/img.jpg "Optional title")
```
![Alt text](/path/to/img.jpg)
![Alt text](/path/to/img.jpg "Optional title")

 사이즈 조절 기능은 없기 때문에 `<img width="" height=""></img>` 를 이용한다.

```
<img src="/path/to/img.jpg" width="450px" height="300px" title=px(픽셀) 크기 설정" alt="RubberDuck"></img><br/>
<img src="/path/to/img.jpg" width="40%" height="30%" title="px(픽셀) 크기 설정" alt="RubberDuck"></img>
```
<img src="/_MARK_DOWN_/image/RubberDuck.jpg" width="450px" height="300px" title="px(픽셀) 크기 설정" alt="RubberDuck"></img><br/>
<img src="/_MARK_DOWN_/image/RubberDuck.jpg" width="40%" height="30%" title="px(픽셀) 크기 설정" alt="RubberDuck"></img>


# 줄바꿈
 3칸 이상 띄어쓰기 ( `   ` )를 하면 줄이 바뀐다.

```
* 줄 바꿈하기 위해서는 문장 마지막에서 3칸 이상을 띄어쓰기 해야한다.

* 줄 바꿈하기 위해서는 문장 마지막에서 3칸 이상을 띄어쓰기해야 한다.___ \\ 띄어쓰기
이렇게
```
* 줄 바꿈하기 위해서는 문장 마지막에서 3칸 이상을 띄어쓰기 해야한다.

* 줄 바꿈하기 위해서는 문장 마지막에서 3칸 이상을 띄어쓰기해야 한다.   이렇게 


# references
1. https://gist.github.com/ihoneymon/652be052a0727ad59601


