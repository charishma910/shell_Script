#!/bin/bash


NUMBER=$1

if [ $NUMBER -gt 100 ] # -gt is to compare greater than
then
    echo "Given number $NUMBER is greater than 100"
else
    echo "Given number $NUMBER is not greater than 100"
fi
