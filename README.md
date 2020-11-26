# STS Distro

Scripts to automatically update all STS servers via FTP.

## Dependencies

* POSIX
* [entr](http://eradman.com/entrproject/)
* [SFTP](https://github.com/atmoz/sftp)

## Scripts

The `watch-directory.sh` takes a file path and triggers `upload.sh`
whenever a change occurs.

The `upload.sh` script handles access and transfer of the FTP files
from the central server out to the nodes.
