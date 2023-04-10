#!/bin/zsh
# RUN ONLY ONCE
# for cmake 3.24
export PATH=/home/jfernande/cmake-3.24.2-linux-x86_64/bin:$PATH
# for nvcc compiler:
export PATH=$PATH:/usr/local/cuda/bin
# for CUDA:
export CUDA_HOME=/usr/local/cuda
export GCC=mpicc
export MPI_INCLUDE=/usr/local/include/
export MPI_HOME=/usr/local/

# Define MPIRUN options
export OPENQXD_MPIRUN_OPTS=""
# Define directory to store the log files
export OPENQXD_CHECK_LOGDIR=""
