FROM debian:buster
RUN apt-get update
RUN apt-get -y install nginx
RUN apt-get -y install openssl
#COPY ./index.html /usr/share/nginx/html/
COPY ./default etc/nginx/sites-enabled/default
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=ES/ST=Madrid/L=Madrid/O=42Madrid/OU=JAT/CN=Inception"
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]