## 깃의 역할
 - 소스 병합 : merge, rebase
 - 소스 리비전 관리 : reset, commit, branch
 - 소스 릴리즈 : push
 - 소스 태깅 : tag
 - 소스 변경사항 검토 : diff, log


## 소스 기록
### git add

```bash
	$ git add .
```

- `ignore` 파일이나, 삭제한 파일 이력까지 커밋을 하실 경우, `-f` 옵션 이용
```bash
	$ git add . -f
```


## 소스 커밋
- 소스를 커밋하시면 `staged` 상태의 파일이 히스토리로 기록되고 적재됩니다.
- 파일 추적상태의 경우 `git status` 명령을 이용해서 확인합니다.
```bash
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

```bash
	$ git add *
	$ git commit -m "UI 레이아웃 이슈 수정."

	# 수정사항 발생
	$ git add *
	$ git commit -m "UI 레이아웃 이슈 수정 및 관리자 벨리데이션 추가. " --amend
```


## 소스 업데이트
- 상대방이 커밋한 파일은 명령어를 통해서 직접 업데이트를 하셔야 동기화가 됩니다.
- 이때 사용하는 명령어는 `git pull`과 `git fetch`가 있습니다.
```bash
	# master 브랜치를 pull하여 업데이트
	$ git pull origin master

	# master 브랜치를 fetch하여 업데이트
	$ git fetch origin master
```

- `pull`과 `fetch` 의 차이점은 `merge` 작업을 하느냐 안 하느냐로 나눠지며, `pull`은 `fetch` + `merge` 작업이라고 생각하시면 됩니다.


## 소스 복원
- 여러분이 git을 쓰는 이유중에 중요한 부분을 차지하는 영역입니다.
- 정상적으로 커밋된 히스토리는, 리비전으로 git에 관리됩니다.
- 실수로 잘못 작업하였거나, 예전 버전으로 롤백하여 적용할 경우 여러분은 예전 버전으로 리셋하실 수 있습니다.
- 리셋은 `git reset` 명령을 사용합니다.

```bash
	$ git reset HEAD^ --soft
```
- `git reset` 다음 인수로는 되돌리는 버전의 위치를 가리킵니다.
- 현재위치(HEAD)를 기준하여 상대적인 위치를 설정하거나, 특정 버전 리비전 고유의 해시값을 지정합니다.
- HEAD를 확인하시고 싶으면 `git reflog` 명령을 이용합니다.
- `git reset`의 옵션 중 리셋 특성을 정하는 `--soft, --hard, --mixed` 옵션이 있습니다.
	- `--soft` : 약한특성의 리셋입니다. 되돌릴 때 기존의 인덱스와 워킹트리를 보존합니다.
	- `--hard` : 강한특성의 리셋입니다. 되돌릴 때 기존의 인덱스와 워킹트리를 버립니다.
	- `--mixed` : 중간특성의 리셋입니다. 되돌릴 때 기존의 인덱스는 버리고 워킹트리를 보존합니다.
```bash
	# 바로 이전 단계로 인덱스와 워킹트리를 버리고 리셋.
	$ git reset HEAD^ --hard

	# 바로 두번째 전 단계로 인덱스와 워킹트리를 버리고 리셋.
	$ git reset HEAD~2 --hard

	# 특정 리비전의 기록으로 인덱스는 버리고 워킹트리를 보존하여 리셋.
	$ git reset 991ee8c --mixed
```


## 브랜치
- 브랜치는 한국말로 가지(branch)입니다.
- git에서는 마치 가지를 펼치듯 하나의 근본에서 여러 갈래로 쪼개어 관리할 수 있습니다.
![Git branch](https://www.pigno.se/static/assets/images/git_tutorial_branch.png)
 이미지 출처 [StackOverflow](http://stackoverflow.com/questions/23142731/push-a-feature-branch-to-develop-branch-using-git)

- branch의 특징은 아래와 같습니다.
- 기본은 master 브랜치라고 불리며, 필수로 제공되는 브랜치이다.
- 서로 다른 브랜치들은 같은 조상을 가지고 있다.
- 브랜치를 새로 만드신다면 `git branch [브랜치명]` 으로 생성합니다.
- 아래 명령라인에서는 new라는 브랜치를 생성하고 있습니다.
```bash
	$ git branch new
```
- master 기준으로 new를 브랜치(가지치기)하면 master와 똑같은 소스코드가 new에도 적용됩니다.
- 하지만 이 이후에 new에서 코드를 수정하며, master와 new는 서로 다른 코드가 되기때문에 갈라집니다.
- 생성된 new 브랜치로 접속하기 위해서는 `git checkout [브랜치명]`을 이용합니다.
```bash
	$ git checkout new
```
- 생성과정과 브랜치 이동과정을 동시에 하고자 하면 `git checkout`에 `-b`옵션을 이용합니다.
```bash
	# 브랜치 new를 생성과 동시에 체크아웃.
	$ git checkout -b new
```
- 생성한 브랜치는 현재 로컬에 저장되어 있습니다.
- 협업 작업에서는 생성한 브랜치를 원격 저장소에 등록해주어야 합니다.
- 이때는 `git push [브랜치명]`을 이용합니다.
```bash
	$ git push origin new
```
- 브랜치 생성 및 등록의 과정은 아래 화면과 같습니다.
![Git new branch](https://www.pigno.se/static/assets/images/git_tutorial_new_branch.png)
- 브랜치의 삭제는 `git branch` 명령에서 `-d` 옵션을 사용합니다.
![Git delete branch](https://www.pigno.se/static/assets/images/git_tutorial_delete_branch.png)
- 삭제된 브랜치 또한 원격 저장소에 반영을 해야합니다.
- 이때 브랜치 명 앞에 콜론(:)을 붙여주어야 하니 이 점 주의해제세요.


## 소스 병합
















