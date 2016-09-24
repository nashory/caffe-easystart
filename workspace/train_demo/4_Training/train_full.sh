#!/usr/bin/env sh
set -e

CAFFE_ROOT=~/caffe
PROJ_PATH=$CAFFE_ROOT/workspace/train_demo
LMDB_OUTPUT=$PROJ_PATH/lmdb
DB_LIST=$PROJ_PATH/db_list
TOOLS=$CAFFE_ROOT/build/tools


$TOOLS/caffe train \
    --solver=$PROJ_PATH/4_Training/solver/sample_solver.prototxt $@

# reduce learning rate by factor of 10
#$TOOLS/caffe train \
#    --solver=$PROJ_PATH/4_Training/solver/sample_solver_lr1.prototxt \
#    --snapshot=$PROJ_PATH/4_Training/result/snapshot/solver_iter_1.solverstate.h5 $@
