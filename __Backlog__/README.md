
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

