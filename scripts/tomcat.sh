#!/bin/bash
#port number---8080
# install the java
sudo amazon-linux-extras install epel -y 
sudo amazon-linux-extras install java-openjdk11 -y
# install the tomcat
cd /opt/
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.zip
# extract 
unzip apache-tomcat-9.0.71.zip
# delete the zip
mv apache-tomcat-9.0.71 tomcat
rm -rf apache-tomcat-9.0.71.zip
sudo chmod -R 755 /opt/tomcat
#start the tomact
sudo sh /opt/tomcat/bin/startup.sh 
# stop the tomact
# sudo sh /opt/tomcat/bin/shutdown.sh
# when youn install server how to check
# ps -ef | grep tomcat
# port listen or not
# netstat -anlp | grep "8080"
