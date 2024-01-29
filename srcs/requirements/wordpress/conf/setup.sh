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

## installs WordPress and sets up the basic configuration for the site. The --url option specifies the URL of the site, --title sets the site's title, --admin_user and --admin_password set the username and password for the site's administrator account, and --admin_email sets the email address for the administrator. The --skip-email flag prevents WP-CLI from sending an email to the administrator with the login details.
#wp core install --path=/var/www/html --url=${DOMAIN_NAME} --title="Esto Funciona!!!" --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="jdasilva@student.42urduliz.com" --skip-email --allow-root

## creates a new user account with the specified username, email address, and password. The --role option sets the user's role to author, which gives the user the ability to publish and manage their own posts.
#wp user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PASSWORD --allow-root


# wp --path=/var/www/html  config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST} --locale=es_ES --allow-root --skip-check
# # Por ejemplo, puedes usar WP-CLI para configurar WordPress en este punto
# # Ejemplo: wp core install --url=http://mi-sitio.com --title="Mi Sitio" --admin_user=admin --admin_password=password --admin_email=info@mi-sitio.com
# wp core install --path=/var/www/html --url=${DOMAIN_NAME} --title="Esto Funciona!!!" --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="jperez@student.42urduliz.com" --skip-email --allow-root



# wp --path=/var/www/html  config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST} --locale=es_ES --allow-root --skip-check
# # Por ejemplo, puedes usar WP-CLI para configurar WordPress en este punto
# # Ejemplo: wp core install --url=http://mi-sitio.com --title="Mi Sitio" --admin_user=admin --admin_password=password --admin_email=info@mi-sitio.com
# wp core install --path=/var/www/html --url=${DOMAIN_NAME} --title="Esto Funciona!!!" --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="jdasilva@student.42urduliz.com" --skip-email --allow-root 
