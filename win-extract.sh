cat ~/.tubeup/.ytdlarchive >> /mnt/c/Users/vxbin/git/archive-env-NG/.ytdlarchive 
sort -u -o .ytdlarchive .ytdlarchive
git add .ytdlarchive ; git commit -m "Download archive update"
