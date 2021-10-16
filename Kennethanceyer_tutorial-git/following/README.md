## 깃의 역할
 - 소스 병합 : merge, rebase
 - 소스 리비전 관리 : reset, commit, branch
 - 소스 릴리즈 : push
 - 소스 태깅 : tag
 - 소스 변경사항 검토 : diff, log


## 소스 기록
### git add

```
	$ git add .
```

- `ignore` 파일이나, 삭제한 파일 이력까지 커밋을 하실 경우, `-f` 옵션 이용
```
	$ git add . -f
```


## 소스 커밋
- 소스를 커밋하시면 `staged` 상태의 파일이 히스토리로 기록되고 적재됩니다.
- 파일 추적상태의 경우 `git status` 명령을 이용해서 확인합니다.
```
	$ git status
```


- `git add` 이후 `git status`를 하면 아래와 같은 화면이 나옵니다.
![Git add files](https://www.pigno.se/static/assets/images/git_tutorial_refer_add.png)

- Staged 상태의 파일은 아직 기록된 상태가 아닙니다.
- 파일의 기록을 위해서는 `커밋` 작업이 필요합니다.
- `git commit` 명령을 통해 Staged 상태의 파일을 커밋할 수 있습니다.
![Git commit](https://www.pigno.se/static/assets/images/git_tutorial_refer_commit.png)


- `-m` 옵션을 이용하여 커밋 메시지를 작성하는 것을 권장합니다.
- 실수로 커밋을 하여, 다시 커밋을 할 경우 커밋을 덮어씌울 수 있습니다. 이때 `--amend` 옵션을 이용합니다.

```
	$ git add *
	$ git commit -m "UI 레이아웃 이슈 수정."

	# 수정사항 발생
	$ git add *
	$ git commit -m "UI 레이아웃 이슈 수정 및 관리자 벨리데이션 추가. " --amend
```


## 소스 업데이트
- 상대방이 커밋한 파일은 명령어를 통해서 직접 업데이트를 하셔야 동기화가 됩니다.
- 이때 사용하는 명령어는 `git pull`과 `git fetch`가 있습니다.
```
	# master 브랜치를 pull하여 업데이트
	$ git pull origin master

	# master 브랜치를 fetch하여 업데이트
	$ git fetch origin master
```




