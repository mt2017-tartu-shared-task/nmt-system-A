#!/bin/bash

#The name of the job is test_job
#SBATCH -J mali_pr5

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is one day
#SBATCH -t 48:00:00

#SBATCH --mem=80G

BASE_PATH=$HOME

#Apply BPE (see https://github.com/rsennrich/subword-nmt)
echo "Apply BPE"

cat $BASE_PATH/mt17/data/cleaned_tc_tok_train.et $BASE_PATH/mt17/data/cleaned_tc_tok_train.en | $BASE_PATH/mt17/OpenNMT-py/tools/subword-nmt/learn_bpe.py -s 10000 > $BASE_PATH/mt17/data/eten.bpe

for lang in et en
    do
        $BASE_PATH/mt17/OpenNMT-py/tools/subword-nmt/apply_bpe.py -c $BASE_PATH/mt17/data/eten.bpe < $BASE_PATH/mt17/data/cleaned_tc_tok_train.$lang > $BASE_PATH/mt17/data/bpe.cleaned_tc_tok_train.$lang
        $BASE_PATH/mt17/OpenNMT-py/tools/subword-nmt/apply_bpe.py -c $BASE_PATH/mt17/data/eten.bpe < $BASE_PATH/mt17/data/tc_tok_dev.$lang > $BASE_PATH/mt17/data/bpe.tc_tok_dev.$lang
        $BASE_PATH/mt17/OpenNMT-py/tools/subword-nmt/apply_bpe.py -c $BASE_PATH/mt17/data/eten.bpe < $BASE_PATH/mt17/data/tc_tok_test.$lang > $BASE_PATH/mt17/data/bpe.tc_tok_test.$lang
    done
