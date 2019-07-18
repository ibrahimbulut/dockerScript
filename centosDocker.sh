#!/bin/bash

sudo su -

yum install -y yum-utils device-mapper-persistent-data lvm2

yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce

usermod -aG docker $(whoami)

systemctl enable docker.service

systemctl start docker.service

docker run --name u1 -id ubuntu bash

docker exec -it u1 bash


