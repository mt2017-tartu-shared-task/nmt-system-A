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

cat raw-all/*.en > data.en
cat raw-all/*.et > data.et