#!/bin/bash

sudo rm -rf build-aarch64-linux-elf_nocrt2
sudo mkdir build-aarch64-linux-elf_nocrt2
cd build-aarch64-linux-elf_nocrt2
sudo ../scripts/do-aarch64-configure-nocrt -Dprefix=/home/dstorer/mk-manifest/microkit/example/zcu102/hello_libc/picolibc_build
sudo ninja 
sudo ninja install