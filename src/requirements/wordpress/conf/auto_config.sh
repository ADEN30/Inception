#!/bin/bash

sleep 10

cd var/www/wordpress
if [ ! -e "/var/www/wordpress/wp-config.php" ]; then
	wp config create --dbname=${SQL_DATABASE} --dbuser=${SQL_USER} --dbpass=${SQL_PASSWORD} --dbhost=${SQL_HOST} --allow-root --locale=fr_FR

fi

if ! wp core is-installed --allow-root; then
	wp core install --url=${URL} --title=${TITLE} --admin_user=${WP_ADMIN_USER} --admin-password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --skip-email --allow-root
fi

cp user create ${WP_NEW_USER_NAME} ${WP_NEW_USER_EMAIL} --role=${WP_NEW_USER_ROLE} --user_pass=${WP_NEW_USER_PASSWORD} --allow-root

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