#!/bin/zsh

echo "welcome to codingdestro"



sudo apt-get update 1> /dev/null
if [ $? -ne 0 ]; then
  echo "An error"
else
  echo "no error"

fi
