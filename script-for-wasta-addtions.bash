#!/bin/bash
################################################################################
# Script Name: wasta-data-scientist.bash
# Authors: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: 64 bit Linux - we assume it is Wasta. Some installed packages might be 64 bit only nad some ppas might be added to Wasta already.
# OS: Designed to work on Wasta/Ubuntu read inline comments and README.md file.
# Target goal: A Wasta Linux version for the Linguistic Data Scientist (a version of the SIL consultant).
# Expected use:  Start other scripts to install tools useful to linguists.

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
#3. '~/"User's Real Name"' where everything not specified via install scripts gets added and my personal folders/files are located. (All my crap goes here.) This saves my 'Documents' folder for other things. Generally I organize my content in my personal folder and I do this by project.

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


#########Script coding conventions#######
# 1. Commented out commands have no space between the hash sign and the first character of their command.
#echo 'something nice'
# Comments do have a space between the hash sign and the first character of their comment/note.
# 2. the command 'apt-get install' is prefered over 'apt install' as this allows for easier compatability with other versions of Linux.

# We are going to make a subfolder into which to download all our various github acquistions. Now whenever we clone something which does not already have a specified location, we will put it in here.
mkdir Additions\ to\ Wasta\ Linux/github-tools
mkdir Additions\ to\ Wasta\ Linux/Manuals


##################### 1. Behavior, Look, and Feel #####################
source sections/look-and-feel.bash

##################### 1b. Additional system tools #####################
source sections/system-tools.bash

#####################2. Fonts and some character tools #####################
source sections/fonts-and-characters.bash

#####################3. Install web tools ####################
# Install tools for hosting websites, install tools for making websites, and install tools for websites.
# Apache2 comes preinstalled. check out http://0.0.0.0 in the browser.
# We might want to edit our files.

source sections/web/wordpress-world.bash
source sections/web/drupal-world.bash
source sections/web/web-tools.bash

# Let's get some R tools
# The reason R is in this section is because there is a package for hosting R apps as websites. However, most R tools are for manipulating data. So this might also fit under the data tools section.
source sections/r-tools.bash

# It is a fine linke between good tools for writing and good tools for witing in Markdown and food tools for programing. Atom is good in all these ways. Let's get it and some supporting tools.
# Atom is only available for 64-bit Linux systems.
# Launch Atom from the terminal using the installed 'atom' command.
# The Linux version of Atom does not currently automatically update so you will need to repeat these steps to upgrade to future releases.

# Reference Note: At the time of creation the following link references the current version of Atom https://github.com/atom/atom/releases/tag/v1.13.1 .
# We could try to clone the github version, but I initially had trouble with that so I opted to download the .deb package.
# If you want to clone the latest version un comment the following line. And comment out the wget line.
# git clone https://github.com/atom/atom.git ~/Additions\ to\ Wasta\ Linux/github-tools
# Download atom-amd64.deb from the Atom releases page.
wget http://atom.io/download/deb ~/Additions\ to\ Wasta\ Linux/github-tools

# Run sudo dpkg --install atom-amd64.deb on the downloaded package.

sudo dpkg --install ~/Additions\ to\ Wasta\ Linux/github-tools/atom-amd64.deb

# After installing atom, install WordPress dictionary and other plugins to make cool things happen when coding.

# It seems that the following section should be aded to a seperate file and ran through a for each loop.

# apm install linter-write-good
# apm install linter-just-say-no

# apm install nord-atom-ui
# apm install nord-atom-syntax

# apm install ascii-art

# apm install regex-railroad-diagram
# apm install language-regexp
# apm install regex-filter-and-generator

# apm install wordpress-dictionary
# apm install wordpress-api
# apm install wordpress-suite

# apm install file-icons
# apm install markdown-pdf
# apm install hyperclick
# apm install git-pear
# apm install autocomplete-python

# apm install drupal
# apm install atom-drupal-api

apm install linter-shellcheck # https://github.com/AtomLinter/linter-shellcheck

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
##Check the following communities for more content:
# 1. https://wiki.debian.org/DebianScience/
# 2. http://lingtransoft.info/apps/results
# 3. http://hugh.thejourneyler.org/2013/software-needs-for-a-language-documentation-project/
# 4. http://hugh.thejourneyler.org/2013/lexical-data-management-helps-with-sil-software/
# 5. https://github.com/RichardLitt/endangered-languages
# 6. http://emeld.org/school/toolroom/software/software-display.cfm

# Let's get some Lingusitics specific tools
source sections/non-sil-tools/non-sil-linguistic-software.bash

# Let's get some cartography tools
source sections/non-sil-tools/cartography-gis-and-gps.bash

# Let's get some tools for the writing process
source sections/non-sil-tools/academic-resources-and-writing.bash

# Let's get some tools for anthropology
source sections/non-sil-tools/anthroplogy-resources.bash

# Let's get some tools for managing various kinds of media data
source sections/non-sil-tools/audio-video-photo-editors.bash

# Let's get Gephi and some gephi tools.
source sections/non-sil-tools/gephi-world.bash

###Let's process and manage some data###

# Install OpenRefine
git clone https://github.com/OpenRefine/OpenRefine.git github-tools/

# Install CSVfix and other commandline tools

sudo hg clone https://bitbucket.org/neilb/csvfix

#####################8. We Need some Fun Stuff too #####################
source sections/smart-games.bash

###################9. Things to consider installing #####################
source sections/potential-installs.bash
