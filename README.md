#caffe-easystart
Caffe training template for easy implementation

Environment
-----------
Ubuntu 16.04

gcc-5.4

caffe-master branch

google progobuf 2.7.0

OpenCV 3.1.0 master branch

CUDA 8.0 RC

(ubuntu 14.04, OpenCV2, and CUDA7.5 will also works)

#Set-up
change the CAFFE_ROOT paths in 
2\_Create_lmdb/CreateLMDB.sh
3\_Compute\_image\_mean/compute\_image_mean.sh

change the paths in 
4_Training/models/CaffeNet.prototxt
4_Training/solver/sample_solver.prototxt
4_Training/train_full.sh

# How to use?

Protocol Buffers - Google's data interchange format
===================================================

[![Build Status](https://travis-ci.org/google/protobuf.svg?branch=master)](https://travis-ci.org/google/protobuf) [![Build status](https://ci.appveyor.com/api/projects/status/73ctee6ua4w2ruin?svg=true)](https://ci.appveyor.com/project/protobuf/protobuf) [![Build Status](https://grpc-testing.appspot.com/buildStatus/icon?job=protobuf_branch)](https://grpc-testing.appspot.com/job/protobuf_branch)

Copyright 2008 Google Inc.

https://developers.google.com/protocol-buffers/

Overview
--------

Protocol Buffers (a.k.a., protobuf) are Google's language-neutral,
platform-neutral, extensible mechanism for serializing structured data. You
can find [protobuf's documentation on the Google Developers site](https://developers.google.com/protocol-buffers/).

This README file contains protobuf installation instructions. To install
protobuf, you need to install the protocol compiler (used to compile .proto
files) and the protobuf runtime for your chosen programming language.

Protocol Compiler Installation
------------------------------
