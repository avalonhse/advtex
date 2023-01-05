
eval "$(conda shell.bash hook)"
conda deactivate
conda activate advtex

#cd /path/to/this/repo
CODE_ROOT=$PWD/advtex/
export TEX_INIT_DIR=${CODE_ROOT}advtex_init_align/tex_init

export THIRDPARTY_DIR=$PWD/third_parties
mkdir -p ${THIRDPARTY_DIR}

export Boost_INCLUDE_DIR=${THIRDPARTY_DIR}/boost_1_75_0/build/include

export SCENE_ID=scene_03

# sudo ./bootstrap.sh --prefix=/usr --with-python=python3 && sudo ./b2 stage -j8 threading=multi link=shared
# sudo ./b2 install threading=multi link=shared   

# from pytorch3d.renderer import TexturesAtlas, TexturesUV
# from pytorch3d import _C

# bash ${CODE_ROOT}/run.sh   ${CODE_ROOT}   ${SCENE_ID}   run_train