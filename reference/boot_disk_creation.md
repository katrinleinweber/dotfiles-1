# Boot Disk Creation Instructions (Command-line only)

## Mac OS X

* Identify your USB drive/SD card using `diskutil list`
* Check over and over again that you've got the right one!
* Unmount the drive from your system using `diskutil unmountDisk /dev/diskN`, where `N` is the number of your drive
* Copy the ISO image to your drive using `sudo dd if=/path/to/image/file.iso of=/dev/rdiskN bs=1m`, where `N` is the number of your drive
* Eject the drive from the Mac using `diskutil eject /dev/diskN`
