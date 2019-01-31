export BERT_BASE_DIR=/home/caizj/bert/model_zh/chinese_v1
export GLUE_DIR=/home/caizj/bert/datasets/
export ROOT_DIR=/home/caizj/bert

python run_classifier.py \
  --task_name=QACL \
  --do_train=true \
  --do_eval=true \
  --do_predict=true \
  --data_dir=$GLUE_DIR/spe_vs_chit/data_v2 \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=64 \
  --train_batch_size=32 \
  --learning_rate=2e-5 \
  --num_train_epochs=3.0 \
  --output_dir=$ROOT_DIR/tmp/qacl_crossval_output_v2/

