#!/usr/bin/env bash

if ! [ -L /home/vagrant/.ssh/id_rsa ]; then
  cp /vagrant/github.private /home/vagrant/.ssh/id_rsa
  cp /vagrant/github.private.pub /home/vagrant/.ssh/id_rsa.pub
fi
