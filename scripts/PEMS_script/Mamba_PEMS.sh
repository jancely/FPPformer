export CUDA_VISIBLE_DEVICES=0


model_name=Mamba

for pred_len in 12 24 48 96
do

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/PEMS/PEMS/ \
  --data_path PEMS08.npz \
  --model_id PEMS_$pred_len'_'$pred_len \
  --model $model_name \
  --data PEMS \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len $pred_len \
  --e_layers 1 \
  --d_layers 1 \
  --expand 2 \
  --d_ff 8 \
  --d_conv 4 \
  --enc_in 170 \
  --dec_in 170 \
  --c_out 170 \
  --d_model 256 \
  --des 'Exp' \
  --itr 1 \
  --learning_rate 0.001

done
