model_name=Mamba

for seq_len in 96
do

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/Weather/ \
  --data_path 2020.csv \
  --model_id weather_$pred_len'_'$pred_len \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 21 \
  --expand 2 \
  --d_ff 16 \
  --d_conv 4 \
  --c_out 21 \
  --d_model 128 \
  --des 'Exp' \
  --itr 1 \

done
