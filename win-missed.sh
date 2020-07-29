cd ~/.tubeup/downloads/
ls -- *.mp4 > /mnt/c/Users/vxbin/git/archive-env-NG/.missed ## Append MP4 files to list
ls -- *.mkv >> /mnt/c/Users/vxbin/git/archive-env-NG/.missed ## Append MKV files to list
ls -- *.part* >> /mnt/c/Users/vxbin/git/archive-env-NG/.missed ## Append PART files to list
ls -- *.ytdl* >> /mnt/c/Users/vxbin/git/archive-env-NG/.missed ## Append YTDL files to list
ls -- *.webm* >> /mnt/c/Users/vxbin/git/archive-env-NG/.missed ## Append WEBM files to list
cd ~/git/archive-env-NG/
git add .missed ; git commit -m "Updated leftover failed uploads"
