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
- `nscd` to greatly reduce name server lookups and increase stability of rips.

Software:
- `git` (obviously)
- `python3-pip`
- `ffmpeg`
- `vim`
- A terminal multiplexer (`tmux` + `byobu`)

Optional software (nice to have and my prefered setup):

- NeoVIM/nvim aliased over vim/nano etc.
- zsh + [OhMyZSH](http://github.com/robbyrussell/oh-my-zsh) + [powerlevel10k theme](https://github.com/romkatv/powerlevel10k) since it's just more powerful, has key-press saving features like fantastic tab completion and pl10k has git integration.
- "most" for dealing with long output from ls or the like. It's in most distros
 accept centOS (ahem, centos repo people).
- *On your own machine*: `fonts-powerline` or powerline fonts to properly render powerlevel9k theme.

### Getting started

- Configure Tubeup [per it's instructions](http://github.com/bibanon/tubeup)

- Create a python virtualenv
 `python3 -m venv myenvdir`
 
 Add the sources
 `source myenvdir/bin/activate`
 
 Install the software needed:
 `pip3 install -U tubeup youtube-dl jsonpointer jsonpatch docopt six total-ordering tqdm certifi idna chardet urllib3 requests contextlib2 schema backports.csv internetarchive tubeup pip`

Any future command issues not being found should call for a source re-activate.
 
 ### SSH setup

- You'll need to enerate a ECDSA key if you're working with a new machine

  `ssh-keygen -t ed25519 ; cat ~/.ssh/id_ed25519.pub`

- Add new machines public SSH key to this account or an account with write access to this repo.

- If you have write access to this repo, clone this repository using:

  `git clone git+ssh://git@github.com/vxbinaca/archive-env-NG.git ~/git/archive-env-NG/`

  Also don't forget to set your default editor to nvim or vim

  `git config --global core.editor "nvim"`

- Create a directory for Tubeup:
  
  `mkdir ~/.tubeup ; mkdir ~/.tubeup/downloads`
  
- Inject the freshly pulled video archive file by running 

  `./inject-stomp.sh`

### Starting the main script

Paste the contents of `crontab.lst` into your crontabs and save. The rest is done for you. 

The main scripts will handle many tasks that might cause snags automatically:

- Keep the python instance up to date, so site compatability is at a maximum because fixes are quickly gotten.
- Clear youtube-dls cache to prevent problems.
- Push/pull new changes to the archive file to this repo automatically, which will then be pulled by any other new servers.
