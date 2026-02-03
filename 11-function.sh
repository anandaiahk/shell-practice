#!/bin/bash
USER_ID=(id -u)
if [ $USER_ID -ne 0 ]; then
echo "please run the script in root aceess"
exit 1
fi

VALIDATE()
{
    if [ $1 -ne 0 ]; then
      echo "$2.......FAILURE"
      exit 1
     else
       echo "$2........SUCESS"
     fi

}

dnf install nginx -y
VALIDATE $? "install nginx"


dnf install mysql -y
VALIDATE $? "install mysql"



dnf install nodejs -y
VALIDATE $? "install nodejs"

