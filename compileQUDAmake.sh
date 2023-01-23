#!/bin/bash
# This is a script based on Kate's one from the GPU Hackathon
# CMake version used before: 3.24.2

# env vars needed:
export CC=gcc-9
export CXX=g++-9
export FC=gfortran-9

# Assume we are in a build dir which lies on same level as ./quda/ source code directory
cmake ../quda -DQUDA_MPI=ON -DQUDA_GPU_ARCH=sm_60 \
    -DQUDA_DIRAC_DEFAULT_OFF=ON -DQUDA_DIRAC_CLOVER=ON -DQUDA_DIRAC_WILSON=ON \
    -DQUDA_PRECISION=12 -DQUDA_RECONSTRUCT=4 \
    -DQUDA_FAST_COMPILE_DSLASH=ON -DQUDA_FAST_COMPILE_REDUCE=ON \
    -DQUDA_INTERFACE_OPENQCD=ON

# To build (make -j N means to run N jobs in parallel):
make -j 12