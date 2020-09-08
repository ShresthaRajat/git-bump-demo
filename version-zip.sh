#!/bin/bash

# Simple script to test version rollback in aws 


for i in {1..5}
do
    echo "<!DOCTYPE html><head><title>Test App v$i</title></head><body>Hello boy! v$i</body>" > index.html
    # eval "git commit -a -m $i"
    echo "Welcome $i times"
    eval "zip -r version_$i\_file.zip index.html"
    echo $(pwd)
done
echo $(rm -rf html)