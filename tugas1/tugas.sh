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
#PHP 7.2
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2-cli
# MySQL
sudo apt-get install mysql-server
mysql_secure_installation
systemctl status mysql.service
mysqladmin -p -u root version #test MySQL
#COMPOSER
sudo apt-get install curl php-cli php-mbstring git unzip
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" #verified installer
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
composer #test composer
#NGINGX
sudo apt-get install nginx
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status
systemctl status nginx


#4
sudo apt-get install -y squid
sudo apt-get install -y bind9
