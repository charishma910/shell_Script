#!bin/bash

FRUITS=("apple" "pomo" "banana")

echo "fisrt fruitname is: ${FRUITS[0]}"
echo "fisrt fruitname is: ${FRUITS[1]}"
echo "fisrt fruitname is: ${FRUITS[2]}"

echo "ALL fruits: ${FRUITS[@]}"  #will print all fruit names