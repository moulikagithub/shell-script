#!/bin/bash

source=/tmp/shellscript-log
r="\e[31m"
g="\e[32m"
n="\e[0m"
 if [ ! -d $source ]
 then
     echo -e "$r $source directory not found $n"
fi

file_delete=$(find $source -type f -mtime +14 -name "*.log")
if [ $? -ne 0 ]
then
    echo:"no file exist"
    exit 1
else
    while IFS= read -r line
    do
        echo "deleting more than 14 days old logs from $source:$line"
        # rm -rf $line
    
    done <<< $file_delete
 


