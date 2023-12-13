#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "sum is:$SUM"
echo "no of arugents passed:$#"
echo "arguments passed:$@"
echo "script name:$0"