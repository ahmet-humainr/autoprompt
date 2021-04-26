#!/bin/bash
#SBATCH --job-name=multirc_manual
#SBATCH --output=/extra/ucinlp0/rlogan/fugue_multirc_manual.txt
#SBATCH --time=1000:00
#SBATCH --partition=ava_s.p
#SBATCH --nodelist=ava-s0
#SBATCH --cpus-per-task=8
#SBATCH --gpus=8
#SBATCH --mem=400GB

srun /home/rlogan/miniconda3/envs/autoprompt/bin/python3.7 \
    scripts/launch.py \
    --logdir results/multirc \
    jobs/fugue/yaml/multirc_manual.yaml