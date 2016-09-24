#/bin/bash -e

## Get database list.
train_list=$(echo python get_db_list.py train ../database ../db_list)
val_list=$(echo python get_db_list.py val ../database ../db_list)
echo $list
#Execute
$train_list
$val_list

