---
layout: post
title: "setting up my vim environment"
date: 2016-02-08 05:34:15 -0600
comments: true
categories:
---

Hey there! Today I'd like to set up my vim environment to eliminate some of the extra steps I've been taking when writing.

╚╚\|░▄░\|╝╝
{: .center}

- My goals:
  1. [Have multiple vim windows up within one terminal window.](#goal1)
  2. [Fix how syntax is displaying in my markdown files.](#goal2) (some characters, like underscores in file names, can't be escaped and funk up the highlighting in the rest of my file). Also fix things so that I can see any trailing white space.
  3. [Integrate auto-close tags like <code>def ... end</code> and <code>{ ... }</code>.](#goal3)
  4. [Compile a list of the commands I'd like to be using regularly.](#goal3)
- [Conclusion and sources.](#conclusion)

{: .center}
╚╚\|░▄░\|╝╝

{: id="goal1" class="section_header"}
### Have Multiple Windows Up Within One Terminal Window

#### What's a Buffer? Will it discourage those pesky .swp files?

After doing some research, I see that what I actually want is to have multiple buffers within one Terminal tab. Some great history about Vim windows / tabs versus Vim buffers (along with other interesting Vimformation) can be found in Josh Davis' blog post [Vim Tab Madness. Buffers vs Tabs](http://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/). The main gist of why to use buffers instead of tabs is that we're already using a singular buffer every time we open a new tab, because each tab is a view into Vim, and there's no need to have more than one Tab open when we can access all the info we need (and more easily transfer info between different buffers, fingers crossed) with just one view. I think. Long story short, according to Josh, 
  
> A buffer is the in-memory text of a file.  
 A window is a viewport on a buffer.  
 A tab page is a collection of windows.

In other editors, tabs exist to represent particular files you're moving between, but you're not going to use one tab to represent interchangeable files. Similarly, once Vim is open once, it's easiest to access each file by individual buffers. 

Since I've started using Vim, I keep running into this message: 


{: .center}
![swp file already exists screen shot](/assets/images/swp_message.png)

The worst! This happens because, like it says, I probably have this same info open in another tab. Vim knows that it's open somewhere not in this Vim session, but it doesn't know that it's necessarily in another Vim session. What this message is saying is that I'm essentially editing a new version of this file, instead of the text of the file that's saved in one place in my history. This is a good way to lose changes that you're making in one of the two versions of the same file that are open. 

When using buffers, however, even if you have a split window with the same buffer on both sides, any changes you make on one side of the split will be simultaneously executed in the other side of the split, because you're looking at the same place, twice. 

{: .center}
![vim tabs versus vim buffers for the same file](/assets/gifs/vim_buffers.gif)

Much easier without the fear that comes with those .swp error messages.

**Update**: Before pushing up this blog post, I accidentally deleted the contents of this whole site on my computer. I recovered most of the blog by cloning it from the repository on Github, but wouldn't have recovered any of this particular post if it hadn't been for those handy .swp files. I get it now.

#### Basic Steps for Opening and Navigating Between Buffers

For starters, open two files within the same Vim session with <code>vim file1.ext file2.ext</code>.

You’ll now probably have one buffer visible with the contents of <code>file1.ext</code>. To split the screen, you can split it horizontally with the command <code>:split</code>, or you can split it vertically with the command <code>:vsplit</code>.

You’ll now probably have two views of the same buffer of <code>file1.ext</code> visible. Try <code>Ctrl-w</code> followed by another <code>w</code>, and you should see your active cursor move between the two views. Once you’re in the view you’d like to display file2.ext, try <code>:bnext</code> or <code>:bprevious</code>.

Play around with the <code>Ctrl-w</code> by following it with an <code>n</code> instead of a <code>w</code>. Also play around with <code>:ls</code> to list all the buffers open in this session, and instead of <code>:bnext</code>, try <code>:b1</code> and <code>:b2</code>, because 1 and 2 are most likely the listed names you’ll see for each buffer when listing them out with <code>:ls</code>.

To save and close out each buffer, go with the regular old <code>:w</code> and <code>:q</code>.

Anyway, that’s the deepest that I’m going to go into buffers today. I’ll save mapping for another day.

{: id="goal2" class="section_header"}
### Fix Syntax in Markdown Files

This one was surprisingly easy: all sources led me to PlasticBoy's extension on Github, [Vim-Markdown](https://github.com/plasticboy/vim-markdown), which includes installation instructions. I already have [Vundle](https://github.com/VundleVim/Vundle.vim) already on my computer, which facilitates easy plug-in installation.

{: .center}
![screen shot of "vundle about"](/assets/images/vundle.png)

To get Vundle, I just followed the steps on the readme. First, I ran 

  <code>
    $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  </code>

and then modified my .vimrc file (which you can reach by running

  <code>
    $ vim ~/.vimrc
  </code>

which will either pop into your existing .vimrc file or make one for you, if there isn't one already) to look like this

<pre>
  <code>
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    call vundle#end()
  </code>
</pre>

If this is your entire .vimrc file, that's okay; you should only have in there what you want in there.

Vundle will handle any plugins you want to use with Vim going forward, so to integrate the PlasticBoy/Vim-Markdown plugin that I need to make my Markdown look better, just follow the simple instructions at PlasticBoy's repo:

{: .center}
![how to install plasticboy/vim-markdown](/assets/images/plasticboy.png)

The <code>:so</code> command is short for "source," meaning that's where the plugins you're installing are listed. After following the above steps, when running :PluginInstall, you might see something like this:

{: .center}
![installing vundle plugins](/assets/gifs/vundle-install.gif)

Again, pretty easy. Just as a general note, the L9 plug-in you see there, that's something that's been recommended to me but that I honestly don't know too much about. I did some research, but everything I found basically said, "read the source code," and there's a lot of code in there, so I'm not exactly sure what it does. In the near future, I'll probably delete the directory (all these plug-ins, including Vundle, can be found at by going over to

<code>
  $ cd ~/.vim/bundle
</code>

) to see if I lose any functionality. 

Leaving the mystery of L9 alone for now, thanks to Vundle and PlasticBoy's plug-in, my Markdown is looking so much better. As an added and unexpected bonus, I even have the trailing white spaces highlighted in yellow without any extra steps. Hoorah.

{: id="goal3" class="section_header"}
### Auto-close Tags

According to Luke Maciak, on a post [3 Tiny Vim Plugins That Will Make Your Life Easier](http://www.terminally-incoherent.com/blog/2014/04/02/3-tiny-vim-plugins-that-will-make-your-life-easier/), there's a simple answer to this. It seems like the secrets to Vim are plugins and memorization. 

He points us over to [Vim-Autoclose](https://github.com/Townk/vim-autoclose), and I'm going to follow the steps we took earlier to get this plugin installed just like the rest. 


{: .center}
![gif of auto-closing test](/assets/gifs/autoclose.gif)


Success.

{: id="goal4" class="section_header"}
### Vim shortcuts to remember

Not surprisingly, my online travels keep bringing me back to [these Vim docs](http://www.vim.org/docs.php){:target="_blank"}. Bram Moolenaar, the guy who made Vim out of vi, has a pretty nice article [Seven effective habits of Vim editing](http://www.moolenaar.net/habits.html){:target="_blank"} that I also found helpful.

Some keystrokes for me to work on:

- <code>%</code> to move between matching braces and between <code>#if</code> to the matching <code>#endif</code>.
- <code>gd</code> to jump from the use of a variable to its local declaration.
- <code>.</code> to repeat the last change.
- <code>m</code> followed by another letter to mark the current location, and <code>'</code> followed by the same letter to go back to the beginning of the line of the mark, or <code>`</code> to go back to the exact position of the mark. Precede either of these with a <code>d</code> to delete all the text between the current location and the mark line or position! <code>:marks</code> to list all the marks currently on file. 
- <code>:abbr [abbreviation] [desired word]</code> to make an abbreviation for a word. <code>:ab</code> to list all current abbreviations, <code>:abc</code> to clear all current abbreviations, and <code>:una [abbreviation]</code> to remove a specific abbreviation.
- <code>Ctrl-O</code> and <code>Ctrl-I</code> to move forwards in your position history. Vim is always watching.
- <code>Ctrl-U</code> and <code>Ctrl-D</code> to scroll up and down half-pages.

{: id="conclusion" class="section_header"}
### Conclusion and sources

Vim gets to be more fun each time I investigate. I see vimtutor and Moose Tracks in my future. :crystal_ball:

- Seth Houses's [How I Learned to Stop Worrying and Love Vim Buffers](http://eseth.org/2007/vim-buffers.html){:target="_blank"}
- Luke Maciak's [3 Tiny Vim Plugins That Will Make Your Life Easier](http://www.terminally-incoherent.com/blog/2014/04/02/3-tiny-vim-plugins-that-will-make-your-life-easier/)
- PlasticBoy's extension on Github, [Vim-Markdown](https://github.com/plasticboy/vim-markdown){:target="_blank"}
- [Vundle](https://github.com/VundleVim/Vundle.vim){:target="_blank"}
- [Vim](http://www.vim.org/docs.php){:target="_blank"}
- Bram Moolenaar's [Seven effective habits of Vim editing](http://www.moolenaar.net/habits.html){:target="_blank"}

{::comment}
http://www.moolenaar.net/habits.html


Use % to jump from an open brace to its matching closing brace. Or from a "#if" to the matching "#endif". Actually, % can jump to many different matching items. It is very useful to check if () and {} constructs are balanced properly.

Use gd to jump from the use of a variable to its local declaration.

The . command repeats the last change. A change, in this context, is inserting, deleting or replacing text. 

you might want to mark the location with the m command

Vim has a completion mechanism that makes this a whole lot easier. It looks up words in the file you are editing, and also in #include'd files. You can type "XpmCr", then hit CTRL-N and Vim will expand it to "XpmCreatePixmapFromData" for you.

When you are typing a phrase or sentence multiple times, there is an even quicker approach. Vim has a mechanism to record a macro. You type qa to start recording into register 'a'. Then you type your commands as usual and finally hit q again to stop recording. When you want to repeat the recorded commands you type @a. There are 26 registers available for this.

To create a new abbreviation, type :abbr [abbreviation] [desired word]; for example, <code>:abbr docu document</code>. To list all abbreviations, type <code>:ab</code>. To remove all abbreviations, type <code>:abc</code>, or <code>:abclear</code>. To unabbreviate a single word, like docu, type <code>:una docu</code>.

Ctrl-O and Ctrl-I lets you move between the movement that Vim has been
recording. You can jump within a file on between buffers.
{:/comment}
