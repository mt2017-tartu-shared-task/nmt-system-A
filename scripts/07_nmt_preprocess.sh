#!/bin/bash

#The name of the job is test_job
#SBATCH -J mali_nmt

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is a 8 days
#SBATCH -t 192:00:00

#SBATCH --mem=100G

#SBATCH --partition=gpu
#SBATCH --gres=gpu:tesla:1

#The module with all the NMT / deep learning packages
module load python-2.7.13

echo "NMT: preprocess"
# python OpenNMT-py/preprocess.py -config scripts/preprocess.cfg
python OpenNMT-py-new/preprocess.py -train_src data/bpe.cleaned_tc_tok_train.et -train_tgt data/bpe.cleaned_tc_tok_train.en -valid_src data/bpe.tc_tok_dev.et -valid_tgt data/bpe.tc_tok_dev.en -save_data data/rdy -src_vocab_size 50000 -tgt_vocab_size 50000 -seed 13
