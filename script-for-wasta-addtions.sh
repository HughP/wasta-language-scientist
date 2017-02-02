#!/bin/bash

#A Wasta Linux version for the Linguistic Data Scientist (a version of the SIL consultant).

#This script attempts to document some changes (mostily additions) to Wasta for the lingusitic Data Scientist.
#The reasons we want to use wasta (and linux are the following): We feel that there is great value in being on the same operating system with the indegenous memebers of our team. This equality could happen with any operatin system. However, with linux the cost of outfitting an entire team or part of a community with tools to make tools for their language is much lower than with OS X, or Windows. Wasta gives us the power of Ubuntu with the eas of access of not needing to connect with SIL Software systems.
#This script endevors to bring the rest of what was forgtten for the modern interdisciplinary, digital Humanities sensitive, anthroplogically aware lingusit, loooking to enrich the lives and communities of minority language (and digitaly under-resourced) speakers.
#Wasta has two GUI interfaces. 1. Unity which ships with Ubuntu and 2. Cinnimon, which is a Wasta innovation.

#1. We might want to change somethings about the look and feel of our Wasta machine (this is more or less to bring over some features from OS X).
#2. We might want some fonts and text processing tools
#3. We might want to use some apache (Web) based tools for sharing our work globally or to work as a team on a local network. So, we will install some web devleopment tools.
#4. We might want some access to iOS devices. These are really popular and we want to be able to connect them (and their sensors) as best as possible into our workflows.
#5. We might want some SIL tools for doing some things "The SIL Way"... if there is one. (Bascially, SIL makes some awesome tools, but these are not all installed by default on Wasta.)
#6. We might want some other tools to do linguistics. There are lots of tools for linguistics which are, sometimes not known about, and sometimes known about. We want to put them in the machine for ease of access to the end user.
#7. We might want some data wrangling tools for our data. As a data scientist we are really keen to be able to collect good data, to detect patterns, in that data, and then also present that data in (often visual) compelling ways to our collegues, funders, and the communities we work with.
#8. We might want some fun things to do... Because basically, the folks at Ubuntu don't have great tastes for intellegent games.

# A couple of assumptions.
# We have the User folder (~/). This specifies the default location for many things. We like to use these places where possible. The addtions of the following folder(s) is mostly carry over from how I work on OS X.
# We create three new folders under '~/':
#1. '~/Addititions to Wasta Linux' (code of applications and documentation goes here)
#2. '~/Sites' (Web Site Development goes here)
#3. '~/"User's Real Name"' where everything not specified via install scripts gets added and my personal folders/files are located. (All my crap goes here.)
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


##################### 1. Behavior, Look, and Feel #####################
###UX Tip: If things look and function like you are used to then adoption is quicker ###

#To get some features to make Wasta function more like a Mac OS X

##To get quickview like functionality - where space bar can preview a file. (Allegelly this is also a feature in unity.)
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get install gloobus-preview
sudo apt-get install unoconv gnumeric
sudo apt-get install nemo-gloobus-sushi
nemo -q

##Various tools from the MacBuntu theme

sudo add-apt-repository ppa:noobslab/macbuntu
sudo apt-get update

#Theme icons Changes the icons and windows to light gray instead of dark gray as is with the current wasta theme. The default window location of the three buttons on the windows standard right side instead of the OS X based left side can be done with the system preference pane.

sudo apt-get install macbuntu-os-icons-lts-v7
sudo apt-get install macbuntu-os-ithemes-lts-v7
#Optoinal uninstall of theme icons
#cd /usr/share/icons/mac-cursors && sudo ./uninstall-mac-cursors.sh
#sudo apt-get remove macbuntu-os-icons-lts-v7 macbuntu-os-ithemes-lts-v7

#Install Slingcold - like launchpad on OS X
#sudo add-apt-repository ppa:noobslab/macbuntu
#sudo apt-get update
sudo apt-get install slingscold

#Install Albert - like spotlight
### This still requires one to set the Shortcut key in app settings
#sudo add-apt-repository ppa:noobslab/macbuntu
#sudo apt-get update
sudo apt-get install albert

