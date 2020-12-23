#!/bin/sh

STF_DIR="/home/tomcat9/Library/Application_Support/Mac-Lloyd/SportTrackingFusion"

rsync --whole-file \
      --archive \
      --no-compress "$STF_DIR"/GNET/ "$1"@"$2":"$STF_DIR"/GNET/

rsync --whole-file \
      --archive \
      --no-compress "$STF_DIR"/ICP/ "$1"@"$2":"$STF_DIR"/ICP/

date --utc +%s%N > /tmp/ftp-upload-last-ran.log
