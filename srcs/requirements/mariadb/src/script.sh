service mysql start
mariadb -u root "CREATE DATABASE IF NOT EXISTS'${MARIADB_NAME}';" 

mariadb -u root "CREATE USER '${MARIADB_USER}'@'localhost';"
mariadb -u root "SET PASSWORD FOR '${MARIADB_USER}'@'localhost' = PASSWORD(${MARIADB_PASS});"
mariadb -u root "GRANT ALL PRIVILEGES ON '${MARIADB_NAME}'.* TO '${MARIADB_USER}'@'localhost' IDENTIFIED BY '${MARIADB_PASS}';"
mariadb -u root "GRANT ALL ON '${MARIADB_NAME}'.* TO '${MARIADB_USER}'@'%' IDENTIFIED BY '${MARIADB_PASS}';"
mariadb -u root "FLUSH PRIVILEGES;"
