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

while IFS= read -r line
do
   if [ $? -ne 0 ]
   then
       echo "no 14 days old log files avaliable"
    else
    echo "deleting more than 14 days old logs from $source:$line"
    rm -rf $line
   fi

    
done <<< $file_delete
 


   # echo "more than 14 days old logs are no avaliable"

