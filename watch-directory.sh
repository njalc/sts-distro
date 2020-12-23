#!/bin/sh

# In POSIX shell, the single period sources a file, ie.:
# source ./ip-list.sh
. ./ip-list.sh

while true
do
  for host in $IP_LIST
  # dev testing, where ssh keys unavailable
  #do find "$1" | entr -dp sshpass -p 'pass' ./ftp-upload.sh 'foo' "$host"
  # prod, assuming ssh keys setup
  do find /home/tomcat9/Library/Application_Support/Mac-Lloyd/SportTrackingFusion \
     | entr -dp ./ftp-upload.sh 'ubuntu' "$host"
  done
done
