#!/bin/bash

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


##################### 1. Behavior, Look, and Feel #####################
source sections/look-and-feel.bash

#####################2. Fonts and some character tools #####################
### Let's install the KDE Character selector to find the right unicode character. The KDE interaction around character selection is not as clean or clear as on OS X, but is much better than the GNOME interface which ships with unity. ###
sudo apt-get install kcharselect

#####################3. Install apache web based Devtools ####################
#Apache2 comes preinstalled. check out http://0.0.0.0 in the browser.
#We might want to edit our files.

#I use Wordpress a lot so lets get that

mkdir ~/Sites/WordPress
wget https://www.wordpress.org/latest.zip ~/Sites/WordPress
unzip ~/Sites/WordPress/latest.zip
#Now lets control wordpress and the installation via the commandline. We use the officially sanctioned tool from: http://wp-cli.org/
#That way we can use wp plugin install <plugin-slug> and we’ll get the latest version of the list of plugins we want.

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

# We could have downloaded a .deb pacage from github too. But I like the curl method.
# https://github.com/wp-cli/builds/tree/gh-pages/deb

#We will also download and install an autocompletion script for the bash termnial. instruction here: https://make.wordpress.org/cli/handbook/installing/#tab-completions
wget https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash
#I'm going to put it in the same folder folder as wp--cli.phar only because they are related and am not experience with where to put things like this and there were no specific instructions.
sudo mv wp-completion.bash /usr/local/bin/wp-completion.bash
# We do need to echo a source for this to our .bashrc

#Added by Hugh to make the wordpress bash completion script work.
echo 'source /usr/local/bin/wp-completion.bash' >> ~/.bashrc

#Then we need to make sure that the .bashrc file is updated by the current user secession.
source ~/.bashrc

#Now lets get the best themes and plugins for a variety of purposes
#Let's start with a few additional commands for WordPress CLI.
#Various composer dependencies will be added. I really don't know much about composer.
wp package install git@github.com:runcommand/hook.git #WP-CLI Example
wp package install runcommand/find-unused-themes #https://runcommand.io/wp/find-unused-themes/
#wp package install boonebgorges/wp-cli-git-helper #https://github.com/boonebgorges/wp-cli-git-helper There is a conflic with this one and several features. Bug report filed.
wp package install iandunn/wp-cli-plugin-active-on-sites #https://github.com/iandunn/wp-cli-plugin-active-on-sites
wp package install boonebgorges/wp-cli-buddypress #https://github.com/boonebgorges/wp-cli-buddypress
wp package install sinebridge/wp-cli-about #https://github.com/sinebridge/wp-cli-about
wp package install sebastiaandegeus/wp-cli-salts-command #https://github.com/sebastiaandegeus/wp-cli-salts-command
wp package install trepmal/blog-extractor #https://github.com/trepmal/blog-extractor
wp package install timhysniu/wp-cli-template #https://github.com/timhysniu/wp-cli-template
wp package install trepmal/wp-revisions-cli #https://github.com/trepmal/wp-revisions-cli
wp package install wp-cli/admin-command #https://github.com/wp-cli/admin-command
wp package install wp-cli/wp-super-cache-cli #https://github.com/wp-cli/wp-super-cache-cli
wp package install runcommand/assign-featured-images #https://runcommand.io/wp/assign-featured-images/
wp package install miya0001/wp-cli-vhosts:@stable #https://github.com/miya0001/wp-cli-vhosts
wp package install mikedance/wp-cli-favorite-plugins #https://github.com/mikedance/wp-cli-favorite-plugins
wp package install pressbooks/pb-cli #https://github.com/pressbooks/pb-cli/
wp package install wp-cli/scaffold-package-command #https://github.com/wp-cli/scaffold-package-command
wp package install 10up/mu-migration #https://github.com/10up/MU-Migration
wp package install pulsestorm/wp-static-html-output-plugin #https://github.com/astorm/wp-static-html-output-plugin

wp plugin install pods


wget https://downloads.wordpress.org/plugin/pods.2.6.8.zip
wget https://downloads.wordpress.org/plugin/filters.0.4.zip

#Updating all of our plugins to the latest version is just as simple as this command.

##wp plugin update --all

#If the plugin is not in the wordpress repo then WP-CLI can not automatically get it. So we will need to use git.
git clone https://github.com/pods-framework/pods.git
git clone https://github.com/Webonary/sil-dictionary-webonary.git
git clone https://github.com/pressbooks/pressbooks.git
#I use homebrew on OS X. I am familure with that packaging system so let's use linuxbrew and get some useful tools. (Of course this is linux so if a tool exists via apt-get then we should try and get it from there first. However, sometimes it is better to not mess with the OS's version of something and leave that in place and use a different version of things, also sometimes homebrew repos get updated faster than apt-get repos do.)


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

#Some of the commands are going to be dulpicated be cause they are copppied from various sources.
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
brew install openssl #Security #
brew install mysql #to make wordpress work

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


# If we brew apache then:
# After installing httpd22 or httpd24, the configuration files will be in $(brew --prefix)/etc/apache2/2.2 and $(brew --prefix)/etc/apache2/2.4, respectively.


sudo apt install nodejs-legacy
sudo apt install nodejs
brew install nodejs

