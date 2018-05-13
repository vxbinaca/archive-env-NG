#./targets/kraut.sh ## He removed all his content so collection is disabled for now ; 
./targets/izumi.sh ; 
./targets/lrh-pp4l.sh ; 
./targets/fox.sh ; 
./targets/louis.sh ; 
./targets/kurdtbada.sh;
./targets/rose.sh ;
./targets/naomi.sh ;
./targets/sydsnap.sh ;
./targets/icze4r.sh ## Probably should delete these items ;
./targets/sargon.sh ;
./targets/anita.sh ;
./targets/graywolf.sh ;
./targets/blackhitler.sh ;
#./targets/lilmissanon.sh ;
./targets/skeptfem.sh ;
./targets/vee.sh ;
./targets/spoony.sh ;
#./targets/kanadajin3.sh ;
./targets/jbpeterson.sh ;
#./targets/sfm.sh ; # Needs solution on target gathering
#./targes/news-scopes.sh
./targets/batfe.sh ;
./targets/var-jap.sh ;
./targets/var.sh ;
./targets/gunz.sh ; 

##################################
####### Big scripts below ########
##################################

./targets/vimeo.sh ;
./targets/doller.sh ;
./targets/speedpainting.sh ;
./targets/YTPMV.sh ;
#./targets/periscope.sh ;
./targets/stoners.sh ;
#./targets/social-media.sh ; ##disabled for now until problems can be debugged
#./targets/twitch.sh ; Switching to crontab
youtube-dl --rm-cache-dir ; ## Cleanse youtube-dl cache
pip3 install -U --user youtube-dl pip internetarchive; ## Update python envionm
ent
git pull ; ## Pull new progress from remote server
./inject-merge.sh ; ## Merge new remote changes into local archive
./extract.sh ; ## Extract netest entries from local .ytdlarchive
#./missed.sh ## Track missed uploads
git push origin master ; ## Push back to github
./all.sh
