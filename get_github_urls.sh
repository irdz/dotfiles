#!/bin/bash

outputFile=../repos_to_clone.txt

for d in */ ; do
    cd $d
    git config --get remote.origin.url >> $outputFile
    cd ..
done
