export CUDA_VISIBLE_DEVICES=1

model_name=HDMixer

seq_len=96
down_sampling_layers=1
down_sampling_window=2

for pred_len in 12 24 48 96
#for pred_len in 12 24
do

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/PEMS/PEMS/ \
  --data_path PEMS08.npz \
  --model_id PEMS08_96_$pred_len \
  --model $model_name \
  --data PEMS \
  --features M \
  --seq_len 96 \
  --label_len 0 \
  --pred_len $pred_len \
  --e_layers 1 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 170 \
  --dec_in 170 \
  --c_out 170 \
  --des 'Exp' \
  --itr 1 \
  --use_norm 0 \
  --channel_independence 0 \
  --d_model 128 \
  --d_ff 256 \
  --batch_size 64 \
  --learning_rate 0.003 \
  --train_epochs 100 \
  --n_heads 4 \
  --dropout 0.8 \
  --fc_dropout 0.3 \
  --head_dropout 0 \
  --patience 3 \
  --down_sampling_layers $down_sampling_layers \
  --down_sampling_method avg \
  --down_sampling_window $down_sampling_window

done
