export CUDA_VISIBLE_DEVICES=0

model_name=MSGNet

for pred_len in 12 24 48 96
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
  --freq h \
  --target 'OT' \
  --seq_len 96 \
  --label_len 48 \
  --pred_len $pred_len \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 170 \
  --dec_in 170 \
  --c_out 170 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 128 \
  --top_k 5 \
  --conv_channel 32 \
  --skip_channel 32 \
  --batch_size 32 \
  --itr 1 \
  #--train_epochs 3 \
  #--itr 1 #>logs/PEMS/$model_name'_'PEMS_$seq_len'_'$pred_len.log

done
