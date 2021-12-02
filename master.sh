#!/bin/bash

sudo su

apt-get update

apt-get install -y apt-transport-https

apt install docker.io -y

docker --version

systemctl start docker

systemctl enable docker

apt-get install curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg| sudo apt-key add

chmod 777 /etc/apt/sources.list.d/

echo 'deb http://apt.kubernetes.io/ kubernetes-xenial main' > /etc/apt/sources.list.d/kubernetes.list

cat /etc/apt/sources.list.d/kubernetes.list

apt-get update

apt-get install -y kubelet kubeadm kubectl kubernetes-cni

swapoff -a

kubeadm init

# mkdir -p $HOME/.kube

# cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

# chown $(id -u):$(id -g) $HOME/.kube/config

# kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

# kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/k8s-manifests/kube-flannel-rbac.yml

# sudo kubectl get pods --all-namespaces

echo "DONE";
