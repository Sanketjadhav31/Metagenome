#!/bin/bash

### Install Dependencies
#conda install cmake zlib bz2file conda-forge::m2-libbz2 gcc_linux-64 autoconf automake
conda install cmake zlib bz2file gcc_linux-64 autoconf automake


cd tools/assemblers/ || exit
git clone https://github.com/loneknightpy/idba.git

cd idba/ || exit
./build.sh

