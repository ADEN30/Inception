FROM debian:buster
RUN apt update -y
RUN apt upgrade -y
RUN apt-get install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/startDatabase.sh /home/startDatabase.sh
RUN chmod +777 /home/startDatabase.sh 
EXPOSE 3306
ENTRYPOINT ["/home/startDatabase.sh"]