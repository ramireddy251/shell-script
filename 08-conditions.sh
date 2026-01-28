#!/bin/bash

read -p "Please enter a number: " NUMBER

# -gt -> greater than
# -lt -> less than
# -eq -> equal
# -ne -> not equal
if [ $NUMBER -gt 20 ]
then
  echo "Given number $NUMBER is greater than 20"
elif [ $NUMBER -eq 20 ]
then
  echo "Given number $NUMBER is equal to 20"
else
  echo "Giver number $NUMBER is less than 20"
fi
