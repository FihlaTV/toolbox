#!/bin/bash

DEFAULT_RECORDING_DIR=/var/spool/asterisk/monitor

# Check for parameters

if [ $# -eq 0 ]
    then
	echo "Usage: rm_callrecording <days>"
	echo "days = the number of days since the call recording was created or last modified" 
	exit
fi

DAYS=$1
DISK_SPACE_BEFORE=`df -k | awk '$NF=="/"{printf "%iKB\n", $3}'`
find $DEFAULT_RECORDING_DIR -mtime $DAYS -exec rm -rf {} \;

DISK_SPACE_AFTER=`df -k | awk '$NF=="/"{printf "%iKB\n", $3}'`
echo "Disk Space Before:  $DISK_SPACE_BEFORE"
echo "Disk Space After:  $DISK_SPACE_AFTER"


