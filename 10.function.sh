#!/bin/bash

USER_ID=$(id -u)

if [ $USER_ID -ne 0 ]
then
  echo "Please run the script with root user access"
  exit 1
  fi

  VALIDATE () {
     
  if [ $1 -ne 0 ]
  then
    echo "$2 ..... Failure"
    exit 1
  else
   echo "$2 ..... Success"
fi   

  }
  apt install nginxx -y
  VALIDATE $? "Installing Nginx"


apt install mysql-server -y
VALIDATE $? "Installing mysql"  

apt install nodejs -y
VALIDATE $? "Installing Nodejs" 
  

