---
layout: post
title:  "rspec and ruby - part 1"
date:   2016-09-02 16:14:55 -0600
comments: true
categories: 
---

It's been a while since I posted last, but I've been learning quite a bit the past few months. 

What I learned today:

- When using rspec to test whether an exception is raised, the syntax <code>expect( SomeObject.new("zero")).to raise_error(TypeError) )</code> will **not** work, while <code>expect { SomeObject.new("zero")}.to raise_error(TypeError)</code> will; note the use of parentheses versus brackets.

- How to fold in vim

- about tainting
  -can't taint true
  -can taint an object while setting it to a variable me = "me".taint; me.tainted? ##> true

- about threads
http://rubylearning.com/satishtalim/ruby_threads.html
rb_learning_space taint.rb

- about rack and make files -- [Understanding Rack Apps and Middleware](https://blog.engineyard.com/2015/understanding-rack-apps-and-middleware)

- yaml, including this [answer](http://stackoverflow.com/a/13950297/5650506) and this [short tutorial](http://rhnh.net/2011/01/31/yaml-tutorial)
