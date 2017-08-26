# archive-env-NG
The archival environment, scripts, and video archive file I use to automate ingestion (and maintance) of targets

### Requirements

Hardware:
- A VPS with unlimited bandwidth and preferably 100 gigabytes of storage
- Multiple VPS' are ideal, as many machines on different connections as you can get.

Software:
- Linux/Unix
- git (obviously)
- python3-pip
- ffmpeg
- vim
- GNU Screen / byobu (to allow deatchment without stopping a rip)

### Optional software (nice to have but not bare minimum)

- nvim
- zsh / [OhMyZSH](https://github.com/robbyrussell/oh-my-zsh) / [powerlevel9k theme](https://github.com/bhilburn/powerlevel9k)
- *On your own machine*: `fonts-powerline` or powerline fonts to properly render powerlevel9k theme.

### Getting started

- Configure Tubeup [per it's instructions](https://github.com/bibanon/tubeup)
- Inject the freshly pulled video archive file by running `./inject-stomp.sh`

### Starting the main script

- `./all.sh` will all unlooped batch files
- Be sure to peek inside of all to see which scripts are commented out, anything commented out is looped and designed to be run in a different shell.
