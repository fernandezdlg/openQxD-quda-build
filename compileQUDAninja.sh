#!/bin/bash
# This is a script based on Kate's one from the GPU Hackathon
# CMake version used before: 3.24.2

# env vars needed:
export CC=gcc-9
export CXX=g++-9
export FC=gfortran-9

# Assume we are in a build dir which lies on same level as ./quda/ source code directory
cmake -GNinja ../quda -DCMAKE_BUILD_TYPE=DEVEL -DQUDA_GPU_ARCH=sm_61 \
    -DQUDA_DIRAC_DEFAULT_OFF=ON -DQUDA_DIRAC_CLOVER=OFF -DQUDA_DIRAC_WILSON=ON \
    -DQUDA_CLOVER_DYNAMIC=OFF -DQUDA_CLOVER_RECONSTRUCT=OFF -DQUDA_INTERFACE_MILC=OFF -DQUDA_INTERFACE_QDP=OFF \
    -DQUDA_PRECISION=12 -DQUDA_RECONSTRUCT=4 \
    -DQUDA_FAST_COMPILE_DSLASH=ON -DQUDA_FAST_COMPILE_REDUCE=ON \
    -DQUDA_INTERFACE_OPENQCD=ON \
    -DQUDA_MPI=ON -DQUDA_DOWNLOAD_USQCD=OFF -DQUDA_QIO=OFF -DQUDA_QMP=OFF \
    -DQUDA_REORDER_LOCATION=GPU

# -DQUDA_MPI=OFF -DQUDA_DOWNLOAD_USQCD=ON -DQUDA_QIO=ON -DQUDA_QMP=ON 

# To build:
ninja
