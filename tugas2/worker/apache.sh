sudo apt-get update
sudo apt-get -y install python-software-properties software-properties-common
sudo apt-add-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get -y install php7.2
sudo apt-get -y install php7.2-fpm php7.2-cgi
sudo service php7.2-fpm start
