#!/bin/bash
if [ "$INDEX" == "0" ]
then
	sed -i "s/autoindex on;/autoindex off;/" ./srcs/default
	sed -i "s/try_files \$uri \$uri\/ =404;/index index.php index.html index.htm index.nginx-debian.html;/" ./srcs/default
	echo "autoindex off"
	service nginx reload
	service nginx restart
	service mysql start
	service php7.3-fpm start
	service php7.3-fpm restart
else 
	echo "autoindex on"
fi