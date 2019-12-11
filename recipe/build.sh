#!/bin/bash

set -e

# only link libraries we actually use
export GSL_LIBS="-L${PREFIX}/lib -lgsl"

# configure
./configure \
	--prefix="${PREFIX}" \
	--disable-swig-octave \
	--disable-swig-python \
	--disable-python \
	--disable-gcc-flags \
	--enable-silent-rules \
	--enable-swig-iface \
;

# build
make -j ${CPU_COUNT}

# test
make -j ${CPU_COUNT} check

# install
make -j ${CPU_COUNT} install
