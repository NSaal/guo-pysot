../../add_PATH.sh
START=7
END=10
seq $START 1 $END | \
    xargs -I {} echo "snapshot/checkpoint_e{}.pth" | \
    xargs -I {} python -u ../../tools/test.py \
    --snapshot {} \
	--config config.yaml \
	--dataset VOT2016 2>&1 | tee logs/test_dataset.log