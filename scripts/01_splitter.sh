#!/bin/bash

#The name of the job is test_job
#SBATCH -J mali_pr1

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is one day
#SBATCH -t 24:00:00

#SBATCH --mem=10G


sed -n 1,2000000p data/shuffled_data.both | cut -f 1 > data/test.et
sed -n 1,2000000p data/shuffled_data.both | cut -f 2 > data/test.en
sed -n 2000001,3000000p data/shuffled_data.both | cut -f 1 > data/dev.et
sed -n 2000001,3000000p data/shuffled_data.both | cut -f 2 > data/dev.en
sed -n 3000001,19051439p data/shuffled_data.both | cut -f 1 > data/train.et
sed -n 3000001,19051439p data/shuffled_data.both | cut -f 2 > data/train.en
