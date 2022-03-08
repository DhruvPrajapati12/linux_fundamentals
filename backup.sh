#!/bin/bash

#for backup this script is used
#tar zcvf /home/dhruv/Desktop/linux/backup/bkup.tar.gz /home/dhruv/Desktop/linux/*.sh
#tar zcvf destination src
#tar is used to compress the file

#This is script is to take backup of the files

DEST=/home/dhruv/Desktop/linux/backup
SRC=/home/dhruv/Desktop/linux

[ ! -d $DEST ] && mkdir -p $DEST

#similar check for the source director existence
[ ! -d $SRC ] && { echo "$SRC does not exist, can not initiate backup to $DEST " exit 1; }
echo "Backuping in the directory $DEST"

tar zcvf $DEST/backup.tar.gz $SRC 2>/dev/null

status=$?
[ $status -eq 0 ] && echo "Backup is done" || echo "Backup failed"