FROM debian:11

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install wget
RUN apt-get install -y php
RUN apt-get install -y php-fpm
RUN apt-get install -y php-mysql
RUN apt-get install -y vim
RUN wget https://fr.wordpress.org/wordpress-6.4.3-fr_FR.tar.gz -P /var/www
RUN cd /var/www && tar -xzf wordpress-6.4.3-fr_FR.tar.gz && rm wordpress-6.4.3-fr_FR.tar.gz
RUN chown -R root:root /var/www/wordpress

COPY "conf/php.ini" "etc/php/7.4/fpm/php.ini"
