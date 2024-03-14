FROM debian:11

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install wget
RUN apt-get install -y php
RUN apt-get install -y php-fpm
RUN apt-get install -y php-mysql
RUN wget https://fr.wordpress.org/wordpress-6.4.3-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.4.3-fr_FR.tar.gz && rm wordpress-6.4.3-fr_FR.tar.gz
RUN chown -R www-data:www-data /var/www/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

COPY requirements/wordpress/tools/script.sh .
COPY requirements/wordpress/conf/www.conf etc/php/7.4/fpm/pool.d/www.conf

RUN chmod +x script.sh
RUN mkdir -p /run/php

EXPOSE 9000/tcp

CMD ./script.sh && /usr/sbin/php-fpm7.4 -Fs
