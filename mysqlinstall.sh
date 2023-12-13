#!/bin/bash

id=$(id -u)

if [ $id -ne 0 ]
then
     echo "Get root acess to run the script"
     exit 1
else
     echo "Root User"
fi

yum install mysql -y

st=$(echo $?)

if [ $st -ne 0 ]
then
     echo "error :: cannot install mysql"
     exit 1
else
     echo "Installation of mysql sucess"
fi