#!/bin/bash

set -ex

_make="make -j ${CPU_COUNT} V=1 VERBOSE=1"

# install from python build directory
_pybuilddir="_build${PY_VER}"
cd ${_pybuilddir}

# install binaries
${_make} install -C bin

# install system configuration files
${_make} install-sysconfDATA
