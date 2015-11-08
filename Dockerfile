FROM php:apache

# install web software
RUN apt-get update && apt-get install -y \
	libcurl4-gnutls-dev \
        libicu-dev \
        php5-curl \
        php5-intl \
        php5-mysql \
        php-pear \
	ssmtp && \
    apt-get clean && \
    docker-php-ext-install mysql mysqli pdo pdo_mysql curl intl 
    
COPY config/php.ini /usr/local/etc/php/

CMD /usr/sbin/apache2ctl -D FOREGROUND
