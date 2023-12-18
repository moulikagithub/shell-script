#!/bin/bash

source=/tmp/shellscripts-log
r="/e[31m"
g="/e[32m"
y="/e[33m"
n="/e[0m"

 if [ ! -d $source ]
 then
     echo -e "$r $source directory not found $n"
fi

file_delete=$(find $source -type f -mtime +14 -name "*.log"

while IFS= read -r line
do
    echo "deleting more than 14 days old logs from $source:$line "
    
done >>> $filedelete


