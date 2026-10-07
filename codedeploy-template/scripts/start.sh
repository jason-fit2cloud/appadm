#!/bin/bash

#Please replace value of appName, artifactName, deployDir
appName="fit2cloud-demo"
artifactName="SimpleHTTPServer"
deployDir="/opt/$appName"

if [ -d $deployDir ];then 
  cd $deployDir

  echo going to start app
  nohup python -m SimpleHTTPServer 8080 > $deployDir/$appName.log  2>&1 &

  processesNum=`ps aux | grep $appName | grep -v grep | wc -l | sed 's/ //g'`
  ps aux | grep $appName | grep -v grep
  echo process number is $processesNum
  if [ "$processesNum" == "1" ];then
    echo $appName started!
    exit 0
  else
    echo $appName start failed!
    exit 1
  fi
else
  echo $deployDir does not exit, exit
  exit 1
fi
