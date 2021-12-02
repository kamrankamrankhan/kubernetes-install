!#/usr/bin/bash

sudo su
apt-get update
apt-get install apt-transport-https


apt install docker.io -y
docker --version
systemctl start docker
systemctl enable docker

sudo curl -s https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbWlvWkZOX1lFVnBVZkYzWXJlaEJuYW1wUUJpUXxBQ3Jtc0ttelMxZ3R2Vm5SeFEtaHZuRVFoWktEUWQtWFRUWE1hUnVCUkhoT25tY0tKTkNIandtd0x4T0pvcHNfZmxfVUN1Yk9BSXUzRnpxZy1Cc05zbnlraV9BbEF6TV90cWxnVzFGWWRzNUY4NzlRVjlIWjhOcw&q=https%3A%2F%2Fpackages.cloud.google.com%2Fapt%2Fdoc%2Fapt-key.gpg | sudo apt-key add 


nano /etc/apt/sources.list.d/kubernetes.list

deb http://apt.kubernetes.io/ kubernetes-xenial main


apt-get update

apt-get install -y kubelet kubeadm kubectl kubernetes-cni
