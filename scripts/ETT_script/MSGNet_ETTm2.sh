export CUDA_VISIBLE_DEVICES=0

model_name=MSGNet

python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path /home/liyh/data/ETT/ \
    --data_path ETTm2.csv \
    --model_id ETTm2_96_96 \
    --model $model_name \
    --data ETTm2 \
    --features M \
    --target 'OT' \
    --seq_len 96 \
    --label_len 48 \
    --pred_len 96 \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 32 \
    --d_ff 32 \
    --top_k 3 \
    --conv_channel 32 \
    --skip_channel 32 \
    --dropout 0.3 \
    --batch_size 32 \
    --itr 1 #>logs/ETTm2/$model_name'_'ETTm2_$seq_len'_'$pred_len.log


python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path /home/liyh/data/ETT/ \
    --data_path ETTm2.csv \
    --model_id ETTm2_96_192 \
    --model $model_name \
    --data ETTm2 \
    --features M \
    --target 'OT' \
    --seq_len 96 \
    --label_len 48 \
    --pred_len 192 \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 32 \
    --d_ff 64 \
    --top_k 3 \
    --conv_channel 32 \
    --skip_channel 32 \
    --dropout 0.3 \
    --batch_size 32 \
    --itr 1 #>logs/ETTm2/$model_name'_'ETTm2_$seq_len'_'$pred_len.log


python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path /home/liyh/data/ETT/ \
    --data_path ETTm2.csv \
    --model_id ETTm2_96_336 \
    --model $model_name \
    --data ETTm2 \
    --features M \
    --target 'OT' \
    --seq_len 96 \
    --label_len 48 \
    --pred_len 336 \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 32 \
    --d_ff 32 \
    --top_k 3 \
    --conv_channel 32 \
    --skip_channel 32 \
    --dropout 0.3 \
    --batch_size 32 \
    --itr 1 #>logs/ETTm2/$model_name'_'ETTm2_$seq_len'_'$pred_len.log


python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path /home/liyh/data/ETT/ \
    --data_path ETTm2.csv \
    --model_id ETTm2_96_720 \
    --model $model_name \
    --data ETTm2 \
    --features M \
    --target 'OT' \
    --seq_len 96 \
    --label_len 48 \
    --pred_len 720 \
    --e_layers 2 \
    --d_layers 1 \
    --factor 3 \
    --enc_in 7 \
    --dec_in 7 \
    --c_out 7 \
    --des 'Exp' \
    --d_model 32 \
    --d_ff 64 \
    --top_k 3 \
    --conv_channel 32 \
    --skip_channel 32 \
    --dropout 0.3 \
    --batch_size 32 \
    --itr 1 #>logs/ETTm2/$model_name'_'ETTm2_$seq_len'_'$pred_len.log
