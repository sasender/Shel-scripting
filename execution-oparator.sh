#!/bin/bash
# this eis the execution oprator example
echo "Enter a number between 1 and 5:"
read value
if [ " $value" -eq "1" ] || [ "$value" -eq "3" ] || [ "$value" -eq "5" ]
  echo "yup you enterd base numbers of $value"
 else
 echo "yup entered a value od $value"
fi