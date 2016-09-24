caffe-easystart
================
Caffe training template for easy implementation

Environment
-----------
Ubuntu 16.04, gcc-5.4, caffe-master branch, google progobuf 2.7.0, OpenCV 3.1.0 master branch, CUDA 8.0 RC

(ubuntu 14.04, OpenCV2, and CUDA7.5 will also works)

Set-up
------
change the CAFFE_ROOT paths in 

2\_Create_lmdb/CreateLMDB.sh

3\_Compute\_image\_mean/compute\_image_mean.sh

change the paths in 

4_Training/models/CaffeNet.prototxt

4_Training/solver/sample_solver.prototxt

4_Training/train_full.sh

How to use?
-----------
(1) Copy and paste train/val imges in database folder. (the folder name indicates the label of the corresponding image.)

ex) 17/coffe_drinking/0045.jpg  ==> this image will be labeled as '17'

(2) run "./1_Get_db_list/run_get_db_list.sh"  ==> it will generate db_list/db_list.txt

(3) run "./2_Create_lmdb/CreateLMDB.sh" ==> it will squeeze the images into lmdb format

(4) run "./3_Compute_imge_mean/compute_image_mean.sh" ==> it will compute image means.

(5) run "./4_Training/train_full" ==> training start.

%% Note that the result will be saved in 4_Training/result/snapshots.

%% You can change the learning parameters by editting 4_Training/result/sample_solver.prototxt,

%% You can change the network structure by editting 4_Training/models/CaffeNet.prototxt.

