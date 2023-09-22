FROM alpine:3.1

RUN apk update && \
    apk add vim && \
	apk add wget


RUN mkdir -p /usr/share/webapps/

RUN wget --no-check-certificate http://wordpress.org/latest.tar.gz
RUN mv /latest.tar.gz /usr/share/webapps
RUN tar -xzvf /usr/share/webapps/latest.tar.gz
# RUN rm /usr/share/webapps/latest.tar.gz
# RUN chown -R lighttpd /usr/share/webapps/
# RUN ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress

EXPOSE 3306
EXPOSE 9000

CMD ["tail", "-f"]
