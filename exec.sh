#!/bin/bash

#example script for output and input file descripter

exec 3> output.txt  #define output fd
exec 4</etc/passwd     #define input fd
echo "This is first data written to fd3" >&3
date >&3
echo "Displaying the content using input fd"
cat <&4
echo "closing the fds"
exec 3<&-
exec 4<&-
