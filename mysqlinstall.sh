#!/bin/bash

id=$(id -u)

validate(){
    if [ $1 -ne 0 ]
then
     echo "error :: $2 failed "
     exit 1
else
     echo "Installation of $2 sucess"
fi

}

if [ $id -ne 0 ]
then
     echo "Get root acess to run the script"
     exit 1
else
     echo "Root User"
fi

yum install mysql -y
validate $? "mysql"
yum install gitt -y
validate $? "git"