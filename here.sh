#!/bin/bash

#an example script for here document

tar -cvf /home/dhruv/Desktop/linux/b1.tar.gz /home/dhruv/Desktop/linux/*.sh 2>/dev/null
[ $? -eq 0 ] && echo "backuo complete" || echo "backup failed"