youtube-dl --rm-cache-dir ; ## Cleanse youtube-dl cache
pip3 install -U --user youtube-dl pip internetarchive; ## Update python envionment
git pull ; ## Pull new progress from remote server
./inject-merge.sh ; ## Merge new remote changes into local archive
./extract.sh ; ## Extract netest entries from local .ytdlarchive
crontab -l > crontab.lst ; git add crontab.lst ; git commit -m "Updated Crontabs" ## Sync crontab changes with git
./missed.sh ## Track missed uploads
git push origin master ; ## Push back to github
