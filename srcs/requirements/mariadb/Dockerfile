FROM debian:11

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install mariadb-server -y

COPY requirements/mariadb/conf/50-server.cnf etc/mysql/mariadb.conf.d/50-server.conf
#COPY conf/50-server.cnf etc/mysql/mariadb.conf.d/50-server.conf
COPY requirements/mariadb/tools/db_setup.sh /db_setup.sh
#COPY tools/db_setup.sh /db_setup.sh

EXPOSE 3306

CMD ./db_setup.sh
