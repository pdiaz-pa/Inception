
CREATE DATABASE IF NOT EXISTS wp_db;

CREATE USER 'pdiaz-pa'@'localhost';

SET PASSWORD FOR 'pdiaz-pa'@'localhost' = PASSWORD('caldodepollo');

GRANT ALL PRIVILEGES ON wp_db.* TO 'pdiaz-pa'@'localhost' IDENTIFIED BY 'caldodepollo';

GRANT ALL ON wp_db.* to 'pdiaz-pa'@'%' IDENTIFIED BY 'caldodepollo';

FLUSH PRIVILEGES;
