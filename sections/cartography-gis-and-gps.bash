#!/bin/bash
################################################################################
# Script Name: cartography-gis-and-gps.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: None.



#Cartography

#Get Data Set: http://download.geonames.org/export/dump/ ; http://download.geonames.org/export/dump/readme.txt

#GIS

#GPS


###Lets work with GIS Data in Linguistics ###
Connect with other linux users here: https://wiki.debian.org/DebianGis

#Install QGIS
#Edit /etc/apt/sources.list to inculde the following per instructions from the qgis Website. http://qgis.org/en/site/forusers/alldownloads.html#debian-ubuntu
# #Added by hugh on 9 Feb 2016 for qgis
#  dep http://qgis.org/ubuntugis xenial main
# # deb-src http://qgis.org/ubuntugis xenial main
#  deb http://ppa.launchpad.net/ubuntugis/ubuntugis-unstable/ubuntu xenial  main

sudo apt-get update
#sudo apt-get install qgis python-qgis qgis-plugin-grass


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

#List added plugins

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
