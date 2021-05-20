FROM debian:buster

RUN apt-get update
RUN apt-get -y install nginx
RUN apt-get install openssl
RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
RUN apt-get -y install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip
RUN apt-get install -y mariadb-server mariadb-client
RUN apt-get install -y wget

COPY srcs/start.sh ./
COPY srcs/autoindex.sh ./
COPY srcs/default ./
COPY srcs/default_on ./
COPY srcs/test.php ./
COPY srcs/config.inc.php ./
COPY srcs/wp-config.php ./
COPY srcs/init.sh ./
CMD bash /start.sh

EXPOSE 80
EXPOSE 443

#ENTRYPOINT bash srcs/init.sh && /bin/bash
