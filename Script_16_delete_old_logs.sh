#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ]   # ! denotes opposite , -d will searches for deirectory
then
    echo "$R Source Directory does not exists $N"
else
    echo "$G Source Directory does not exists $N"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")   #command to delete files more than 14 days

while IFS= read -r line    # need to understand in a better way
do
    echo "Deleting file: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE  # providing o/p of FILES_TO_DELETE as input to while
