#!/bin/bash
#test for existence of indicated file name
FILENAME=$1
echo "Testing for the Existense of a File called $FILENAME"

if [ ! -a $FILENAME ]
  then
    echo "File $FILENAME Does not Exist!"
fi 
#fi is the if statement    
# ! it shows the existing file or not existing file 
# with out ! thise value iy shows same files either exist or non exist files 
