#!/bin/bash

#Cambia el propetario del directorio de datos de MariaDB
chown -R mysql /var/lib/mysql

#Comenta lineas inecesarias en 50-server.cnf  para permitir conexiones externas
sed -i "s/^bind-address\s*=.*$/#bind-address = 127.0.0.1/"  /etc/mysql/mariadb.conf.d/50-server.cnf

#Establece el puerto 3306
sed -i "s/#\?port\s*=.*/port=3306/" /etc/mysql/mariadb.conf.d/50-server.cnf

# /etc/init.d/mysql restart
service mysql restart
