#!/bin/bash
sudo apt update -y
sudo apt install apache2 -y
sud ufw allow 'Apache'
sudo systemctl start apache2
sudo systemctl enable apache2
my_date=$(date +%d%m%y)
tar -cvzf shubhay-httpd-logs-$my_date.tar --absolute-names /var/log/apache2/access.log /var/log/apache$
cp shubhay-httpd-logs-$my_date.tar  /tmp
sudo apt-get install awscli -y
aws --version
echo "enter the new bucket name:"
read bucket
aws s3  mb  s3://$bucket
