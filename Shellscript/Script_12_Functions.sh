#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%s)

R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started excuting at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "error:: $2 .... $R FAILED $N"
    exit 1
    else
        echo -e "$2.... $G SUCCESS $N"

    fi
}

if[ $ID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"

    exit 1 # we can give other than 0
else
    echo "u r a root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing MYSQL"

yum install git -y &>> $LOGFILE

VALIDATE $? "Installing git"