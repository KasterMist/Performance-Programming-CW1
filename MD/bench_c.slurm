#!/bin/sh

#SBATCH --job-name=pp-cw1
#SBATCH --nodes=1

#SBATCH --time=1:00:0
#SBATCH --partition=standard
#SBATCH --qos=standard
#SBATCH --exclusive
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --account=m22oc-s2312252

#SBATCH --error=slurm-Ofast_gcc.out
#SBATCH --output=slurm-Ofast_gcc.out

module load intel-compilers-19
module load gcc/10.2.0
module load perf

# Switch to current working directory
# cd C

# Run the parallel program
perf stat -e cycles,instructions,cache-misses,branches,branch-misses,page-faults ./MD
# perf stat ./MD
# ./MD



