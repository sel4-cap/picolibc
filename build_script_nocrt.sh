#!/bin/bash

sudo rm -rf build-aarch64-linux-elf_nocrt2
sudo mkdir build-aarch64-linux-elf_nocrt2
cd build-aarch64-linux-elf_nocrt2
mkdir ${HOME}/picolibc_build
sudo ../scripts/do-aarch64-configure-nocrt -Dprefix=${HOME}/picolibc_build
sudo ninja 
sudo ninja install
