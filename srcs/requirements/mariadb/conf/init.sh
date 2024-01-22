#!/bin/sh

if [ -d /var/lib/mysql/$MYSQL_DATABASE ]; then 
	echo "Database already exists"
else

service mariadb start
mysql -sfu root <<_EOF_
DELETE FROM mysql.user WHERE User='';
DROP DATABASE IF EXISTS test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
CREATE USER IF NOT EXISTS "$MYSQL_USER"@'%' IDENTIFIED BY "$MYSQL_PASSWORD";
GRANT ALL ON $MYSQL_DATABASE.* TO "$MYSQL_USER"@'%' IDENTIFIED BY "$MYSQL_PASSWORD"; 
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY "$MYSQL_ROOT_PASSWORD";
_EOF_

fi
killall mysqld
mysqld_safe --bind-address=0.0.0.0

