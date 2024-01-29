FROM debian:bullseye

RUN \
	apt-get update \
	&& apt-get install -y nginx openssl \
	&& chown -R www-data:www-data /var/www/html/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt \
	-subj "/CN=jperez.42.fr"

COPY conf/myNginx.conf /etc/nginx/nginx.conf

EXPOSE 9000
EXPOSE 433

CMD ["nginx", "-g", "daemon off;"]

