#!/bin/bash

apt-get update -y ; apt-get upgrade -y
 
apt-get install apache2 -y
echo "Welcome on test application webpage!" > /var/www/html/index.html
systemctl enable apache2
systemctl start apache2