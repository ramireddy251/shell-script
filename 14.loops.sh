#!/bin/bash

PACKAGES=("nginx" "mysql-server" "nodejs")
USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USER_ID -ne 0 ]
then
  echo "Please run the script with root user access" | tee -a $LOGS_FILE
  exit 1
  fi

  mkdir -p $LOGS_FOLDER

  VALIDATE () {
     
  if [ $1 -ne 0 ]
  then
    echo "$2 ..... Failure" | tee -a $LOGS_FILE 
    exit 1
  else
   echo "$2 ..... Success" | tee -a $LOGS_FILE
fi   

  }

  IS_INSTALLED() {
    dpkg -s "$package" &> /dev/null
    return $?
}
  
  for package in ${PACKAGES[@]}
  do
    if IS_INSTALLED "$package"; then
        echo "$package is already installed, skipping..."
    else
    echo "installing $package"
    apt install $package -y &>>$LOGS_FILE
    VALIDATE $? "$package installation"
    fi
  done  

