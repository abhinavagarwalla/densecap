input_file="/home/bt0/12CS10045/VideoSummarization/data/input_list_0.txt"
feat_dir="/home/bt0/12CS10045/VideoSummarization/data/y2t_features/"
while read -r line
do
	outline="${line/list/features}"
	outline="${outline/txt/h5}"
	echo "$outline"
	th extract_features.lua -input_txt "$line" -output_h5 "$outline" -boxes_per_image 5 -max_images -1
done < "$input_file"
