# tech-writing

<br>

## 마크업 및 마크다운 샘플은 여기서 볼 수 있습니다.

**Markdown**: 본 문서가 샘플입니다. 포맷팅이 적용되기 전 파일은 [`markdown-sample.txt`](https://github.com/rogarithm/tech-writing/blob/portfolio/markdown-sample.txt)에서 확인할 수 있습니다.

**HTML**: IBM의 [Developing Quality Technical Information](https://www.amazon.com/Developing-Quality-Technical-Information-Handbook/dp/0131477498) 중 Chapter 3. Accuracy에 해당하는 부분을 읽고 정리한 문서입니다. 문서는 [여기](https://rogarithm.github.io/sample-website/accuracy.html)서 확인할 수 있습니다. 소스는 [여기](https://github.com/rogarithm/sample-website)서 확인할 수 있습니다. 

<br>

## 멘토링 관련 디렉토리의 내용을 설명합니다.

**style-exercise**: style writing과 연관된 문서를 담고 있습니다. 파일에 담긴 내용은 다음 표와 같습니다.

| 파일명 | 주제 |
| :---   | :--- |
| e1.txt | redundancies, technical words |
| e2.txt | function words, active voices, task topic |
| e3.txt | weak verbs, other weak verbs |
| e4.txt | function words (2) |
| e5.txt | lean verbs |
| e6.txt | auxiliary verbs ponderous writing |
| e7.txt | releasing verbs being personal or being impersonal |

<br>

**manual**: manual-writing과 연관된 문서를 담고 있습니다. 파일에 담긴 내용은 다음 표와 같습니다.

| 파일 범위 | 주제 |
| :---      | :--- |
| m01.txt ~ m02.txt | 매뉴얼 소개 |
| m03.txt ~ m04.txt | 저작권 페이지 |
| m05.txt           | 안전을 위한 주의사항-도입부 |
| m06.txt ~ m07.txt | 안전을 위한 주의사항-연결 관련 |
| m08.txt ~ m10.txt | 안전을 위한 주의사항-설치 관련 |
| m11.txt ~ m14.txt | 안전을 위한 주의사항-사용 관련 |
| m15.txt ~ m16.txt | 안전을 위한 주의사항-유지보수 관련 |
| m17.txt           | 안전을 위한 주의사항-후처리 관련 |
| m18.txt           | 각 부의 명칭/화면 구성 |
| m19.txt ~ m27.txt | 절차서 구성 |

<br><br>

## 자주 쓰는 Git 명령어를 설명합니다.

### Log

터미널 상에서 주로 사용하는 기능은 `git log`입니다. 과제를 받고 나면 제출하기까지 여러 번 문장을 고쳐가면서 작성하고 중간마다 커밋합니다. 커밋 메시지에 어떤 내용이 바뀌었는지, 왜 바뀌었는지 적어놓지만 충분한 설명이 되지 않는 경우도 있고 어떤 내용이 바뀌었는지 볼 필요가 생길 일도 종종 있습니다. 이런 경우는 `-p` 옵션을 써서 해당 커밋에서 바뀐 내용이 어떤 것이었는지를 확인할 수 있습니다. 커밋 번호를 붙이면 해당 커밋에서 바뀐 내용을 확인할 수 있습니다. 전체 번호 중 앞 6자리 정도만 가져오면 충분합니다:
```
git log -p 2ff84b
```
<br>

나중에 하나의 파일 (예를 들면 `m10.txt`) 에 대해 파일이 어떻게 바뀌었는지 커밋 메시지와 내용을 보는 일이 잦습니다. `m10.txt`에 대한 이런 정보를 알고 싶을 경우, 커밋 메시지에서 `git grep` 명령어를 씁니다. `m6.txt` 이후로 커밋 메시지에 문서 번호를 달아두었기 때문에 다음과 같이 검색할 수 있습니다:
```
git log -p --grep="m10"
```

<br>

지금 하고 있는 과제에서 이전 과제를 할 때 알아봤던 단어가 나오는 경우가 종종 있을 수 있습니다. 전에는 어떤 단어를 써서 제출했는지 (혹은 어떤 식으로 수정했는지를) 알고 싶지만 모든 파일을 일일이 들춰보는 대신 다음 명령어로 특정 단어를 어떻게 번역했는지 쉽게 볼 수 있습니다. 예를 들어 '정리'라는 단어에 대해 검색해보고 싶다면 다음과 같이 검색합니다:
```
git log -p -S"정리"
```
(위 방법으로 검색 시 불필요한 내용이 많이 나오는 경우도 있습니다. 이런 경우는 임시파일로 만들어 그 안에서 검색하는 방법을 자주 씁니다)

<br>

### Diff

가끔은 여러 파일에 걸쳐 수정을 너무 많이 해서 커밋 메시지에 어떤 내용을 써야할지 확신이 서지 않는 경우도 있습니다. 이럴 때는 `git diff` 명령어에 `--cached` 옵션을 넣어 `add`한 파일들과 바로 이전 커밋 사이 바뀐 내용을 확인할 수 있습니다.
```
git log --cached
```

<br>

제출한 과제와 피드백을 비교해서 어떤 부분이 다른지 확인이 필요합니다. 문서의 포맷을 일정하게 맞춰놓으면 다음 명령을 쓰면 파일의 비교가 수월합니다:
```
git diff --no-index <path> <path>
```

두 `<path>`는 비교할 파일 각각의 경로입니다. 예를 들어 **style-exericse** 폴더의 두 파일 `e1.txt`, `f1.txt`를 비교해보겠습니다. 편의상 파일 일부만 들어 설명합니다.


`e1.txt` 의 내용은 다음과 같습니다:
```
Redundancies
Correct the following sentences.


1. The identification number is not known at this time.

as> The identification number is known.

2. The extent of his experience is wide.

as> His experience is narrow.
...
```

`f1.txt`의 내용은 다음과 같습니다:
```
Redundancies
Correct the following sentences.


1. The identification number is not known at this time.

fb> The identification number is not known.

2. The extent of his experience is wide.

fb> His experience is wide.
...
```

<br>

`e1.txt`에서  **as>** 가 있는 줄과 `f1.txt`에서 **fb>** 이 있는 줄을 제외하고는 모든 내용이 같습니다. 이렇게 비교하고 싶은 부분만 내용이 다르도록 포맷을 맞춘 두 파일에 `git diff --no-index e1.txt f1.txt` 명령을 실행하면 다음과 같은 결과를 얻을 수 있습니다:

```
diff --git a/e1.txt b/f1.txt
index 0cdf605..4c01ae1 100644
--- a/e1.txt
+++ b/f1.txt
@@ -4,8 +4,8 @@ Correct the following sentences.

 1. The identification number is not known at this time.

-as> The identification number is known.
+fb> The identification number is not known.

 2. The extent of his experience is wide.

-as> His experience is narrow.
+fb> His experience is wide.
```
이렇게 하면 비교해야할 부분이 가까이 있어 어떤 부분이 틀렸는지 확인하기 수월합니다. 기본적으로 표준 출력으로 출력되지만, 파일로 만들어 적어놓아야 할 부분을 적을 수도 있습니다.
