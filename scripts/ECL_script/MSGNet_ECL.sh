export CUDA_VISIBLE_DEVICES=1

model_name=MSGNet

#for seq_len in 96
#do
python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path /home/liyh/data/electricity/ \
    --data_path electricity.csv \
    --model_id electricity_96_96 \
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
    --enc_in 321 \
    --dec_in 321 \
    --c_out 321 \
    --des 'Exp' \
    --d_model 1024 \
    --d_ff 512 \
    --top_k 5 \
    --conv_channel 16 \
    --skip_channel 32 \
    --node_dim 100 \
    --batch_size 32 \
    --itr 1 \
    --seq_len 144 \
    #--seq_len $seq_len #>logs/electricity/$model_name'_'electricity_$seq_len'_'$pred_len.log

"
python -u run.py \
   --task_name long_term_forecast \
   --is_training 1 \
   --root_path /home/liyh/data/electricity/ \
   --data_path electricity.csv \
   --model_id electricity_96_192 \
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
   --enc_in 321 \
   --dec_in 321 \
   --c_out 321 \
   --des 'Exp' \
   --d_model 1024 \
   --d_ff 512 \
   --top_k 5 \
   --conv_channel 16 \
   --skip_channel 32 \
   --node_dim 100 \
   --batch_size 32 \
   --itr 1 #>logs/electricity/$model_name'_'electricity_$seq_len'_'$pred_len.log

python -u run.py \
   --task_name long_term_forecast \
   --is_training 1 \
   --root_path /home/liyh/data/electricity/ \
   --data_path electricity.csv \
   --model_id electricity_96_336 \
   --model $model_name \
   --data custom \
   --features M \
   --freq h \
   --target 'OT' \
   --seq_len 96 \
   --label_len 48 \
   --pred_len 336 \
   --e_layers 3 \
   --d_layers 1 \
   --factor 3 \
   --enc_in 321 \
   --dec_in 321 \
   --c_out 321 \
   --des 'Exp' \
   --d_model 1024 \
   --d_ff 512 \
   --top_k 5 \
   --conv_channel 16 \
   --skip_channel 32 \
   --node_dim 100 \
   --batch_size 32 \
   --itr 1 #>logs/electricity/$model_name'_'electricity_$seq_len'_'$pred_len.log


python -u run.py \
   --task_name long_term_forecast \
   --is_training 1 \
   --root_path /home/liyh/data/electricity/ \
   --data_path electricity.csv \
   --model_id electricity_96_720 \
   --model $model_name \
   --data custom \
   --features M \
   --freq h \
   --target 'OT' \
   --seq_len 96 \
   --label_len 48 \
   --pred_len 720 \
   --e_layers 3 \
   --d_layers 1 \
   --factor 3 \
   --enc_in 321 \
   --dec_in 321 \
   --c_out 321 \
   --des 'Exp' \
   --d_model 1024 \
   --d_ff 512 \
   --top_k 5 \
   --conv_channel 16 \
   --skip_channel 32 \
   --node_dim 100 \
   --batch_size 32 \
   --itr 1 #>logs/electricity/$model_name'_'electricity_$seq_len'_'$pred_len.log
"
#done
