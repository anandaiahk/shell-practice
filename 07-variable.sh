#!/bin/bash
#special variables
echo "all parameters passed to script$@"
echo "number of var passed in script$#"
echo "script name$0"
echo "present working directory$PWD"
echo "who is running$USER"
echo "home directory current$HOME"
echo "pid of the script$$"
sleep 10 &
echo "background proccer id$!"
echo " no of the args$*"