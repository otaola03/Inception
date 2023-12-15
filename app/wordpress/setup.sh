#!/bin/bash

mkdir -p /var/www/html/
chmod 777 /var/www/html/
cd /var/www/html
# wget https://wordpress.org/latest.tar.gz
# tar -xvzf latest.tar.gz
echo "<?php phpinfo(); ?>" > info.php
# wp core download --locale=es_ES --allow-root
# rm /var/www/html/latest.tar.gz
# chmod 777 /var/www/html/wordpress

# cp /tmp/wp-config.php /var/www/html/wordpress

# Iniciar el servicio necesario o cualquier otro comando que mantenga el contenedor en ejecución
# tail -f
