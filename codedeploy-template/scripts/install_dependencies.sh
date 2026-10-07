#!/bin/bash

#Please replace value of appName, artifactName, deployDir
appName="fit2cloud-demo"
artifactName="SimpleHTTPServer"
deployDir="/opt/$appName"

echo install dependencies
if [ -d $deployDir ];then
    echo $deployDir exists
else
    mkdir -p $deployDir
fi
echo install dependencies done!
