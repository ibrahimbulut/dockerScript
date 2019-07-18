#1/bin/bash

#burda kali linux için docker ve docker üzerine ubuntu image kuruyoruz.

#docker için gpg keyi alıyoruz
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

#kali linux için debian docker reposu ekliyoruz
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' > /etc/apt/sources.list.d/docker.list

#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

apt-get remove docker docker-engine docker.io


apt-get install docker-ceapt-get install docker-ce

systemctl start docker

systemctl enable docker

docker run --name u1 -id ubuntu bash

docker exec -it u1 bash


