#!/bin/bash
mamba env create -f envs/conda_env.yml
mamba activate sc_foundation_evals2

pip install flash-attn==1.0.4 --no-build-isolation 
pip install git+https://github.com/bowang-lab/scGPT.git@v0.1.6
pip install git+https://huggingface.co/ctheodoris/Geneformer.git@5d0082c1e188ab88997efa87891414fdc6e4f6ff

pip install -e .


# instal the enviornment

# instal scib requirements (kBET package) from R

Rscript -e 'install.packages('remotes'); remotes::install_github('theislab/kBET')'

# check if the R package is installed


# install pip packages from list