# Knowledge

## The basics 

Okay some key things you need to know are how to quickly find video IDs, and extrapolate that to item names on Internet Archive.

We'll be working with [this item](https://archive.org/details/youtube-jNQXAC9IVRw), the first ever video uploaded to Youtube.

```
[   The rest of the URL   ] [ Item Identifier ]
https://archive.org/details/youtube-jNQXAC9IVRw
```
 
Same thing with the file name of a video:
```
              [ Video ID ]
Me_at_the_zoo-jNQXAC9IVRw.mp4
```

Similarly the original URL to the video:

```
           [siteID]             [ video ID ]
https://www.youtube.com/watch?v=jNQXAC9IVRw
```

Youtube-dl stores the entry for the video in the video archive in a similar fashion:

```
youtube JNo4d4pL9S8
youtube jNpltNfQrVs
youtube jnpN3ZIszic
youtube JNQOpLeAAiQ
youtube JNqPS0vHABU
youtube jNQXAC9IVRw <-- Videos entry in youtube-dl file
youtube JNqZTuxRkZs
youtube jnR0532IDGc
youtube jNRBTh55fLw
youtube jnSKiXp1G0c
youtube jnTl3KE9t24
```

My example is sorted by alphabetical order, but yours shouldn't be so these tips will be easier. 
If you set up an automated system like mine, try to do your fixes *before* you sort the list or your
scripts sort it.


## Vim basics you need

The file is located in `~/.tubeup/.ytdlarchive`. I prefer `vim` and will be giving giving instructions on dealing with the download archive using `vim`.

`vim ~/.tubeup/.ytdlarchive`

Vim is a modal editor, meaning when you start up the editor with yor file loaded into it, you can't just immeaditly type away.
This is helpful for many reasons, mainly text processing which I'm going to explore here. The first mod you defualt to is 
the command mode, but pressing `Insert` on your keyboard will switch vim to `Insert` mode, pressing twice will set 
Vim to `Replace` mode. I prefer Insert. To exit editing mode, press escape.

To exit Vim and write the changes to the file, be in command mode and type `:wq`, the W and Q are for Write and Quit.
To merely write, run `:w`, ro force a write `:w!`, and to force quit without saving changes `:q!`.

In command mode you can undo mistakes. simply press `u` and it will rewind the file back, if you do it enough it will
take you back to how it was when you opened it.

Jump to the bottom of the file:

`Shift-G`


## Failed download or not-owned item killed a channel rip

Easy to fix. First stop all other rips and wipe your youtube-dl downloads folder.:

`rm -rf ~/.tubeup/downloads/*`

Now open your archive file in vim.

Okay so in command move press `/` and then paste in video ID of the item you had trouble uploading to.

`/jNQXAC9IVRw` (highlight the text elsewhere, and middle-click to paste it for ease)

And hit enter. This will jump to the text in the archive file.

```
youtube JNo4d4pL9S8
youtube jNpltNfQrVs
youtube jnpN3ZIszic
youtube JNQOpLeAAiQ
youtube JNqPS0vHABU
youtube jNQXAC9IVRw  <-- Will be highlighted or the cursor will jump to it.
youtube JNqZTuxRkZs
youtube jnR0532IDGc
youtube jNRBTh55fLw
youtube jnSKiXp1G0c
youtube jnTl3KE9t24
```

The text will be either highlighted or your cusor will jump to it. Now let's erase everything below the line of the problem 
item:

Still in command mode, put your cursor *BELOW* the line of the problem item, and press `jdG`, shift-G the G. 


```
youtube JNo4d4pL9S8
youtube jNpltNfQrVs
youtube jnpN3ZIszic
youtube JNQOpLeAAiQ
youtube JNqPS0vHABU
youtube jNQXAC9IVRw 
~
~
~
~
```
This will erase everything below the problem item. The Tilda just mean theres literally nothing and it's the end of the file.

Now save and quit `:wq`

With your downloads folder cleared out you can resume your rip. Rinse and repeat as nescessary.

## Delete everything ABOVE a line

Stop all other rips and wipe your youtube-dl downloads folder.

Similar to the above process, you just move one line ABOVE the target line, and press:

`ddg` (keep the G lower case)

and it will wipe everything above the despired line.

Save and quit.

### Delete entries for a given site

`:g/TEXT/d`

Example:

`:g/periscope/d`

### Sort files alphabetically, delete duplicate lines

`:%sort u`


### Picking up on a channel rip someone else started but stopped

Go to a item containing the target channe, click the creators name to see everything that creator made. Sort by 'Upload Date'. This is a good indicator of the latest video you'd need to end at with your rip.

Print out all the video IDs from the channel:

`youtube-dl --ignore-config --get-id [CHANNEL_URL] > TARGET-IDs.txt`

Now for the real magic. In command mode. find the latest video uploaded

`/jNQXAC9IVRw`

Move one line up, while still in command mode type

`ddg`

Prepend side ID `youtube `to the start of each line containing a video ID:

`:%s!^!youtube !`

Save and quit:

`:wq`

Now mix this file into your downliad archive:

`cat TARGET-IDs.txt >> ~/.tubeup/.ytdlarchive`

Now just rip the channel as normal and it will skip that persons progress and add only new videos.

If you want to compare the number of videos on archive.org with the numebr the use uploaded to Youtube:

Look at the number on archive.org after you uploaded the rest of the videos, now get the result from Youtube:

`youtube-dl --ignore-config --flat-playlist [CHANNEL_URL] | tail`

That will give you the channels video count. Just compare these two numbers.


### Remove duplicate words on same line throughout file###

Example:

`WORD WORD`

To fix:

`:%s/\([#@&]\=\<\w\+\>\).\{-}\zs \+[#@&]\@<!\1\>//g`
