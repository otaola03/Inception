FROM alpine:3.17

RUN apk update && \
    apk add mariadb mariadb-client && \
    apk add vim && \
    rm -f /var/cache/apk/*

# Inicializa el directorio de datos de MariaDB
RUN mkdir -p /run/mysqld && chmod 777 /run/mysqld
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

# Inicia MariaDB al ejecutar el contenedor
CMD ["mysqld", "--user=mysql", "--datadir=/var/lib/mysql"]

# RUN apk update && \
# 	apk add mariadb

# CMD ["tail", "-f"]
