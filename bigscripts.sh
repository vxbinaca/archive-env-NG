./looping/doller.sh ;     
./looping/speedpainting.sh ; 
./looping/YTPMV.sh ;
./looping/periscope.sh ;   
./looping/stoners.sh ;
youtube-dl --rm-cache-dir ; ## Cleanse youtube-dl cache
pip3 install -U --user youtube-dl tubeup pip ; ## Update python envionment
git pull ; ## Refresh from Git repo
./inject-merge.sh ; ##Merge new repo changes into local archive
./extract.sh ; ## Pull newest video progress
git push origin master ; ## Push to git repo
./bigscripts.sh
