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
ENV BUILDDIR=/tmp/build/
RUN mkdir ${BUILDDIR}

COPY src/ ${WORKDIR}

RUN mkdir -p /run/php

RUN tar xzf /var/www/latest.tar.gz --directory ${BUILDDIR} && \
	mv wp-config.php ${BUILDDIR} && \
	mv index.php ${BUILDDIR}

RUN chmod -R 777 ${BUILDDIR}

RUN sed 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 0.0.0.0:9000/' -i /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE 9000
CMD ["php-fpm7.3", "-F"]