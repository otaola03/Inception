FROM debian:bullseye

RUN \
	apt-get update && apt-get install -y nginx curl
	# && chown -R www-data:www-data /var/www/html/example.com/

COPY nginx.conf /etc/nginx/nginx.conf
# ADD myNginx.conf /etc/nginx/conf.d/default.conf
# COPY index.html /usr/share/nginx/html

# RUN chmod 644 /var/lib/nginx/html/index.html

EXPOSE 9000
EXPOSE 433

CMD ["nginx", "-g", "daemon off;"]

