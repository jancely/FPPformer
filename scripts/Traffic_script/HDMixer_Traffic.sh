export CUDA_VISIBLE_DEVICES=1


model_name=HDMixer
down_sampling_layers=2
down_sampling_window=2

python -u run.py \
  --task_name long_term_forecas \
  --is_training 1 \
  --root_path /home/liyh/data/traffic/ \
  --data_path traffic.csv \
  --model_id traffic_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 0 \
  --pred_len 96 \
  --e_layers 1 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --top_k 5 \
  --des 'Exp' \
  --itr 1 \
  --d_model 32 \
  --d_ff 64 \
  --batch_size 8 \
  --learning_rate 0.01 \
  --n_heads 4 \
  --dropout 0.8 \
  --fc_dropout 0.3 \
  --head_dropout 0 \
  --patience 3 \
  --down_sampling_layers $down_sampling_layers \
  --down_sampling_method avg \
  --down_sampling_window $down_sampling_window


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
  --label_len 0 \
  --pred_len 192 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --top_k 5 \
  --des 'Exp' \
  --itr 1 \
  --d_model 32 \
  --d_ff 64 \
  --batch_size 8 \
  --n_heads 4 \
  --learning_rate 0.01 \
  --dropout 0.8 \
  --fc_dropout 0.3 \
  --head_dropout 0 \
  --patience 3 \
  --down_sampling_layers $down_sampling_layers \
  --down_sampling_method avg \
  --down_sampling_window $down_sampling_window

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
  --label_len 0 \
  --pred_len 336 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --top_k 5 \
  --des 'Exp' \
  --itr 1 \
  --d_model 32 \
  --d_ff 64 \
  --batch_size 8 \
  --n_heads 4 \
  --learning_rate 0.01 \
  --dropout 0.8 \
  --fc_dropout 0.3 \
  --head_dropout 0 \
  --patience 3 \
  --down_sampling_layers $down_sampling_layers \
  --down_sampling_method avg \
  --down_sampling_window $down_sampling_window

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/traffic/ \
  --data_path traffic.csv \
  --model_id traffic_96_720 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 0 \
  --pred_len 720 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 862 \
  --dec_in 862 \
  --c_out 862 \
  --top_k 5 \
  --des 'Exp' \
  --itr 1 \
  --d_model 32 \
  --d_ff 64 \
  --batch_size 8 \
  --n_heads 4 \
  --learning_rate 0.01 \
  --dropout 0.8 \
  --fc_dropout 0.3 \
  --head_dropout 0 \
  --patience 3 \
  --down_sampling_layers $down_sampling_layers \
  --down_sampling_method avg \
  --down_sampling_window $down_sampling_window

