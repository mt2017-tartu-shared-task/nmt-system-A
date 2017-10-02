#!/bin/bash

#The name of the job is test_job
#SBATCH -J mali_pr4

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is one day
#SBATCH -t 24:00:00

#SBATCH --mem=16G

BASE_PATH=$HOME



#Remove empty and long sentences (see http://www.statmt.org/moses/ )

echo "Remove empty and long sentences"

$BASE_PATH/mt17/OpenNMT-py/tools/clean-corpus-n.perl $BASE_PATH/mt17/data/tc_tok_train en et $BASE_PATH/mt17/data/cleaned_tc_tok_train 1 75


$BASE_PATH/mt17/OpenNMT-py/tools/clean-corpus-n.perl $BASE_PATH/mt17/data/tc_tok_dev en et $BASE_PATH/mt17/data/cleaned_tc_tok_dev 1 100000

$BASE_PATH/mt17/OpenNMT-py/tools/clean-corpus-n.perl $BASE_PATH/mt17/data/tc_tok_test en et $BASE_PATH/mt17/data/cleaned_tc_tok_test 1 100000
