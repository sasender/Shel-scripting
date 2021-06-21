#!/bin/bash
#test for existence of indicated file name
FILENAME=$1
echo "testing for the existense of a file called $FILENAME"

if [ ! -a $FILENAME ]
  then
    echo "file $filename does not exist!"
fi 
#fi is the if statement    
# ! it shows the existing file or not existing file 
# with out ! thise value iy shows same files either exist or non exist files 
