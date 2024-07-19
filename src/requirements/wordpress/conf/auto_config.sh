#!/bin/bash

sleep 10

wp config create	--allow-root \
		--dbname=$SQL_DATABASE \
		--dbuser=$SQL_USER \
		--dbpass=$SQL_PASSWORD \
		--dbhost=mariadb:3306 --path='/var/www/wordpress'
mkdir -p /var/www/html/example.com/public_html
chown -R www-data:www-data /var/www/html/example.com/public_html
chown www-data:www-data /var/www/html/example.com/public_html
cd /var/www/html/example.com/public_html
wp core download
wp core config --dbname='wordpress' --dbuser='wpuser' --dbpass='password' --dbhost='localhost'
wp core install --url='http://example.com' --title='Blog Title' --admin_user='adminuser' --admin_password='password' --admin_email='email@domain.com'
