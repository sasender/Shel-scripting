#!/bin/bash
# interactive script for user input

echo "Enter Your Name: "
read FIRSTNAME
echo "Enter Your Last Name: "
read LASTNAME
echo "Enter Your Favarate Crickter: "
read CRICKETER
echo " "
echo "Your Full Name is: $FIRSTNAME $LASTNAME"
echo " "
echo "Enter Your Age: "
read USERAGE
echo " In 10 Years, You will be `expr $USERAGE + 10` years Old "
