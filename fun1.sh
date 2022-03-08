#!/bin/bash
#use of FUNCNAME

backup() {
    local d=$1
    [ ! -d "$d" ] && { echo "$FUNCNAME(): directory does not exist"; exit 1 ; }
}

# echo "Backup started"
# backup $1
# echo "backup started"

#check weather the file or directory

exist() {
    local d=$1
    [ -f "$d" ] && { echo "$d is file"; exit 1; }
    [ -d "$d" ] && { echo "$d is directory"; exit 1; }
}

exist $1
echo "checked"