FROM debian:buster
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install php7.3 php-mysql php-fpm mariadb-client
#RUN cd /var/www
RUN wget http://wordpress.org/latest.tar.gz
RUN tar xzvf latest.tar.gz
RUN rm -f /var/www/wordpress/wp-config-sample.php 
COPY ./wp-config.php ./var/www/wordpress
RUN mkdir -p /run/php
EXPOSE 9000
#CMD ./usr/sbin/php-fpm7.3 -F
CMD ["php-fpm7.3", "-F"]