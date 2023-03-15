#!/bin/bash
# creating  a function in bash to add two numbers

add(){
sum=$(($1+$2))
echo "the sum is:$sum"
}
      #here our function terminates ,now the main program starts.
 
echo "input first number"
read a

echo "input second number"
read b

add a b  
