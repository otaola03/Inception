FROM alpine:3.17

RUN apk update && \
    apk add mariadb mariadb-client && \
    apk add vim && \
    rm -f /var/cache/apk/*

RUN mkdir -p /run/mysqld && chmod 777 /run/mysqld
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

# COPY my.cnf /etc/my.cnf
COPY initFile.sql /tmp
 
RUN chmod 777 /tmp/initFile.sql

EXPOSE 3306

CMD ["mysqld", "--user=mysql", "--datadir=/var/lib/mysql", "--init-file=/tmp/initFile.sql"]

# RUN apk update && \
# 	apk add mariadb

# CMD ["tail", "-f"]
