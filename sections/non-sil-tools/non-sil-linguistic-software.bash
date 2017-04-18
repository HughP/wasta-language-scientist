#!/bin/bash
################################################################################
# Script Name: system-tools.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: git, wget,
# Dependencies of installed software: Java.

# ELAN Will need a bit of work each time as no official repo exists (download URI for the latest version, though the developer suggests that this is possible). We will use wget to get several different parts. (Application, Maual, etc.)
# Install ELAN 5.0.0
wget http://www.mpi.nl/tools/elan/ELAN_5-0-0-alpha_linux.bin
sudo chmod +x ./ELAN_5-0-0-alpha_linux.bin
./ELAN_5-0-0-alpha_linux.bin
#Then click through the installer. I installed to default location, but I am not sure where else things should go...

#Install ELAN Manual and tutorials.
wget http://www.mpi.nl/corpus/manuals/manual-elan.pdf

#Install ElanCheck
git clone https://github.com/adamb924/ElanCheck.git
#Intall FreeTranslator
git clone https://github.com/adamb924/FreeTranslator.git

#Let's get a sheetswiper like tool
git clone https://github.com/stefanocoretta/sfm-exporter.git

#Transcriber

#Install some phylogenetic tree software
http://www.math.canterbury.ac.nz/bio/pages/PhyloFiles/software.html


##Install tools for working with Audio files and with Audio in Linguistics ##

#Praat and Praat tools moved to seperate file

#Install Praat 64 bit
wget http://www.fon.hum.uva.nl/praat/praat6023_linux64.tar.gz

#Lets also get a bunch of tools for working with praat
wget http://user.keio.ac.jp/~kawahara/pdf/PraatScriptingDummies.pdf

wget http://www.ims.uni-stuttgart.de/institut/arbeitsgruppen/phonetik/helps/praat-scripting/praat.tutorial.pdf
#Get prosodic contrast scripts from http://www.lel.ed.ac.uk/~bert/praatscripts.html

#get http://savethevowels.org/praat/
#get http://www.acsu.buffalo.edu/~cdicanio/scripts.html
#get https://www.npmjs.com/package/praat-script

git clone https://github.com/FieldDB/Praat-Scripts

#get http://www.mattwinn.com/praat.html

get http://pinguinorodriguez.cl/scripts/
get http://cpran.net/
https://phon.wordpress.ncsu.edu/lab-manual/scripts/praat-scripting/

git clone https://gitlab.com/cpran

https://robfelty.com/academic/praat-scripts

Get this: http://fielddb.github.io/

get this: http://www.fon.hum.uva.nl/praat/manual/Scripting_1__Your_first_scripts.html

get this: http://www.helsinki.fi/~lennes/praat-scripts/

point people to this: https://uk.groups.yahoo.com/neo/groups/praat-users/info

get this: https://sites.google.com/site/praatscripts/

get this: http://www.linguistics.ucla.edu/faciliti/facilities/acoustic/praat.html

install this: https://pypi.python.org/pypi/python-praat-scripts/0.2.1
wget: http://www.mauriciofigueroa.cl/04_scripts/Praat_scripting_manual_0.1.5.pdf

wget: http://www.ucl.ac.uk/~ucjt465/assets/presentation/atria.psp.pdf
wget these: http://www.ece.ubc.ca/~donaldd/scripts.htm

get these: https://staff.jyu.fi/Members/riikkau/praat
wget http://www.ucl.ac.uk/~ucjt465/assets/presentation/atria.psp.pdf

get these: http://zangsir.weebly.com/praat-scripts.html

get these: http://lingtools.uoregon.edu/scriptsetc.php

get these: http://lingtools.uoregon.edu/

get these: http://childes.psy.cmu.edu/tools/praat.html

add to conda https://anaconda.org/auto/python-praat-scripts

add these: http://phonetiklabor.de/Phonetiklabor/Inhalt/PraatScripts/PraatScripts.html

add these: http://gendrot.ilpga.fr/scripts.htm

