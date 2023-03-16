#!/bin/bash

echo "The total number of arguments is: $#"
echo "All arguments as a single string: $*"
echo "All arguments as a list of strings:"
for i in "$@"
do
    echo "$i"
done
