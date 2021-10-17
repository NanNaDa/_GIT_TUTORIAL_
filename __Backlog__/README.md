
### Stash
파일의 변경 내용을 일시적으로 기록해두는 영역.
Stash를 사용하여 작업 트리와 인덱스 내에서 아직 커밋하지 않은 변경을 일시적으로 저장해 둘 수 있습니다. 이 Stash에 저장된 변경 내용은 나중에 다시 불러와 원래의 브랜치나 다른 브랜치에 커밋할 수 있습니다.


## 소스 병합
- merge : 변경 내용의 이력이 모두 그대로 남아 있기 때문에 이력이 복잡해짐.

- rebase : 이력은 단순해지지만, 원래의 커밋 이력이 변경됨. 정확한 이력을 남겨야 할 필요가 있을 경우에는 사용햐면 안됨.

### 컬럼 [A successful Git branching model] - 성공적인 Git 브랜칭 모델
원문 https://nvie.com/posts/a-successful-git-branching-model/

- 이 운영 모델에서는 크게 4가지 종류의 브랜치를 이용하여 개발을 진행합니다.
  - 메인 브랜치(Main branch)
  - 피처 브랜치(Feature branch) 또는 토픽 브랜치(Topic branch)
  - 릴리스 브랜치(Release branch)
  - 핫픽스 브랜치(Hotfix branch)

![A successful Git branching model](https://backlog.com/git-tutorial/kr/img/post/stepup/capture_stepup1_5_6.png)
원문 https://backlog.com/git-tutorial/kr/stepup/stepup1_5.html

#### 메인 브랜치(Main branch)
'master'브랜치와 'develop'브랜치, 이 두 종류의 브랜치를 보통 메인 브랜치로 사용합니다.

- master
'master' 브랜치에서는, 배포 가능한 상태만을 관리합니다. 커밋할 때에는 태그를 사용하여 배포 번호를 기록합니다.
- develop
'develop' 브랜치는 앞서 설명한 통합 브랜치의 역할을 하며, 평소에는 이 브랜치를 기반으로 개발을 진행합니다.

#### 피처 브랜치(Feature branch) 또는 토픽 브랜치(Topic branch)
새로운 기능 개발 및 버그 수정이 필요할 때에 'develop' 브랜치로부터 분기합니다. 피처 브랜치에서의 작업은 기본적으로 공유할 필요가 없기 때문에, 원격으로는 관리하지 않습니다. 개발이 완료되면 'develop' 브랜치로 병합하여 다른 사람들과 공유합니다.

#### 릴리즈 브랜치(Release branch)
버그를 수정하거나 새로운 기능을 포함한 상태로 모든 기능이 정상적으로 동작하는지 확인합니다. 
- (관례적으로) 브랜치 이름 앞에 'release-'를 붙입니다. 이 때, 다음 번 릴리즈를 위한 개발 작업은 'develop'브랜치 에서 계속 진행해 나가면 됩니다.
- 릴리즈 브랜치에서 기능을 점검하며 발견한 버그 수정 사항은 'develop' 브랜치에도 적용해 주어야 합니다. 그러므로 배포 완료 후 'develop' 브랜치에 대해서도 병합 작업을 수행합니다.

#### 핫픽스 브랜치(Hotfix branch)
배포한 버전에 긴급하게 수정을 해야 할 필요가 있을 경우, 'master' 브랜치에서 분기하는 브랜치입니다.
- (관례적으로) 브랜치 이름 앞에 'hotfix-'를 붙입니다.



