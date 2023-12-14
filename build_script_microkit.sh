#!/bin/bash

sudo rm -rf picolib-microkit/
sudo mkdir picolib-microkit
cd picolib-microkit
mkdir ${HOME}/picolibc_build
sudo ../scripts/do-aarch64-configure-nocrt -Dprefix=${HOME}/picolibc_build
sudo ninja 
sudo ninja install

echo "picolibc.specs found at ./picolib-microkit/picolibc.specs"
echo "libc.a and libm.a found at ./picolib-microkit/newlib"
