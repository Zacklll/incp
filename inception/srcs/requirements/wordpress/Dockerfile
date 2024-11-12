FROM debian:11

RUN apt-get -y update && apt-get -y upgrade

RUN apt-get -y install -y curl php7.4 php-fpm  php-mysql  mariadb-client

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/script.sh /

RUN chmod +x script.sh

WORKDIR /var/www/html

EXPOSE 9000

ENTRYPOINT ["/script.sh"]




