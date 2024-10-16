#!/bin/bash
cd /var/www/html
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=db_wordpress --dbuser=${WP_USER} --dbpass=${WP_USER_PASS} --dbhost=mariadb --allow-root --force
./wp-cli.phar core install --url=${WP_HOME_URL}--title=${WP_BLOG_TITLE} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASS} --admin_email=${WP_ADMIN_EMAIL} --allow-root

php-fpm7.4 -F