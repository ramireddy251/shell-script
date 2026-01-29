#!/bin/bash

USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USER_ID -ne 0 ]
then
  echo "Please run the script with root user access" 2>&1 | tee -a $LOGS_FILE
  exit 1
  fi

  mkdir -p $LOGS_FOLDER

  VALIDATE () {
     
  if [ $1 -ne 0 ]
  then
    echo "$2 ..... Failure" 2>&1 | tee -a $LOGS_FILE 
    exit 1
  else
   echo "$2 ..... Success" 2>&1 | tee -a $LOGS_FILE
fi   

  }
  apt install nginx -y &>> $LOGS_FILE
  VALIDATE $? "Installing Nginx"


apt install mysql-server -y &>> $LOGS_FILE
VALIDATE $? "Installing mysql"  

apt install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing Nodejs" 
  

