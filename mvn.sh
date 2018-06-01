#!/usr/bin/env bash

if ! [ -L /opt/mvn ]; then
  wget -q http://apache.mirror.digitalpacific.com.au/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
  sudo mkdir -p /opt/mvn
  sudo tar zxf /home/vagrant/apache-maven-3.3.9-bin.tar.gz -C /opt/mvn
  rm apache-maven-3.3.9-bin.tar.gz
fi
