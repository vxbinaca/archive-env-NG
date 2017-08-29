./targets/doller.sh ;     
./targets/speedpainting.sh ; 
./targets/YTPMV.sh ;
./targets/periscope.sh ;   
./targets/stoners.sh ;
youtube-dl --rm-cache-dir ; ## Cleanse youtube-dl cache
pip3 install -U --user youtube-dl tubeup pip ; ## Update python
 envionment
git pull ; ## Pull new progress from remote server
./inject-merge.sh ; ## Merge new remote changes into local arch
ive
./extract.sh ; ## Extract netest entries from local .ytdlarchiv
e
git push origin master ; ## Push back to github
./bigscripts.sh ## start over again in an infinite loop

