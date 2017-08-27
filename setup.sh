#!/bin/bash

cd /vagrant

apt-get update
apt-get -y install wget
apt-get -y install python3 python3-pip
apt-get -y install git
apt-get -y install graphviz
apt-get -y install valgrind kcachegrind
pip3 install --upgrade pip
pip3 install pyprof2calltree

#pip3 install gprof2dot
#pip3 install flake8
#pip3 install hacking
#pip3 install pylint
#pip3 install pycallgraph

pip3 install http://download.pytorch.org/whl/cu75/torch-0.2.0.post1-cp35-cp35m-manylinux1_x86_64.whl 
pip3 install torchvision
git clone https://github.com/OpenNMT/OpenNMT-py.git
cd /vagrant/OpenNMT-py
pip3 install -r requirements.txt
