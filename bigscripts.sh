./targets/doller.sh ;
./targets/speedpainting.sh ;
./targets/YTPMV.sh ;
./targets/periscope.sh ;
./targets/stoners.sh ;
#./targets/social-media.sh ; ##disabled for now until problems can be debugged
youtube-dl --rm-cache-dir ; ## Cleanse youtube-dl cache
pip3 install -U --user youtube-dl pip internetarchive; ## Update python envionm
ent
git pull ; ## Pull new progress from remote server
./inject-merge.sh ; ## Merge new remote changes into local archive
./extract.sh ; ## Extract netest entries from local .ytdlarchive
#./missed.sh ## Track missed uploads
git push origin master ; ## Push back to github
./bigscripts.sh ## start over again in an infinite loo
