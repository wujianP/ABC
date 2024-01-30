cd /discobox/wjpeng/code/2024/ImbalancedSSL/ABC/ABCcode0920
conda activate /discobox/wjpeng/env/bmb
git pull

NAME=ABC_cifar100_r10_tcp-size128-get64-bp1-sp1-wt1
FOLDERDIR=/discobox/wjpeng/ckp/BMB/rebuttal/combine/$NAME
mkdir $FOLDERDIR

python ABCfix.py \
--gpu 3 \
--num_max_l 150 \
--num_max_u 300 \
--dataset cifar100 \
--imb_ratio 10 \
--epoch 500 \
--val-iteration 500 \
--out $FOLDERDIR \
--pool_size 128 \
--get_num 64 \
--bp_power 1 \
--sp_power 1 \
--bmb_loss_wt 1 \
--wandb_project_name ABC_BMB_CIFAR100 \
--wandb_name $NAME
