FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y
ARG MARIADB_USER
COPY src/ /tmp/mariadb
RUN chmod 777 /tmp/
RUN chmod +t /tmp/
RUN service mysql start && mariadb -u root < /tmp/mariadb/mydb.sql
RUN rm /tmp/mariadb/mydb.sql
RUN 	sed 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/'\ 
            -i /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod 777 /var/lib/mysql/*
EXPOSE 3306
CMD ["mysqld_safe"]
