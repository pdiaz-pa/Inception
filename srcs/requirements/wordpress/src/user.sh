#!/bin/bash

FILE="/home/pdiaz-pa/data/wordpress/wp-config.php"

if [ -f "$FILE" ]; then
	echo "El usuario ya existe!!!!"
else
	echo ".................Instalando Wordpress..............." && \
	cp -a /tmp/build/. /var/www/ && \
	wp core install --allow-root --title="Tremendo sitio web" --admin_name="$WP_ADMIN_NAME" --admin_password="$WP_ADMIN_PASS" --admin_email="$WP_ADMIN_MAIL" --path="/var/www/wordpress/" --url="https://pdiaz-pa.42fr.com" && \
	wp --path=/var/www/wordpress/ user create --allow-root $WP_USER_NAME $WP_USER_MAIL --role=subscriber --user_pass=$WP_USER_PASS
fi
php-fpm7.3 -F
