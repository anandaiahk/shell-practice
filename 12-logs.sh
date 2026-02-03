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
      echo "$2.......FAILURE"
      exit 1
     else
       echo "$2........SUCESS"
     fi

}

dnf install nginx -y &>>$LOGS_FILE
VALIDATE $? "install nginx"


dnf install mysql -y &>>$LOGS_FILE
VALIDATE $? "install mysql"



dnf install nodejs -y &>>$LOGS_FILE
VALIDATE $? "install nodejs"