# brew list:
# bzip2  csv-fix	expat	  gpatch  icu4c    libpng  ncurses    node     patchelf     pkg-config	xz	zlib
# cmake  curl	freetype  hello   libedit  mysql   ninvaders  openssl  phpmyadmin3  tree	yetris

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

apm install nord-atom-ui nord-atom-syntax file-icons drupal wordpress-api wordpress-dictionary autocomplete-python git-pear hyperclick markdown-pdf

####################4. iOS access ######################
#We take photos with our iOS devices and want to access those photos to write our newsletters.

sudo apt install libimobiledevice-utils

sudo apt-get install ideviceinstaller python-imobiledevice libimobiledevice-utils libimobiledevice4 libplist2 python-plist ifuse


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
#Install TECkit
git clone https://github.com/silnrsi/teckit.git ~/github-tools
./github-tools/teckit/autogen.sh
make -C /github-tools/teckit
sudo make install -C /github-tools/teckit
#Install CharacterCount
* wget http://scripts.sil.org/cms/scripts/render_download.php?format=file&media_id=UnicodeCCountPL_v0_3&filename=UnicodeCCount-0_3.zip
#Let's get all the SIL Fonts


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
#Edit /etc/apt/sources.list to inculde the following per instructions from the qgis Website. http://qgis.org/en/site/forusers/alldownloads.html#debian-ubuntu
# #Added by hugh on 9 Feb 2016 for qgis
#  dep http://qgis.org/ubuntugis xenial main
# # deb-src http://qgis.org/ubuntugis xenial main
#  deb http://ppa.launchpad.net/ubuntugis/ubuntugis-unstable/ubuntu xenial  main

sudo apt-get update
sudo apt-get install qgis python-qgis qgis-plugin-grass


# Add the lines for one of the repositories to your /etc/apt/sources.list:
#
# deb     *repository* *codename* main
# deb-src *repository* *codename* main
#
# Example latest release for Debian jessie:
#
# deb     http://qgis.org/debian jessie main
# deb-src http://qgis.org/debian jessie main
#
# If you use one of our ubuntugis based repositories you also need to add following line:
#
# deb     http://ppa.launchpad.net/ubuntugis/ubuntugis-unstable/ubuntu *codename* main
#
# After that type:
#
# sudo apt-get update
# sudo apt-get install qgis python-qgis qgis-plugin-grass
#
# Note
#
# Please remove all the QGIS and GRASS packages you may have installed from other repositories before doing the update.
#
# In case of keyserver errors add the qgis.org repository public key to your apt keyring, type:
#
# wget -O - http://qgis.org/downloads/qgis-2016.gpg.key | gpg --import
# gpg --fingerprint 073D307A618E5811
#
# Should output:
#
# pub   2048R/618E5811 2016-08-17 [expires: 2017-08-17]
#       Key fingerprint = 942D 6AD5 DF3E 75DE A9AF  72B2 073D 307A 618E 5811
# uid                  QGIS Archive Automatic Signing Key (2016) <qgis-developer@lists.osgeo.org>
# sub   2048R/D34A963D 2016-08-17
#
# After you have verified the fingerprint you can add the key to apt with:
#
# gpg --export --armor 073D307A618E5811 | sudo apt-key add -
#
# Alternatively you can download the key from a keyserver and add the key to apt in one go (without manual fingerprint verification):
#
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 073D307A618E5811



#Install GRAASS

#Install GPS Babble
#Install GPS Prune
#Install QLandKarteGT

Several really helpful tutorials for SVG Maps
http://techslides.com/d3-world-maps-tooltips-zooming-and-queue/
http://bost.ocks.org/mike/map/
http://bl.ocks.org/mbostock

http://geocommons.com/
http://www.naturalearthdata.com/
http://www.naturalearthdata.com/downloads/
http://www.osgeo.org/


Nigeria Map files Project (Blench map files)

Correll Draw files --> Inscape/LibreOffice -->SVG --> Google Earth KML files


Links to Consider:

Support for KML & google map points
	http://www.inkscapeforum.com/viewtopic.php?f=5&t=6129

Converting GIS Vector Data to KML
	https://developers.google.com/kml/articles/vector

Exporting vector layer as kml in QGIS
	http://pvanb.wordpress.com/2012/07/31/exporting-vector-layer-as-kml-in-qgis/

Two Online Vector GIS/GPS/KML Conversion Utilities
	http://freegeographytools.com/2008/two-online-vector-gisgpskml-conversion-utilities

https://support.google.com/earth/answer/148103

http://en.wikipedia.org/wiki/SK1_(program)
http://wiki.inkscape.org/wiki/index.php/Frequently_asked_questions
http://en.wikipedia.org/wiki/CorelDRAW


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
get and install several of xnview tools from http://www.xnview.com/en/nconvert/




https://vc.wpbakery.com/


I also edited
vim /etc/pulse/default.pa
#Edits by Hugh Paterson on 25 jan 2017
#From http://askubuntu.com/questions/223136/pavucontrol-doesnt-show-bluetooth-headset
load-module module-bluetooth-discover
load-module module-switch-on-connect
Then commented out, as all this seemed to do was to mute my own speakers.

sudo apt-get install avahi-discover
sudo apt-get install art-of-reading
