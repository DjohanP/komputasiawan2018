#1
#useradd awan -p $(echo buayakecil | openssl passwd -1 -stdin) -d /home/awankecil -m
#2
sudo echo "nameserver 202.46.129.2" | sudo tee -a /etc/resolv.conf
sudo apt-get -y update
#wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
#apt-get install -y esl-erlang
#apt-get install -y elixir
#echo "Y" | mix local.hex
#echo "Y" | mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
#echo "Y" | mix phx.new /home/vagrant/hello2
sudo apt-get install -y nodejs
sudo apt-get install -y npm
cd /home/vagrant/hello2/assets
npm install
cd /home/vagrant/hello2
mix phx.server
#3
#php
sudo apt install software-properties-common
echo "\n" | sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.2-cli
sudo apt install -y php7.2-fpm php7.2-mysql
sudo apt install -y php7.2-curl php7.2-gd php7.2-mbstring php7.2-xmlrpc php7.2-xml php7.2-zip
sudo systemctl restart php7.2-fpm

#nginx
sudo apt-get install -y nginx
sudo service nginx start
sudo apt-get install -y php-xml
#mysql
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password oke'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password oke'
sudo apt-get -y install mysql-server
#composer
sudo apt-get install -y curl php-cli php-mbstring git unzip

cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

cd /var/www/web2
composer update -vvv
cp .env.example .env
php artisan key:generate
php artisan serve

#4
sudo apt-get install -y squid
sudo apt-get install -y bind9
