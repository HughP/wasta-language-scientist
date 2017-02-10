# Wasta Language Scientist
_Some changes and additions to [Wasta Linux](https://github.com/wasta-linux) for the language and linguistic Scientist._

## Introduction
This script attempts to document some changes (mostly additions) to Wasta for the linguistic data scientist.

The reasons we want to use Wasta (and Linux are the following): We feel that there is great value in being on the same operating system with the indigenous language speaking (and using) members of our team. This equality could happen with any operating system. However, with Linux the cost of outfitting an entire team or part of a community with tools to make tools for their language is much lower than with OS X, or Windows. Wasta gives us the power of Ubuntu with the ease of access connect with SIL software systems.

Wasta is at its core the minimum tools which might be needed by the minority language user who is just getting started with computing in their language. This script endeavors to bring the rest of what was forgotten (or intentionally left out). The new focus for this derivative of Wasta is on the modern interdisciplinary, digital humanities sensitive, anthropologically aware linguist, who is looking to enrich the lives and communities of minority language users (and digitally under-resourced) creatives.

Rather than providing a lean machine (as Wasta core does), we are looking at providing a grab and go solution with a health variety of tools pre-baked in.

Wasta has two GUI interfaces. 1. Unity which ships with [Ubuntu](https://www.ubuntu.com/download/desktop) and 2. [Cinnamon](http://cinnamon.linuxmint.com/), (from [Linux Mint](https://www.linuxmint.com/)). Having both GUIs is a Wasta innovation when compared to standard Ubuntu.

1. We might want to change somethings about the look and feel of our Wasta machine (this is more or less to bring over some features from OS X). Many researchers use OS X or macOS in their work. Making the jump to Wasta is easier when there are some familiar behaviors in the way the computer responds.

2. We might want some fonts and text processing tools.

3. We might want to use some apache server (web) based tools for sharing our work globally or to work as a team on a local network. So, we will install some web development tools.

4. We might want some access to iOS devices. These are really popular and we want to be able to connect them (and their sensors) as seamlessly as possible into our work-flows.

5. We might want some SIL tools for doing some things "The SIL Way"... if there is one. (Basically, SIL makes some awesome tools, but these are not all installed by default on Wasta.)

6. We might want some other tools to do linguistics. There are lots of tools for linguistics which are, sometimes not known about, and sometimes known about. We want to put them in the machine for ease of access to the end user.

7. We might want some data wrangling tools for our data. As a data scientist we are really keen to be able to collect good data, to detect patterns, in that data, and then also present that data in (often visual) compelling ways to our colleagues, funders, and the communities we work with.

8. We might want some fun things to do... Because basically, the folks at Ubuntu don't have great tastes for intelligent games.

9. We might want some quality reference resources on literacy, linguistics, language documentation, language development, and language program management.

## Included Software (over standard Wasta)

### Section 1
 (all via apt)
 * _[gloobus preview](https://launchpad.net/gloobus-preview)_ :: [Install review](http://www.webupd8.org/2015/01/quick-file-previewer-gloobus-preview.html) - Spacebar previews a file.
 * _MacBuntu theme elements_ Various elements including:
   * icons
   * window shading
 * _[plank](https://launchpad.net/plank)_ - An OS X like dock.
  * Plank theme files
 * _slingcold_ :: [Install review](http://www.noobslab.com/2015/03/slingscold-launcher-fixed-for-all.html) - a launchpad like application which sits in the dock.
  * [Instructions on getting the icon for slingcold to appear in plank](http://askubuntu.com/questions/810307/how-do-i-put-slingscold-icon-on-plank).
 * _[Albert](https://albertlauncher.github.io/)_ :: [Install Review]() - a spotlight like tool.

### Section 2
 (all via apt)
 * _[kcharselect](https://utils.kde.org/projects/kcharselect/)_ :: A tool from the KDE project which allows the user to find and select specific characters in Unicode.
 * Helvetica
 * Open Fonts
 * SIL Font

### Section 3
 (all via as indicated)
 * Make a directory for websites
 * [WordPress](https://www.wordpress.org/) -via wget.
 * [WP-CLI](https://www.wp-cli.org/) (Commandline interface for WordPress). - via cURL.
https://apps.wordpress.com/d/linux-deb/ https://github.com/Automattic/wp-calypso

 * _[SIL Dictionary plugin](https://github.com/Webonary/sil-dictionary-webonary)_
 * Pods https://github.com/pods-framework/pods http://pods.io/
 * https://wordpress.org/plugins/taxonomy-switcher/
 * https://wordpress.org/plugins/participants-database/
 * https://wordpress.org/plugins/custom-searchable-data-entry-system/
 * https://wordpress.org/plugins/exports-and-reports/ https://downloads.wordpress.org/plugin/exports-and-reports.0.7.2.zip
 * https://downloads.wordpress.org/plugin/filters.0.4.zip https://wordpress.org/plugins/filters/
 * https://wordpress.org/plugins/admin-bar-disabler/ https://downloads.wordpress.org/plugin/admin-bar-disabler.1.3.zip
 * https://wordpress.org/plugins/adminimize/ https://downloads.wordpress.org/plugin/adminimize.1.11.2.zip
 * https://wordpress.org/plugins/bbpress/ https://downloads.wordpress.org/plugin/bbpress.2.5.12.zip
 * https://wordpress.org/plugins/co-authors-plus/ https://downloads.wordpress.org/plugin/co-authors-plus.3.2.1.zip
 * https://downloads.wordpress.org/plugin/dynamic-widgets.1.5.12.zip https://wordpress.org/plugins/dynamic-widgets/
 * https://wordpress.org/plugins/hierarchy/ https://downloads.wordpress.org/plugin/hierarchy.1.0.4.zip
 * https://downloads.wordpress.org/plugin/oembed-gist.4.7.1.zip
 https://wordpress.org/plugins/oembed-gist/
 * https://wordpress.org/plugins/wordpress-mu-domain-mapping/
 https://downloads.wordpress.org/plugin/wordpress-mu-domain-mapping.0.5.5.1.zip
 * https://wordpress.org/plugins/all-in-one-favicon/ https://downloads.wordpress.org/plugin/all-in-one-favicon.4.5.zip
 * https://wordpress.org/plugins/geodirectory/ https://downloads.wordpress.org/plugin/geodirectory.1.6.15.zip
 * https://wordpress.org/plugins/multisite-clone-duplicator/ https://downloads.wordpress.org/plugin/multisite-clone-duplicator.1.4.1.zip
 * https://wordpress.org/plugins/multisite-toolbar-additions/ https://downloads.wordpress.org/plugin/multisite-toolbar-additions.1.7.0.zip
 * https://wordpress.org/plugins/admin-css-mu/ https://downloads.wordpress.org/plugin/admin-css-mu.zip
 * https://wordpress.org/plugins/multisite-plugin-manager/ https://downloads.wordpress.org/plugin/multisite-plugin-manager.3.1.5.zip
 https://wordpress.org/plugins/multisite-user-management/ https://downloads.wordpress.org/plugin/multisite-user-management.1.1.zip
 * https://wordpress.org/plugins/multisite-post-duplicator/ https://downloads.wordpress.org/plugin/multisite-post-duplicator.zip
 * https://wordpress.org/plugins/menus/ https://downloads.wordpress.org/plugin/menus.zip
 * https://wordpress.org/plugins/proper-network-activation/ https://downloads.wordpress.org/plugin/proper-network-activation.zip
 * https://wordpress.org/plugins/w3-total-cache/ https://downloads.wordpress.org/plugin/w3-total-cache.0.9.5.2.zip
 * https://wordpress.org/plugins/post-forking/ https://downloads.wordpress.org/plugin/post-forking.0.2.1.zip
 * https://wordpress.org/plugins/wp2jekyll/ https://downloads.wordpress.org/plugin/wp2jekyll.0.4.zip
 * https://wordpress.org/plugins/wp-github-tools/ https://downloads.wordpress.org/plugin/wp-github-tools.1.4.4.zip
 * https://wordpress.org/plugins/github-api/ https://downloads.wordpress.org/plugin/github-api.zip
 * https://wordpress.org/plugins/jetpack/ https://downloads.wordpress.org/plugin/jetpack.4.5.zip
 * https://wordpress.org/plugins/wp-over-network/ https://downloads.wordpress.org/plugin/wp-over-network.0.4.4.zip
 * https://wordpress.org/plugins/networks-for-wordpress/ https://downloads.wordpress.org/plugin/networks-for-wordpress.1.1.6.zip
 * https://wordpress.org/plugins/sitewide-google-analytics/ https://downloads.wordpress.org/plugin/sitewide-google-analytics.1.2.2.zip
 * https://wordpress.org/plugins/extended-super-admins/ https://downloads.wordpress.org/plugin/extended-super-admins.0.7b.zip
 * https://wordpress.org/plugins/mailchimp-form-creator/ https://downloads.wordpress.org/plugin/mailchimp-form-creator.1.0.zip
 * https://wordpress.org/plugins/wp-multisite-sso/ https://downloads.wordpress.org/plugin/wp-multisite-sso.1.0.3.zip
 * https://wordpress.org/plugins/meta-changer/ https://downloads.wordpress.org/plugin/meta-changer.zip
 * https://wordpress.org/plugins/multisite-user-role-manager/ https://downloads.wordpress.org/plugin/multisite-user-role-manager.1.0.6.zip
 * https://wordpress.org/plugins/multisite-xml-rpc/ https://downloads.wordpress.org/plugin/multisite-xml-rpc.zip
 * https://wordpress.org/plugins/bp-multi-network/ https://downloads.wordpress.org/plugin/bp-multi-network.0.1.1.zip
 * https://wordpress.org/plugins/github-readme/ https://downloads.wordpress.org/plugin/github-readme.zip
 * https://wordpress.org/plugins/jekyll-exporter/ https://downloads.wordpress.org/plugin/jekyll-exporter.2.2.0.zip
 * https://wordpress.org/plugins/github-embed/ https://downloads.wordpress.org/plugin/github-embed.1.4.zip
 * https://wordpress.org/plugins/wp-github-sync/ https://downloads.wordpress.org/plugin/wp-github-sync.1.7.5.zip
 * https://wordpress.org/plugins/github-release-downloads/ https://downloads.wordpress.org/plugin/github-release-downloads.2.2.0.zip
 * https://wordpress.org/plugins/buddypress-multilingual/ https://downloads.wordpress.org/plugin/buddypress-multilingual.1.5.5.1.zip
 * https://wordpress.org/plugins/bp-profile-search/ https://downloads.wordpress.org/plugin/bp-profile-search.4.7.zip
 * https://wordpress.org/plugins/buddypress-group-email-subscription/ https://downloads.wordpress.org/plugin/buddypress-group-email-subscription.3.7.0.zip
 * https://wordpress.org/plugins/buddypress-xprofile-custom-fields-type/ https://downloads.wordpress.org/plugin/buddypress-xprofile-custom-fields-type.2.6.2.zip
 * https://wordpress.org/plugins/buddypress-cover-photo/ https://downloads.wordpress.org/plugin/buddypress-cover-photo.zip
 * https://wordpress.org/plugins/buddypress-followers/ https://downloads.wordpress.org/plugin/buddypress-followers.1.2.2.zip
 * https://wordpress.org/plugins/buddypress-like/ https://downloads.wordpress.org/plugin/buddypress-like.zip
 * https://wordpress.org/plugins/anspress-question-answer/ https://downloads.wordpress.org/plugin/anspress-question-answer.zip
 * https://wordpress.org/plugins/buddypress-groups-extras/ https://downloads.wordpress.org/plugin/buddypress-groups-extras.3.6.9.1.zip
 * https://wordpress.org/plugins/network-plugin-auditor/ https://downloads.wordpress.org/plugin/network-plugin-auditor.1.10.1.zip
 * https://wordpress.org/plugins/multisite-switcher/ https://downloads.wordpress.org/plugin/multisite-switcher.1.0.zip
 * https://wordpress.org/plugins/multisite-taxonomy-widget/ https://downloads.wordpress.org/plugin/multisite-taxonomy-widget.zip
 * https://wordpress.org/plugins/multisite-taxonomy-widget/ https://downloads.wordpress.org/plugin/multisite-taxonomy-widget.zip
 * https://wordpress.org/plugins/mu-widgets/ https://downloads.wordpress.org/plugin/mu-widgets.1.2.48f.zip
 * https://wordpress.org/plugins/restrict-multisite-plugins/ https://downloads.wordpress.org/plugin/restrict-multisite-plugins.1.1.3.zip
 * https://wordpress.org/plugins/multisite-themes/ https://downloads.wordpress.org/plugin/multisite-themes.1.3.zip
 * https://wordpress.org/plugins/drupal-to-wp-xml-rpc/ https://downloads.wordpress.org/plugin/drupal-to-wp-xml-rpc.1.0.zip
 * https://wordpress.org/plugins/wpmu-plugin-manager/ https://downloads.wordpress.org/plugin/wpmu-plugin-manager.1.0.1.zip
 * https://wordpress.org/plugins/subdomains-listing/ https://downloads.wordpress.org/plugin/subdomains-listing.zip
 * https://wordpress.org/plugins/restrict-multisite-widgets/ https://downloads.wordpress.org/plugin/restrict-multisite-widgets.1.1.4.zip
 * https://wordpress.org/plugins/ssl-subdomain-for-multisite/ https://downloads.wordpress.org/plugin/ssl-subdomain-for-multisite.1.1.zip
 * https://wordpress.org/plugins/ssl-subdomain-for-multisite/ https://downloads.wordpress.org/plugin/ssl-subdomain-for-multisite.1.1.zip
 * https://wordpress.org/plugins/wp-rest-api-multisite/ https://downloads.wordpress.org/plugin/wp-rest-api-multisite.0.1.zip
 * https://wordpress.org/plugins/redirect-network-login/ https://downloads.wordpress.org/plugin/redirect-network-login.1.0.zip
 * https://wordpress.org/plugins/wp-multi-network/ https://downloads.wordpress.org/plugin/wp-multi-network.zip
 * https://wordpress.org/plugins/wordpress-seo/ https://downloads.wordpress.org/plugin/wordpress-seo.4.2.1.zip
 * https://wordpress.org/plugins/json-rest-api/ https://downloads.wordpress.org/plugin/json-rest-api.1.2.5.zip
 * https://wordpress.org/plugins/csv-importer-for-pods/ https://downloads.wordpress.org/plugin/csv-importer-for-pods.0.8.zip
 * https://wordpress.org/plugins/dynamic-widgets/ https://downloads.wordpress.org/plugin/dynamic-widgets.1.5.12.zip
 * https://github.com/pods-framework/pods-export-code https://github.com/pods-framework/pods-export-code.git
 * https://wordpress.org/plugins/tabify-edit-screen/ https://downloads.wordpress.org/plugin/tabify-edit-screen.0.9.7.zip
 * https://wordpress.org/plugins/wordpress-seo/ https://downloads.wordpress.org/plugin/wordpress-seo.4.2.1.zip
 * https://wordpress.org/plugins/pods-seo/ https://downloads.wordpress.org/plugin/pods-seo.2.0.zip
 *https://github.com/GlotPress/GlotPress-WP https://github.com/GlotPress/GlotPress-WP.git https://wordpress.org/plugins/glotpress/ https://downloads.wordpress.org/plugin/glotpress.2.2.2.zip
 https://github.com/Automattic/Edit-Flow git clone https://github.com/Automattic/Edit-Flow.git
 https://github.com/Automattic/wp-memcached git clone https://github.com/Automattic/wp-memcached.git https://wordpress.org/plugins/memcached/
https://downloads.wordpress.org/plugin/memcached.3.0.1.zip
* https://wordpress.org/plugins/bp-security-check/ https://downloads.wordpress.org/plugin/bp-security-check.zip
* https://wordpress.org/plugins/edit-tag-slug/ https://downloads.wordpress.org/plugin/edit-tag-slug.0.4.zip
* https://wordpress.org/plugins/document-feedback/ https://downloads.wordpress.org/plugin/document-feedback.1.3.zip
* https://wordpress.org/plugins/codepress-admin-columns/ https://downloads.wordpress.org/plugin/codepress-admin-columns.2.5.6.4.zip
* https://wordpress.org/plugins/tabify-edit-screen/ https://downloads.wordpress.org/plugin/tabify-edit-screen.0.9.7.zip
* https://wpml.org/
* http://www.gravityforms.com/
* https://github.com/pods-framework/pods-gravity-forms
* http://v2.wp-api.org/
http://editflow.org/
Check this too: https://profiles.wordpress.org/sillinguist/#content-favorites
https://www.drupal.org/u/hughp

Reading: https://premium.wpmudev.org/blog/buddypress-guide/

https://www.npmjs.com/package/wordpress-rest-api

https://wordpress.org/plugins/edit-flow/ https://downloads.wordpress.org/plugin/edit-flow.0.8.2.zip
https://wordpress.org/plugins/taxonomy-switcher/




https://www.wpmayor.com/wordpress-themes-plugins-documentation/
https://wptavern.com/wedocs-a-free-wordpress-documentation-theme-based-on-bootstrap

 git clone git https://github.com/github/platform-samples.git






 * _[Linuxbrew](http://linuxbrew.sh/)_ - This is a package manager.
  * _Why linux brew?_
       *  Can install software to a home directory and so does not require sudo.
       *  Install software not packaged by the native distribution.
       *  Install up-to-date versions of software when the native distribution is old.
       *  Use the same package manager to manage both your Mac and Linux machines.
 When should we use _apt-get_ when should we use _linuxbrew_? This is Linux, so if a tool exists via apt-get then we should try and get it from there first. However, sometimes it is better to not mess with the OS's version of something and leave that in place and use a different version of things, also sometimes homebrew repos get updated faster than apt-get repos do.
 * Ruby
 * build-essential
 * curl
 * git
 * python-setuptools
 * linuxbrew wrapper
 A couple of libraries of tools. Some of these are going to have already been installed, and won't install again. But this is a "just to make sure".
  * make
  * cmake
  * scons
  * autoconf
  * automake
  * autoconf-archive
  * gettext
  * libtool
  * flex
  * bison
  * libbz2-dev
  * libcurl4-openssl-dev
  * libexpat-dev
  * libncurses-dev

Some taps (like a ppa in Linux) for linuxbrew (via brew):
 * josegonzalez/homebrew-php
 * homebrew/science
 * homebrew/services
 * homebrew/apache
 * homebrew/games

Via brew
* _[openSSL](https://www.openssl.org/)_ (current release) - Wasta stays with Ubuntu release version.
* _[MySQL](https://dev.mysql.com/downloads/)_
* _[phpMyAdmin3](https://www.phpmyadmin.net/)_
* _[nodejs](https://nodejs.org/en/)_

Via apt
 * nodejs-legacy
 * nodejs

Via wget download
 * _[atom](https://atom.io/)_ - a markdown editor and code writer with syntax highlighting. Lots of plugins are available. Those listed here are installed via atom. If you know a computer language search for a syntax or auto complete plugin to fit your style.
  * wordpress-dictionary
  * _[nord-atom-ui](https://atom.io/themes/nord-atom-ui)_
  * nord-atom-syntax
  * file-icons
  * markdown-pdf
  * hyperclick
  * git-pear
  * autocomplete-python
  * _[wordpress-api](https://atom.io/packages/wordpress-api)_
  * wordpress-suite
  * drupal
  * atom-drupal-api
  * language-regexp
  * regex-filter-and-generator

### Section 4
(via apt) - we are updating the [libimobiledevice](http://www.libimobiledevice.org/) libraries to make sure we have the latest even because this functionality gets a lot of tweaking and updating.
 * libimobiledevice-utils
 * ideviceinstaller
 * python-imobiledevice
 * libimobiledevice-utils
 * libimobiledevice4
 * libplist2
 * python-plist
 * ifuse

Make a directory for those projects we get from github. (~/github-tools)
We are getting the following two libs from github because they are even newer than what is in the apt repos. Then we use `make` to install them.
 * _[libplist](https://github.com/libimobiledevice/libplist)_
 * _[libusbmuxd](https://github.com/libimobiledevice/libusbmuxd)_

### Section 5

 * _[XLingPaper](http://xlingpaper.org/)_
  * Old Java
 * _[Fieldworks]()_ - via apt.
 * _[WeSay]()_ - via apt.
 * _[TECkit](http://scripts.sil.org/TECkitIntro)_ :: [on github](https://github.com/silnrsi/teckit)
 * _[characterCount](http://scripts.sil.org/UnicodeCharacterCount)_ -via wget.
 * Fonts


### Section 6
These sections will follow the musings of the following five lists:
* http://lingtransoft.info/apps/results
* http://hugh.thejourneyler.org/2013/software-needs-for-a-language-documentation-project/
* http://hugh.thejourneyler.org/2013/lexical-data-management-helps-with-sil-software/
* https://github.com/RichardLitt/endangered-languages
* http://emeld.org/school/toolroom/software/software-display.cfm

### Section 7

### Section 8

* _[Pioneers](http://pio.sourceforge.net/)_ - A Settlers of Catan like game. - via apt.
* _[JCloisterZone](http://jcloisterzone.com/en/)_ - A Carcassonne like game. - via git.
* _yetris_ - A Tetris like game. - via brew
* _[Ninvaders](http://ninvaders.sourceforge.net/)_ - A Space Invaders like game. - via brew

### Section 9
