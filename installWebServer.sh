#!/bin/bash
echo 'Updating system and installing dependencies...'
sudo yum update -y && sudo yum install httpd -y && sudo yum install wget -y && sudo yum install unzip -y

echo 'Downloading files...'
cd /tmp
wget https://github.com/dantas404/linux-site/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo 'Final adjustments...'
sudo systemctl enable --now httpd.service
sudo firewall-cmd --add-service=http --permanent
sudo firewall-cmd --reload

echo 'All done!'


