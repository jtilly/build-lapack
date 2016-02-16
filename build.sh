#!/bin/bash

# download and unpack lapack
wget http://www.netlib.org/lapack/lapack-3.6.0.tgz
tar xf lapack-3.6.0.tgz
cd lapack-3.6.0

# create the make.inc from example
mv make.inc.example make.inc

# uncomment the right line
sed -i -e 's/lib:\ lapacklib\ tmglib /\#lib:\ lapacklib\ tmglib/g' Makefile 
sed -i -e 's/#lib:\ blaslib\ variants/\lib:\ blaslib\ variants/g' Makefile 

# build
make lib

