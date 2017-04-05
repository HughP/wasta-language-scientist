#!/bin/bash
################################################################################
# Script Name: wordpress-world.bash
# Author: Hugh Paterson III <email here>
# Version: 0.01
# License: GPL
# Dependencies: None.
# Remaing work: decide where to download tools to. Decide where to create wordpress folder. script the download of plugins.



#Wordpress and it's world of tools.

#Let's control wordpress and the installation via the commandline. We use the officially sanctioned tool from: http://wp-cli.org/
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

#Let's actually get wordpress.

mkdir ~/Sites/WordPress
wget https://www.wordpress.org/latest.zip ~/Sites/WordPress
unzip ~/Sites/WordPress/latest.zip

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

#wp plugin install pods

#Now lets get the best themes and plugins for a variety of purposes

wget https://downloads.wordpress.org/plugin/pods.2.6.8.zip
wget https://downloads.wordpress.org/plugin/filters.0.4.zip

#Updating all of our plugins to the latest version is just as simple as this command.

##wp plugin update --all

#If the plugin is not in the wordpress repo then WP-CLI can not automatically get it. So we will need to use git.
###Where do we want to put these? in the github-tools folder, in a WP-resources folder, or in the WP folder?
#git clone https://github.com/pods-framework/pods.git
#git clone https://github.com/Webonary/sil-dictionary-webonary.git
#git clone https://github.com/pressbooks/pressbooks.git


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

wordpress plugin stream


https://www.wpmayor.com/wordpress-themes-plugins-documentation/
https://wptavern.com/wedocs-a-free-wordpress-documentation-theme-based-on-bootstrap

 git clone git https://github.com/github/platform-samples.git

consult: https://perezbox.com/2012/06/installing-wordpress-via-terminal-and-securing-the-server/
