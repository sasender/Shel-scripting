#!/bin/bash
# simple array list and loop for display
serverlist=("websrv01" "websrv02" "websrv03"
"websrv04" )
count=0
for index in ${serverlist[@]}; do
  echo "processing server: ${serverlist[count]}"
  count="`expr $count + 1`"
done
  