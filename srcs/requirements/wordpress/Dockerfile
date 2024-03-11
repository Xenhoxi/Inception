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
RUN mkdir -p /run/php

COPY "requirements/wordpress/tools/script.sh" "var/www/wordpress"
COPY "requirements/wordpress/conf/www.conf" "etc/php/7.4/fpm/pool.d/www.conf"

EXPOSE 9000/tcp

CMD ./var/www/wordpress/script.sh
CMD /usr/sbin/php-fpm7.4 -F
