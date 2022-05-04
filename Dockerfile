FROM debian:buster
RUN apt-get update
RUN apt-get -y install wget
#RUN apt-get -y install php7.3 php-mysql php-fpm
RUN apt-get -y install php-fpm php-mysql

#RUN wget http://wordpress.org/latest.tar.gz -P /var/www
#
#RUN cd /var/www && tar xzvf latest.tar.gz
WORKDIR /tmp/
RUN mkdir /tmp/build/
#
COPY src/ /tmp/
#
RUN mkdir -p /run/php && chmod 777 /run/
#
#RUN tar xzf /var/www/latest.tar.gz --directory /tmp/build/ && \
#	mv wp-config.php /tmp/build/ && \
#	mv index.php /tmp/build/
#
#RUN chmod -R 777 /tmp/build/
#
#RUN sed 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/' -i /etc/php/7.3/fpm/pool.d/www.conf
#RUN chown -R www-data:www-data /var/www/
#
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
#RUN cd build/wordpress
EXPOSE 9000
RUN chmod 777 /tmp/install.sh
CMD ./install.sh
#CMD ["php-fpm7.3", "-F"]
#CMD cp -a /tmp/build/. /var/www/ && wp core install --allow-root --title="Tremendo sitio web" --admin_name="pdiaz-pa" --admin_password="caldodepollo" --admin_email="pdiaz-pa@student.42.fr" --path="/var/www/wordpress/" --url="https://localhost/" && php-fpm7.3 -F