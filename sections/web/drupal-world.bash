#!/bin/bash
################################################################################
# Script Name: drupal-world.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies:

# Download latest stable release using the code below or browse to github.com/drush-ops/drush/releases.
php -r "readfile('https://s3.amazonaws.com/files.drush.org/drush.phar');" > drush
# Or use our upcoming release: php -r "readfile('https://s3.amazonaws.com/files.drush.org/drush-unstable.phar');" > drush

# Test your install.
php drush core-status

# Make `drush` executable as a command from anywhere. Destination can be anywhere on $PATH.
chmod +x drush
sudo mv drush /usr/local/bin

# Optional. Enrich the bash startup file with completion and aliases.
drush init

#Drual has serval distros meaning that they are pre-setup with a specific general use case in mind. Se we will get a few of those which meet our general imagined needs. Then we we get some fantastic drupal modules for dealing with data and acadmeic kinds of stuff.
https://www.drupal.org/project/panopoly
https://www.drupal.org/project/openatrium
https://www.drupal.org/project/project_module/?solrsort=iss_project_release_usage%20desc&f[4]=sm_field_project_type%3Afull

consider this: https://drupalize.me/videos/installing-drush-composer?p=1156
http://docs.drush.org/en/master/install/
https://pantheon.io/drupal-8/introduction-drush-and-drupal-console
