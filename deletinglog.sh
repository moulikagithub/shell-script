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
value=$($file_delete|wc -l)
if [ $value -ne 0 ]
then
    while IFS= read -r line
    do
        echo "deleting more than 14 days old logs from $source:$line"
         rm -rf $line
    
    done <<< $file_delete
else
    echo "no logs exists"
fi 


