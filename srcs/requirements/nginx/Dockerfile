FROM debian:bullseye

RUN \
	apt-get update \
	&& apt-get install -y nginx \
	&& chown -R www-data:www-data /var/www/html/

COPY conf/myNginx.conf /etc/nginx/nginx.conf
# ADD conf/myNginx.conf /etc/nginx/conf.d/default.conf
# COPY conf/index.html /usr/share/nginx/html

# RUN chmod 644 /var/lib/nginx/html/index.html

EXPOSE 9000
EXPOSE 433

CMD ["nginx", "-g", "daemon off;"]

