# snakemake-exercise
Snakemake tutorial for bioinformatics beginners

## Requirements in my environment
- Bash: GNU bash, version 4.2.46(1)-release (x86_64-redhat-linux-gnu)
- Snakemake: 5.14.0
- Anaconda: 4.8.3
- Singularity: 3.5.3

## Level1: Shell script (Bash)

```bash
cd level1
./workflow.sh
```

## Level2: Single sample, Single rule

```bash
cd level2
snakamake --cores 1
```

## Level3: Single sample, multiple rules

```bash
cd level3
snakamake --cores 1
```

## Level4: Multiple samples × multiple rules (OpenGridEngine/Slurm)

```bash
cd level4
snakemake -j 32 --cluster qsub --latency-wait 600 # OpenGridEngine
snakemake -j 32 --cluster sbatch --latency-wait 600 # Slurm
```

## Level5: Wildcards

```bash
cd level5
snakemake -j 32 --cluster qsub --latency-wait 600 # OpenGridEngine
snakemake -j 32 --cluster sbatch --latency-wait 600 # Slurm
```

## Level6: `container` tag

```bash
cd level6
snakemake -j 32 --cluster qsub --latency-wait 600 --use-singularity # OpenGridEngine
snakemake -j 32 --cluster sbatch --latency-wait 600 --use-singularity # Slurm
```

## Level7: `conda` tag

```bash
cd level7
snakemake -j 32 --cluster qsub --latency-wait 600 --use-conda # OpenGridEngine
snakemake -j 32 --cluster sbatch --latency-wait 600 --use-conda # Slurm
```

## Level8: Snakemake wrappers

```bash
cd level8
snakemake -j 32 --cluster qsub --latency-wait 600 --use-conda # OpenGridEngine
snakemake -j 32 --cluster sbatch --latency-wait 600 --use-conda # Slurm
```
