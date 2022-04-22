#!/bin/bash
#port number---80
yum update -y
#install the apache
yum install httpd -y
#start apache
systemctl start httpd
#enable apache
systemctl enable httpd
#check the status apache
systemctl status httpd



#!/bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo “Hello World from $(hostname -f)” > /var/www/html/index.html


#!/bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
vi index.html
cp -r * /var/www/html/index.html/
