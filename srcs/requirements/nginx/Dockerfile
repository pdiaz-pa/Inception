FROM debian:buster

RUN apt-get update
RUN apt-get -y install nginx
RUN apt-get -y install openssl

WORKDIR /tmp/
RUN mkdir /tmp/build/
COPY /src/* /tmp/

RUN rm -rf /etc/nginx/sites-enabled/* && \
	mv nginx.conf /etc/nginx/sites-available/nginx.conf && \
	ln -fs /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/

RUN chmod -R 777 /tmp/build/

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=ES/ST=Madrid/L=Madrid/O=42Madrid/OU=JAT/CN=Inception"
EXPOSE 443

RUN chmod -R 777 /tmp/build/

CMD cp -a /tmp/build/. /var/www/ && \
	nginx -g 'daemon off;'
