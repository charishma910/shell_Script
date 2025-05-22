#!/bin/bash

set -e

ls -ltr

touch example.txt

echo "Before Wrong command"

lsfff

echo "After Wrong command"

cd /tmp/

cd /home/centos