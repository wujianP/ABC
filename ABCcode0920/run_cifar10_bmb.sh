cd /discobox/wjpeng/code/2024/ImbalancedSSL/ABC/ABCcode0920
conda activate /discobox/wjpeng/env/bmb
git pull

NAME=ABC_cifar10_r20_tcp-size128-get64-bp2-sp1-wt1
FOLDERDIR=/discobox/wjpeng/ckp/BMB/rebuttal/combine/$NAME
mkdir $FOLDERDIR

python ABCfix.py \
--gpu 7 \
--num_max_l 1500 \
--num_max_u 3000 \
--dataset cifar10 \
--wandb_project_name ABC_BMB_CIFAR10 \
--imb_ratio 20 \
--epoch 500 \
--val-iteration 500 \
--out $FOLDERDIR \
--pool_size 128 \
--get_num 64 \
--wandb_name $NAME \
--bp_power 2 \
--sp_power 1 \
--bmb_loss_wt 1
