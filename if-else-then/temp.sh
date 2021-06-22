#!/bin/bash
TEMP=$1
if [ $TEMP -lt 5 ]; then
   echo "the weather is cold."
elif [ $TEMP -lt 15 ]; then
   echo "The weather is moderate."
elif [ $TEMP -lt 25 ]; then
   echo "The weather is extremely hot."
else
   echo "The weather is convinient to play the cricket."
fi
else 
   echo "its freezing today ..."
fi