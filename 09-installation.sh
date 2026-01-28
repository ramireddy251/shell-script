#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]
then
  echo "Please run the script with root user access"
  exit 1
  fi
  echo "installing nginx"
  apt install nginx -y
  
if [ $? -eq 0 ]
then
  echo "nginx installation is success"
else 
  echo "nginx installation is failure"
fi  