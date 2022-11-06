#!/bin/bash
# 5.31. Tar-1.34
set -e
cd $LFS/sources
rm -rf tar-1.34
tar xf tar-1.34.tar.xz
cd tar-1.34

export FORCE_UNSAFE_CONFIGURE=1

./configure --prefix=/tools
make
make install

cd $LFS/sources
rm -rf tar-1.34