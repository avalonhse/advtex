cd ../..
mkdir dataset
source advtex/init.sh

cd dataset
# python ../advtex/environment/gdown_folder.py
mkdir uofi
cd UofI_Texture_Scenes
unzip scene_03.zip -d ../uofi/

export SCENE_ID=scene_03

${CODE_ROOT}
cd ..
export PYTHONPATH=${CODE_ROOT}:$PYTHONPATH && \
python ${CODE_ROOT}/advtex_init_align/data/bin_data_reader.py \
--stream_dir ${PWD}/uofi/${SCENE_ID} \
--save_dir ${PWD}/extracted/${SCENE_ID}