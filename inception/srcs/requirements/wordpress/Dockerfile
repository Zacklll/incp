FROM debian:12

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get update && apt-get -y install curl php php-fpm php-mysql mariadb-client 

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/script.sh /

RUN chmod +x script.sh

WORKDIR /var/www/html

EXPOSE 9000

ENTRYPOINT ["/script.sh"]




