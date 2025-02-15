#!/usr/bin/env bash

echo "Greetings! Let's install Wordpress!"

echo "Installing Wordpress..."

sleep 1

cd html

# 2/15/2025 - may need to download --version-6.7.1. Version 6.7.2 results in an error for some reason
wp core download --allow-root

wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=$DB_HOST --allow-root

wp core install --url=$WP_URL --title="$WP_TITLE" --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASS --admin_email=$WP_ADMIN_EMAIL --allow-root

wp plugin install $WP_PLUGINS --allow-root

echo "Have fun!"

