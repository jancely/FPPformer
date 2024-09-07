export CUDA_VISIBLE_DEVICES=1

model_name=Preformer

#for order in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9
# for diff in 0.0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
for seq_len in 144
do

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/traffic/ \
  --data_path traffic.csv \
  --model_id traffic_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 96 \
  --e_layers 3 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --des 'Exp' \
  --d_model 256 \
  --d_ff 1024 \
  --itr 1 \
  --order 0.\
  --learning_rate 0.0005 \
  --seq_len  $seq_len

"
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/traffic/ \
  --data_path traffic.csv \
  --model_id traffic_96_192 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 192 \
  --e_layers 2 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --des 'Exp' \
  --d_model 256 \
  --d_ff 1024 \
  --itr 1 \
  --order 0. \
  --learning_rate 0.0005

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/traffic/ \
  --data_path traffic.csv \
  --model_id traffic_96_336 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 336 \
  --e_layers 2 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --des 'Exp' \
  --itr 1 \
  --d_model 256 \
  --d_ff 1024 \
  --train_epochs 10 \
  --order 0. \
  --learning_rate 0.0005

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1  \
  --root_path /home/liyh/data/traffic/ \
  --data_path traffic.csv \
  --model_id traffic_96_720 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --pred_len 720 \
  --e_layers 2 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --des 'Exp' \
  --d_model 256 \
  --d_ff 1024 \
  --itr 1 \
  --order 0. \
  --learning_rate 0.0005
"
done
