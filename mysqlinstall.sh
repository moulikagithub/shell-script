#!/bin/bash

id=$(id -u)

if [ $id -gt 0 ]
then
     echo "Get root acess to run the script"
     exit 1
else
     echo "Root User"
fi

yum install mysql -y