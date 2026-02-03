#!/bin/bash
USER_ID=(id -u)
if [ $USER_ID -ne 0 ]; then
echo "please run the script in root aceess"
exit 1
fi
echo "install the nginx"
dnf install nginx -y
if [ $? -ne 0 ]; then
echo "install nginx.......FAILURE"
exit 1
else
echo "install nginx........SUCESS"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
echo "install mysql.......FAILURE"
exit 1
else
echo "install mysql........SUCESS"
fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
echo "install nodejs.......FAILURE"
exit 1
else
echo "install nodejs........SUCESS"
fi