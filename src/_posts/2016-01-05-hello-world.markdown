---
layout: post
title:  "hello world"
date:   2016-01-05 18:14:55 -0600
comments: true
categories: 
---

This is my first of several posts keeping track of what I'm learning. As a TLDR warning, today's post is documentation for me to look back on ("Hey girl, here's where you started, look at what you've learned since then!"). I'm going to keep this particular site code-specific (i.e. you won't see any posts about how to break nail-biting habits or how to resurrect my dead plants). Right now, I'd like to touch on the following:  

╚╚\|░▄░\|╝╝
{: .center}

1. [What relevant things/knowledge did I already have before setting out to put up this blog?](#already)

2. [What new things did I need to install/get acquainted with to get this site up?](#new)

3. [What are my next steps?](#next)

{: .center}
╚╚\|░▄░\|╝╝

{: id="already" class="section_header"}
What did I already have?
===============================

- An interest in getting a blog up to document and motivate my progress.
- A computer and internet browser and internet connection.
- An intro  understanding of the terminal command line (currently using a mac laptop). The commands I feel cool about are ls, cd, touch, mkdir, cp, mv, open, rm, rm -r, and then... what's it called... how to use executables (like "vim [open this please]" and "git [do this please]"
- A basic understanding of the vim text editor (like, how to move my cursor around a little, how to edit text, how to search, how to save/quit. Lots to learn and I keep forgetting how to scroll!).
- A github account and a basic understanding of the git executable. More or less, my git go-to's were (and pretty much still are) the following:
<pre>
  <code>
    $ git clone [url]
    $ git add .
    $ git status
    $ git commit -m "this is probably another test"
    $ git push origin master 
  </code>
</pre>
- A basic understanding of html (thanks to codeacademy and Shay Howe's [Learn to Code HTML & CSS](http://learn.shayhowe.com/){:target="_blank"})
- A basic understanding of css and scss
- A basic understanding of the javascript language
- A very basic understanding of the ruby language

{: id="new" class="section_header"}
What new things did I learn?
===============================


- About the existence of [Octopress](http://octopress.org/), which is "a blogging framework for hackers." Oh man -- I just went to the Octopress site and it looks like the guy who put out Octopress, Brandon Mathis, *just* put up a [post announcing Octopress version 3.0](http://octopress.org/2015/01/15/octopress-3.0-is-coming/){:target="_blank"}, which is going to be a full re-write. For my needs, it turned out that I didn't need the majority of Octopress' features, so I decided to go with the website generator [Jekyll](https://www.jekyllrb.com){:target="_blank"} that Octopress is an extension of. According to the reasoning behind this 3.0 release, though, it sounds like I should take a second look at getting to know Octopress, maybe for a future project.
- About [Jekyll](https://www.jekyll.rb){:target="_blank"}, which I'm using to put up this blog, currently. Jekyll is a static website generator which can be implemented from the command line easily with minimal knowledge of web development. To get this site up and running on my free github domain here, I used Barry Clark's article [Build a Blog with Jekyll and Github Pages](https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/){:target="_blank"}, which discusses how to install Jekyll locally, modify Jekyll, and push Jekyll up to your own custom Github-hosted page. This article was a perfect walk-through for what I was looking for.  
- About [hub](https://github.com/github/hub){:target="_blank"}, which extends the capabilities of using git in your terminal. Hub lets you create repos directly from the command line, eliminating some extra steps in the browser. My understanding of it doesn't speeds things up dramatically, but for whatever reason, it makes things more straight forward in a really satisfying way. After installing hub, mistakenly deleting the .bashrc file, mucking around with SSH keys in github, uninstalling hub, uninstalling git, reinstalling git (which, if I remember right, is what restored my [happy git environmenton os x](https://gist.github.com/trey/2722934){:target="_blank"}), and finally reinstalling hub, I was finally able <code>create</code> repos directly from my command line (instead of <code>cloning</code> existing repos from my Github account). It's so refreshingly straightforward:
    
- Very basic markdown syntax, (i.e. how to make links and how to display images), via Adam Pritchard's [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet){:target="_blank"}. I can't seem to get ~~strikethroughs~~ to work, which is ~~frustrating~~.
- How to add plug-ins to my Jekyll directory. Right now, the only one I'm using is [jemoji](https://github.com/jekyll/jemoji){:target="_blank"}, which lets me use [any of these emoji](http://www.emoji-cheat-sheet.com/){:target="_blank"} anywhere on this site. Jemoji is a gem, and to add it in here, the readme for the jemoji repo told me I just needed to add <code>gem 'jemoji'</code> to my Gemfile and add <code>gems:[return][tab]- jemoji</code> to my \_config.yml file. I didn't originally have a Gemfile anywhere in this jekyll directory, so I used <code>bundle init</code> (which uses the gem-management tool [bundler](http://bundler.io/){:target="_blank"}, which organizes the gems you're using in any particular project, from what I understand). This command seems to just make that good ole Gemfile, with a couple lines written in there. If I just make the file myself and write those same lines in myself, does that do the same thing? Anyway, now I can use emoji in these posts, though it sounds like I need to do a lot of reading up on how exactly gems work. This brings me to my final section.

{: id="next" class="section_header"}
What's next?
============

- Writing 101: learn how to say more with less words.
- Ruby gems 101: what exactly are they and how do they work?
- Makeover 101! I'm including a screenshot of what this site looks like right now, in the hopes that one day I'll have it decked out uniquely to me. It should be fun to compare this original to different versions as things move along. :construction_worker:

{: .center}
![image_of_blog_without_style_modifications]({{ "/assets/images/nostylepost.png" | prepend: site.baseurl }})

- XML 101: I need to finish reading this article [a really, really, really good introduction to xml](http://www.sitepoint.com/really-good-introduction-xml/){:target="_blank"} by Tom Myer and explore **/jekyll/feed.xml** a little more. What's populating the fields in this document? Who's taking the text I'm inputting here, in **posts/posting-this-post-01-04-2016.markdown**, and putting it in **/jekyll/feed.xml**?
- Jekyll 101: drawing on the above question, can I map out what's happening in the different files? At the very least, I'd like to list them out for myself and remember what lives where. Even better, a visual map of what I think is happening.
- What's **liquid html**? is that something to do with the brackets and percentage symbols I keep seeing? 
- Keep looking into Markdown. Where does kramdown come in? Is this a modified Markdown? Can I call kramdown "kramerdown," or is it still too soon? I really love that character on Seinfeld.
- YML 101 
- Image organization: look into storing your own emoji somewhere in here instead of requesting them on each reload, which is how it seems to be set up right now. Also find out if that's really how it's set up right now. Do I care if my emoji don't show up in my files when I'm not connected to the internet?
- Figure out how to emulate commands written in terminal here in these posts. it looks like a highlight ruby tag is defaulted in here already; can I highlight other languages?
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
- Speaking of the terminal, figure out how to ask vim to stop highlighting everything after an out-of-context underscore, waiting for me to close the emphasis tag. 

{: .center}
![not-bold-pls](http://i.imgur.com/FyVfVCg.gif)

- git 201: check out Roger Dudler's [Git - The Simple Guide](http://rogerdudler.github.io/git-guide/){:target="_blank"}. I might learn some new tricks and I'm really digging the color scheme and general layout. :shell: :whale2:
- Can I make this "what's next" section into a little to-do list, and check them off as I go? I think I have a Javascript-y to-do app stored somewhere, I wonder if I can mix that in with this static-site stuff without messing anything up. 

Conclusion
==========

Cool, so here I am! I have a list of things done and a list of things to do. I'm looking forward to the days that I won't be able to put everything that I know into such a compact list but am liking the feeling of compactness right now, so, check, mate! :pushpin: :paperclip: :bowling: :clapper: :tophat: :tea:

Sources
=======

- Barry Clark's [Build a Blog with Jekyll and Github pages](https://www.smashingmagazine.com/2014/08/build-blog-jekyll-github-pages/){:target="_blank"} 
- [Github Issue: Centering Blog Post Images Not Possible #3219](https://github.com/jekyll/jekyll/issues/3219): _How to Center Images Using Kramdown and CSS_
- [Stack Overflow Question: Markdown target="\_blank"](http://stackoverflow.com/questions/4425198/markdown-target-blank#answer-4705645): _How to Adjust a Link's Target Attribute in Markdown_
- Shay Howe's [Learn to Code HTML & CSS](http://learn.shayhowe.com/)
- Brandon Mathis' [Octopress](http://octopress.org/)
- Brandon Mathis' [Post Announcing Octopress version 3.0](http://octopress.org/2015/01/15/octopress-3.0-is-coming/){:target="_blank"}
- [Jekyll](https://www.jekyllrb.com){:target="_blank"}
- [Happy Git Environmenton OS X](https://gist.github.com/trey/2722934){:target="_blank"}
- Adam Pritchard's [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet){:target="_blank"}
- [Jemoji](https://github.com/jekyll/jemoji){:target="_blank"}
- [hub](https://github.com/github/hub){:target="_blank"}
- Tom Myer's [a really, really, really good introduction to xml](http://www.sitepoint.com/really-good-introduction-xml/){:target="_blank"}
- [bundler](http://bundler.io/){:target="_blank"}
