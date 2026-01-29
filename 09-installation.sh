#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]
then
  echo "Please run the script with root user access"
  exit 1
  fi
  echo "installing nginx"
  apt install nginxxx -y
  
  if [ $? -ne 0 ]
  then
    echo "Installing Nginx ..... Failure"
    exit 1
else
   echo "Installing Nginx ..... Success"
fi

echo "Installing mysql"
apt install mysql-serverss -y

if [ $? -ne 0 ]
then
  echo "Installing MySQL ..... Failure"
  exit 1
else
  echo "Installing MySQL ..... Success"
fi  

echo "Installing Nodejs"
apt install nodejsss -y 

if [ $? -ne 0 ]
then
  echo "Installing Nodejs ..... Failure"
  exit 1
else
  echo "Installing Nodejs ...... Success"
fi  