#Install Plank like OS X Dock
#This may not be the best dock for linux I am open to more suggestions.
##Press Ctrl + Right Click to access settings
sudo apt-get install plank

##Install Plank Themes
#sudo add-apt-repository ppa:noobslab/macbuntu
#sudo apt-get update
sudo apt-get install macbuntu-os-plank-theme-lts-v7

###uninstall plank and themes
#sudo apt-get autoremove plank macbuntu-os-plank-theme-lts-v7

#####################2. Fonts and some text processing tools #####################
### Let's install the KDE Character selector to find the right unicode character ###
sudo apt-get install kcharselect



#####################3. Install apache web based Devtools ####################
#Apache2 comes preinstalled. check out http://0.0.0.0 in the browser.
#We might want to edit our files.

#I use Wordpress a lot so lets get that

mkdir ~/Sites/Wordpress
wget https://www.wordpress.org/latest.zip ~/Sites/Wordpress

#I use homebrew on OS X. I am familure with that packaging system so let's use linuxbrew and get some useful tools. (Of course this is linux so if a tool exists via apt-get then we should try and get it from there first. However, sometimes it is better to not mess with the OS's version of something and leave that in place and use a different version of things, also sometimes homebrew repos get updated faster than apt-get repos do.)

#We need to install MySQL


#Let's get RStudio and tools


#Linuxbrew
#Why linux brew?
#       *  Can install software to a home directory and so does not require sudo.
#       *  Install software not packaged by the native distribution.
#       *  Install up-to-date versions of software when the native distribution is old.
#       *  Use the same package manager to manage both your Mac and Linux machines.

sudo apt install ruby
sudo ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
PATH="$HOME/.linuxbrew/bin:$PATH"
sudo apt-get install build-essential curl git python-setuptools ruby

#Actually these should be to ~/.bashrc because that is what wasta uses.
#echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >>~/.bash_profile
#echo 'export PATH="/home/greenlantern/.linuxbrew/bin:$PATH"' >> ~/.bash_profile
sudo apt install linuxbrew-wrapper

sudo sudo apt-get install -y build-essential make cmake scons curl git \
                               ruby autoconf automake autoconf-archive \
                               gettext libtool flex bison \
                               libbz2-dev libcurl4-openssl-dev \
                               libexpat-dev libncurses-dev

#Let's add some homebrew equiivlenets of PPAs                               
brew tap josegonzalez/homebrew-php
brew tap homebrew/science
brew tap homebrew/services
brew tap homebrew/apache
brew tap homebrew/games
Brew install openssl #Security #
brew install mysql

# We've installed your MySQL database without a root password. To secure it run:
#     mysql_secure_installation
# 
# To connect run:
#     mysql -uroot
# 
# A "/etc/mysql/my.cnf" from another install may interfere with a Homebrew-built
# server starting up correctly.
brew install phpmyadmin3
# Webserver configuration example (add this at the end of
# your /etc/apache2/httpd.conf for instance) :
#   Alias /phpmyadmin3 /home/greenlantern/.linuxbrew/share/phpmyadmin3
#   <Directory /home/greenlantern/.linuxbrew/share/phpmyadmin3/>
#     Options Indexes FollowSymLinks MultiViews
#     AllowOverride All
#     <IfModule mod_authz_core.c>
#       Require all granted
#     </IfModule>
#     <IfModule !mod_authz_core.c>
#       Order allow,deny
#       Allow from all
#     </IfModule>
#   </Directory>
# Then, open http://localhost/phpmyadmin3
# 
# More documentation : file:///home/greenlantern/.linuxbrew/Cellar/phpmyadmin3/3.5.8.2/share/phpmyadmin3/doc/
# 
# Configuration has been copied to /home/greenlantern/.linuxbrew/etc/phpmyadmin3.config.inc.php
# Don't forget to:
#   - change your secret blowfish
#   - uncomment the configuration lines (pma, pmapass ...)

brew install apache
brew install wp-cli

sudo apt install nodejs-legacy
brew install nodejs

