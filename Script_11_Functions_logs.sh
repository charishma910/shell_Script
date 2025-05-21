#!/bin/bash

ID=$(id -u)

echo "Scriptname: $0"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "error:: $2 .... FAILED"
    exit 1
    else
        echo "$2.... SUCCESS"

    fi
}

if [ $ID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"

    exit 1 # we can give other than 0
else
    echo "u r a root user"
fi

yum install mysql -y

VALIDATE $? "Installing MYSQL"

yum install git -y

VALIDATE $? "Installing git"