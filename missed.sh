cd ~/.tubeup/downloads/
ls *.mp4 >> ~/git/archive-env-NG/.missed ## Append MP4 files to list
ls *.mkv >> ~/git/archive-env-NG/.missed ## Append MKV files to list
cd ~/git/archive-env-NG/
cat .missed | sort -u > .missed2 ; cat .missed2 > .missed ; rm .missed2 
git add .missed ; git commit -m "Updated leftover failed uploads"

