#!/bin/bash

mkdir -p /var/www/html/
chmod 777 /var/www/html/
cd /var/www/html
rm -rf *
wp core download --locale=es_ES --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

line 23
sed -i -r "s/database_name_here/$MYSQL_DATABASE/1"   /var/www/html/wp-config.php
#line 26
sed -i -r "s/username_here/$MYSQL_USER/1"  /var/www/html/wp-config.php
#line 29
sed -i -r "s/password_here/$MYSQL_PASSWORD/1"    /var/www/html/wp-config.php

#line 32
sed -i -r "s/localhost/mariadb/1"    /var/www/html/wp-config.php  #(to connect with mariadb database)

# wp core install --path=/var/www/html --url=${DOMAIN_NAME} --title="Esto Funciona!!!" --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="jperez@student.42urduliz.com" --skip-email --allow-root

# wp user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PASSWORD --allow-root

# wp core install --allow-root --url="$DOMAIN_NAME" --title="INCEPTION" --admin_user="$WP_ADMIN" --admin_password="$WP_ADMIN_PASSWORD" --admin_email="$WP_EMAIL"
wp core install --path=/var/www/html --url=https://localhost --title="Esto Funciona!!!" --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="jperez@student.42urduliz.com" --skip-email --allow-root

wp user create $WP_USER jperez@student.42urduliz.com --allow-root --role="administrator" --user_pass=$WP_PASSWORD

