#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"

    exit 1 # we can give other than 0
else
    echo "u r a root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "Installing MYSQL is FAILED"
    exit 1
else
    echo "Installing MYSQL is SUCCESS"

fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "Installing git is FAILED"
    exit 1
else
    echo "Installing git is SUCCESS"

fi