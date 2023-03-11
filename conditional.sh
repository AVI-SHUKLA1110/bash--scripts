#!/bin/bash

#learn how to use if-else in bash-

echo "input a"
read a 

echo "input b"
read b 

if [ "$a" -gt "$b" ]; then
    echo "$a is greater than $b"
    
elif [ "$a" -lt "$b" ]; then
    echo "$b is greater than $a "
    
else 
    echo "$a and $b  are equal "
fi
