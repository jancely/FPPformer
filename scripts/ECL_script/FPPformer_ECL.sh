export CUDA_VISIBLE_DEVICES=0

model_name=FPPformer

#for order in 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1.0
#for seq_len in 96
#for seed in  20 200 2000 3000 4000 
#for seed in 1
#do
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/electricity/ \
  --data_path electricity.csv \
  --model_id ECL_96_96 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 3 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 321 \
  --dec_in 321 \
  --c_out 321 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.0005 \
  --itr 1 \
  --order 0.3 \
  #--seed $seed


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/electricity/ \
  --data_path electricity.csv \
  --model_id ECL_96_192 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 192 \
  --e_layers 3 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 321 \
  --dec_in 321 \
  --c_out 321 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.0005 \
  --itr 1 \
  --order 0.9 \
  #--seed $seed
  #--train_epochs 4



python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/electricity/ \
  --data_path electricity.csv \
  --model_id ECL_96_336 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 336 \
  --e_layers 3 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 321 \
  --dec_in 321 \
  --c_out 321 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.0005 \
  --itr 1 \
  --order 0.8 \
 # --seed $seed


python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path /home/liyh/data/electricity/ \
  --data_path electricity.csv \
  --model_id ECL_96_720 \
  --model $model_name \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 720 \
  --e_layers 3 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 321 \
  --dec_in 321 \
  --c_out 321 \
  --des 'Exp' \
  --d_model 512 \
  --d_ff 512 \
  --batch_size 16 \
  --learning_rate 0.0005 \
  --itr 1 \
  --order 0.8 \
 # --seed $seed

#done
