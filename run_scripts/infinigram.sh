#!/bin/bash
#SBATCH --job-name=infinigram
#SBATCH --output=logs/%j.out
#SBATCH --error=logs/%j.err
#SBATCH --time=01:00:00
#SBATCH --gpus=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G

# Load any necessary modules
module load gcc python openmpi py-torch 

# Activate virtual environment if needed
source .venv/bin/activate 

# Run the script
python src/infinigram.py "$@"
