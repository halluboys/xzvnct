#!/bin/bash
apt-get install build-essential -y
wget -c https://github.com/neurobin/shc/archive/4.0.2.tar.gz
tar xzvf 4.0.2.tar.gz 
cd shc-4.0.2/
./configure 
make
make install
