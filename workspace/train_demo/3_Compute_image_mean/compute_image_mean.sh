#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

CAFFE_ROOT=~/caffe
PROJ_PATH=$CAFFE_ROOT/workspace/train_demo
LMDB_OUTPUT=$PROJ_PATH/lmdb
DB_LIST=$PROJ_PATH/db_list
TOOLS=$CAFFE_ROOT/build/tools

TRAIN_DATA_ROOT=$PROJ_PATH/database/train/
VAL_DATA_ROOT=$PROJ_PATH/database/val/
TRAIN_LMDB_OUTPUT=$LMDB_OUTPUT/train_lmdb
VAL_LMDB_OUTPUT=$LMDB_OUTPUT/val_lmdb

rm -rf $TRAIN_LMDB_OUTPUT/train_mean.binaryproto
rm -rf $VAL_LMDB_OUTPUT/val_mean.binaryproto



# Train images mean 
$TOOLS/compute_image_mean $TRAIN_LMDB_OUTPUT \
  $TRAIN_LMDB_OUTPUT/train_mean.binaryproto

# Test images mean
$TOOLS/compute_image_mean $VAL_LMDB_OUTPUT \
  $VAL_LMDB_OUTPUT/val_mean.binaryproto

echo "Done."
