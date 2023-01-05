
# sudo apt-get install libmetis-dev libpng-dev libsuitesparse-dev libmpfr-dev libatlas-base-dev liblapack-dev libblas-dev
# sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev libbz2-dev
# sudo apt install mesa-common-dev libglu1-mesa-dev 

cd ../..
source advtex/init.sh

# cd ${THIRDPARTY_DIR}
# wget https://gitlab.com/libeigen/eigen/-/archive/3.4/eigen-3.4.zip
# unzip eigen-3.4.zip
# rm eigen-3.4.zip

# cd ${THIRDPARTY_DIR}
# wget https://boostorg.jfrog.io/artifactory/main/release/1.75.0/source/boost_1_75_0.tar.bz2
# tar --bzip2 -xf boost_1_75_0.tar.bz2
# rm boost_1_75_0.tar.bz2

# https://stackoverflow.com/questions/12578499/how-to-install-boost-on-ubuntu
# mkdir -p ${THIRDPARTY_DIR}/boost_1_75_0/build
# cd ${THIRDPARTY_DIR}/boost_1_75_0/
# ./bootstrap.sh --prefix=${THIRDPARTY_DIR}/boost_1_75_0/build
# ./b2 --with=all -j 8 install 

# g++ -I ${THIRDPARTY_DIR}/boost_1_75_0/build/include advtex/environment/test/boost_sample.cpp -o sample
# ./sample

cd ${THIRDPARTY_DIR}
#wget https://github.com/CGAL/cgal/releases/download/v5.1.5/CGAL-5.1.5.zip
rm -rf CGAL-5.1.5
unzip CGAL-5.1.5.zip
cd ${THIRDPARTY_DIR}/CGAL-5.1.5 && mkdir install && mkdir build && cd build
cmake -DBOOST_ROOT=${THIRDPARTY_DIR}/boost_1_75_0/build -DCGAL_HEADER_ONLY=OFF -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../install ..
make
make install