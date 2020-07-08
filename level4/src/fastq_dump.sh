#!/bin/bash
#$ -l nc=4
#$ -p -50
#$ -r yes
#$ -q large.q

#SBATCH -n 4
#SBATCH --nice=50
#SBATCH --requeue
#SBATCH -p node03-06
SLURM_RESTART_COUNT=2

srr=`echo $1 | sed -e "s|data/||g" | sed -e "s|.fastq||g"`
/home/koki/Software/sratoolkit.2.10.8-centos_linux64/bin/fastq-dump $srr --outdir data
