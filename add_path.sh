#!/bin/bash
#CUDA_VERSION=8.0
USE_ZSH=true
# --------------------- Environment Paths----------------------------------
#export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
# add cuda path
#export PATH=/sharelib/cuda-$CUDA_VERSION/bin:$PATH
#export PATH=/sharelib/cuda-$CUDA_VERSION/include:$PATH
#export PATH=$HOME/usr/bin:$PATH
#export LD_LIBRARY_PATH=/sharelib/cuda-$CUDA_VERSION/lib64:$LD_LIBRARY_PATH
#export CPATH=/sharelib/cuda-$CUDA_VERSION/include:$CPATH

# opencv is built with cuda7.5, so we should add cuda7.5 library

# add cudnn path
#export PATH=/sharelib/cudnn/cudnn_v7.0.4_CUDA8.0/include:$PATH
#export PATH=/sharelib/cudnn/cudnn_v5.1/include:$PATH
#export PATH=/sharelib/cudnn/cudnn_v7.0.4_CUDA$CUDA_VERSION/include:$PATH
#export LD_LIBRARY_PATH=/sharelib/cudnn/cudnn_v7.0.4_CUDA8.0/lib64:$LD_LIBRARY_PATH
#export LD_LIBRARY_PATH=/sharelib/cudnn/cudnn_v5.1/lib64:$LD_LIBRARY_PATH
#export CUDNN_INCLUDE_DIR="/sharelib/cudnn/cudnn_v7.0.4_CUDA$CUDA_VERSION/include"
#export CUDNN_LIB_DIR="/sharelib/cudnn/cudnn_v7.0.4_CUDA$CUDA_VERSION/lib64"


# add opencv path
#export PATH=/sharelib/opencv-3.0/include:$PATH
#export LD_LIBRARY_PATH=/sharelib/opencv-3.0/lib:$LD_LIBRARY_PATH
#
## add MATLAB path
#export PATH=/sharelib/MATLAB/R2016a/bin:$PATH
alias tmux="TERM=screen-256color tmux"

#alias envact="source activate"
#alias envdeact="source deactivate"

#. /home/wliu/torch/install/bin/torch-activate

# added by Anaconda2 4.4.0 installer
#export PATH="/home/wliu/anaconda2/bin:$PATH"
#export PYTHONPATH="/home/wliu/anaconda2/bin:$PYTHONPATH"

# --------------------- Change to ZSH ----------------------------------
# add custom library path
_SHELL="$(ps -p $$ --no-headers -o comm=)"   
if [ $USE_ZSH ] && [ $_SHELL != 'zsh' ]; then
    exec $HOME/usr/bin/zsh
fi
