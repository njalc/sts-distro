#!/bin/sh

sftp "$1"@"$2" < batchfile.sftp
