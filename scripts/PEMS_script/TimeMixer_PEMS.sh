export CUDA_VISIBLE_DEVICES=0

model_name=TimeMixer

seq_len=96
#pred_len=12
down_sampling_layers=1
down_sampling_window=2
learning_rate=0.003
d_model=128
d_ff=256
batch_size=64
train_epochs=100
patience=3

for pred_len in 12 24 48 96
do

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /1508/zhouchengli/data \
  --data_path PEMS08.npz \
  --model_id PEMS08_$seq_len_$pred_len \
  --model $model_name \
  --data PEMS \
  --features M \
  --seq_len $seq_len \
  --label_len 0 \
  --pred_len $pred_len \
  --e_layers 5 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 170 \
  --dec_in 170 \
  --c_out 170 \
  --des 'Exp' \
  --itr 1 \
  --use_norm 0 \
  --channel_independence 0 \
  --d_model $d_model \
  --d_ff $d_ff \
  --batch_size 32 \
  --learning_rate $learning_rate \
  --train_epochs 10 \
  --patience $patience \
  --down_sampling_layers $down_sampling_layers \
  --down_sampling_method avg \
  --down_sampling_window $down_sampling_window

done