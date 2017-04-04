#!/bin/bash
################################################################################
# Script Name: audio-video-photo-editors.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: None.



https://linguistics.uoregon.edu/infield2010/files/Course_Documents/ELAN_2/InField_2010-ELAN_2-Coursepack.pdf
http://linguistics.uoregon.edu/infield2010/files/Course_Documents/Audio_1/Infield10_DwyerOnoNakayama_%20AudioChecklist2010.pdf
http://linguistics.uoregon.edu/infield2010/workshops/audio-recording-2/index.php

http://linguistics.uoregon.edu/infield2010/workshops/aligning-text-elan1/index.php
http://linguistics.uoregon.edu/infield2010/workshops/aligning-text-elan2/index.php

http://linguistics.uoregon.edu/infield2010/workshops/transcription/index.php

http://linguistics.uoregon.edu/infield2010/workshops/survey-methods/index.php

#Audio Editors and audio metadata Editors
#embed metadata in Audio files
sudo apt-get install kid3-qt
sudo apt-get install easytag


#Video Editors and Video Metadata Editors



#Photo Editors and Photo Metadata Editors
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
