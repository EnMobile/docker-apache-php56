FROM php:apache

# install web software
RUN chmod 555 /etc/apt/sources.list & \
    apt-get update && apt-get install -y \
        php5-curl \
        php5-intl \
        php5-mysql \
        php-pear \
	ssmtp && \
    apt-get clean
ADD php.ini /etc/php5/apache2/php.ini

CMD /usr/sbin/apache2ctl -D FOREGROUND
