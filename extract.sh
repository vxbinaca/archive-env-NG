##Exfiltrate archive file
cat ~/.tubeup/.ytdlarchive >> ~/git/archive-env-NG/.ytdlarchive ; 
##Mix into temp and then back again, sorting for uniqueness
sort -u .ytdlarchive .ytdlarchive
##create commit
git add .ytdlarchive ; git commit -m "Download archive update"

