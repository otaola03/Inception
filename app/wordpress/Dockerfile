FROM alpine:3.1

RUN apk update && \
    apk add vim && \
	apk add php php-fpm php-opcache && \
	apk add php-gd php-mysqli php-zlib php-curl && \
	apk add curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp-cli

CMD ["tail", "-f"]
