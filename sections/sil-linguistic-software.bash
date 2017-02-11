#!/bin/bash
################################################################################
# Script Name: system-tools.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: git, wget.

#INSTALL SIL XLingPaper

#get XMLMind Editor
wget http://www.xlingpaper.org/wp-content/uploads/installers/xmlmindxxe5.3/xxe-perso-5_3_0.tar.gz

sudo ln -s ./xxe-perso-5_3_0.tar.gz /usr/local/bin/xxe

#get XLingPaper
wget http://www.xlingpaper.org/wp-content/uploads/installers/linux/XLingPaper-2-29-0FullSetup.tar.gz
sudo ./install

#Install Java for XLingPaper
##The current commands on the XLingPaper Website do not seem to work. Sun Java is prefered.
##Advertised commands are: sudo apt-get install sun-java6-jre sun-java6-plugin sun-java6-fonts
##Sun has removed Java from the Ubuntu repository and other sources of Java are required.
##It seems that one must have an account with Oracle to download Java 6.45 from their archive. Rather than going through that method I have found the following repository and pull Java from it.

sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

###XLingPaper currently requires Java 6
sudo apt-get install oracle-java6-installer

#Install FLEx
sudo apt-get install fieldworks
#Install WeSay
sudo apt-get install wesay

#Let's get some SIL text converters and other kinds of scripts...
#Install TECkit
git clone https://github.com/silnrsi/teckit.git ~/github-tools
./github-tools/teckit/autogen.sh
make -C /github-tools/teckit
sudo make install -C /github-tools/teckit
#Install CharacterCount
* wget http://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=UnicodeCCountPL_v0_3&filename=UnicodeCCount-0_3.zip
#Let's get all the SIL Fonts
