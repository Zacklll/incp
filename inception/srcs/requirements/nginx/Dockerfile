FROM debian:11

RUN apt -y update && apt -y upgrade && apt -y install  nginx openssl


RUN openssl req  -x509 -newkey rsa:4096 -nodes -days 365 -keyout key.key -out cert.csr  -subj "/C=Mr/ST=BEG/L=BEG/O=1337/CN=zael-wad.42.fr"


COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default.conf

EXPOSE 443

ENTRYPOINT [ "nginx", "-g","daemon off;"  ]