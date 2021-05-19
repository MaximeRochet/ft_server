mkdir /etc/nginx/ssl/
mkdir var/www/localhost

openssl req -newkey rsa:4096 \
            -x509 \
            -sha256 \
            -days 3650 \
            -nodes \
            -out etc/nginx/ssl/localhost.pem \
            -keyout etc/nginx/ssl/localhost.key \
			-subj "/C=FR/ST=Lyon/L=Lyon/O=42Lyon/OU=mrochet/CN=localhost"

rm etc/nginx/sites-available/default
mv ./default etc/nginx/sites-available
cp ./test.php var/www/localhost

chown -R www-data /var/www/*
chmod -R 755 /var/www/*

service nginx start
service php7.3-fpm start
service mysql start
sleep infinity
