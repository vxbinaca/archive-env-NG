#./targets/social-media.sh ; ##disabled for now until problems can be debugged 
#./targets/kraut.sh ; 
./targets/izumi.sh ; 
./targets/lrh-pp4l.sh ; 
./targets/fox.sh ; 
./targets/louis.sh ; 
./targets/kurdtbada.sh;
./targets/rose.sh ;
./targets/naomi.sh ;
./targets/sydsnap.sh ;
#./targets/icze4r.sh ; ## Probably should delete these items
./targets/sargon.sh ;
./targets/anita.sh ;
./targets/graywolf.sh ;
./targets/blackhitler.sh ;
./targets/lilmissanon.sh ;
./targets/skeptfem.sh ;
./targets/vee.sh ;
./targets/spoony.sh ;
#./targets/kanadajin3.sh ;
./targets/jbpeterson.sh ;
#./targets/sfm.sh ; # Needs solution on target gathering
#./targets/twitch.sh;
./targets/var-jap.sh ;
./targets/var.sh ;
youtube-dl --rm-cache-dir ; ## Cleanse youtube-dl cache
pip3 install -U --user youtube-dl pip internetarchive; ## Update python envionment
git pull ; ## Pull new progress from remote server
./inject-merge.sh ; ## Merge new remote changes into local archive
./extract.sh ; ## Extract newest entries from local .ytdlarchive
git push origin master ; ## Push back to github
./all.sh ## start over again in an infinite loop
