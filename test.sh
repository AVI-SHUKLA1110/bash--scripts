#!/bin/bash
#test-scripts

if [ -d /usr/share/wordlists/rockyou.txt ];
then 
    echo "yes it exists"
else 
    echo "the file does not exist"
fi
