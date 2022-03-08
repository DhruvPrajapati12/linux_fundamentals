#!/bin/bash

#using input and output fds

exec 3</etc/resolv.conf
exec 4>output.txt

read -u 3 a b
echo "data read from fd3 $a"
echo "data ready from fd3 field 2 $b"
echo "writing back to fd4 output fd"
echo "writing first field $a" >&4
echo "writing second field $b" >&4
exec 3<&-
exec 4<&-