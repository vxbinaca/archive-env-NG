
## Append git archive to local
cat .ytdlarchive >> ~/.tubeup/.ytdlarchive
## Filter for unique lines, copy to seperate temp file
cat ~/.tubeup/.ytdlarchive | sort -u > ~/.tubeup/.ytdlarchive.temp
##Clobber .ytdlarchive with unique sorted file
yes | cp ~/.tubeup/.ytdlarchive.temp  ~/.tubeup/.ytdlarchive
##Remove temp
yes | rm ~/.tubeup/.ytdlarchive.temp
