#!/bin/bash
################################################################################
# Script Name: web-tools.bash
# Authors: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: brew.
# OS: Designed to work on wasta/Ubuntu read inline comments and README.md file for the git repo.
# Target goal: Installing tools for using web / http technologies.
# Remaing work: dependency check - brew.

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

Tutorials:
https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu
