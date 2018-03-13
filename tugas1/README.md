# Vagrant

![](https://blog.theodo.fr/wp-content/uploads/2017/07/Vagrant.png)

### K. Tugas
1. Buat vagrant virtualbox dan buat user 'awan' dengan password 'buayakecil'.
SOLUSI
```bash
useradd awan -p $(echo buayakecil | openssl passwd -1 -stdin) -d /home/awankecil -m
```
2. Buat vagrant virtualbox dan lakukan provisioning install Phoenix Web Framework
SOLUSI
```bash
sudo echo "nameserver 202.46.129.2" | sudo tee -a /etc/resolv.conf
sudo apt-get -y update
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
apt-get install -y esl-erlang
apt-get install -y elixir
echo "Y" | mix local.hex
echo "Y" | mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
echo "Y" | mix phx.new /home/vagrant/hello2
sudo apt-get install -y nodejs
sudo apt-get install -y npm
cd /home/vagrant/hello2/assets
npm install
```
3. Buat vagrant virtualbox dan lakukan provisioning install:
	1. php
	2. mysql
	3. composer
	4. nginx

		SOLUSI
```bash
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
```
	setelah melakukan provioning, clone https://github.com/fathoniadi/pelatihan-laravel.git pada folder yang sama dengan vagrantfile di komputer host. Setelah itu sinkronisasi folder pelatihan-laravel host ke vagrant ke **/var/www/web** dan jangan lupa install vendor laravel agar dapat dijalankan. Setelah itu setting root document nginx ke **/var/www/web**. webserver VM harus dapat diakses pada port 8080 komputer host dan mysql pada vm dapat diakses pada port 6969 komputer host

SOLUSI

Langkah 1
```bash
Pada Folder utama

git clone https://github.com/fathoniadi/pelatihan-laravel.git
```
Langkah 2
```bash
Pada Vagrantfile

config.vm.synced_folder "pelatihan-laravel/", "/var/www/web"
```
Langkah 3
```bash
Setelah masuh vagrant dengan "vagrant ssh"

sudo nano /etc/nginx/site-enabled/default
ubah menjadi

	server {
	listen 80 default_server;
	listen [::]:80 default_server ipv6only=on;

	root /var/www/web/public;
	index index.php index.html index.htm;

	server_name _;

	location / {
		try_files $uri $uri/ /index.php?$query_string;
	}

	location ~ \.php$ {
		include snippets/fastcgi-php.conf;
		fastcgi_pass unix:/run/php/php7.2-fpm.sock;
	}

	location ~ /\.ht {
		deny all;
	}
}
```

Langkah 4
```bash
cd /var/www/web
composer update
php artisan key:generate
php artisan serve
```
	
4. Buat vagrant virtualbox dan lakukan provisioning install:
	1. Squid proxy
	2. Bind9
Solusi
```bash
sudo apt-update
sudo apt-get install -y squid
sudo apt-get install -y bind9
```
	