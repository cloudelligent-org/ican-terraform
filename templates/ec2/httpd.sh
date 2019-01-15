#!/bin/bash

yum install -y httpd
service httpd start
chkconfig httpd on
echo "<h1>Terraform By Cloudelligent for Icanotes</h1>" > /var/www/html/index.html







#END