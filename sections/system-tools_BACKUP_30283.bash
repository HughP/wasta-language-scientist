#!/bin/bash
################################################################################
# Script Name: system-tools.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: 64 bit Linux - we assume it is Wasta. Some installed packages might be 64 bit only nad some PPAs might be added to Wasta already.
# OS: Designed to work on Wasta/Ubuntu read inline comments and README.md file.
# Target goal: Install some Linux tools which make the look and operational feel of Linux more OS X like.
# Expected use:  This script is designed to be triggered by another script.

# I use homebrew on OS X. I am familure with that packaging system so let's use Linuxbrew and get some useful tools. (Of course this is Linux so if a tool exists via apt-get then we should try and get it from there first. However, sometimes it is better to not mess with the OS's version of something and leave that in place and use a different version of a software package, also sometimes homebrew repos get updated faster than apt-get repos do.)
# Linuxbrew
# Why Linuxbrew?
#       *  Can install software to a home directory and so does not require sudo.
#       *  Install software not packaged by the native distribution.
#       *  Install up-to-date versions of software when the native distribution is old.
#       *  Use the same package manager to manage both your Mac and Linux machines.
sudo apt-get install linuxbrew-wrapper
# Read abpit why this is necessary here: http://manpages.ubuntu.com/manpages/xenial/man7/linuxbrew-wrapper.7.html :: http://packages.ubuntu.com/xenial/utils/linuxbrew-wrapper

sudo apt-get install ruby
sudo apt-get install build-essential curl git python-setuptools ruby
sudo sudo apt-get install -y build-essential make cmake scons curl git ruby autoconf automake autoconf-archive gettext libtool flex bison libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev
sudo ruby -e "$(curl -fsSL https://raw.githubusercontent.com/linuxbrew/install/master/install)"
PATH="$HOME/.linuxbrew/bin:$PATH"

# Some of the commands are going to be duplicated be cause they are copppied from various sources. I don't see this as a problem because if the package is already there then it is not going to be installed again. This could stand to be cleaned up in future iterations of this script.

# The following statements are added to .bashrc. Linuxbrew will say that they need to go to .bash_profile, but this is because it was optimized for OS X. These should be to ~/.bashrc because that is what wasta uses.
#echo '#Added by wasta-data-scientist script durring the install of linuxbrew' >> ~/.bashrc
#echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.bashrc
#echo 'export PATH="/home/greenlantern/.linuxbrew/bin:$PATH"' >> ~/.bashrc


#Let's add some homebrew equivalents of PPAs
brew tap josegonzalez/homebrew-php
brew tap homebrew/science
brew tap homebrew/services
brew tap homebrew/apache
brew tap homebrew/games

# For security reasons I think it good to add an updated openSSL package. It is installed by default if you have connectivity problems you should remove it via linuxbrew. Note that openSSL is a package which Ubuntu uses, they just don'y upgrade to the latest version as soon as it comes out, so Wasta lags behind as it is also behind Ubuntu.#
brew install openssl

# Install git gui tools and file diff checking tools
# What each tool does should be explained here.
sudo apt install kdiff3
sudo apt-get install gitk
sudo apt-get install git-gui
sudo apt install meld #http://meldmerge.org/

# Lets set kdiff3 as the default git code review tool.
git difftool --tool=kdiff3

# Install WineHQ
sudo apt-get install wine

# Install QT

Install version 4 and 5
version 4 http://www.linuxfromscratch.org/blfs/view/7.8/x/qt4.html
https://www.howtoinstall.co/en/ubuntu/xenial/qt4-default
Version 5

#Get QT apps code, compile code.

#Install VirtualBox
sudo apt-get install VirtualBox

# Install Tree - A nice tree drawing application for terminal which will draw trees of your directory structure.
sudo apt install tree

# Install Kate, a better text editor
sudo apt install kate

# A different console-terminal application
sudo apt-get install konsole

#
sudo apt-get install avahi-discover

# For sharing
sudo apt-get install samba


dmg2iso
Peazip

# We need a proper browser let's get lynx for low bandwith areas
# Review this in my emials and see if there is not another one more
sudo apt-get install lynx
http://invisible-island.net/datafiles/release/lynx-cur.zip
http://packages.ubuntu.com/search?keywords=lynx
http://packages.ubuntu.com/xenial/lynx

#Quicken Replacement
sudo apt-get install gnucash

#Moneydance is $40.00
#For the language project using wxBanker might be a better option.

install VirtualBox #https://www.virtualbox.org/wiki/Linux_Downloads
install vagrant: https://atlas.hashicorp.com/ubuntu/boxes/xenial64


Not sure what I did about printing to the Brother HL-L2360DW
I did this: from :: http://support.brother.com/g/s/id/linux/en/before.html?c=us&lang=en&prod=hll2360dw_us&redirect=on#004

Pre-required Procedure (4)
    Related distributions
    Debian, Ubuntu
    Related products/drivers
    printer/PC-FAX drivers
    Requirement (superuser authorization is required to run the command)
    "mkdir /var/spool/lpd" command is required if the folder does not exist.

And then I used the generic printer.

This seems to be the driver: http://support.brother.com/g/b/downloadhowto.aspx?c=us&lang=en&prod=hll2360dw_us&os=128&dlid=dlf101123_000&flang=4&type3=10032



    Download LPR driver.

    Login as a superuser ( or use "sudo" option if required).

    Check if pre-required procedures are completed
    For Debian/Ubuntu 64bit

    Install the driver.
        Turn on the printer and connect the usb, network or parallel cable.
        Go to the directory where the driver is.
        Install LPR driver.The install process may take some time. Please wait until it is complete.
        Command  :  dpkg -i --force-all  (lpr-drivername)
        Check if the LPR driver is installed.
        Command  :  dpkg -l  |  grep  Brother

    Confirm/Configure a file according to your connection.

        Check the configuration filename for your distribution.
        Example:
        openSUSE, Ubuntu, Debian : /etc/printcap
        Redhat, fedora, Mandriva : /etc/printcap.local

        Edit the file according to your connection.
        For USB Connection (Default)
        Check if the parameter of ":lp" is ":lp=/dev/usb/lp0"
        For Network Connection
        replace ":lp" line to the following 2 lines
        :rm=(ip address of your printer)\
        :rp=lp\
        For Parallel Connection
        replace ":lp" line to the following line
        :lp=/dev/lp0\

        Restart the print system.
        Command  (for  lpr):  /etc/init.d/lpr  restart
        Command  (for  lprng)  :  /etc/init.d/lprng  restart

    Try a test print.

See discussion here: https://askubuntu.com/questions/575500/brother-hl-l2360dw-printer-installation

I never got the following instructions to work: http://support.brother.com/g/b/downloadhowto.aspx?c=us&lang=en&prod=hll2360dw_us&os=128&dlid=dlf006893_000&flang=4&type3=625

Looking for an HTML t PDF solution:
http://www.html2pdf.it/
https://github.com/HughP/html2pdf.it

#If you need another email solution other than thunderbird (which does have some drawbacks) then check out Jaro-Mail.
# * https://www.dyne.org/software/jaro-mail/

# A really cool bash script checker
apt-get install shellcheck #https://github.com/koalaman/shellcheck#user-content-in-your-editor
