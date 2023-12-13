#!/bin/bash

id=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
log_file="/tmp/$o-$timestamp.log"
validate(){
    if [ $1 -ne 0 ]
then
     echo "error :: $2.... failed "
     exit 1
else
     echo " $2.... sucess"
fi

}

if [ $id -ne 0 ]
then
     echo "Get root acess to run the script"
     exit 1
else
     echo "Root User"
fi

yum install mysql -y &>> $log_file
validate $? "installing mysql"
yum install git -y &>> $log_file
validate $? "installing git"