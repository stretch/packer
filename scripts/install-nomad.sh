#!/bin/bash
set -e

echo "Installing dependencies..."
sudo yum install -y unzip

echo "Fetching Nomad..."
cd /tmp
curl -s -L -o nomad.zip https://releases.hashicorp.com/nomad/0.1.2/nomad_0.1.2_linux_amd64.zip

echo "Installing Nomad..."
unzip nomad.zip >/dev/null
sudo chmod +x nomad
sudo mv nomad /usr/local/bin/nomad
