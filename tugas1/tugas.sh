#1
#useradd awan -p $(echo buayakecil | openssl passwd -1 -stdin) -d /home/awankecil -m
#2
sudo echo "nameserver 202.46.129.2" | sudo tee -a /etc/resolv.conf
sudo apt-get -y update
#wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
#apt-get install -y esl-erlang
#apt-get install -y elixir
#mix local.hex
#mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
#mix phx.new /home/vagrant/hello2

#3
#4
sudo apt-get install -y squid
sudo apt-get install -y bind9
