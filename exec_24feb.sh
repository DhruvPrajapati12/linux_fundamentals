#!/bin/bash

exec 3</etc/passwd
exec 4>output.txt
cat <&3 >&4
exec 3<&-
exec 4<&-
