input_file=$1 #"/home/abhinav/Desktop/VideoSummarization/data/input_list_0.txt"
#feat_dir="/home/abhinav/Desktop/VideoSummarization/data/y2t_captions/"
while read -r line
do
	outline="${line/list/captions}"
	outline="${outline/.txt/}"
	echo "$outline"
	mkdir "$outline"
	#th extract_features.lua -input_txt "$line" -output_h5 "$outline" -boxes_per_image 5 -max_images -1
	th run_model.lua -input_list "$line" -output_vis 1 -output_vis_dir "$outline"
done < "$input_file"
