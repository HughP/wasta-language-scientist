#!/bin/bash
################################################################################
# Script Name: potential-installs.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: None.

# * https://github.com/fauno/jekyll-pandoc-multiple-formats #https://endefensadelsl.org/
# * https://github.com/mfenner/jekyll-pandoc
# * http://wasifbaig.com/brackets-zotero/ #Brackets Zotero Integration Extension
# * https://github.com/davepwsmith/zotpick-applescript/
# * http://davepwsmith.github.io/academic-scrivener-howto/
# * https://github.com/KurtPfeifle/pandoc-csl-testing
# * https://github.com/jgm/pandoc/wiki/Pandoc-wrappers-and-interfaces
# * https://www.alfredforum.com/topic/4686-pandoctor-an-alfred-gui-for-pandoc/
# * https://github.com/bk/pdc #pdc - pandoc wrapper
# * https://github.com/ocharles/pandoc-live
# * https://github.com/msprev/unite-bibtex
# * https://github.com/vim-pandoc
# * http://rmarkdown.rstudio.com/
# * https://github.com/jgm/pandoc/wiki/Pandoc-Extras
# * http://windowssecrets.com/forums/showthread.php/176508-PowerShell-GUI-front-end-for-PanDoc
# * https://github.com/wcaleb/pandocket

# * https://wiki.gnome.org/Apps/Dia/Download
# * http://dia-installer.de/download/index.html
# * http://www.graphviz.org/Download.php
# * https://packages.debian.org/search?suite=all&searchon=names&keywords=graphviz
# * or brew install graphviz


# https://github.com/tlozoot/experigen for phonology experiments
#https://github.com/cpill0789/experigen


#QGIS plugins
#* https://github.com/sagost/VideoUavTracker

#SPARQL and RDR
http://www.ldodds.com/projects/twinkle/
http://franz.com/agraph/gruff/

#Notes and Zotero helps
http://www.cogsci.nl/qnotero#gnote-integration-linux-only

#Photo Transfer over wifi
#Photo Transfer via chrome : https://chrome.google.com/webstore/detail/photo-transfer-app/fjfbkbdcdmafppmmeajldfnkjllemkej via http://phototransferapp.com/

#Lets get some map data for your region of the wordpress-world
* http://download.geofabrik.de/africa.html
* http://www.geofabrik.de/data/geofabrik-osm-gis-standard-0.7.pdf

#Think about things on this list: https://experimentalfieldlinguistics.wordpress.com/links/software/


Try this list:
https://www.linguistik.hu-berlin.de/en/institut-en/professuren-en/korpuslinguistik/links-en/software
http://www.essex.ac.uk/linguistics/external/clmt/w3c/corpus_ling/content/software.html

https://pypi.python.org/pypi/pyacoustid
http://virtuallyhyper.com/2013/01/organizing-your-music-library-using-acoustic-fingerprinting/
http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0144610
http://hedges.belmont.edu/~shawley/SHAART/
https://anaconda.org/pypi/acoustics

Lots of stuff: http://homepage.ntu.edu.tw/~karchung/linguistics%20links.htm#gloss


http://asciidoctor.org/docs/editing-asciidoc-with-live-preview/

https://gitlab.com/inkscape/inkscape-web.git
https://gitlab.com/gitlab-org/gitlab-pages
https://docs.gitlab.com/omnibus/README.html

adam baker's materials
https://github.com/adamb924/XSL-LD
https://github.com/adamb924/AcousticWorkspace
https://github.com/adamb924/FreeTranslator
https://github.com/adamb924/FreeTranslator.git
https://github.com/adamb924/AcousticWorkspace.git
http://llacan.vjf.cnrs.fr/res_ELAN-CorpA_en.php

i18n
i10n
http://wplang.org/translation-management-collaboration-platforms/
PoEdit
glotpress https://glotpress.blog/
survey tool https://www.limesurvey.org/about-limesurvey/download
transifex client https://docs.transifex.com/client/introduction

in terminal
git clone https://github.com/learningtapestry/lrmi-tagger.git

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
sudo apt install ruby-bundler
gem install passenger


If you get following error, when you try to start nginx…

[emerg]: bind() to 0.0.0.0:80 failed (98: Address already in use)

Then it means nginx or some other process is already using port 80.

You can kill it using:

sudo fuser -k 80/tcp

And then try restarting nginx again:

service nginx start


Plugins to think about installing:
* https://github.com/tpope/vim-markdown
* https://remarkableapp.github.io/linux/download.html
* https://github.com/suan/vim-instant-markdown
* http://pandoc.org/
* http://www.math.canterbury.ac.nz/bio/pages/PhyloFiles/software.html
* ab.inf.uni-tuebingen.de/software/splitstree4/

Move MPI content to text generated through xlingpaper
Then move the content to a Github Repo.
* https://www.eva.mpg.de/lingua/tools-at-lingboard/questionnaires.php
* https://www.degruyter.com/view/product/210877
* https://www.eva.mpg.de/lingua/tools-at-lingboard/questionnaire/imperative-constructions_description.php
* https://www.eva.mpg.de/lingua/tools-at-lingboard/questionnaire/unesco_survey_description.php
* https://www.eva.mpg.de/lingua/tools-at-lingboard/questionnaire/figurative-language_description.php
* https://www.eva.mpg.de/lingua/tools-at-lingboard/questionnaire/phonological-grammatical_description.php
* https://www.eva.mpg.de/lingua/tools-at-lingboard/questionnaire/stress-typology_description.php
* https://www.eva.mpg.de/lingua/tools-at-lingboard/questionnaire/eurotyp_description.php


FLEx eco system:
https://github.com/sillsdev/flashgrab

Transcriber:
https://github.com/eroux/transcriber-ag
https://sourceforge.net/projects/transag/?source=typ_redirect

More tools:
http://linguisticdataservices.com/transcription_tools.html

So that websites can rapidly import data:
http://depts.washington.edu/sociolab/links.htm

Dictionary system:
https://sourceforge.net/projects/dict-system/?source=directory


Add a way to sync book marks from chrome to Firefox and vis versa:
* http://www.makeuseof.com/tag/10-ways-integrate-firefox-chrome/
* https://addons.mozilla.org/en-us/firefox/addon/fvd-synchronizer/
* Xmarks: https://www.google.com/search?client=ubuntu&channel=fs&q=sync+bookmarks+firefox+chrome&ie=utf-8&oe=utf-8
* Eversync

Read, download, and work through this tutorial on fonts: https://pelson.github.io/tag/xkcd/

Consider (in this script or a second scritp)
Software for religeous uses:
* http://vrsoft.org.ru/unbound/
* http://www.openbible.info/geo/
* http://www.crosswire.org/swordweb/
* http://www.crosswire.org/applications/
* https://unbound.biola.edu/index.cfm?method=unbound.links
* http://paralleltext.info/data/
* http://christos-c.com/bible/
* http://www.umiacs.umd.edu/~resnik/parallel/bible.html
* http://www.puk.ac.za/opencms/export/PUK/html/fakulteite/lettere/ctext/Bybelkorpus_e.html
