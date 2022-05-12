#!/bin/bash

FILE="/home/pdiaz-pa/data/wordpress/wp-config.php"

if [ -f "$FILE" ]; then
	echo "El usuario ya existe!!!!"
else
	echo "INSTALANDO WORDPRESS Y TAL!!!!!!!!!!!!!!!!!" && \
	cp -a /tmp/build/. /var/www/ && \
	wp core install --allow-root --title="Tremendo sitio web" --admin_name="pdiaz-pa" --admin_password="caldodepollo" --admin_email="pdiaz-pa@student.42.fr" --path="/var/www/wordpress/" --url="https://pdiaz.pa.42fr.com" && \
	wp --path=/var/www/wordpress/ user create --allow-root curro curro@example.com --role=subscriber --user_pass=caldodecurro
fi
php-fpm7.3 -F
