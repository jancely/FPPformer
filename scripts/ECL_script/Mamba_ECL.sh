export CUDA_VISIBLE_DEVICES=0
model_name=Mamba

for seq_len in 96
# for pred_len in 336 720
do

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/electricity/ \
  --data_path electricity.csv \
  --model_id ECL_$seq_len_$seq_len \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len $seq_len \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --enc_in 321 \
  --expand 2 \
  --d_ff 16 \
  --d_conv 4 \
  --c_out 321 \
  --d_model 128 \
  --des 'Exp' \
  --itr 1 \

done
