#!/bin/bash

set -xeu

make autotools
export PKG_CONFIG_LIBDIR=/usr/lib/i386-linux-gnu/pkgconfig
export CFLAGS=-m32
export LDFLAGS=-m32

./configure --prefix=$(pwd)/build

make -j$(nproc)
make install