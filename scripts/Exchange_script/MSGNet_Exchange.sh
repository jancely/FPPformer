export CUDA_VISIBLE_DEVICES=1

model_name=MSGNet

python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path /home/liyh/data/exchange_rate/ \
    --data_path exchange_rate.csv \
    --model_id Exchange_96_96 \
    --model $model_name \
    --data custom \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len 96 \
    --label_len 48 \
    --pred_len 96 \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 8 \
    --dec_in 8 \
    --c_out 8 \
    --des 'Exp' \
    --d_model 64 \
    --d_ff 128 \
    --top_k 3 \
    --dropout 0.2 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/exchange/$model_name'_'exchange_$seq_len'_'$pred_len.log


python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path /home/liyh/data/exchange_rate/ \
    --data_path exchange_rate.csv \
    --model_id Exchange_96_192 \
    --model $model_name \
    --data custom \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len 96 \
    --label_len 48 \
    --pred_len 192 \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 8 \
    --dec_in 8 \
    --c_out 8 \
    --des 'Exp' \
    --d_model 64 \
    --d_ff 128 \
    --top_k 5 \
    --node_dim 30 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/exchange/$model_name'_'exchange_$seq_len'_'$pred_len.log


python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path /home/liyh/data/exchange_rate/ \
    --data_path exchange_rate.csv \
    --model_id Exchange_96_336 \
    --model $model_name \
    --data custom \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len 96 \
    --label_len 48 \
    --pred_len 336 \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 8 \
    --dec_in 8 \
    --c_out 8 \
    --des 'Exp' \
    --d_model 64 \
    --d_ff 128 \
    --top_k 5 \
    --node_dim 30 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/exchange/$model_name'_'exchange_$seq_len'_'$pred_len.log


python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path /home/liyh/data/exchange_rate/ \
    --data_path exchange_rate.csv \
    --model_id Exchange_96_720 \
    --model $model_name \
    --data custom \
    --features M \
    --freq h \
    --target 'OT' \
    --seq_len 96 \
    --label_len 48 \
    --pred_len 720 \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 8 \
    --dec_in 8 \
    --c_out 8 \
    --des 'Exp' \
    --d_model 64 \
    --d_ff 128 \
    --top_k 5 \
    --conv_channel 16 \
    --skip_channel 32 \
    --batch_size 32 \
    --itr 1 #>logs/exchange/$model_name'_'exchange_$seq_len'_'$pred_len.log