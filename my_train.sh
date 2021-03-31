export PYTHONPATH=/raid/User/gqr/resp/guo-pysot:$PYTHONPATH
cd experiments/siamrpn_r50_l234_dwxcorr_8gpu
python -m torch.distributed.launch \
--nproc_per_node=2 \
--master_port=2333 \
../../tools/train.py \
--cfg config.yaml
