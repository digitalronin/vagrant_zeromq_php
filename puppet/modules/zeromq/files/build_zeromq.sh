#!/bin/bash


# /usr/local/include/zmq.h

wget 'http://download.zeromq.org/zeromq-3.2.2.tar.gz'

tar xzvf zeromq-3.2.2.tar.gz

cd zeromq-3.2.2

./configure

make

sudo make install

sudo ldconfig

