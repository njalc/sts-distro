#!/bin/sh
# A simple log script to be used in conjunction with a file watcher
# like entr or inotify.

date +%s%N >> ~/tmp/sts-distro-change.log
