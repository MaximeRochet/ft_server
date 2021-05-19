FROM debian:buster

RUN apt-get update
RUN apt-get -y install nginx
RUN apt-get install openssl
RUN apt-get install -y php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline
RUN apt-get install -y wget
RUN apt-get install -y php-json php-mbstring
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.0.1/phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN tar -zxvf phpMyAdmin-4.9.0.1-all-languages.tar.gz
RUN mv phpMyAdmin-4.9.0.1-all-languages /usr/share/phpMyAdmin

RUN apt-get install -y mariadb-server mariadb-client

COPY src/start.sh ./
COPY src/default ./
COPY src/test.php ./
CMD bash /start.sh

EXPOSE 80
EXPOSE 443
