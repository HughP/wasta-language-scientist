#!/bin/bash
################################################################################
# Script Name: look-and-feel.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: 64 bit Linux - we assume it is Wasta. Some installed packages might be 64 bit only nad some ppas might be added to Wasta already.
# OS: Designed to work on Wasta/Ubuntu read inline comments and README.md file.
# Target goal: Install some Linux tools which make the look and operational feel of Linux more OS X like.
# Expected use:  This script is designed to be triggered by another script.


### UX Tip: If things look and function like you are used to then adoption is quicker ###
# To get some features to make Wasta function more like a Mac OS X.

## To get quickview like functionality - where space bar can preview a file. (Allegelly this is also a feature in Unity, but the gloobus method has more file types supported than the Unity tool.)
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install gloobus-preview
sudo apt-get install unoconv gnumeric
sudo apt-get install nemo-gloobus-sushi
nemo -q

## Various tools from the MacBuntu theme

sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-get update

# Theme icons Changes the icons and windows to light gray instead of dark gray as is with the current wasta theme. The default window location of the three buttons on the windows standard right side instead of the OS X based left side can be done with the system preference pane.

sudo apt-get install macbuntu-os-icons-lts-v7
sudo apt-get install macbuntu-os-ithemes-lts-v7
# Optoinal uninstall of theme icons
# cd /usr/share/icons/mac-cursors && sudo ./uninstall-mac-cursors.sh
# sudo apt-get remove macbuntu-os-icons-lts-v7 macbuntu-os-ithemes-lts-v7

# Install Plank like OS X Dock
# This may not be the best dock for Linux I am open to more suggestions.
## Press Ctrl + Right Click to access settings
sudo apt-get install plank

### uninstall plank and themes
# sudo apt-get autoremove plank macbuntu-os-plank-theme-lts-v7

## Install Plank Themes
# sudo add-apt-repository ppa:noobslab/macbuntu
# sudo apt-get update
sudo apt-get install macbuntu-os-plank-theme-lts-v7

# Install Slingcold - like Launchpad on OS X
# sudo add-apt-repository ppa:noobslab/macbuntu
# sudo apt-get update
sudo apt-get install slingscold

# Install Albert - like Spotlight
### This still requires one to set the shortcut key in app settings
# sudo add-apt-repository ppa:noobslab/macbuntu
# sudo apt-get update
sudo apt-get install albert

# These are hardly the only modification which can be made. For others you might consider reading the following online articles and suggestions therein.
# If you are looking for alternatives to: iTunes, Mail, iChat / Adium, iPhoto, iMovie, iDVD, GarageBand, iWeb / Dreamweaver, Adobe Photoshop, Final Cut Pro, Maya, Spotlight / Quicksilver, Time Machine, Exposè
# * https://help.ubuntu.com/community/OSXApplicationsEquivalents

# Here is a blog about the conversion expereince of one person from OS X to Linux. This person uses English and Japanese as input languages. There is a section on using OwnCloud and syncing CardDav and CalDav.
# * https://niels.kobschaetzki.net/post/2014-07-24-switching-from-os-x-to-linux/