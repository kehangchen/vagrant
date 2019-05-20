#!/bin/bash
yum update -y

sudo yum install -y wget
cd /tmp
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.rpm"

sudo yum install -y tomcat
sudo chmod -R g+w /usr/share/tomcat/webapps
sudo usermod -aG wheel,tomcat vagrant
sudo systemctl start tomcat
sudo systemctl enable tomcat