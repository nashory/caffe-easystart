caffe-easystart
================
Caffe training template for easy implementation

Environment
-----------
Ubuntu 16.04 <br />
gcc-5.4 <br />
caffe-master branch <br />
google progobuf 2.7.0 <br />
OpenCV 3.1.0 master branch <br />
CUDA 8.0 RC <br />
(ubuntu 14.04, OpenCV2, and CUDA7.5 will also works)

Set-up
------
copy and pase this source ('workspace' folder) to '~/caffe' folder. <br />
ex) ~/caffe/workspace/train_demo/1_Get_db_list .... <br /> <br />

change the CAFFE_ROOT paths in <br />
2\_Create_lmdb/CreateLMDB.sh <br />
3\_Compute\_image\_mean/compute\_image_mean.sh <br />

<br />
change the paths in <br />
4_Training/models/CaffeNet.prototxt <br />
4_Training/solver/sample_solver.prototxt <br />
4_Training/train_full.sh <br />

How to use?
-----------
(1) Copy and paste train/val images in database folder. (the folder name indicates the label of the corresponding image.)<br />
ex) 17/coffe_drinking/0045.jpg  ==> this image will be labeled as '17'<br />
(2) run "./1_Get_db_list/run_get_db_list.sh"  ==> it will generate db_list/db_list.txt<br />
(3) run "./2_Create_lmdb/CreateLMDB.sh" ==> it will squeeze the images into lmdb format<br />
(4) run "./3_Compute_imge_mean/compute_image_mean.sh" ==> it will compute image means.<br />
(5) run "./4_Training/train_full" ==> training start.<br />


%% Note that the result will be saved in 4_Training/result/snapshots.<br />
%% You can change the learning parameters by editting 4_Training/result/sample_solver.prototxt,<br />
%% You can change the network structure by editting 4_Training/models/CaffeNet.prototxt.<br />

