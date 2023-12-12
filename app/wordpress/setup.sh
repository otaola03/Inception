#!/bin/bash

mkdir -p /var/www/html/example.com
wget -P /var/www/html/example.com https://wordpress.org/latest.tar.gz
tar -xvzf /var/www/html/example.com/latest.tar.gz -C /var/www/html/example.com/
rm /var/www/html/example.com/latest.tar.gz

# Iniciar el servicio necesario o cualquier otro comando que mantenga el contenedor en ejecución
tail -f

