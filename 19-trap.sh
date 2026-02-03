#!/bin/bash
set -e #ERR
trap 'echo "there is an error in $LINENO, command:$BASH_COMMAND"' ERR
echo "hello word"
echoo "i am learing shell"
echo " this is easy way