##Exfiltrate archive file
cat ~/.tubeup/.ytdlarchive >> ~/git/archive-env-ng/.ytdlarchive
##Mix into temp and then back again, sorting for uniqueness
sort -u -o .ytdlarchive .ytdlarchive
##create commit
git add .ytdlarchive ; git commit -m "Download archive update"

