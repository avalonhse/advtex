
conda remove --name advtex --all -y
mamba env create -f environment.yaml
source ../init.sh
python test/3d_test.py
python test/test_gpu.py