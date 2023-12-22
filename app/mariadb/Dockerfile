FROM debian:bullseye

COPY ./conf/*  /tmp/

RUN \
	apt-get update \
	&& apt-get -y install mariadb-server vim \
	&& service mysql start \
	&& chmod +x /tmp/create.sh \
	&& chmod +x /tmp/init.sh
	# && /tmp/init.sh

EXPOSE 3306

CMD ["tail", "-f"]
CMD [ "mysqld ", "--init-file=/tmp/init.sql"]
