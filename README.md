# STS Distro

Scripts to automatically update all STS servers via FTP.

## Dependencies

* POSIX
* [entr](http://eradman.com/entrproject/)
* [SFTP](https://github.com/atmoz/sftp)

## Scripts

The `watch-directory.sh` takes a file path and triggers `ftp-upload.sh`
whenever a change occurs.

The `ftp-upload.sh` script handles access and transfer of the FTP files
from the central server out to the nodes.

The `batchfile.sftp` contains the simple upload commands, a resilient
alternative for when `scp` is not available.

## Testing

Using the [SFTP docker image](https://hub.docker.com/r/atmoz/sftp) and
[sshpass]() the testing line can be uncommented in `ftp-upload.sh`.
