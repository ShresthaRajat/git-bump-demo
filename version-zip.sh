#!/bin/bash

# Simple script to test version rollback in aws 

# rm -rf .git/*
# git init
# touch index.html
# git add index.html
mkdir src
for i in {1..5}
do
    echo "<!DOCTYPE html><head><title>Test App v$i</title></head><body>Hello boy! v$i</body>" > src/index.html
    # eval "git commit -a -m $i"
    echo "Welcome $i times"
    eval "zip -r version_$i.zip src"
    echo $(pwd)
done