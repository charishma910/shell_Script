#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=1    # if disk usage is more than 1% will get Alert
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -gt $DISK_THRESHOLD]
    then
        message+="High Disk Usage on $partition: $usage<br>"
    fi
done <<< DISK_USAGE

echo -e "Message: $message"   # this message need to send as an email

#echo "$message" | mail -s "High Disk Usage" info@joindevops.com

sh mail.sh "Devops Team" "High Disk Usage" "$message" "info@joindevops.com" "Alert High Disk Usage"