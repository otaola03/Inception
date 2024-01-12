# FROM debian:buster

# COPY ./conf/*  /tmp/

# RUN \
# 	apt-get update \
# 	&& apt-get -y install mariadb-server vim \
# 	# &&  service mysql start \
# 	&& chmod +x /tmp/create.sh \
# 	&& chmod +x /tmp/init.sh 
# 	# && /tmp/init.sh

# EXPOSE 3306

# # CMD [ "sh", "-c", "./tmp/create.sh > /tmp/create.sql && tail -f"]
# # CMD [ "sh", "-c", "./tmp/create.sh > /tmp/create.sql && mysqld --init-file=/tmp/create.sql"]
# CMD ["tail", "-f"]
FROM debian:buster

COPY ./conf/*  /tmp/

RUN \
	apt-get update \
	&& apt-get -y install mariadb-server vim \
	&&  service mysql start \
	&& chmod +x /tmp/create.sh \
	&& chmod +x /tmp/init.sh \
	&& /tmp/init.sh

EXPOSE 3306

CMD [ "sh", "-c", "./tmp/create.sh > /tmp/create.sql && mysqld --init-file=/tmp/create.sql"]
