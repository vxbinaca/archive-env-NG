## change directory to eact spot needed and pull changes
cd ~/git/youtube-dl/youtube_dl/extractor ; git pull
## Swap out broken extractor the devs refuce to update and pull in working one from PR
rm twitch.py ; wget https://raw.githubusercontent.com/geauxlo/youtube-dl/33afd662d96f82f7a5af4ac89513666f2a078a84/youtube_dl/extractor/twitch.py
## Go back and make the new fixed script
cd ../.. ; make
## Inject custom script into appropriate spot.
chmod 755 ./youtube-dl ; cp ./youtube-dl ~/.local/bin/youtube-dl
