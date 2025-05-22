#!/bin/bash

file=/etc/passwd

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ ! -f $SOURCE_DIR ]   # -f denotes file
then
    echo "$R Source Directory does not exists $N"
else
    echo "$G Source Directory does not exists $N"
fi

while IFS=":" read -r username password user_id group_id user_fullname home_dir shell_path    # fields format took from /etc/passwd file format
do
    echo "username: $username"
    echo "user ID: $user_id"
    echo "user full name: $user_fullname"
done <<< file
