#!/bin/bash
# 5.26. Gzip-1.12
set -e
cd $LFS/sources
rm -rf gzip-1.12
tar xf gzip-1.12.tar.xz
cd gzip-1.12

sed -i 's/IO_ftrylockfile/IO_EOF_SEEN/' lib/*.c
echo "#define _IO_IN_BACKUP 0x100" >> lib/stdio-impl.h
./configure --prefix=/tools
make
make install

cd $LFS/sources
rm -rf gzip-1.12
