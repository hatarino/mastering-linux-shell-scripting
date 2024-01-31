#!/bin/bash
file="file1.txt"
IFS=$'\n'
for var in $(cat $file); do
    echo "$var"
done
