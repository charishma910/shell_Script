#!/bin/bash

NAME=""
WISHES="Good Morning"
USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "options::"
    echo " -n, specify the name(mandatory)"
    echo " -w, specify the wishes. (optional). Default is Good Morning"
    echo " -h, Display Help and exit"
}

while getopts ":n:w:h" opt; do 
    case $opt in 
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?)echo "inavalid options: -"$OPTARG"">&2; exit;;
        h|*)USAGE; exit;;
        :) USAGE; exit;;
    esac
done

#if [ -z "$NAME" ] || [ -z "$WISHES" ];then         #-z is to find for empty
if [ -z "$NAME" ];then    # now wishes is optional
    #echo "ERROR: Both -n and -w are mandatory Options."
    echo "ERROR: -n is mandatory Option."
    USAGE
    exit 1
fi

echo "Hello "$NAME, $wISHES. I have been learning Shell Script"