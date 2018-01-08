ls ~/.tubeup/downloads/*.mp4 >> ~/git/archive-env-NG/missed_videos.txt # Append MP4 files to list
ls ~/.tubeup/downloads/*.mkv >> ~/git/archive-env-NG/missed_videos.txt ## Append MKV files to list
cat missed_videos.txt | sort -u > missed2.txt ; cat missed2.txt > missed_videos.txt ; rm missed2.txt 
git add missed_videos.txt ; git commit -m "Updated missed uploads"

