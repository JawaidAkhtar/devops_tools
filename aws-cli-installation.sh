#!/bin/bash

#Downloading aws-cli zip file
echo "Downloading AWS_CLI..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

#Installing unzip tool

echo "Installing unzip tool..."
sudo apt install unzip

#Unzip AWS_CLI zip file
unzip awscliv2.zip

#Installing AWS_CLI
echo "Installing AWS_CLI..."
sudo ./aws/install
