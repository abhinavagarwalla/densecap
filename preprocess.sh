input_file="/home/abhinav/Desktop/VideoSummarization/data/input_list.txt"
feat_dir="/home/abhinav/Desktop/VideoSummarization/data/y2t_features/"
while read -r line
do
	outline="${line/list/features}"
	outline="${outline/txt/h5}"
	echo "$outline"
	th extract_features.lua -input_txt "$line" -output_h5 "$outline" -boxes_per_image 5 -max_images -1
done < "$input_file"