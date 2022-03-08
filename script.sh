#!/bin/bash


opt=$1

case $opt in
date)
	 date
	;;
hostname)
	echo $HOSTNAME
	;;
networkInfo)
	echo $(ifconfig)
	;;
*)
	echo "Arguments missing"
	;;
esac

