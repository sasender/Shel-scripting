#! /bin/bash
dirname=/home/sasender/$(date '+%y-%m-%d')
filename=/home/sasender/$(date '+%y-%m-%d')/$(date '+%y-%m-%d')
if [ ! -d "$dirname" ]; then
        mkdir $dirname
        echo "diecotry is created"
else
        echo "directory allredy exixts"
fi
if [ ! -d "$filename" ]; then
                touch $filename
                echo "files is created on direcotry"
        else
 echo "file is exixted"

fi
