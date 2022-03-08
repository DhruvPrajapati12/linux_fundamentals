#!/bin/bash

#example script for input-output fd

# file=/home/dhruv/Desktop/linux/output.txt
exec 3<>output.txt
echo "this is data written to combined fd" >&3
ls -l >&3
echo "displaying the content using input fd"
cat output.txt<&3
echo "closing fds"
exec 3<&-