####################4. iOS access ######################
#We take photos with our iOS devices and want to access those photos to write our newsletters.

sudo apt install libimobiledevice-utils

sudo apt-get install ideviceinstaller python-imobiledevice libimobiledevice-utils libimobiledevice4 libplist2 python-plist ifuse 

mkdir github-tools
git clone https://github.com/libimobiledevice/libplist.git github-tools
./github-tools/libplist/autogen.sh
make -C /github-tools/libplist
sudo make install -C /github-tools/libplist
git clone https://github.com/libimobiledevice/libusbmuxd.git
./github-tools/libusbmuxd/autogen.sh
make -C /github-tools/libusbmuxd
sudo make install -C /github-tools/libusbmuxd


#Make other users on the computer able to view the idevice by editing the /etc/fuse.conf file. Uncomment last line of the file.

#####################5. Software by SIL #####################

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
#Let's get all the SIL Fonts


###Let's install the KDE Character selector to find the right unicode character ###
sudo apt-get install kcharselect

#####################6. Non-SIL Software for Linguistics and the data scientist #####################
##Check this community for more content: https://wiki.debian.org/DebianScience/

#ELAN Will need a bit of work each time as no official repo exists. We will use wget to get several different parts. (Application, Maual, etc.)
#Install ELAN 5.0.0
wget http://www.mpi.nl/tools/elan/ELAN_5-0-0-alpha_linux.bin
#Install ELAN Manual
wget http://www.mpi.nl/corpus/manuals/manual-elan.pdf

#Install QT

#Get QT apps code, complie code.

#Install ElanCheck
git clone https://github.com/adamb924/ElanCheck.git
#Intall FreeTranslator
git clone https://github.com/adamb924/ElanCheck.git

#Let's get a sheetswiper like tool
git clone https://github.com/stefanocoretta/sfm-exporter.git

#####################7. We Need some Fun Stuff too #####################
sudo apt-get install pioneers
git clone https://github.com/farin/JCloisterZone.git
brew install spaceinvaders-go
brew install yetris


##Install tools for working with Audio files and with Audio in Linguistics ##

#Install Praat 64 bit
wget http://www.fon.hum.uva.nl/praat/praat6023_linux64.tar.gz

#embed metadata in Audio files
sudo apt-get install kid3-qt
sudo apt-get install easytag

###Lets work with GIS Data in Linguistics ###
Connect with other linux users here: https://wiki.debian.org/DebianGis

#Install QGIS
#Install GRAASS

#Install GPS Babble
#Install GPS Prune
#Install QLandKarteGT


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

sudo apt-get install calibre


###Let's process and manage some data###
#Install OpenRefine
git clone https://github.com/OpenRefine/OpenRefine.git github-tools/

#Install Spyder
sudo apt-get 

#Python Modules for Lingusitics.....
Some popular books include:

    Think Python: how to Think Like a Computer Scientist. Alan B. Downey (2012). O’Reilly
    Natural Language Processing with Python.Steven Bird, Ewan Klein & Edward Loper (2009) O’Reilly
    Essential Python for Corpus Linguistics. Mark Johnson. Blackwell Publishers, Inc. Cambridge, MA, USA ©2010 ISBN:1405145633 9781405145633 
    Python Programming: An Introduction to Computer Science, First Edition, by John Zelle, Franklin Beedle & Associates publishers, 2003. ISBN: 978-1887902991 for python 2.x and second edn for python v. 3.x book resources: http://mcsp.wartburg.edu/zelle/python/
    
#Modules:
lingusitictagger: http://omz-software.com/pythonista/docs/ios/linguistictagger.html
nltk: http://www.nltk.org/
Scrapy: https://scrapy.org/  :: Scrapy Tutorial: https://blog.siliconstraits.vn/building-web-crawler-scrapy/
pip install scrapy

::Tutorial https://www.linguistics.rub.de/FallSchool/Courses/slides-python/slides-cavar.pdf

