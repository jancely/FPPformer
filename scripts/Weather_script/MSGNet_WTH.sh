export CUDA_VISIBLE_DEVICES=0

model_name=MSGNet

#for seq_len in 96
#do
python -u run.py \
    --task_name long_term_forecast \
    --is_training 1 \
    --root_path /home/liyh/data/Weather/ \
    --data_path 2020.csv \
    --model_id weather_96_96 \
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
    --enc_in 21 \
    --dec_in 21 \
    --c_out 21 \
    --des 'Exp' \
    --d_model 64 \
    --d_ff 128 \
    --top_k 5 \
    --conv_channel 32 \
    --skip_channel 32 \
    --batch_size 32 \
    --train_epochs 3 \
    --itr 1 \
    #--seq_len $seq_len #>logs/weather/$model_name'_'weather_$seq_len'_'$pred_len.log
"
python -u run.py \
   --task_name long_term_forecast \
   --is_training 1 \
   --root_path /home/liyh/data/Weather/ \
   --data_path 2020.csv \
   --model_id weather_96_192 \
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
   --enc_in 21 \
   --dec_in 21 \
   --c_out 21 \
   --des 'Exp' \
   --d_model 64 \
   --d_ff 128 \
   --top_k 5 \
   --conv_channel 32 \
   --skip_channel 32 \
   --batch_size 32 \
   --itr 1 #>logs/weather/$model_name'_'weather_$seq_len'_'$pred_len.log

python -u run.py \
   --task_name long_term_forecast \
   --is_training 1 \
   --root_path /home/liyh/data/Weather/ \
   --data_path 2020.csv \
   --model_id weather_96_336 \
   --model $model_name \
   --data custom \
   --features M \
   --freq h \
   --target 'OT' \
   --seq_len 96 \
   --label_len 48 \
   --pred_len 336 \
   --e_layers 1 \
   --d_layers 1 \
   --factor 3 \
   --enc_in 21 \
   --dec_in 21 \
   --c_out 21 \
   --des 'Exp' \
   --d_model 64 \
   --d_ff 128 \
   --top_k 5 \
   --conv_channel 32 \
   --skip_channel 32 \
   --batch_size 32 \
   --itr 1 #>logs/weather/$model_name'_'weather_$seq_len'_'$pred_len.log

python -u run.py \
   --task_name long_term_forecast \
   --is_training 1 \
   --root_path /home/liyh/data/Weather/ \
   --data_path 2020.csv \
   --model_id weather_96_720 \
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
   --enc_in 21 \
   --dec_in 21 \
   --c_out 21 \
   --des 'Exp' \
   --d_model 64 \
   --d_ff 128 \
   --top_k 5 \
   --conv_channel 32 \
   --skip_channel 32 \
   --batch_size 32 \
   --itr 1 #>logs/weather/$model_name'_'weather_$seq_len'_'$pred_len.log
"
#done
