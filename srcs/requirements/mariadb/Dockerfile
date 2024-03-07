FROM debian:11

RUN apt-get -y update && apt-get -y install mariadb-server -y
RUN apt-get -y install vim

COPY conf/50-server.cnf etc/mysql/mariadb.conf.d/50-server.conf
COPY tools/db_setup.sh /db_setup.sh

EXPOSE 3306

ENTRYPOINT ["./db_setup.sh"]
