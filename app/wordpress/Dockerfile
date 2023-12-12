FROM debian:bullseye-slim

# Actualizar el sistema e instalar las dependencias necesarias
COPY wp-config.php /tmp/wp-config.php
COPY setup.sh /tmp/setup.sh

RUN apt-get update \
    && apt-get install -y \
        php7.4 \
        php7.4-fpm \
        php7.4-mysql \
        wget \
	&& rm -rf /var/lib/apt/lists/* \
	&& chmod 777 /tmp/setup.sh

CMD ["sh", "/tmp/setup.sh"]
