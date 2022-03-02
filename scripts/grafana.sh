#!/bin/bash
#port number--3000
#update
yum update -y
#install grafana
yum install grafana
#top command is does'nt install this command use 'yum install grafana-enterprise'
yum install grafana-enterprise
#download the grafana package
wget https://dl.grafana.com/oss/release/grafana-6.7.3.linux-amd64.tar.gz
#unzip the 'tar -xvzf  grafana-6.7.3.linux-amd64.tar.gz' this package
tar -xvzf  grafana-6.7.3.linux-amd64.tar.gz
#after that remove the grafana zip package
rm -rf  grafana-6.7.3.linux-amd64.tar.gz
#check the grafana status
systemctl status grafana-server.service
#start the grafana
systemctl start grafana-server.service
#after that check the status
systemctl status grafana-server.service
