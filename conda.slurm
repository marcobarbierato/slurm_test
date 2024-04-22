#!/bin/bash -l
### job name
#SBATCH --job-name=CondaTest

### 
#SBATCH --mail-user=koriel@math.unipd.it

### Standard output and standard error for our job
#SBATCH --error=condatest.err
#SBATCH --output=condatest.out

### queue/partition choosed
#SBATCH --partition=testing

### Number of tasks
#SBATCH --ntasks=1

### RAM requirement
#SBATCH --mem=1G

### Time limit for our job (ten minutes here: HH:MM:SS)
#SBATCH --time=00:10:00

### GPU request
#SBATCH --gres=gpu
####SBATCH --constraint=A6000

### Some useful informative commands
echo -n 'Date: '
date
echo -n 'Directory: '
pwd
echo -n 'This job will be executed on th following nodes: '
echo ${SLURM_NODELIST}
echo

SHELL=/bin/bash

### Jobs execution commands
conda info --envs
conda activate gpuenv
which python
python --version
python condatest.py
