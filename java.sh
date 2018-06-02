#!/usr/bin/env bash

if ! [ -L /usr/bin/javac ]; then
#  wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u45-b14/jdk-8u45-linux-x64.rpm"
#  sudo rpm -ivh jdk-8u45-linux-x64.rpm
yum update -y
 
cd /tmp
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.rpm"
 
sudo yum local install -y jdk-8u60-linux-x64.rpm
 
rm jdk-8u60-linux-x64.rpm

fi
