#!/bin/bash
# 5.6. Linux-5.19.2 API Headers
set -e
cd $LFS/sources
rm -rf linux-5.19.2
tar xf linux-5.19.2.tar.xz
cd linux-5.19.2

make mrproper
make INSTALL_HDR_PATH=dest headers_install
cp -rv dest/include/* /tools/include

cd $LFS/sources
rm -rf linux-5.19.2
