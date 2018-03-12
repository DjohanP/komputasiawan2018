#1
#useradd awan -p $(echo buayakecil | openssl passwd -1 -stdin) -d /home/awankecil -m
#2
sudo echo "nameserver 202.46.129.2" | sudo tee -a /etc/resolv.conf
sudo apt-get -y update
#wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
#apt-get install -y esl-erlang
#apt-get install -y elixir
#yes | mix local.hex
#yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
#yes | mix phx.new /home/vagrant/hello2
#3

#awal
sudo apt-get update
#MySQL
sudo apt-get install mysql-server php5-mysql
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation
#NGINX
echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/nginx-stable.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C
sudo apt-get update
sudo apt-get install nginx
sudo service nginx start
#PHP5
sudo apt-get install -y php5-fpm php5-cli
#COMPOSER
sudo apt-get update
sudo apt-get install -y curl php5-cli git
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
composer

#PHP 7.2
# # MySQL
# sudo apt-get install -y mysql-server
# mysqladmin -p -u root version #test MySQL
# #COMPOSER
# sudo apt-get install curl php7.2-cli php7.2-mbstring git unzip
# cd ~
# curl -sS https://getcomposer.org/installer -o composer-setup.php
# php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" #verified installer
# sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
# composer #test composer
# #NGINGX
# sudo apt-get install nginx
# sudo service nginx start

#4
sudo apt-get install -y squid
sudo apt-get install -y bind9
