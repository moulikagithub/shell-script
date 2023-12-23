#!/bin/bash

source=/tmp/shell-script
r="\e[31m"
g="\e[32m"
n="\e[0m"
 if [ ! -d $source ]
 then
     echo -e "$r $source directory not found $n"
fi

file_delete=$(find $source -type f -mtime +14 -name "*.log")
     #op=$(echo $file_delete|wc -w)
   # if [ $op -eq 0 ]
    #then
       # echo "14 days old log files are not avaliable"
    # else
         while IFS= read -r line
         do
            echo "deleting more than 14 days old logs from $source:$line"
            rm -rf $line
        
        done <<< $file_delete
   # fi
      
    
    


