#!/bin/bash

number=$1

if [ $number -gt 100 ]
then
    echo "given number $number is greater than 100"
else
    echo "given number $number is lessthan 100"
fi