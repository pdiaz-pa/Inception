FROM debian:buster
RUN apt-get update
RUN apt-get -y install wget
#RUN apt-get -y install php7.3 php-mysql php-fpm
RUN apt-get -y install php-fpm php-mysql 

#RUN cd /var
RUN wget http://wordpress.org/latest.tar.gz -P /var/www

RUN cd /var/www && tar xzvf latest.tar.gz

#RUN rm -f /var/www/wordpress/wp-config-sample.php
#RUN rm -f /var/www/wordpress/index.php
#COPY ./src/wp-config.php /var/www/wordpress
#COPY ./src/index.php /var/www/wordpress
#RUN chmod -R 777 /var/www/wordpress

#RUN sed 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/' -i /etc/php/7.3/fpm/pool.d/www.conf

#RUN mkdir -p /run/php

WORKDIR /tmp/
RUN mkdir /tmp/build/

COPY src/ /tmp/

RUN mkdir -p /run/php

RUN tar xzf /var/www/latest.tar.gz --directory /tmp/build/ && \
	mv wp-config.php /tmp/build//wordpress && \
	mv index.php /tmp/build/wordpress

RUN chmod -R 777 /tmp/build/wordpress/

RUN sed 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/' -i /etc/php/7.3/fpm/pool.d/www.conf
RUN chown -R www-data:www-data /var/www/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN cd build/wordpress
#RUN wp --path=/tmp/build/wordpress --allow-root core install  --url=https://pdiaz-pa.42.fr --title=TremendoWebSite --admin_user=pdiaz-pa --admin_password=caldodepollo --admin_email=pdiaz-pa@student.42.fr 

EXPOSE 9000
CMD ["php-fpm7.3", "-F"]