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

#Install the art of reading image library
sudo apt-get install art-of-reading


#Toolbox --- I hate this "tool" but many others have data in this format se we will get it so that we can "liberate" this data... because of this we are not going to be adding a lot of aux tools for toolbox.
wget http://www.sil.org/computing/toolbox/Toolbox162.zip
unzip Toolbox162.zip
#http://www-01.sil.org/computing/toolbox/downloads.htm
#One needs to manually run the installer.
#Let's also ge the the transcriber importer
wget www.sil.org/computing/toolbox/TranscriberImport.zip
unzip TranscriberImport.zip
#Let's get some SIL text converters and other kinds of scripts...
#Install TECkit
git clone https://github.com/silnrsi/teckit.git ~/github-tools
#Sometimes this will have to be done from inside the folder.
./github-tools/teckit/autogen.sh
make -C /github-tools/teckit
sudo make install -C /github-tools/teckit
#Install CharacterCount
* wget http://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=UnicodeCCountPL_v0_3&filename=UnicodeCCount-0_3.zip
#Let's get all the SIL Fonts


#Lets get the open office linguistic tools

http://projects.palaso.org/projects/ooolt
