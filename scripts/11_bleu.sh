#!/bin/bash

#The name of the job is test_job
#SBATCH -J mali_pr10

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is one day
#SBATCH -t 48:00:00

#SBATCH --mem=16G

BASE_PATH=$HOME

echo "Compute BLEU"

perl $BASE_PATH/mt17/OpenNMT-py/tools/multi-bleu.perl $BASE_PATH/mt17/data/bpe.cleaned_tc_tok_test.en < $BASE_PATH/mt17/data/hyps.en
