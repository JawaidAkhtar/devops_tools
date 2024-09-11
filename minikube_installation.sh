#!/bin/bash

#update the system
sudo apt update

#install https
sudo apt install -y curl wget apt-transport-https

#install docker 
sudo apt install -y docker.io

#enable docker 
sudo systemctl enable --now docker

#adding current user in docker group for necessary permissions
sudo usermod -aG docker $USER && newgrp docker

#downloading minikube binary 
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

#installing minikube
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

#downloading kubectl binary
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

#installing kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


