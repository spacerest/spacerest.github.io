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
  2. Fix how syntax is displaying in my markdown files (some characters, like underscores in file names, can't be escaped and funk up the highlighting in the rest of my file). Also fix things so that I can see any trailing white space.
  3. Integrate auto-close tags like <code>def ... end</code> and <code>{ ... }</code>
  4. Compile a list of the commands I'd like to be using regularly.
- Conclusion and sources.

{: .center}
╚╚\|░▄░\|╝╝

{: id="goal1"}
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

I've hated it. This happens because, like it says, I probably have this same info open in another tab. Vim knows that it's open somewhere not in this Vim session, but it doesn't know that it's necessarily in another Vim session. What this message is saying is that I'm essentially editing a new version of this file, instead of the text of the file that's saved in one place in my history. This is a good way to lose changes that you're making in one of the two versions of the same file that are open. 

When using buffers, however, even if you have a split window with the same buffer on both sides, any changes you make on one side of the split will be simultaneously executed in the other side of the split, because you're looking at the same place, twice. 

{: .center}
![vim tabs versus vim buffers for the same file](/assets/gifs/vim_buffers.gif)

So much simpler.

#### Basic Steps for Opening and Navigating Between Buffers

For starters, open two files within the same Vim session with <code>vim file1.ext file2.ext</code>.

You’ll now probably have one buffer visible with the contents of <code>file1.ext</code>. To split the screen, you can split it horizontally with the command <code>:split</code>, or you can split it vertically with the command <code>:vsplit</code>.

You’ll now probably have two views of the same buffer of <code>file1.ext</code> visible. Try <code>Ctrl-w</code> followed by another <code>w</code>, and you should see your active cursor move between the two views. Once you’re in the view you’d like to display file2.ext, try <code>:bnext</code> or <code>:bprevious</code>.

Play around with the <code>Ctrl-w</code> by following it with an <code>n</code> instead of a <code>w</code>. Also play around with <code>:ls</code> to list all the buffers open in this session, and instead of <code>:bnext</code>, try <code>:b1</code> and <code>:b2</code>, because 1 and 2 are most likely the listed names you’ll see for each buffer when listing them out with <code>:ls</code>.

To save and close out each buffer, go with the regular old <code>:w</code> and <code>:q</code>.

Anyway, that’s the deepest that I’m going to go into buffers today. I’ll save mapping for another day.

{::comment}
http://www.moolenaar.net/habits.html

what's a Makefile?

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