lingpy Python Library for Historical Linguistics: http://lingpy.org more tools at: https://github.com/lingpy
panlex_lite data from panlex https://github.com/nltk/nltk/issues/1253 via nltk
corpus-downloader 0.1.11 : https://pypi.python.org/pypi/corpus-downloader/0.1.11

Lists of lingustically related modules: 
* https://code.activestate.com/pypm/search:linguistics/
* https://libraries.io/search?keywords=linguistics&languages=Python


# Istall Rstudio and shiny packages
#See documentation here: https://www.rstudio.com/products/shiny/download-server/
#Shiny is a webapp deployment package for deploying web aps built in R. https://shiny.rstudio.com/
#Rstudio is a package for managing R Scripts. R is a language for running statistical analysis on data.
sudo apt-get install r-base
sudo su - \
-c "R -e \"install.packages('shiny', repos='https://cran.rstudio.com/')\""

sudo apt-get install gdebi-core
wget https://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.5.1.834-amd64.deb
sudo gdebi shiny-server-1.5.1.834-amd64.deb


#Install some phylogenetic tree software
http://www.math.canterbury.ac.nz/bio/pages/PhyloFiles/software.html

#Install CSVfix and other commandline tools

sudo hg clone https://bitbucket.org/neilb/csvfix

#Install panDoc
# http://pandoc.org/

Let's get Atom
git clone https://github.com/atom/atom.git

Atom is only available for 64-bit Linux systems.

    Download atom-amd64.deb from the Atom releases page.
    Run sudo dpkg --install atom-amd64.deb on the downloaded package.
    Launch Atom using the installed atom command.

The Linux version does not currently automatically update so you will need to repeat these steps to upgrade to future releases.

https://github.com/atom/atom/releases/tag/v1.13.1

#Install WineHQ

sudo apt-get install wine

#Install VirtualBox

#Tree

sudo apt install tree

sudo apt install kate


############## Tools for dealing with those older Linguistic resources ##########

#ScanTailor

sudo apt-get install scantailor


##Photo Processing for Language Documentation ##

#Install DarkTable
sudo apt-get install darktable

#EXIFTOOL
sudo apt-get install ruby-mini-exiftool

wget http://www.sno.phy.queensu.ca/~phil/exiftool/Image-ExifTool-10.40.tar.gz


# #Unix Platforms
# 
#     #Download the Image-ExifTool distribution from the ExifTool home page (The file you download will have a name like "Image-ExifTool-10.40.tar.gz".) Unpack the distribution and make it your current directory by typing:
# 
#         cd <your download directory>
#         gzip -dc Image-ExifTool-10.40.tar.gz | tar -xf -
#         cd Image-ExifTool-10.40
# 
#     #(At this point you may run exiftool by typing "exiftool <image file name>".) Test and install ExifTool by typing:
# 
#         perl Makefile.PL
#         make test
#         sudo make install
# 
#     (Note: The "make test" step is not required, but useful because it runs a full suite of tests to verify that ExifTool is working properly on your system. The "sudo make install" command requires that you have su access, and will prompt for your password. This will make ExifTool and its documentation accessible to all users on your system. If you don't have su access, you can run ExifTool in your own account by moving "exiftool" and its "lib" directory to any convienient location, preferably somewhere in your PATH.)
# 
# You can now run exiftool by typing "exiftool". Also, you can consult the ExifTool documentation with commands like:
# 
#     perldoc exiftool
#     perldoc Image::ExifTool
#     perldoc Image::ExifTool::TagNames
# 
# or
# 
#     man exiftool
#     man Image::ExifTool
#     man Image::ExifTool::TagNames
# 
# Uninstalling
# 
#     Type "sudo make uninstall" from the distribution directory.
#     (Note: Unfortunately, newer systems may give an "Uninstall is unsafe and deprecated" message even though uninstalling ExifTool is safe because it has no dependencies. If this happens, the necessary commands to remove the installed files will be listed, and these commands must be run manually.)


trying to install uber writer: http://uberwriter.wolfvollprecht.de/

sudo add-apt-repository ppa:w-vollprecht/ppa
sudo apt-get update
sudo apt-get install uberwriter

