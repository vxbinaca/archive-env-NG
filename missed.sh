ls ~/.tubeup/downloads/*.mp4 > ~/git/archive-env-NG/.missed ## Append MP4 files to list
ls ~/.tubeup/downloads/*.mkv >> ~/git/archive-env-NG/.missed ## Append MKV files to list
ls ~/.tubeup/downloads/*.part* >> ~/git/archive-env-NG/.missed ## Append PART files to list
ls ~/.tubeup/downloads/*.ytdl* >> ~/git/archive-env-NG/.missed ## Append YTDL files to list
ls ~/.tubeup/downloads/*.webm* >> ~/git/archive-env-NG/.missed ## Append WEBM files to list
git add .missed ; git commit -m "Updated leftover failed uploads"

