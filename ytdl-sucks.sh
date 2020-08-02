cd ~/git/youtube-dl/
git pull
cd youtube_dl/extractor
rm twitch.py
wget https://raw.githubusercontent.com/geauxlo/youtube-dl/33afd662d96f82f7a5af4ac89513666f2a078a84/youtube_dl/extractor/twitch.py
cd ../..
make
chmod 755 ./youtube-dl
cp ./youtube-dl ~/.local/bin/youtube-dl
