#!/bin/bash
  
###################
# Install Arrayfire
###################

wget https://cmake.org/files/v3.11/cmake-3.11.3.tar.gz
tar -xzvf cmake-3.11.3.tar.gz
cd cmake-3.11.3
./bootstrap
make install
cd ..

# To update to the new version
sudo update-alternatives --install /usr/bin/cmake cmake /usr/local/bin/cmake 1 --force
