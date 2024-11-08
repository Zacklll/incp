FROM debian:bullseye

RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install nginx -y && \
    mkdir -p /etc/nginx/ssl && \
    apt install openssl -y && \
    openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/CN=$DOMAIN"

# RUN chmod 755 /var/www/wordpress
# RUN chown -R www-data:www-data /var/www/wordpress

RUN mkdir -p /var/run/nginx

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

CMD [ "nginx", "-g", "daemon off;" ]    