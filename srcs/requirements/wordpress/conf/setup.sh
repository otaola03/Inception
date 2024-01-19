#!/bin/bash

mkdir -p /var/www/html/
chmod 777 /var/www/html/
cd /var/www/html
rm -rf *
wp core download --locale=es_ES --allow-root

# mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

# wp --path=/var/www/html  config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST} --locale=es_ES --allow-root --skip-check
# # Por ejemplo, puedes usar WP-CLI para configurar WordPress en este punto
# # Ejemplo: wp core install --url=http://mi-sitio.com --title="Mi Sitio" --admin_user=admin --admin_password=password --admin_email=info@mi-sitio.com
# wp core install --path=/var/www/html --url=${DOMAIN_NAME} --title="Esto Funciona!!!" --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="jperez@student.42urduliz.com" --skip-email --allow-root
wp --path=/var/www/html  config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${MYSQL_HOST} --locale=es_ES --allow-root --skip-check
# Por ejemplo, puedes usar WP-CLI para configurar WordPress en este punto
# Ejemplo: wp core install --url=http://mi-sitio.com --title="Mi Sitio" --admin_user=admin --admin_password=password --admin_email=info@mi-sitio.com
wp core install --path=/var/www/html --url=${DOMAIN_NAME} --title="Esto Funciona!!!" --admin_name=${WP_ADMIN_USER} --admin_user=${WP_ADMIN_USER} --admin_password=${WP_ADMIN_PASSWORD} --admin_email="jdasilva@student.42urduliz.com" --skip-email --allow-root 
