#!/bin/bash

id=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
log_file="/tmp/$0-$timestamp.log"
r="\e[31m"
g="\e[32m"
n="\e[0m"
validate(){
    if [ $1 -ne 0 ]
then
     echo -e "$r error:: $2....  failed $n "
     exit 1
else
     echo -e " $2.... $g sucess $n"
fi

}

if [ $id -ne 0 ]
then
     echo "Get root acess to run the script"
     exit 1
else
     echo "Root User"
fi

yum install myslql -y &>> $log_file
validate $? "installing mysql"
yum install git -y &>> $log_file
validate $? "installing git"