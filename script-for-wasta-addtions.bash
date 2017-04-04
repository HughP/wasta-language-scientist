#!/bin/bash
################################################################################
# Script Name: wasta-data-scientist.bash
# Authors: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: None.
# OS: Designed to work on wasta/Ubuntu read inline comments and README.md file.
# Target goal: A Wasta Linux version for the Linguistic Data Scientist (a version of the SIL consultant).

# This script has a collection of sub-scripts. These sub-scripts can be run
#independently or collectively in series by running the master script which ties
#together the sub-scripts. In this case the ties are all written in bash while
#some of the other scripts are written in other languages. But all are exicuted
#in the terminal.

# A couple of assumptions.
# We have the User folder (~/). This specifies the default location for many things. We like to use these places where possible. The addtions of the following folder(s) is mostly carry over from how I work on OS X.
# We create three new folders under '~/':
#1. '~/Addititions to Wasta Linux' (code of applications and documentation goes here)
#2. '~/Sites' (Web Site Development goes here)
#3. '~/"User's Real Name"' where everything not specified via install scripts gets added and my personal folders/files are located. (All my crap goes here.)

#Now there are some other applications which create folders in the User's root. This script does not try to set a new default (and in some cases the applications do not allow for path modification).


# For instance see the following tree:
# .
# ├── Additions\ to\ Wasta\ Linux
# ├── Desktop
# ├── Documents
# ├── Downloads
# ├── Hugh\ Paterson\ III
# ├── Music
# ├── Pictures
# ├── Public
# ├── Sites
# ├── Templates
# └── Videos

#After the whole script runs several application folders will appear in addtion to those mentioned above. This will give us more of the view below.

# .
# ├── Additions\ to\ Wasta\ Linux
# ├── Bloom
# ├── ChorusHub
# ├── Desktop
# ├── Documents
# ├── Downloads
# ├── ELAN_5.0.0-alpha
# ├── Hugh\ Paterson\ III
# ├── Music
# ├── Pictures
# ├── Public
# ├── R
# ├── Sites
# ├── Templates
# ├── Videos
# ├── WeSay
# └── WritingSystems

###Notes: sometimes there are scripts for

##################### 1. Behavior, Look, and Feel #####################
source sections/look-and-feel.bash

##################### 1b. Additional system tools #####################
source sections/system-tools.bash

#####################2. Fonts and some character tools #####################
source sections/fonts-and-characters.bash

#####################3. Install apache web based Devtools ####################
#Apache2 comes preinstalled. check out http://0.0.0.0 in the browser.
#We might want to edit our files.

source sections/wordpress-world.bash
source sections/drupal-world.bash
source sections/web-tools.bash

#Let's get some R tools
source sections/r-tools.bash



#It is a fine linke between good tools for writing and good tools for witing in Markdown and food tools for programing. Atom is good in all these ways. Let's git it and some supporting tools.
#Atom is only available for 64-bit Linux systems.
#Launch Atom using the installed 'atom' command.
#The Linux version does not currently automatically update so you will need to repeat these steps to upgrade to future releases.
#https://github.com/atom/atom/releases/tag/v1.13.1
mkdir Additions\ to\ Wasta\ Linux/github-tools
git clone https://github.com/atom/atom.git ~/Additions\ to\ Wasta\ Linux/github-tools
# Download atom-amd64.deb from the Atom releases page.
wget http://atom.io/download/deb ~/Additions\ to\ Wasta\ Linux/github-tools

#Run sudo dpkg --install atom-amd64.deb on the downloaded package.

sudo dpkg --install ~/Additions\ to\ Wasta\ Linux/github-tools/atom-amd64.deb
mv
# After installing atom, install WordPress dictionary and other plugins to make cool things happen.
# apm install regex-railroad-diagram
# apm install linter-write-good
# apm install linter-just-say-no
# apm install wordpress-dictionary
# apm install nord-atom-ui
# apm install nord-atom-syntax
# apm install file-icons
# apm install markdown-pdf
# apm install hyperclick
# apm install git-pear
# apm install autocomplete-python
# apm install wordpress-api
# apm install drupal
# apm install atom-drupal-api
# apm install language-regexp
# apm install regex-filter-and-generator
# apm install wordpress-suite
# apm install pandoc-autocompile
# apm install rst-preview-pandoc
# apm install academic
# apm install markdown-preview-plus
# apm install language-pfm
# apm install pdfify
# apm install document-outline
# apm install rst-preview
# apm install autocomplete-bibtex
# apm install zotero-picker
# apm install zotero-citations
# apm install pandoc #https://atom.io/packages/pandoc
# apm install pandoc-convert
# apm install asciidoc-preview
# apm install language-asciidoc
# apm install ascii-art
# apm install asciidoctor-preview
# apm install asciidoc-image-helper
# apm install autocomplete-asciidoc
# apm install asciidoc-assistant

