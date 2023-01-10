wget -O get-docker.sh https://get.docker.com 
sudo sh get-docker.sh
#sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker vagrant

echo "Abrindo portas"
sudo iptables -I INPUT -j ACCEPT -p tcp --dport 80
sudo iptables -I INPUT -j ACCEPT -p tcp --dport 2377
sudo iptables -I INPUT -j ACCEPT -p tcp --dport 7946
sudo iptables -I INPUT -j ACCEPT -p tcp --dport 4789

sudo iptables -I INPUT -j ACCEPT -p udp --dport 7946
sudo iptables -I INPUT -j ACCEPT -p udp --dport 4789