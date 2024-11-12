FROM debian:11

RUN apt-get -y update && apt-get -y upgrade && apt -y install mariadb-server

COPY  ./script.sh /

RUN chmod +x script.sh

EXPOSE 3306

ENTRYPOINT ["/script.sh"]