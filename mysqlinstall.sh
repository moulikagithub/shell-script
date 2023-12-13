#!/bin/bash

id=$(id -u)

validate(){
    if [ $? -ne 0 ]
then
     echo "error :: cannot install "
     exit 1
else
     echo "Installation sucess"
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
validate
yum install git -y
validate