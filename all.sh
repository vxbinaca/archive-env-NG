#./targets/periscope.sh ; 
#./targets/social-media.sh ; ##disabled for now until problems can be debugged
#./targets/speedpainting.sh ;
#./targets/YTPMV.sh ;
#./targets/doller.sh ;
#./targets/stoners.sh ; 
./targets/kraut.sh ; 
./targets/izumi.sh ; 
./targets/lrh-pp4l.sh ; 
./targets/fox.sh ; 
./targets/louis.sh ; 
./targets/kurdtbada.sh;
./targets/rose.sh ;
./targets/naomi.sh ;
./targets/sydsnap.sh ;
./targets/icze4r.sh ;
./targets/sargon.sh ;
./targets/anita.sh ;
./targets/graywolf.sh ;
./targets/blackhitler.sh ;
./targets/lilmissanon.sh ;
./targets/skeptfem.sh ;
./targets/vee.sh ;
./targets/spoony.sh ;
./targets/var-jap.sh ;
./targets/var.sh ;
youtube-dl --rm-cache-dir ; ## Cleanse youtube-dl cache
pip3 install -U --user youtube-dl tubeup pip ; ## Update python envionment
git pull ; ## Pull new progress from remote server
./inject-merge.sh ; ## Merge new remote changes into local archive
./extract.sh ; ## Extract netest entries from local .ytdlarchive
git push origin master ; ## Push back to github
./all.sh ## start over again in an infinite loop