apm install nord-atom-ui nord-atom-syntax file-icons drupal wordpress-api wordpress-dictionary autocomplete-python git-pear hyperclick markdown-pdf pandoc-autocompile pandoc-autocompile rst-preview-pandoc rst-preview pandoc-convert pandoc zotero-citations zotero-picker autocomplete-bibtex document-outline pdfify language-pfm markdown-preview-plus academic

####################4. iOS access ######################
#We take photos with our iOS devices and want to access those photos to write our newsletters.

source sections/ios-access.bash

#####################5. Software by SIL #####################

source sections/sil-linguistic-software.bash

#####################6. Non-SIL Software for Linguistics and the data scientist #####################
##Check this community for more content: https://wiki.debian.org/DebianScience/

#ELAN Will need a bit of work each time as no official repo exists. We will use wget to get several different parts. (Application, Maual, etc.)
#Install ELAN 5.0.0
wget http://www.mpi.nl/tools/elan/ELAN_5-0-0-alpha_linux.bin
sudo chmod +x ./ELAN_5-0-0-alpha_linux.bin
./ELAN_5-0-0-alpha_linux.bin
#Then click through the installer. I installed to default location, but I am not sure where else things should go...

#Install ELAN Manual and tutorials.
wget http://www.mpi.nl/corpus/manuals/manual-elan.pdf

#Install ElanCheck
git clone https://github.com/adamb924/ElanCheck.git
#Intall FreeTranslator
git clone https://github.com/adamb924/ElanCheck.git

#Let's get a sheetswiper like tool
git clone https://github.com/stefanocoretta/sfm-exporter.git

##Install tools for working with Audio files and with Audio in Linguistics ##

#Praat and Praat tools moved to seperate file
source sections/non-sil-linguistic-software.bash

#Transcriber

source sections/cartography-gis-and-gps.bash

###Let's get some Academic reference and resource managment tools ###

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

###Let's process and manage some data###
#Install OpenRefine
git clone https://github.com/OpenRefine/OpenRefine.git github-tools/


#Install some phylogenetic tree software
http://www.math.canterbury.ac.nz/bio/pages/PhyloFiles/software.html

#Install CSVfix and other commandline tools

sudo hg clone https://bitbucket.org/neilb/csvfix

#Install panDoc
# http://pandoc.org/

http://pencil.evolus.vn/
http://pencil.evolus.vn/dl/evoluspencil_2.0.5_all.deb

#Lets get Gephi and some gephi tools.
source sections/gephi-world.bash

#Look at installing a graph database like:
https://neo4j.com/
#Get RDF Graph tools


############## Tools for dealing with those older Linguistic resources ##########

#ScanTailor
sudo apt-get install scantailor


get and install several of xnview tools from http://www.xnview.com/en/nconvert/

https://vc.wpbakery.com/


I also edited
vim /etc/pulse/default.pa
#Edits by Hugh Paterson on 25 jan 2017
#From http://askubuntu.com/questions/223136/pavucontrol-doesnt-show-bluetooth-headset
load-module module-bluetooth-discover
load-module module-switch-on-connect
Then commented out, as all this seemed to do was to mute my own speakers.


#For Reading Experienments
http://tedlab.mit.edu/~dr/Linger/

#For corpus linguistics
Corpus Linguistics for Grammar: A Guide for Research
By Christian Jones, Daniel Waller
wget: http://kb.ucla.edu/system/datas/5/original/content_analysis.pdf

#####################8. We Need some Fun Stuff too #####################
source sections/smart-games.bash

###################9. Things to consider installing #####################
source sections/potential-installs.bash
