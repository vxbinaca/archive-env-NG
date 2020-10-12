youtube-dl --rm-cache-dir ; ## Cleanse youtube-dl cache
pip install -U --user youtube-dl pip internetarchive; ## Update python envionment
git pull ; ## Pull new progress from repo
./inject-merge.sh ; ## Merge repo into local instance
./extract.sh ; ## Extract newest entries from local .ytdlarchive
crontab -l > crontab.lst ; git add crontab.lst ; git commit -m "Updated Crontabs" ## Sync crontab changes with repo
./missed.sh ## Track missed uploads
git push origin master ; ## Push back to repo
