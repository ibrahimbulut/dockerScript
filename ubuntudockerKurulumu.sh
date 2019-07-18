#!/bin/bash

#bu uygulamamızda ubuntu ve ubuntu server sistemlere docker kurulumu ve ubuntu image kurulumu işlemini
#yapacağız.

sudo su -

sudo apt-get remove docker docker-engine docker.io

lsb_release -a

sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

sudo apt-get install docker-ce

sudo docker run hello-world

# şimdi de image ekleyelim

systemctl start docker

systemctl enable docker

docker run --name u1 -id ubuntu bash

docker exec -it u1 bash


