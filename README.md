# archive-env-NG
The archival environment, scripts, and video archive file I use to fully automate ingestion (and maintance) of targets

### Design logic and goals

I want to have a completly modular environment that allows me to archive various video sites, or split up the larger scripts onto other servers, and have the servers communicate progress (new additions to the `.ytdlarchive` file) to a central server (this repo), and then have each server pull down new changes and intregrate them into their archive files so that all the servers stay on the same amount of progress. 

I've set it up to do this automatically without my input.

The servers self-manage as well. Number of servers can be scaled up or down depending on level of access and after brief initial setup can join the pool of work.

### Requirements

Hardware:
- A Linux/BSD VPS with unlimited bandwidth and preferably 100 gigabytes of storage, although 50 at a minimum is workable.
- Multiple VPS' are ideal, as many machines in different countries as you can get. Ideal countries are the United States, Germany, Japan, the Netherlands, and Sweden. The US, Japan and Sweden being the most powerful at bypassing YouTube geo-restrictions.

Software:
- `git` (obviously)
- `python3-pip`
- `ffmpeg`
- `vim`
- A terminal multiplexer (`tmux` + `byobu`)

Optional software (nice to have and my prefered setup):

- NeoVIM/nvim aliased over vim/nano etc.
- zsh + [OhMyZSH](http://github.com/robbyrussell/oh-my-zsh) + [powerlevel9k theme](http://github.com/bhilburn/powerlevel9k)
- *On your own machine*: `fonts-powerline` or powerline fonts to properly render powerlevel9k theme.

### Getting started

- Configure Tubeup [per it's instructions](http://github.com/bibanon/tubeup)
- Add new machines public SSH key to this account or an account with write access to this repo.
- If you have write access to this repo, clone this repository using:

  `git clone git+ssh://git@github.com/vxbinaca/archive-env-NG.git`

  Also don't forget to set your default editor to nvim or vim

  `git config --global core.editor "nvim"`

- Create a directory for Tubeup:
  
  `mkdir ~/.tubeup`
  
- Inject the freshly pulled video archive file by running 

  `./inject-stomp.sh`

### Starting the main script

- `./all.sh` - will execute all unlooped batch files, this file is it's self looped and will run over and over again.
- At the end of `all.sh` is a series of commands to generally tidy up the machine, and sync progress to and from this repo.

- `./bigscripts.sh` - This is a seperate script for large scripts so as to not make an entire loop take hours. Ideally run this on a seperate VPS but it can be run within another v-term on the same VPS.

The main scripts will handle many tasks that might cause snags automatically:

- Keep the python instance up to date, so site compatability is at a maximum because fixes are quickly gotten.
- Clear youtube-dls cache to prevent problems.
- Push/pull new changes to the archive file to this repo automatically, which will then be pulled by any other new servers.


### TODO

- Re-factor URLS in scripts to reduce load time and have unifromity.
