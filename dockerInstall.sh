#!/bin/bash

#Auther: Kenneth Dzonyrah
#Date; 20/11/2022
#Description: Script for installing docker on CentOS 7


sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine   
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
