#!/bin/bash
# sleep 10
mkdir -p /var/www/html
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=db_wordpress --dbuser=buakaw --dbpass=buakaw --dbhost=mariadb --allow-root --force
./wp-cli.phar core install --url=rlevilla.42.fr --title=wptitle --admin_user=buakaw --admin_password=buakaw --admin_email=caca@gmail.com --allow-root

php-fpm7.4 -F