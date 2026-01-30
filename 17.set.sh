#!/bin/bash

set -e # This will be checking for errors, if errors it will exists

#!/bin/bash

PACKAGES=("nginx" "mysql-server" "nodejs")
USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

if [ $USER_ID -ne 0 ]
then
  echo -e "$R Please run the script with root user access $N" | tee -a $LOGS_FILE
  exit 1
  fi

  mkdir -p $LOGS_FOLDER

  VALIDATE () {
     
  if [ $1 -ne 0 ]
  then
    echo -e "$R $2 ..... Failure $N" | tee -a $LOGS_FILE 
    exit 1
  else
   echo -e "$G $2 ..... Success $N" | tee -a $LOGS_FILE
fi   

  }

  IS_INSTALLED() {
    dpkg -s "$package" &> /dev/null
    return $?
}
  
  for package in ${PACKAGES[@]}
  do
    if IS_INSTALLED "$package"; then
        echo -e "$Y $package is already installed, skipping... $N"
    else
    echo -e "$B installing $package $N"
    apt install $package -y &>>$LOGS_FILE
    #VALIDATE $? "$package installation"
    fi
  done  

