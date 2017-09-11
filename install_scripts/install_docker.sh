#!/bin/bash

if [ "`uname`" != "Linux" ]; then
  exit 0
fi

set -x

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update -qq -y

sudo apt-get install -qq -y lxc-docker

sudo usermod -aG docker $(whoami)

# install using dockers
docker pull ubuntu

set +x
