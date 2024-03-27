# Directly train global retrieval and reranking modules together, use --finetune 1 --fix 0 to enable training of both modules at the same time
python3 -u train_reranker.py \
        --finetune 1 \
        --fix 0 \
        --dataset_name=msls \
        --backbone deit \
        --aggregation=gem \
        --mining partial \
        --datasets_folder ../datasets_vg/datasets  \
        --save_dir end_to_end \
        --lr 0.0001 \
        --cos \
        --fc_output_dim 256 \
        --num_workers 8 \
        --warmup 5 \
        --optim adamw \
        --epochs_num 100 \
        --patience 50 \
        --negs_num_per_query 1 \
        --queries_per_epoch 50000 \
        --cache_refresh_rate 10000 \
        --infer_batch_size 512 \
        --rerank_batch_size 20 \
        --train_batch_size 64 \
        --save_best 0