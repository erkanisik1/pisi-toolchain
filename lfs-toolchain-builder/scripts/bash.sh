#!/bin/bash
# 5.16. Bash-5.1
set -e
cd $LFS/sources
rm -rf bash-5.1.16
tar xf bash-5.1.16.tar.gz
cd bash-5.1.16

./configure --prefix=/tools --without-bash-malloc
make
make install
ln -sv bash /tools/bin/sh

cd $LFS/sources
rm -rf bash-5.1.16
