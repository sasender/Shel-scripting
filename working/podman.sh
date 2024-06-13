#!/bin/bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 4D64390375060AA4
ubuntu_version='22.04'
key_url="https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/unstable/xUbuntu_${ubuntu_version}/Release.key"
sources_url="https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/unstable/xUbuntu_${ubuntu_version}"

echo "deb $sources_url/ /" | tee /etc/apt/sources.list.d/devel:kubic:libcontainers:unstable.list
curl -fsSL $key_url | gpg --dearmor | tee /etc/apt/trusted.gpg.d/devel_kubic_libcontainers_unstable.gpg > /dev/null
apt update
apt install podman
podman -v
# Check if pip3 is installed
if pip3 --version 2>/dev/null; then
    echo "pip3 is installed"
else
    echo "pip3 is not installed. Installing python3-pip..."
    sudo apt-get update
    sudo apt-get install -y python3-pip
fi

# Install podman-compose using pip3
echo "Installing podman-compose..."
pip3 install https://github.com/containers/podman-compose/archive/devel.tar.gz
sudo podman-compose -v
