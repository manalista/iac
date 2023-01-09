#/bin/bash
docker swarm init --advertise-addr=192.168.56.100
docker swarm join-token worker | grep docker > /vagrant/node.sh