gpu=1

person_id="P04"
video_id="${person_id}_01"
IMG_FOLDER="/scratch/junyao/Datasets/EPIC-KITCHENS/frames/${person_id}/rgb_frames/${video_id}"
OUT_FOLDER="/scratch/junyao/Datasets/EPIC-KITCHENS/frames/${person_id}/hamer_output/${video_id}"

echo "Running demo for person $person_id, video $video_id"
echo "Input images are in $IMG_FOLDER"
echo "Output will be saved in $OUT_FOLDER"

CUDA_VISIBLE_DEVICES=$gpu \
python demo.py \
--img_folder $IMG_FOLDER \
--out_folder $OUT_FOLDER \
--batch_size=80 \
--save_mesh \
--full_frame \

echo "Done"