#!/bin/bash
USER_ID=(id -u)
if [ $USER_ID -ne 0 ]; then
echo "please run the script in root aceess"
exit 1
echo "install the nginx"
dnf install nginx -y
if [ $? -ne 0 ]; then
echo "install nginx.......FAILURE"
exit 1
else
echo "install nginx........SUCESS"
fi