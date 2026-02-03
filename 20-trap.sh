#!/bin/bash
set -e
trap 'echo "there is an error in $LINENO, command:$BASH_COMMAND"' ERR
USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $USER_ID -ne 0 ]; then
echo -e "$R please run the script in root aceess $N"
exit 1
fi
mkdir -p $LOGS_FOLDER


for package in $@  # to inupt nginx mysql nodejs
do
   dnf list installed $package &>>$LOGS_FILE

   if [ $? -ne 0 ]; then
         
    echo -e "$package $R no installed,install now $N"
    dnf install $package -y &>>$LOGS_FILE
     
     else
     echo -e "$package already installed....$Y skipping $N"
     fi
done