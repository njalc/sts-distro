#!/bin/sh

while true
do
  for host in localhost localhost
  # dev testing, where ssh keys unavailable
  do find "$1" | entr -dp sshpass -p 'pass' ./ftp-upload.sh 'foo' "$host"
  # prod, assuming ssh keys setup
  #do find "$1" | entr -dp ./ftp-upload.sh 'foo' "$host"
  done
done
