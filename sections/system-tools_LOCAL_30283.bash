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
sudo apt install linuxbrew-wrapper #http://manpages.ubuntu.com/manpages/xenial/man7/linuxbrew-wrapper.7.html :: http://packages.ubuntu.com/xenial/utils/linuxbrew-wrapper

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


#Let's add some homebrew equiivlenets of PPAs
brew tap josegonzalez/homebrew-php
brew tap homebrew/science
brew tap homebrew/services
brew tap homebrew/apache
brew tap homebrew/games
brew install openssl #Security #

#Install git gui tools and file diff checking tools
sudo apt install kdiff3
sudo apt-get install gitk
sudo apt-get install git-gui
sudo apt install meld #http://meldmerge.org/

#Install WineHQ
sudo apt-get install wine

#Install QT


#Get QT apps code, compile code.

#Install VirtualBox

#Tree - A nice tree drawing application for terminal which will draw trees of your directory structure.
sudo apt install tree
#install Kate a better text editor
sudo apt install kate

#
sudo apt-get install avahi-discover

#For sharing
sudo apt-get install samba

#We need a proper browser let's get lynx for low bandwith areas
sudo apt-get install lynx
http://invisible-island.net/datafiles/release/lynx-cur.zip
http://packages.ubuntu.com/search?keywords=lynx
http://packages.ubuntu.com/xenial/lynx

#lets set kdiff3 as the default git code review tool.
git difftool --tool=kdiff3

#Another console-terminal application
sudo apt-get install konsole

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
