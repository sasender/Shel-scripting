#!/bin/bash
AGE=$1
if [ $AGE -lt 15 ]; then
    echo "You are a girl child."
elif [ $AGE -lt 22 ]; then
    echo "you are a teanage girl."
elif [ $AGE -lt 35 ]; then
    echo "you are a gorgeous adult women"
else 
    echo "you are an elder women"

fi               