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
       op=$(echo $line|wc -l)
       if [ $op -ne 0 ]
       then
           echo "deleting more than 14 days old logs from $source:$line"
           rm -rf $line
        else
           echo "no files exist"   
    
        fi
       
    
    done <<< $file_delete

      
    
    


