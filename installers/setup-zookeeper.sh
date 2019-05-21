#!/bin/sh

# Fail on error
set -e

# Update deps
sudo apt-get update
sudo apt-get upgrade

ZK_VERSION="3.4.13"

echo "Downloading ZOOOKEEPER..."


wget --no-check-certificate  http://mirrors.estointernet.in/apache/zookeeper/zookeeper-${ZK_VERSION}/zookeeper-${ZK_VERSION}.tar.gz ~/
sudo mv zookeeper-${ZK_VERSION}.tar.gz ~/bin
cd ~/bin && sudo tar -xzf zookeeper-${ZK_VERSION}.tar.gz
sudo ln -s ~/bin/zookeeper-${ZK_VERSION} ~/bin/zookeeper
sudo mv ~/bin/zookeeper/conf/zoo_sample.cfg ~/bin/zookeeper/conf/zoo.cfg

echo "Done!"
