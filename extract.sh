##Exfiltrate archive file
cat ~/.tubeup/.ytdlarchive >> ~/git/archive-env-NG/.ytdlarchive.temp ; 
##Mix into temp and then back again, sorting for uniqueness
cat .ytdlarchive >> .ytdlarchive.temp ; cat .ytdlarchive.temp | sort -u > .ytdlarchive ; yes | rm .ytdlarchive.temp
##create commit
git add .ytdlarchive ; git commit -m "Download archive update"

