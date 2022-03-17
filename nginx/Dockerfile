FROM nginx:latest
EXPOSE 80
COPY ./index.html /usr/share/nginx/html/
COPY ./default.conf /etc/nginx/conf.d/default.conf
RUN apt-get -y install openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=ES/ST=Madrid/L=Madrid/O=42Madrid/OU=JAT/CN=Inception"
CMD ["nginx", "-g", "daemon off;"]