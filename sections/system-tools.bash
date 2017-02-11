#!/bin/bash
################################################################################
# Script Name: system-tools.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: None.

#I use homebrew on OS X. I am familure with that packaging system so let's use linuxbrew and get some useful tools. (Of course this is linux so if a tool exists via apt-get then we should try and get it from there first. However, sometimes it is better to not mess with the OS's version of something and leave that in place and use a different version of things, also sometimes homebrew repos get updated faster than apt-get repos do.)
#Linuxbrew
#Why linux brew?
#       *  Can install software to a home directory and so does not require sudo.
#       *  Install software not packaged by the native distribution.
#       *  Install up-to-date versions of software when the native distribution is old.
#       *  Use the same package manager to manage both your Mac and Linux machines.

sudo apt install ruby
sudo apt-get install build-essential curl git python-setuptools ruby
sudo sudo apt-get install -y build-essential make cmake scons curl git \
                               ruby autoconf automake autoconf-archive \
                               gettext libtool flex bison \
                               libbz2-dev libcurl4-openssl-dev \
                               libexpat-dev libncurses-dev
sudo ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
PATH="$HOME/.linuxbrew/bin:$PATH"

#Some of the commands are going to be dulpicated be cause they are copppied from various sources.

#The following statements are added to .bashrc. Linuxbrew will say that they need to go to .bash_profile, but this is because it was optimized for OS X. These should be to ~/.bashrc because that is what wasta uses.
#echo '#Added by wasta-data-scientist script durring the install of linuxbrew' >> ~/.bashrc
#echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.bashrc
#echo 'export PATH="/home/greenlantern/.linuxbrew/bin:$PATH"' >> ~/.bashrc
sudo apt install linuxbrew-wrapper

#Let's add some homebrew equiivlenets of PPAs
brew tap josegonzalez/homebrew-php
brew tap homebrew/science
brew tap homebrew/services
brew tap homebrew/apache
brew tap homebrew/games
brew install openssl #Security #
