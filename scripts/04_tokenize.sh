#!/bin/bash

#The name of the job is test_job
#SBATCH -J mali_pr2

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is one day
#SBATCH -t 24:00:00

#SBATCH --mem=10G

BASE_PATH=$HOME
#tokenize sets (see http://www.statmt.org/moses)
echo "Tokenize sets"

for f in {test,dev,train}.{en,et}
    do
        $BASE_PATH/mt17/OpenNMT-py/tools/tokenizer.perl < $BASE_PATH/mt17/data/$f > $BASE_PATH/mt17/data/tok_$f
    done
