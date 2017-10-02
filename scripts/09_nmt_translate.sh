#!/bin/bash

#The name of the job is test_job
#SBATCH -J rnnlm1_job

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is a 8 days
#SBATCH -t 192:00:00

#SBATCH --mem=150G

#Leave this here if you need a GPU for your job
#SBATCH --partition=gpu

#SBATCH --gres=gpu:tesla:1

#The module with all the NMT / deep learning packages
module load python-2.7.13

echo "Translation"

# python OpenNMT-py/translate.py -config scripts/translate.cfg
python OpenNMT-py/translate.py -model model/mt_model_acc_71.66_ppl_3.90_e12.pt -src data/bpe.cleaned_tc_tok_test.et -output data/hyps.en -replace_unk -verbose -gpu 0

