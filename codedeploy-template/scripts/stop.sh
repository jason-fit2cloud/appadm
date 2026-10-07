#!/bin/bash

appName="fit2cloud-demo"
artifactName="SimpleHTTPServer"
deployDir="/opt/$appName"

echo going to stop app
ps aux | grep $artifactName | awk '{print "kill -9 " $2}' | bash
processesNum=`ps aux | grep $artifactName | grep -v grep | wc -l | sed 's/ //g'`
if [ "$processesNum" == "0" ];then
    echo stopped app successfully!
    exit 0
else
    echo stopped app failed!
    exit 1
fi 
