# tech-writing

Technical Writing Mentoring Course

This is my personal repository to version control my answers for technical writing mentoring course.

**구성**

* manual: 매뉴얼 라이팅 문제에 대한 내 답

* fb: 피드백 해답

* others: notes of IBM book _Developing Quality Technical Information_

* style-exercise: 스타일 라이팅 문제에 대한 답과 피드백

* util: scripts to automate repetitive tasks related to this project


자주 쓰는 git 명령어

* 로그 메시지와 함께 해당 커밋에서 바뀐 내용도 보려고 할 때

* 파일 하나가 어떻게 바뀌었는지 알고 싶을때

* 스테이징 영역과 바로 이전 커밋 사이 바뀐 내용을 알고 싶을 때

--stage?

--unstage?

* 로컬 브랜치로 리모트 브랜치 만들기

* 리모트 브랜치로 로컬 브랜치 만들기

* 두 파일 비교하기. 답과 피드백을 비교할 때 두 파일을 비교하는 명령어를 사용합니다.

```
git diff --no-index file another-file
```

* 특정 단어가 포함된 파일 내용 검색

```
git log -p -S"string-to-search"
```


커밋의 단위

문장을 쓸 때 여러 번에 걸쳐 작성합니다. 처음 쓴 문장을 계속해서 고쳐나가면서 중간마다 커밋합니다. 이를 통해 내가 최종적으로 제출한 문장을 작성하는 과정에서 모르는 단어가 무엇이었는지, 현실적인 표현 여부를 확인했는지, 관사 등 문법을 체크했는지 등에 대해 다시 확인할 수 있습니다. 현실적인 표현인지 체크하는 것은 구글 검색(고급 검색 및 관련 주제의 글 또는 매뉴얼을 참고)을 이용합니다.

브랜치 활용

switch-desk: 중간에 다른 기기로 옮겨서 작업할 때
book: 책을 읽으면서 정리하는 작업만 따로 할 때


도구 활용

```
sed -e 's/as>.*/fb> /g' file-name > fmX.txt.pm
```
피드백 문서를 처음부터 만들지 않고 이미 만들어놓은 매뉴얼 문서에서 필요한 부분만 치환해 피드백 문서를 만듭니다.

```
sed -e 's/◊.*//g' file-name > submit.txt
```
작성한 문서에는 문제와 답안 외에도 ◊로 시작하는 주석을 달아놓은 상태입니다. 이런 부분만 삭제하고 제출용 문서를 만듭니다.

```
rename -n -e 's/m(\d\.)/0$1/g' -- *.txt.pm
```
한자리 숫자를 갖는 파일 이름을 앞에 0이 붙도록 일제히 변경합니다.
