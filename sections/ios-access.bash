#!/bin/bash
################################################################################
# Script Name: ios-access.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: git, make. /github-tools folder

#work left 1) dependency check, 2) install folder correction


sudo apt install libimobiledevice-utils
sudo apt-get install ideviceinstaller python-imobiledevice libimobiledevice-utils libimobiledevice4 libplist2 python-plist ifuse

git clone https://github.com/libimobiledevice/libplist.git github-tools
./github-tools/libplist/autogen.sh
make -C /github-tools/libplist
sudo make install -C /github-tools/libplist
git clone https://github.com/libimobiledevice/libusbmuxd.git
./github-tools/libusbmuxd/autogen.sh
make -C /github-tools/libusbmuxd
sudo make install -C /github-tools/libusbmuxd


#Make other users on the computer able to view the idevice by editing the /etc/fuse.conf file. Uncomment last line of the file.
