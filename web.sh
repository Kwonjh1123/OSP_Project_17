#!/bin/bash

mkdir -p web_17/flask/{templates,static,upload}
mkdir -p web_17/elastic

#플라스크실행파일,html파일 복사
cd ~
find . -name "urlInterface.py" -exec cp {} ./web_17/flask/ \;
find . -name "home_17.html" -exec cp {} ./web_17/flask/templates/ \;

#flask실행
chmod 755 ./web_17/flask/urlInterface.py
python ./web_17/flask/urlInterface.py

:<<'END'
web_17:메인 디렉터리
web_17/flask생성, flask안에  templates,static,upload 디렉터리생성
web_17/flask/upload <사용자입력 텍스트파일 저장위치로 지정됨, 변경가능
urlInterface.py,home.html<임시파일명
web_17/elastic생성 
elasticsearch부분은 실행경로를 잘 모르겠어서 차후추가
.sh 자동실행부분 구현X
END

