#! /bin/bash

file_size_limit=100M

find_large_files(){
        echo "finding files largern than the $file_size_limit"
        find / -type f -size +$file_size_limit -exec ls -lh {} \; 2>/dev/null | awk '{ print $9 ": " $5 }'
}

check_disk_utilization(){
        echo "find the storage-information"
        df -Th

}
echo "large files in the server"
echo "======================="
find_large_files
check_disk_utilization
