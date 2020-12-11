# GIT

## branch
  - 독립된 작업을 진행하기 위한 작업 공간

1. Git을 초기화하면 기본적으로 <b>master<b> 브랜치가 생긴다. 이 친구가 메인 브렌치(Branch)  역할을 한다.
2. Branch는 어떤 Branch에서 분리시키는 것이고, 분리된 Branch는 당시의 부모 Branch  상태를 그대로 가지고 있다.
3. 개발자는 각각의 Branch에서 개발을 진행한 뒤 나중에 다시 <b>master<b> Branch로 변경 사항을 합친다.


## clone
  - 리모터 서버(Remote Server)의 레파지토리에서 클라이언트(Local PC)로 파일을 복사.

$ git clone https://github.com/NanNaDa/_GIT_TUTORIAL_.git


## pull
  - Remote Server의 최신 소스를 가져와서 Local 소스에 병함(Merge) 하는 명령어.
  - 다른 사람이 Remote Server에 상태를 갱신하면, 변경된 사항을 알려주지는 않는다.
  - Remote Server에서 Local 소스를 <b>가져와서 합친다<b>.

// 현재 내 Local branch와 같은 이름을 가진 Remote Server의 Branch가 타겟
$ git pull
// origin Remote Server의 master 브랜치가 타겟
$ git pull origin master


## fetch
  - Remote Server의 최신 이력을 내 Local PC로 가져오되, 병합은 하지 않는다.
  - 다른 사람들이 Remote Server에 새로 업데이트한 모든 내역을 받아 올 수 있다.
  - Remote Server와 내 Local 버전을 확인하여 <b>pull<b> 사용하여, 갱신가능.


## add

// 현재 디렉토리의 모든 변경사항을 스테이지(Stage)에 올린다.
$ git add .
// components 디렉토리의 모든 변경사항을 Stage에 올린다.
$ git add ./src/components
// 특정 파일의 변경사항만 Stage에 올린다.
$ git add ./src/components/Test.vue
// 변경된 사항을 하나하나 살펴보면서 Stage에 올린다.
$ git add -p


## commit


## checkout
  - 

// 특정시점(ca693fd)으로 이동
$ git checkout ca693fd 


## push
  - Local PC → Remote Server 업로드

// Local PC의 origin을Remote Server의 master 브랜치로 푸쉬(push, upload)해줘!
$ git push origin master


# STUDY MORE 
- branch
- checkout
- merge
- revert


# references
1. https://evan-moon.github.io/2019/07/25/git-tutorial/

