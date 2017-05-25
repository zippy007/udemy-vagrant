#!/bin/bash

sudo yum clean all

sudo yum update -y --exclude=kernel

sudo yum install -y nano got unzip screen

sudo yum install -y httpd http-devel http-tools

sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd
sudo systemctl stop httpd

rm -rf /var/www/html
ln -s /vagrant /var/www/html

sudo systemctl start httpd

sudo yum install -y php php-cli php-common php-devel php-mysql

wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum -y update

sudo yum -y install mysql-server
sudo systemctl start mysqld

mysql -u root -e "SHOW DATABASES";

cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/zippy007/udemy-vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/zippy007/udemy-vagrant/master/files/info.php

sudo systemctl restart httpd