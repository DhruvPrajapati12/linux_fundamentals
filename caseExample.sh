#!/bin/bash

#case example script

opt=$1
file=$2

case $opt in
-e|-E)
    echo "opening the $file for editing"
    ;;
-c|C)
    echo "showing the content of $file"
    ;;
*)
    echo "Args are missing"
    echo "usage: command -e|-E or -c|C filename"
esac

#[Tt][aA][rR] is for taR, Tar, tAr, TAR for case sensitive