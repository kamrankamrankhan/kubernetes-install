# kubernetes-installation

First, you need to copy the master.sh script into master node and execute it. if you faced any error (otherwise please ignore), execute following cmds in master node

  sudo mkdir /etc/docker
  cat <<EOF | sudo tee /etc/docker/daemon.json
  {
    "exec-opts": ["native.cgroupdriver=systemd"],
    "log-driver": "json-file",
    "log-opts": {
      "max-size": "100m"
    },
    "storage-driver": "overlay2"
  }
  EOF
  
  sudo systemctl enable docker
  
  sudo systemctl daemon-reload
  
  sudo systemctl restart docker
  
  sudo kubeadm reset
  
  
Then, you needs to prepare node, to do so you need to copy and run node.sh script in node instance, and then run the joining (you will get the link while initilizing master node)

thanks!
