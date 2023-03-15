#!/bin/bash

echo "Welcome to the password generator!"
echo "Please enter the length of the password you would like to generate:"
read pass_length

echo "Please select the complexity of the password:"
echo "1. Only numbers"
echo "2. Lowercase letters"
echo "3. Uppercase and lowercase letters"
echo "4. Uppercase and lowercase letters, numbers, and special characters"
read complexity_level

if [[ $complexity_level -eq 1 ]]; then
    password_chars="0123456789"
elif [[ $complexity_level -eq 2 ]]; then
    password_chars="abcdefghijklmnopqrstuvwxyz"
elif [[ $complexity_level -eq 3 ]]; then
    password_chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
else
    password_chars="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+-="
fi

echo "How many passwords would you like to generate?"
read num_passwords

echo "Generating $num_passwords passwords of length $pass_length and complexity level $complexity_level:"

for i in $(seq 1 $num_passwords)
do
    password=$(openssl rand -base64 48 | tr -d '\n' | tr -dc "$password_chars" | head -c $pass_length)
    echo $password
done