add these: http://www.praatvocaltoolkit.com/extract-voiced-and-unvoiced.html

add these: http://praatscriptingtutorial.com/filePaths

add these: http://www.cs.columbia.edu/~agus/tobi/tobi-praat/manual.php

get this: http://www.praatvocaltoolkit.com/download-installation.html



wget http://udel.edu/~heinz/classes/2013/4-633/materials/lab2/Running_the_script.pdf

wget https://www.dataone.org/sites/all/documents/DataONE_BP_Primer_020212.pdf

#Get these scripts:
http://linguistics.berkeley.edu/plab/guestwiki/index.php?title=Praat_scripts
http://stel.ub.edu/labfon/en/praat-scripts

git clone https://github.com/stylerw/styler_praat_scripts

http://phonologicalcorpustools.github.io/CorpusTools/
http://sweet.artsrn.ualberta.ca/cdcox/cuped/

http://www.eopas.org/
git clone https://github.com/eopas/eopas.git
https://github.com/nabu-catalog/nabu

############## Tools for dealing with those older Linguistic resources ##########

#ScanTailor
sudo apt-get install scantailor


get and install several of xnview tools from http://www.xnview.com/en/nconvert/

https://vc.wpbakery.com/

#For Reading Experienments
http://tedlab.mit.edu/~dr/Linger/

#For corpus linguistics
Corpus Linguistics for Grammar: A Guide for Research
By Christian Jones, Daniel Waller
wget: http://kb.ucla.edu/system/datas/5/original/content_analysis.pdf


http://pencil.evolus.vn/
http://pencil.evolus.vn/dl/evoluspencil_2.0.5_all.deb

# Look at installing a graph database like:
https://neo4j.com/
# Get RDF Graph tools



#Variety fo tools at various links some of these tools need to be moved to github.

* http://www.linguistics.ucla.edu/faciliti/sales/software.htm
* http://www.phonetics.ucla.edu/
* http://archive.phonetics.ucla.edu/
* http://www.linguistics.ucla.edu/faciliti/facilities/acoustic/praat.html
* http://www.en.phonetik.uni-muenchen.de/research/software/index.html
* http://www.phon.ucl.ac.uk/resource/software.html
* http://emdros.org/contact.html
* https://github.com/emg
* http://www.speech.kth.se/wavesurfer/index2.html
## wavesurfer
WaveSurfer is an Open Source tool for sound visualization and manipulation. It has been designed to suit both novice and advanced users. WaveSurfer has a simple and logical user interface that provides functionality in an intuitive way and which can be adapted to different tasks. It can be used as a stand-alone tool for a wide range of tasks in speech research and education. Typical applications are speech/sound analysis and sound annotation/transcription. WaveSurfer can also serve as a platform for more advanced/specialized applications. This is accomplished either through extending the WaveSurfer application with new custom plug-ins or by embedding WaveSurfer visualization components in Other applications.

TLA-team: WaveSurfer can be used to visualize and analyze sound in several ways, e.g. Waveform, Spectorgram, Pitch, Power or Formant panes. Software usable for beginners and experts. Software can read WAV, AU, AIFF, MP3, CSL, and SD. Files can be saved in WAV, AU, AIFF.
* https://sourceforge.net/projects/wavesurfer/
* www.speech.kth.se/hat/

EMU
* https://tla.mpi.nl/tools2/tooltype/annotation/emu-speech-database-system-2/
* http://emu.sourceforge.net/
* http://ips-lmu.github.io/EMU.html


Wikispeach
* http://webapp.phonetik.uni-muenchen.de/wikispeech/

Transa
* https://tla.mpi.nl/tools2/tooltype/annotation/transana/
* https://www.transana.com/

CLARK
* www.bultreebank.org/clark/

Emdros
* https://tla.mpi.nl/tools2/tooltype/annotation/emdros/#more-792
* http://emdros.org/examples/HAL/1030.html


Keyboards
* https://tla.mpi.nl/tools2/tool_os/os/ipa-console/#more-926
