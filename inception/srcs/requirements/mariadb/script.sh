#!/bin/sh

service mariadb start 

mariadb -hlocalhost -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DATABASE}\`;"
mariadb -hlocalhost -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mariadb -hlocalhost -e "GRANT ALL PRIVILEGES ON \`${MYSQL_DATABASE}\`.* TO \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mariadb -hlocalhost -e "FLUSH PRIVILEGES;"

service mariadb stop

exec mysqld_safe --bind 0.0.0.0
