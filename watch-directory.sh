#!/bin/sh

while true
do find "$1" | entr -dp ./ftp-upload.sh
done
