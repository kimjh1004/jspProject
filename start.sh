#!/bin/sh

echo "start!!"

nohup java -jar /home/WAR_PJ/jspProject.war > /dev/null 2>&1 &

echo "end!!"
