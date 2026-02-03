#!/bin/bash
USER_ID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
if [ $USER_ID -ne 0 ]; then
echo "please run the script in root aceess"
exit 1
fi
mkdir -p $LOGS_FOLDER

VALIDATE()
{
    if [ $1 -ne 0 ]; then
      echo "$2.......FAILURE" | tee -a $LOGS_FILE
      exit 1
     else
       echo "$2........SUCESS" | tee -a $LOGS_FILE
     fi

}

for package in $@  # to inupt nginx mysql nodejs
do
dnf install $package -y &>>$LOGS_FILE
VALIDATE $? "install $package"
done




