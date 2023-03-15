#!/bin/bash
#here i am creating a simple passwod generator.
# github @AVI-SHUKLA1110

echo "this is a simple password generator"
echo "please enter the length of the password"
read PASS_LENGTH

for p in $(seq 1 5);
do 
      openssl rand -base64  48  |cut  -c1-$PASS_LENGTH
done

echo "here are your passwords,use them and be safe  :)"
