FROM debian:buster
RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install php7.3 php-mysql php-fpm mariadb-client
#RUN cd /var/www
RUN wget http://wordpress.org/latest.tar.gz
RUN tar xzvf latest.tar.gz
RUN rm -f /var/www/wordpress/wp-config-sample.php 
COPY ./wp-config.php ./var/www/wordpress
EXPOSE 9000
CMD ["php-fpm", "-F"]