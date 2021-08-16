#!/bin/bash
# simple file reading (non-binary) and dispalying one line at time

echo "enter a file name to read: "
read file

while read -r players; do 
  echo "player name: $players"
done < "$file"  