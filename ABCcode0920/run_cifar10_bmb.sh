cd /discobox/wjpeng/code/2024/ImbalancedSSL/ABC/ABCcode0920
conda activate /discobox/wjpeng/env/bmb
git pull

FOLDERDIR="/discobox/wjpeng/ckp/BMB/rebuttal/combine/ABC_cifar100_r10_tcp-size128-get64-bp2-sp0.5-wt0.25"
mkdir $FOLDERDIR

python ABCfix.py \
--gpu 0 \
--num_max_l 150 \
--num_max_u 300 \
--dataset cifar100 \
--imb_ratio 10 \
--epoch 500 \
--val-iteration 500 \
--out $FOLDERDIR
