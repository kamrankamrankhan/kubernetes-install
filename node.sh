
#!/bin/bash

 
sudo apt-get update

sudo apt-get install -y apt-transport-https

sudo  apt install docker.io -y

docker --version

sudo systemctl start docker

sudo systemctl enable docker

sudo apt-get install curl

sudo curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg| sudo apt-key add

sudo chmod 777 /etc/apt/sources.list.d/

sudo echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' > /etc/apt/sources.list.d/kubernetes.list

cat /etc/apt/sources.list.d/kubernetes.list

sudo apt-get update

sudo apt-get install -y kubelet kubeadm kubectl kubernetes-cni
