#!/bin/bash

yum upgrade -y
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce -y
chkconfig docker on
# add the vagrant user to the docker group
sudo usermod -a -G docker vagrant
/sbin/reboot


