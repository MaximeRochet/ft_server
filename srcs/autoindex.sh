#! /bin/sh
if [ $# -eq 0 ];then
   echo "You need to use ./autoindex {on|off}"
   exit
fi
if [ $1 = "on" ]; then
	rm -rf /etc/nginx/sites-available/default
	cp ./default_on /etc/nginx/sites-available/default
	echo "Auto index activated, NGINX need to restart !"
	service nginx restart
elif [ $1 = "off" ]; then
	rm -rf /etc/nginx/sites-available/default
	cp ./default /etc/nginx/sites-available/default
	echo "Auto index desactivated, NGINX need to restart !"
	service nginx restart
else
	echo "You need to use ./autoindex {on|off}"
fi

