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