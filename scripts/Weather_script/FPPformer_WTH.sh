export CUDA_VISIBLE_DEVICES=0

model_name=FPPformer


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/Weather/  \
  --data_path 2020.csv \
  --model_id weather_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 3 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 21 \
  --dec_in 21 \
  --c_out 21 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --itr 1 \
  --order 0.8


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/Weather/  \
  --data_path 2020.csv \
  --model_id weather_96_192 \
  --model $model_name \
  --data custom \
  --features M \
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
  --d_model 512 \
  --d_ff 512 \
  --itr 1  \
  --order 0.7 \
#  --train_epochs 2


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/Weather/  \
  --data_path 2020.csv \
  --model_id weather_96_336 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 21 \
  --dec_in 21 \
  --c_out 21 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --itr 1  \
  --order 0.8 \


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/Weather/  \
  --data_path 2020.csv \
  --model_id weather_96_720 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 3 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 21 \
  --dec_in 21 \
  --c_out 21 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --itr 1 \
  --order 0.3

