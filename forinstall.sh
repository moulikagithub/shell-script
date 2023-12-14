#!/bin/bash

id=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
log_file="/tmp/$0-$timestamp.log"
r="\e[31m"
g="\e[32m"
n="\e[0m"
y="\e[33m"

echo "script started excuting at: $timestamp" &>> $log_file

validate(){
   if [ $1 -ne 0 ] 
   then
        echo -e "$r Error:: $2 is failed $n"
        
   else
        echo -e "$2......is $g success $n"
    fi           
} 

if [ $id -ne 0 ]
then
    echo -e "$y Error :: not an root user..run with root acess $n"
    exit 1
else
    echo -e "$y Logged in with root acess $n"
fi

for package in $@
do
  yum list installed $package &>> $log_file
  if [ $? -ne 0 ]
  then
       yum install $package -y &>> $log_file
       validate "$?" "installing $package"
   else
       echo -e "$y $package is already installed....skipping$n"
   fi 
done    
