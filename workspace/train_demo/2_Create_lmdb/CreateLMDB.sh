#!/usr/bin/env sh
# Create the imagenet lmdb inputs
# N.B. set the path to the imagenet train + val data dirs
set -e

CAFFE_ROOT=~/caffe
PROJ_PATH=$CAFFE_ROOT/workspace/train_demo
LMDB_OUTPUT=$PROJ_PATH/lmdb
DB_LIST=$PROJ_PATH/db_list
TOOLS=$CAFFE_ROOT/build/tools

TRAIN_DATA_ROOT=$PROJ_PATH/database/train/
VAL_DATA_ROOT=$PROJ_PATH/database/val/
TRAIN_LMDB_OUTPUT=$LMDB_OUTPUT/train_lmdb
VAL_LMDB_OUTPUT=$LMDB_OUTPUT/val_lmdb

# Set RESIZE=true to resize the images to 256x256. Leave as false if images have
# already been resized using another tool.
RESIZE=true
if $RESIZE; then
  RESIZE_HEIGHT=96
  RESIZE_WIDTH=96
else
  RESIZE_HEIGHT=0
  RESIZE_WIDTH=0
fi

if [ ! -d "$TRAIN_DATA_ROOT" ]; then
  echo "Error: TRAIN_DATA_ROOT is not a path to a directory: $TRAIN_DATA_ROOT"
  echo "Set the TRAIN_DATA_ROOT variable in create_imagenet.sh to the path" \
       "where the ImageNet training data is stored."
  exit 1
fi
if [ ! -d "$VAL_DATA_ROOT" ]; then
  echo "Error: VAL_DATA_ROOT is not a path to a directory: $VAL_DATA_ROOT"
  echo "Set the VAL_DATA_ROOT variable in create_imagenet.sh to the path" \
       "where the ImageNet validation data is stored."
  exit 1
fi

# Make sure that directory exists.
rm -rf $LMDB_OUTPUT
mkdir $LMDB_OUTPUT
rm -rf $TRAIN_LMDB_OUTPUT


# Create LMDB.
echo "Creating train lmdb..."
GLOG_logtostderr=1 $TOOLS/convert_imageset \
    --resize_height=$RESIZE_HEIGHT \
    --resize_width=$RESIZE_WIDTH \
    --shuffle \
    $TRAIN_DATA_ROOT \
    $DB_LIST/train/db_list.txt \
    $TRAIN_LMDB_OUTPUT



echo "Creating val lmdb..."
GLOG_logtostderr=1 $TOOLS/convert_imageset \
    --resize_height=$RESIZE_HEIGHT \
    --resize_width=$RESIZE_WIDTH \
    --shuffle \
    $VAL_DATA_ROOT \
    $DB_LIST/val/db_list.txt \
    $VAL_LMDB_OUTPUT


echo "======================================================="
echo "Congrats! Process has been sucessfully Done."






