#!/bin/bash
################################################################################
# Script Name: academic-resources-and-writing.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies:
# Dependencies of installed software:

###Let's get some Academic reference and resource managment tools ###

#LaTeX and XLingPaper would be on here, but... XLingPaper and ecosystem are added under SIL software, and LaTeX has not been added at all yet.

install scrivner https://www.literatureandlatte.com/scrivener.php
http://literatureandlatte.com/forum/viewtopic.php?f=33&t=32709

Get SIL on board with this: http://citationstyles.org/publishers/

#Install standalone Zotero and Zotfile, and LO plugins

sudo apt-add-repository ppa:smathot/cogscinl
sudo apt-get install zotero
Also install Zotero plugins PDF-to-text
and PDF-info which are seperate downloads

git clone https://github.com/jlegewie/zotfile.git

see: www.foolabs.com/xpdf/

#Say yes/press enter to accept any requests.

sudo apt-get update

#wait for it to complete, then:

sudo apt-get install zotero-standalone

wget https://download.zotero.org/standalone/4.0.29.10/Zotero-4.0.29.10_linux-x86_64.tar.bz2
wget https://download.zotero.org/integration/Zotero-LibreOffice-Plugin-3.5.12.xpi
##http://zotfile.com/
git clone https://github.com/jlegewie/zotfile.git
wget https://github.com/jlegewie/zotfile/archive/master.zip

rename zip file to .xpi

wget https://addons.mozilla.org/firefox/downloads/file/420697/zotfile-4.2.6-fx.xpi

install: https://github.com/emmareisz/zotpicknix

install: https://github.com/zotero-manual/zotero-manual
Print: https://zoteromusings.wordpress.com/

#Install Calibre
source sections/calibre-world.bash

#Install panDoc
# http://pandoc.org/
