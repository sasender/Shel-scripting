#!/bin/bash
set -xe
read -p "please enter the user name:" USER_NAME
read -s -p "please enter the password:" USER_PASS
echo ${USER_NAME}
echo ${USER_PASS}
#-s id the encrpted our passwords 
#-p is the prompted our read format
