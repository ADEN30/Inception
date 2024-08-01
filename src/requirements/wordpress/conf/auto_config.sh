#!/bin/bash

sleep 10

#touch var/www/worpdress/wp-config.php
#wp config path --allow-root
#if [ ! -e "/var/www/wordpress/wp-config.php" ]; then
#wp config delete wp-config-sample.php --path='/var/www/wordpress' --allow-root
#wp config create --allow-root \
#    --dbname=database \
#    --dbuser=agallet \
#    --dbpass=password \
#    --dbhost=mariadb:3306 \
	#--path=var/www/wordpress/ \
#    --config-file=var/www/wordpress/wp-config.php


#else
	#wp core config --dbname="$SQL_DATABASE" --dbuser="$SQL_USER" --dbpass="$SQL_PASSWORD" --dbhost="mariadb:3306"
	#echo "abricot"
#fi

cd var/www/wordpress
wp config create --dbname=database --dbuser=agallet --dbpass=password --dbhost=mariadb:3306 --allow-root --locale=fr_FR

wp config path --allow-root

#wp plugin update --all --allow-root

#wp core install --url=agallet.42.fr --title=inception --admin_user=$SQL_USER --admin_password=$SQL_PASSWORD --admin_email='adrien.gallet07@gmail.com' --allow-root

if [ ! -d /run/php ]; then
    echo "/run/php does not exist. Creating it now..."
    mkdir -p /run/php
    chown -R www-data:www-data /run/php
    chmod -R 755 /run/php
    echo "/run/php has been created and permissions set."
else
    echo "/run/php already exists."
fi

exec /usr/sbin/php-fpm7.3 -F