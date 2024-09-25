#!/bin/bash

cd /source

./configure
make

mkdir -p ./out
make DESTDIR=/source/out install
