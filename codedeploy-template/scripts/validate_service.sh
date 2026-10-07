#!/bin/bash

#Please replace value of appName, artifactName, deployDir
appName="fit2cloud-demo"
artifactName="SimpleHTTPServer"
deployDir="/opt/$appName"

processesNum=`ps aux | grep $appName | grep -v grep | wc -l | sed 's/ //g'`
ps aux | grep $appName | grep -v grep
echo process number is $processesNum
if [ "$processesNum" == "1" ];then
    echo app deployed successfully!
    exit 0
else 
    echo app deployed failed!
    exit 1
fi
