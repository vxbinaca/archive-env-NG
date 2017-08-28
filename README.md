# archive-env-NG
The archival environment, scripts, and video archive file I use to fully automate ingestion (and maintance) of targets

### Requirements

Hardware:
- A VPS with unlimited bandwidth and preferably 100 gigabytes of storage
- Multiple VPS' are ideal, as many machines on different connections as you can get.

Software:
- Linux/FreeBSD
- `git` (obviously)
- `python3-pip`
- `ffmpeg`
- `vim`
- A terminal multiplexer (`screen` or `byobu`)

### Optional software (nice to have and my prefered setup)

- NeoVIM/nvim aliased over vim.
- zsh / [OhMyZSH](https://github.com/robbyrussell/oh-my-zsh) / [powerlevel9k theme](https://github.com/bhilburn/powerlevel9k)
- *On your own machine*: `fonts-powerline` or powerline fonts to properly render powerlevel9k theme.

### Getting started

- Configure Tubeup [per it's instructions](https://github.com/bibanon/tubeup)
- Add new macchines public SSH key to this account or an account with write access to this repo.
- If you have write access to this repo, clone this repository using:

  `git clone git+ssh://git@github.com/vxbinaca/archive-env-NG.git`
  
- Inject the freshly pulled video archive file by running `./inject-stomp.sh`

### Starting the main script

- `./all.sh` will execute all unlooped batch files, this file is it's self looped and will run over and over again.
- At the end of `all.sh` is a series of commands to generally tidy up the machine, and sync progress to and from this repo.

Be sure to peek inside of all to see which scripts are commented out, anything commented out is looped and designed to be run in a different virtual shell.


The main script (all.sh) will handle many tasks that might cause snags automatically:

- Keep the python instance up to date, so site compatability is at a maximum because fixes are quickly gotten.
- Clear youtube-dls cache to prevent problems.
- Push/pull new changes to the archive file to this repo automativally, which will then be pulled by any other new servers.


### TODO

- Re-factor URLS in scripts to reduce load time and have unifromity.
- Shift scripts on `looping/` to another server to decrease load and increase resiliance to potential blocking from Youtube.
