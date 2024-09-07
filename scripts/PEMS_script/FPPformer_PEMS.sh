export CUDA_VISIBLE_DEVICES=1

model_name=FPPformer

#for order in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
#do

python -u run.py \
  --is_training 1 \
  --task_name long_term_forecast \
  --root_path /home/liyh/data/PEMS/PEMS/ \
  --data_path PEMS08.npz \
  --model_id PEMS08_96_12 \
  --model $model_name \
  --data PEMS \
  --features M \
  --seq_len 96 \
  --pred_len 12 \
  --e_layers 2 \
  --enc_in 170 \
  --dec_in 170 \
  --c_out 170 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --itr 1 \
  --use_norm 1 \
  --learning_rate 0.001 \
  --order 0.8

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/PEMS/PEMS/ \
  --data_path PEMS08.npz \
  --model_id PEMS08_96_24 \
  --model $model_name \
  --data PEMS \
  --features M \
  --seq_len 96 \
  --pred_len 24 \
  --e_layers 2 \
  --enc_in 170 \
  --dec_in 170 \
  --c_out 170 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --itr 1 \
  --use_norm 1 \
  --learning_rate 0.001 \
  --order 0.9

python -u run.py \
  --is_training 1 \
  --task_name long_term_forecast \
  --root_path /home/liyh/data/PEMS/PEMS/ \
  --data_path PEMS08.npz \
  --model_id PEMS08_96_48 \
  --model $model_name \
  --data PEMS \
  --features M \
  --seq_len 96 \
  --pred_len 48 \
  --e_layers 3 \
  --enc_in 170 \
  --dec_in 170 \
  --c_out 170 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --itr 1 \
  --use_norm 0 \
  --learning_rate 0.001 \
  --order 1.0 \
  --position 0

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/PEMS/PEMS/ \
  --data_path PEMS08.npz \
  --model_id PEMS08_96_96 \
  --model $model_name \
  --data PEMS \
  --features M \
  --seq_len 96 \
  --pred_len 96 \
  --e_layers 2 \
  --enc_in 170 \
  --dec_in 170 \
  --c_out 170 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.001 \
  --itr 1 \
  --use_norm 0 \
  --order 1.0

#done
