#!/bin/bash

sudo yum install -y httpd http-devel http-tools

sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd
sudo systemctl stop httpd

sudo rm -rf /var/www/html
sudo ln -s /vagrant /var/www/html

sudo systemctl start httpd

sudo yum install -y php php-cli php-common php-devel php-mysql

cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/zippy007/udemy-vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/zippy007/udemy-vagrant/master/files/info.php

sudo systemctl restart httpd
