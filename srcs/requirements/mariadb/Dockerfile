FROM debian:11

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install mariadb-server

COPY requirements/mariadb/conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY requirements/mariadb/tools/db_setup.sh .

CMD ./db_setup.sh
