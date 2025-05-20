#!/bin/bash

echo "please enter your username"

read -s USERNAME #the value entered above will be automatically attached to USERNAME variable

echo "username is: $USERNAME" #printing for validation, but not to print during real time

echo "please enter your password"

read -s PASSWORD

echo "password is: $PASSWORD"