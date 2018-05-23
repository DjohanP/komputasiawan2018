echo "nameserver 202.46.129.2" | sudo tee -a /etc/resolv.conf
sudo /etc/init.d/apache2 stop
sudo apt-get update
sudo apt-get -y install python-software-properties software-properties-common
sudo apt-add-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get -y install php7.2
sudo apt-get -y install php7.2-fpm php7.2-cgi

sudo apt-get -y install nginx

sudo rm -rf /etc/nginx/site-enabled/*
sudo mv /var/www/html/* /etc/nginx/sites-enabled/
#sudo ln -s ./algorithm/least_conn.conf /etc/nginx/site-enabled
sudo nginx -t
sudo service php7.2-fpm start
sudo service nginx restart
