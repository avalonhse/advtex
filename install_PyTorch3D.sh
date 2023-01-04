
conda install -c conda-forge -c fvcore fvcore -y
conda install -c bottler nvidiacub -y

cd ${THIRDPARTY_DIR}
pip install pytorch3d-0.5.0-cp39-cp39-linux_x86_64.whl

# git clone https://github.com/facebookresearch/pytorch3d.git
# cd pytorch3d && git checkout d07307a

# pip install -e . --verbose

# gdown https://drive.google.com/drive/folders/1aSI37AJPbynCoN8DapfYIaqCQn7ZDt3z
# gdown https://drive.google.com/uc?id=1aSI37AJPbynCoN8DapfYIaqCQn7ZDt3z
# gdown 1aSI37AJPbynCoN8DapfYIaqCQn7ZDt3z