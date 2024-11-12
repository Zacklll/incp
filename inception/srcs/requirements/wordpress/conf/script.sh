#!/bin/bash

if [ ! -f /var/www/html/wp-config.php ];then
 wp core download  --allow-root

wp core config	--dbname=${MYSQL_DATABASE} \
				--dbuser=${MYSQL_USER} \
				--dbpass=${MYSQL_PASSWORD} \
				--dbhost=${MYSQL_HOST} --allow-root

wp core install	--url="${DOMAIN}" \
				--title="${TITLE}" \
				--admin_user="${MYSQL_USER}" \
				--admin_password="${MYSQL_PASSWORD}" \
				--admin_email="${ADMIN_EMAIL}" --allow-root
 
wp user create "${USER}" "${USER_EMAIL}" --role=author --user_pass="${USER_PASSWORD}" --allow-root

fi

mkdir -p /run/php

sed -i 's|listen = /run/php/php7.4-fpm.sock|listen = 0.0.0.0:9000|' /etc/php/7.4/fpm/pool.d/www.conf



exec  /usr/sbin/php-fpm7.4 -F
