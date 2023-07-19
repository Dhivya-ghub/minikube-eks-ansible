#!/bin/bash

sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo apt-get install -y mysql-server
sudo apt-get install -y php libapache2-mod-php php-mysql
sudo systemctl restart apache2
sudo apt-get install -y unzip
sudo apt-get install -y wget
sudo wget -c https://wordpress.org/latest.zip 
sudo unzip latest.zip
sudo mv wordpress /var/www/html
sudo chown -R www-data:www-data /var/www/html/wordpress
sudo chmod -R 777 /var/www/html/wordpress
sudo systemctl restart apache2

