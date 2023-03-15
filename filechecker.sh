#!/bin/bash
#here we are creating a bash function to check whether a file exists or not -


file_exists() {
  if [ -f "$1" ]; then
    echo "File $1 exists."
  else
    echo "File $1 does not exist."
  fi
}

file_exists loop.sh


