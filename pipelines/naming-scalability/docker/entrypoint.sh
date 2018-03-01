#!/bin/bash

set -ex

rm -rf build || true
mkdir build
cd build

# Will fail if there is no source code in /root
cmake ..
make

/bin/bash
