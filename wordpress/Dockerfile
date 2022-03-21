FROM debian:buster
RUN apt-get update
RUN apt-get -y install php7.3 php-mysql php-fpm mariadb-client
COPY ./www.conf /etc/php/7.3/fpm/pool.d
