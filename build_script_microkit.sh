#!/bin/bash

sudo rm -rf build-picolib-microkit/
sudo mkdir -p build-picolib-microkit
cd build-picolib-microkit
mkdir ${HOME}/picolibc_build
sudo ../scripts/do-aarch64-configure-nocrt -Dprefix=${HOME}/picolibc_build
sudo ninja 
sudo ninja install
