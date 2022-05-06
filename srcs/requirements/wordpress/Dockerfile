FROM debian:10.11
RUN apt-get update
RUN apt-get -y install wget
#RUN apt-get -y install php7.3 php-mysql php-fpm
RUN apt-get -y install php-fpm php-mysql

RUN wget http://wordpress.org/latest.tar.gz -P /var/www

RUN cd /var/www && tar xzvf latest.tar.gz
WORKDIR /tmp/
RUN mkdir /tmp/build/

COPY src/ /tmp/

RUN mkdir -p /run/php

RUN tar xzf /var/www/latest.tar.gz --directory /tmp/build/ && \
	mv wp-config.php /tmp/build/wordpress
	#mv index.php /tmp/build/wordpress

RUN chmod -R 777 /tmp/build/

RUN sed 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/' -i /etc/php/7.3/fpm/pool.d/www.conf
RUN chown -R www-data:www-data /var/www/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN chmod 777 wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
#RUN cd build/wordpress
EXPOSE 9000

#CMD ["php-fpm7.3", "-F"]
CMD rm /var/www/wordpress/wp-config-sample.php && \
	cp -a /tmp/build/. /var/www/ && \
	wp core install --allow-root --title="Tremendo sitio web" --admin_name="pdiaz-pa" --admin_password="caldodepollo" --admin_email="pdiaz-pa@student.42.fr" --path="/var/www/wordpress/" --url="https://localhost/" && \
	wp  --path=/var/www/wordpress/ user create --allow-root curro curro@example.com --role=subscriber --user_pass=caldodecurro && \
	php-fpm7.3 -F