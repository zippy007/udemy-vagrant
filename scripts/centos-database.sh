#!/bin/bash

wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum -y update

sudo yum -y install mysql-server
sudo systemctl start mysqld

mysql -u root -e "SHOW DATABASES";

sudo rm mysql-community-release-el7-5.noarch.rpm


