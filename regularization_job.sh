#!/bin/bash 
#$ -cwd
#$ -l rt_F=1
#$ -l h_rt=39:00:00
#$ -j y
#$ -o output/

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source /etc/profile.d/modules.sh
module load cuda openmpi
## All models running using the same Sweep
wandb agent daweek/hyerparametersbayesian/3pafn9g6