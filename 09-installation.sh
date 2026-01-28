#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -eq 0 ]
then
  echo "Installing nginx"
  apt install nginx -y
  else
    echo "Please run the script with root user access" 
fi

if [ $? -eq 0 ]
then
  echo "nginx installation is success"
else 
  echo "nginx installation is failure"
fi  