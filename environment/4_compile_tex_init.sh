
cd ../..
source advtex/init.sh

# sudo apt install libopenblas-dev
#sed -i -r "s#^(THIRDPARTY_DIR=).*#\1${THIRDPARTY_DIR//#/\\#}#" ${TEX_INIT_DIR}/Makefile

cd ${TEX_INIT_DIR}
make clean
make tex_init DEBUG=0 -j 8

