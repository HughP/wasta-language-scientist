#!/bin/bash
################################################################################
# Script Name: fonts-and-characters.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL

### Let's install the KDE Character selector to find the right unicode character. The KDE interaction around character selection is not as clean or clear as on OS X, but is much better than the GNOME interface which ships with unity. ###

#Character Selector UI
sudo apt-get install kcharselect

#Digital Design Tools for Building Fonts
https://github.com/googlefonts/fontbakery
https://github.com/googlei18n/fontview
https://github.com/googlei18n/language-resources
https://github.com/googlei18n/transliteration
https://bazel.build/
https://github.com/bazelbuild/bazel
https://github.com/googlei18n/pybyedie
https://github.com/googlei18n/pyarabicshaping
https://github.com/fonttools/fonttools
https://github.com/googlei18n/fontdiff
sudo add-apt-repository ppa:fontforge/fontforge;
sudo apt-get update;
sudo apt-get install fontforge;


#Print Media Resources about Font Design
Font forge
http://fontforge.github.io/en-US/downloads/gnulinux-dl
https://github.com/fontforge/fontforge/blob/master/CONTRIBUTING.md
https://github.com/fontforge/fontforge/blob/master/INSTALL-git.md
http://designwithfontforge.com/en-US/index.html
http://designwithfontforge.com/ebook/design-with-fontforge_en-US.pdf

git clone https://github.com/skosch/Crimson.git
git clone https://github.com/fonttools/fonttools.git


#Some useful actual Fonts
git clone https://github.com/ipython/xkcd-font.git
git clone https://github.com/christiannaths/Redacted-Font.git
https://github.com/googlei18n/noto-fonts


#Lets get some styles for sytling keyboard commands
#We can use these in several places but we can certainly use them with gitbook.
https://github.com/auth0/kbd
https://auth0.github.io/kbd/

#gitbook

#Potential workflow for flex documentation .chm --> .html --> gitbook
#Use gitbook-convert
https://help.gitbook.com/content/how-can-i-include-css.html
https://www.gitbook.com/
https://www.gitbook.com/editor/linux/download
https://www.gitbook.com/editor/linux-64-bit/download
http://downloads.editor.gitbook.com/download/version/7.0.8/linux_64?filetype=zip

#Some useful gitbook plugins
npm i gitbook-plugin-block-align
npm install gitbook-plugin-flowchart
npm i gitbook-plugin-image-captions
npm install gitbook-convert -g
npm install -g gitbook-cli
