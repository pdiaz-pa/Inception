FROM debian:buster
RUN apt-get update
RUN apt-get install mariadb-server -y

RUN service mysql start

RUN 	sed 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/'\ 
            -i /etc/mysql/mariadb.conf.d/50-server.cnf

#COPY mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

EXPOSE 3306
CMD ["mysqld_safe"]