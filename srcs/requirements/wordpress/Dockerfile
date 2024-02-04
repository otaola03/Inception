FROM debian:bullseye

WORKDIR /var/www/html

# Actualizar el sistema e instalar las dependencias necesarias
# COPY conf/wp-config.php /tmp/wp-config.php
COPY conf/setup.sh /tmp/setup.sh

RUN apt-get update \
    && apt-get install -y \
        php php-fpm php-mysql php-gd php-xml php-curl \
        curl \
        vim \
		netcat \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar  && mv -f wp-cli.phar /usr/local/bin/wp \
	&& chmod 777 /tmp/setup.sh \
	&& mkdir -p /var/run/php

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

RUN sed -i 's/^pid = \/run\/php\/php7\.4-fpm\.pid$/pid = \/var\/run\/php-fpm7.4.pid/' /etc/php/7.4/fpm/php-fpm.conf

# RUN sh /tmp/setup.sh
#|ENTRYPOINT ["/tmp/setup.sh"]

# CMD ["sh", "/tmp/setup.sh"]
CMD ["sh", "-c", "/tmp/setup.sh && /usr/sbin/php-fpm7.4 -F"]
# CMD ["sh", "/usr/sbin/php-fpm7.4", "-F"]
