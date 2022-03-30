FROM debian:buster
RUN apt-get update
RUN apt-get install mariadb-server -y

#COPY mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

EXPOSE 3306
CMD ["mysqld"]
