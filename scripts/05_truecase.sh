#!/bin/bash

#The name of the job is test_job
#SBATCH -J mali_pr3

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is one day
#SBATCH -t 24:00:00

#SBATCH --mem=10G

BASE_PATH=$HOME
#True-case for all data (see http://www.statmt.org/moses/ )

echo "Train true-case models"

$BASE_PATH/mt17/OpenNMT-py/tools/train-truecaser.perl --model $BASE_PATH/mt17/data/en-truecase.mdl --corpus $BASE_PATH/mt17/data/tok_train.en
$BASE_PATH/mt17/OpenNMT-py/tools/train-truecaser.perl --model $BASE_PATH/mt17/data/et-truecase.mdl --corpus $BASE_PATH/mt17/data/tok_train.et


echo "Apply true-case models for all datasets"

for lang in en et
    do
        for f in {test,dev,train}.$lang
            do
               $BASE_PATH/mt17/OpenNMT-py/tools/truecase.perl --model $BASE_PATH/mt17/data/$lang-truecase.mdl < $BASE_PATH/mt17/data/tok_$f > $BASE_PATH/mt17/data/tc_tok_$f
            done
    done


