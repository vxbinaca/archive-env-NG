ls ~/.tubeup/downloads/*.mp4 >> ~/git/archive-env-NG/missed_videos.txt # Append MP4 files to list
ls ~/.tubeup/downloads/*.mkv >> ~/git/archive-env-NG/missed_videos.txt ## Append MKV files to list
cat missed_files.txt | sort -u > missed2.txt ; cat missed2.txt > missed_files.txt ; rm missed2.txt 

