
#cd /path/to/this/repo
CODE_ROOT=$PWD
export TEX_INIT_DIR=${CODE_ROOT}/advtex_init_align/tex_init

export THIRDPARTY_DIR=${CODE_ROOT}/third_parties
mkdir -p ${THIRDPARTY_DIR}

export SCENE_ID=scene_04

# sudo ./bootstrap.sh --prefix=/usr --with-python=python3 && sudo ./b2 stage -j8 threading=multi link=shared
# sudo ./b2 install threading=multi link=shared   

# from pytorch3d.renderer import TexturesAtlas, TexturesUV
# from pytorch3d import _C

# bash ${CODE_ROOT}/run.sh   ${CODE_ROOT}   ${SCENE_ID}   run_train