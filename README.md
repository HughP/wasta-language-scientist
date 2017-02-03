# Wasta Language Scientist
_Some changes and additions to [Wasta Linux](https://github.com/wasta-linux) for the language and linguistic Scientist._

##Introduction
This script attempts to document some changes (mostily additions) to Wasta for the lingusitic data scientist.

The reasons we want to use wasta (and Linux are the following): We feel that there is great value in being on the same operating system with the indegenous language speaking (and using) memebers of our team. This equality could happen with any operating system. However, with linux the cost of outfitting an entire team or part of a community with tools to make tools for their language is much lower than with OS X, or Windows. Wasta gives us the power of Ubuntu with the ease of access connect with SIL software systems.

Wasta is at its core the minimum tools which might be needed by the minority language user who is just getting started with computing in their language. This script endevors to bring the rest of what was forgotten (or intentionally left out). The new focus for this derivative of Wasta is on the modern interdisciplinary, digital humanities sensitive, anthroplogically aware linguist, who is loooking to enrich the lives and communities of minority language users (and digitaly under-resourced) creatives.

Rather than providing a lean machine (as Wasta core does), we are looking at providing a grab and go solution.

Wasta has two GUI interfaces. 1. Unity which ships with [Ubuntu](https://www.ubuntu.com/download/desktop) and 2. [Cinnamon](http://cinnamon.linuxmint.com/), (from [Linux Mint](https://www.linuxmint.com/)). Having both GUIs is a Wasta innovation when compared to standard Ubuntu.

1. We might want to change somethings about the look and feel of our Wasta machine (this is more or less to bring over some features from OS X). Many reserchers use OS X or macOS in their work. Making the jump to Wasta is easier when there are some familure behaviors in the way the computer responds.

2. We might want some fonts and text processing tools.

3. We might want to use some apache server (web) based tools for sharing our work globally or to work as a team on a local network. So, we will install some web devleopment tools.

4. We might want some access to iOS devices. These are really popular and we want to be able to connect them (and their sensors) as seemleslly as possible into our workflows.

5. We might want some SIL tools for doing some things "The SIL Way"... if there is one. (Bascially, SIL makes some awesome tools, but these are not all installed by default on Wasta.)

6. We might want some other tools to do linguistics. There are lots of tools for linguistics which are, sometimes not known about, and sometimes known about. We want to put them in the machine for ease of access to the end user.

7. We might want some data wrangling tools for our data. As a data scientist we are really keen to be able to collect good data, to detect patterns, in that data, and then also present that data in (often visual) compelling ways to our collegues, funders, and the communities we work with.

8. We might want some fun things to do... Because basically, the folks at Ubuntu don't have great tastes for intellegent games.

9. We might want some quality reference resources on literacy, lingusitics, langage documentation, language development, and language program managment.

##Included Software (over standard Wasta)

###Section 1

* _[gloobus preview](https://launchpad.net/gloobus-preview)_ :: [Install review](http://www.webupd8.org/2015/01/quick-file-previewer-gloobus-preview.html) - Spacebar previews a file.
* _MacBuntu theme elements_ Various elmenets including:
 * icons
 * window shading
* _[planck](https://launchpad.net/plank)_ - An OS X like dock. 
 * Plank theme files
* _slingcold_ :: [Install review](http://www.noobslab.com/2015/03/slingscold-launcher-fixed-for-all.html) - a launchpad like application which sits in the dock.
 * [Instructions on getting the icon for slingcold to appear in plank](http://askubuntu.com/questions/810307/how-do-i-put-slingscold-icon-on-plank).
* _[Albert](https://albertlauncher.github.io/)_ :: [Install Review]() - a spotlight like tool.
 
###Section 2
 
 * _[kcharselect](https://utils.kde.org/projects/kcharselect/)_ :: A tool from the KDE project which allows the user to find and select specific characters in Unicode.
 
###Section 3

* Make a directory for websites
* [WordPress](https://www.wordpress.org/)
* _[MySQL](https://dev.mysql.com/downloads/)_
* phpMyAdmin3
* _[Linuxbrew](http://linuxbrew.sh/)_ - This is a package manager.
 * _Why linux brew?_
      *  Can install software to a home directory and so does not require sudo.
      *  Install software not packaged by the native distribution.
      *  Install up-to-date versions of software when the native distribution is old.
      *  Use the same package manager to manage both your Mac and Linux machines.
 * When _apt-get_ when _linuxbrew_? This is linux, so if a tool exists via apt-get then we should try and get it from there first. However, sometimes it is better to not mess with the OS's version of something and leave that in place and use a different version of things, also sometimes homebrew repos get updated faster than apt-get repos do.
* Ruby
* build-essential 
* curl
* git 
* python-setuptools


###Section 4


###Section 5

###Section 6
These sections will follow the musings of the folowing five lists: 
* http://lingtransoft.info/apps/results
* http://hugh.thejourneyler.org/2013/software-needs-for-a-language-documentation-project/
* http://hugh.thejourneyler.org/2013/lexical-data-management-helps-with-sil-software/
* https://github.com/RichardLitt/endangered-languages
* http://emeld.org/school/toolroom/software/software-display.cfm

###Section 7

###Section 8

* -[Pioneers](http://pio.sourceforge.net/)_ - A Settlers of Catan like game.
* _[JCloisterZone](http://jcloisterzone.com/en/)_ A Carcassonne like game.
* _yetris_ - A Tetris like game
* _Ninvaders_ - A Space Invaders like game.

###Section 9
