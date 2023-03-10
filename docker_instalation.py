#!/bin/bash

#This is for Centos system, use apt for ubuntu etc.
#Auther: Kenneth Dzonyrah
#Date; 20/11/2022
#Description: Script for installing docker on CentOS 7

import os

os.system('sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine')
os.system('sleep 4')
os.system('sudo yum install -y yum-utils')
os.system('sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y')
os.system('sudo yum install docker-ce docker-ce-cli containerd.io -y')
os.system('sudo systemctl start docker')
os.system('sudo systemctl enable docker')
os.system('sudo systemctl status docker')
os.system('sudo yum install net-tools -y')
