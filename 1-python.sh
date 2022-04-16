# !/bin/bash

cd ~/softwares
# set up the python3(anaconda3) environ
wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
sh Anaconda3-2021.11-Linux-x86_64.sh
sed -i 'export PATH=$SWS/anaconda3/bin:$PATH' ~/.bashrc
source ~/.bashrc
python -m pip install scipy scikit-learn jupyter matplotlib pandas

