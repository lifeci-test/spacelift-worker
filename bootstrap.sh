#!/bin/bash

sudo yum install -y docker
sudo systemctl enable docker
sudo curl -L https://downloads.spacelift.io/spacelift-launcher -o /usr/bin/spacelift-launcher
sudo chmod +x /usr/bin/spacelift-launcher
sudo mv spacelift-launcher.service /etc/systemd/system/spacelift-launcher.service
sudo mv spacelift-launcher /etc/sysconfig/spacelift-launcher
sudo systemctl enable spacelift-launcher
