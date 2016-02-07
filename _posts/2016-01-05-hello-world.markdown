---
layout: post
title:  "posting this post"
date:   2016-01-05 18:14:55 -0600
comments: true
categories: 
---

this is my first of several posts keeping track of what i'm learning. i'm going to keep this particular site code-specific (i.e. you won't see any posts about how to break nail-biting habits or how to resurrect my dead plants). right now, i'd like to touch on the following:  

╚╚\|░▄░\|╝╝
{: .center}

1. what relevent things/knowledge did i already have before setting out to put up this blog?

2. what new things did i need to install/get acquainted with to get this site up?

3. what are my next steps?

╚╚\|░▄░\|╝╝
{: .center}

####1. what did i already have?

- an interest in getting a blog up to document and motivate my progress. i want to see the makings of this blog from the inside.
- a computer and internet browser and internet connection
- an intro  understanding of the terminal command line (currently using a mac laptop). the commands i feel cool about are ls, cd, touch, mkdir, cp, mv, open, rm, rm -r, and then... what's it called... how to use executibles (like "vim [open this please]" and "git [do this please]"
- a basic understanding of the vim text editor (like, how to move my cursor around a little, how to edit text, how to search, how to save/quit. lots to learn and i keep forgetting how to scroll!).
- a github account and a basic understanding of the git executible. more or less, my git go-to's were (and pretty much still are) the following:
  - git clone [url]
  - git add .
  - git status
  - git commit -m "this is probably another test"
  - git push origin master 
- a basic understanding of html (thanks to codeacademy and shay howe's [learn to code html & css](http://learn.shayhowe.com/){:target="_blank"}
- a basic understanding of css and scss
- a basic understanding of the javascript language
- a very basic understanding of the ruby language

####2. what new things did I learn?

- about the existence of [octopress](http://octopress.org/), which is "a blogging framework for hackers." oh man! i just went to the octopress site and it looks like the guy who put out octopress, brandon mathis, *just* put up a [post announcing octopress version 3.0](http://octopress.org/2015/01/15/octopress-3.0-is-coming/){:target="_blank"}, which is going to be a full re-write. for my needs, it turned out that i didn't need the majority of octopress' features, so i decided to go with the website generator [jekyll](https://www.jekyllrb.com){:target="_blank"} that octopress is an extension of. according to the reasoning behind this 3.0 release, though, it sounds like i should take a second look at getting to know octopress, maybe for a future project.
- about [jekyll](https://www.jekyll.rb){:target="_blank"}, which i'm using to put up this blog, currently. jekyll is a static website generator which can be implemented from the command line easily with minimal knowledge of web development. to get this site up and running on my free github domain here, i used barry clark's article [build a blog with jekyll and github pages](https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/){:target="_blank"}, which discusses how to install jekyll locally, modify jekyll, and push jekyll up to your own custom github-hosted page. this article was a perfect walk-through for what i was looking for.
- about [hub](https://github.com/github/hub){:target="_blank"}, which extends the capabilities of using git in your terminal. hub lets you create repos directly from the command line, eliminating some extra steps in the browser. my understanding of it doesn't speeds things up dramatically, but for whatever reason, it makes things more straight forward in a really satisfying way. after installing hub, mistakenly deleting the .bashrc file, uninstalling hub, uninstalling git, and reinstalling git (which, if i remember right, is what restored my [happy git environmenton os x](https://gist.github.com/trey/2722934){:target="_blank"}, i was finally able to __create__ repos directly from my command line (instead of __cloning__ existing repos from my github account)
- very basic markdown syntax, (i.e. how to make links and how to display images), via adam pritchard's [markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet){:target="_blank"}. i can't seem to get ~~strikethroughs~~ to work, which is ~~frustrating~~.
- how to add plug-ins to my jekyll file. right now, the only one i'm using is [jemoji](https://github.com/jekyll/jemoji){:target="_blank"}, which lets me use [any of these emoji](http://www.emoji-cheat-sheet.com/){:target="_blank"} anywhere on this site. jemoji is a gem, and to add it in here, the readme for the jemoji repo told me i just needed to add "gem 'jemoji' to my Gemfile and add "gems:[return][tab]- jemoji" to my \_config.yml file. i didn't originally have a Gemfile anywhere in this jekyll directory, so i used **bundle init** (which uses the gem-management tool [bundler](http://bundler.io/){:target="_blank"}, which organizes the gems you're using in any particular project, from what i understand). this command seems to just make that good ole Gemfile, with a couple lines written in there. if i just make the file myself and write those same lines in myself, does that do the same thing? anyway, now i can use emoji in these posts, though it sounds like i need to do a lot of reading up on how exactly gems work. this brings me to my final section.

####3. what's next?

- **writing 101**: learn how to say more with less words.
- **ruby gems 101**: what exactly are they and how do they work?
- **makeover 101!** i'm including a screenshot of what this site looks like right now, in the hopes that one day i'll have it decked out uniquely to me. it should be fun to compare this original to different versions as things move along. :construction_worker:

{: .center}
![alt txt](/assets/nostylepost.png)

- **xml 101**: i need to finish reading this article [a really, really, really good introduction to xml](http://www.sitepoint.com/really-good-introduction-xml/){:target="_blank"} by tom myer and explore **/jekyll/feed.xml** a little more. what's populating the fields in this document? who's taking the text i'm inputting here, in **posts/posting-this-post-01-04-2016.markdown**, and putting it in **/jekyll/feed.xml**?
- **jekyll 101**: drawing on the above question, can i map out what's happening in the different files? at the very least, i'd like to list them out for myself and remember what lives where. even better, a visual map of what i think is happening.
- what's **liquid html**? is that something to do with the brackets and percentage symbols i keep seeing? 
- keep looking into markdown. where does kramdown come in? is this a modified markdown? can i call kramdown "kramerdown," or is it too soon? i really love that character on seinfeld.
- **yml 101** 
- **image organization**: look into storing your own emoji somewhere in here instead of requesting them on each reload, which is how it seems to be set up right now. also find out if that's really how it's set up right now. do i care if my emoji don't show up in my files when i'm not connected to the internet?
- figure out how to emulate commands written in terminal here in these posts. it looks like a highlight ruby tag is defaulted in here already; can i highlight other languages?
{% highlight ruby %}
def what_lang(name)
  puts 'hi, #{name}. what are you?'
    if name == 'ruby'
      puts 'oh, hi #{name}!'
    else
      puts 'ah... sorry man, might be a wrong number.'
    end
end
what_lang('ruby')
#=> prints 'oh, hi ruby!' to STDOUT.
what_lang('lisp')
#=> prints 'ah... sorry man, might be a wrong number.'
{% endhighlight %}
- speaking of the terminal, figure out how to ask vim to stop highlighting everything after an out-of-context underscore, waiting for me to close the emphasis tag. 

{: .center}
![not-bold-pls](http://i.imgur.com/FyVfVCg.gif)

- git 201: check out roger dudler's [git - the simple guide](http://rogerdudler.github.io/git-guide/){:target="_blank"}. i might learn some new tricks and i'm really digging the color scheme and general layout. :shell: :whale2:
- can i make this "what's next" section into a little to-do list, and check them off as i go? i think i have a javascripty to-do app stored somewhere, i wonder if i can mix that in with this static-site stuff without messing anything up. 

###conclusion

cool, so here i am! i have a list of things done and a list of things to do. i'm looking forward to the days that i won't be able to put everything that i know into such a compact list but am liking the feeling of compactness right now, so, check, mate! :pushpin: :paperclip: :bowling: :clapper: :tophat: :tea:

###sources

- barry clark's [build a blog with jekyll and github pages](https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/){:target="_blank"} 
- [github issue: centering blog post images not possible #3219](https://github.com/jekyll/jekyll/issues/3219): _how to center images using kramdown and css_
- [stack overflow question: markdown target="\_blank"](http://stackoverflow.com/questions/4425198/markdown-target-blank#answer-4705645): _how to adjust a link's target attribute in markdown_
- shay howe's [learn to code html & css](http://learn.shayhowe.com/)
- brandon mathis' [octopress](http://octopress.org/)
- brandon mathis' [post announcing octopress version 3.0](http://octopress.org/2015/01/15/octopress-3.0-is-coming/){:target="_blank"}
- [jekyll](https://www.jekyllrb.com){:target="_blank"}
- [happy git environmenton os x](https://gist.github.com/trey/2722934){:target="_blank"}
- adam pritchard's [markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet){:target="_blank"}
- [jemoji](https://github.com/jekyll/jemoji){:target="_blank"}
- [hub](https://github.com/github/hub){:target="_blank"}
- tom myer's [a really, really, really good introduction to xml](http://www.sitepoint.com/really-good-introduction-xml/){:target="_blank"}
- [bundler](http://bundler.io/){:target="_blank"}
