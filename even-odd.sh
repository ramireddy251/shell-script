#!/bin/bash

read -p "Please enter a number: " num

if (( $num % 2  == 0 ))
then
  echo "The number $num is Even"
else
  echo "The number $num is Odd"
fi
