#!/bin/sh

echo "Hello, World!"

now=`date +%Y%m%d%H%M`

echo $now

pid=`/bin/ps -ef | grep "jspProject"|grep -v grep|awk '{print $2}'`

echo "**********백업 시작 **********"
cp /home/WAR_PJ/jspProject.war /home/BACKUP/$now'_'jspProject.war

echo "**********백업 완료 **********"

if [ -f $pid ]
then
    nohup java -jar /home/WAR_PJ/jspProject.war > /dev/null 2>&1 &
    processId=$(ps -ef | grep jspProject | grep -v grep | awk '{print $2}')

    echo $processId "실행됨"
else
    echo $pid"app이 이미 실행중입니다"
    kill -9 $pid

    echo "프로세스 종료"

    nohup java -jar /home/WAR_PJ/jspProject.war > /dev/null 2>&1 &
    processId=$(ps -ef | grep jspProject | grep -v grep | awk '{print $2}')

    echo $processId "실행완료"

fi
