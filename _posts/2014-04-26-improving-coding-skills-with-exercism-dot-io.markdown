---
layout: post
title: "Improving coding skills with exercism.io"
date: 2014-04-26 17:46
comments: true
categories: exercism tutorial practice
description: Quick introduction into exercism.io, crowd-sourced menthorship available for everyone
keywords: exercism, code, skill, quality, feedback, nitpick, exercises, blog
---

There are many ways how one can sharpen his coding & programming skills. However, peer review
or just simple "putting it out there" is a very important aspect of a constant achievement of 
better results.

[exercism.io](http://exercism.io) is a crowd-sourced mentorship providing algorithmical exercises in
<mark>Clojure, Coffeescript, Elixir, Go, Haskell, Javascript, Objective-C, Ocaml, Perl5, Python, Ruby and Scala.</mark>

Installation
------------

The process is very simple and straightforward. After signing in with your Github account and setting up the 
[CLI](http://cli.exercism.io) you are almost ready to go.

Note that exercism.io binary file will be placed in `/usr/local/bin` or `$HOME/bin` directory so make sure you got 'em
in your `PATH`. If not, add similar into your `~/.bashrc`

{% highlight bash %}
...
export PATH="/home/you/bin/:$PATH"
...
{% endhighlight %}

When the command line interface is ready, log in to your exercism.io account :

{% highlight bash %}
$ exercism login
{% endhighlight %}

It'll ask your for your GitHub username and exercism.io API key which can
be found on your [account's](http://exercism.io/account) page.

Proceed by selecting exercism exercises path, e.g where given
exercises would be stored.

{% highlight bash %}
What is your exercism exercises project path?
Press Enter to select the default (~/tmp):
# actual path for instance /home/user/apps/exercism
{% endhighlight %}

And finally fetch the exercises :

{% highlight bash %}
$ exercism fetch
{% endhighlight %}

Exercise
--------

Navigating into your specified exercism directory, you can see that each of the
languages has its own directory. Navigating deeper, you can see that each of the
exercises has its own directory.

The initial state of the task's directory consists of following files :

{% highlight bash %}
peter@peter:~/apps/exercism/ruby/bob$ ls

bob_test.rb  GETTING_STARTED.md  README.md
{% endhighlight %}

**README** describes the given problem, gives instuctions how to approach
that magical path leading to the solution and usually provides some background information about
the exercise.

**GETTING_STARTED** gets you started(in Ruby only at the moment). It introduces an
ideal exercism workflow to achieve the desired goal.

***exercise*_test.*ext*** is a test suite your code <mark>has to pass</mark> declaring it
actually works as expected.

### The creative part ###

All the code you produce should be *ideally* (it depends on each of the very language) written in the separate file or along with the test
file altogether. In Ruby, for instance, you create a file according to the test suite given e.g.

{% highlight ruby %}
require 'minitest/autorun'

begin
  require_relative 'bob'
rescue LoadError => e
...
{% endhighlight %}

Meaning file `bob.rb` containing the code ought to be placed in the root of exercise directory.

{% highlight bash %}
peter@peter:~/apps/exercism/ruby/bob$ ls
bob.rb  bob_test.rb  GETTING_STARTED.md  README.md
{% endhighlight %}

Finally, exercise.

### Submitting the exercises ###

When you think your code is all flashy reaching an
eternal perfection, submit the example. <br>
When you think it is not the best you can do and there's something
fishy about it but you can't seem to find the smoother way to solve the problem, submit the example.

To do so, just : 
{% highlight bash %}

$ exercism submit path/to/exercise.ext

{% endhighlight %}

And you receive a link to feedback of the submission

{% highlight bash %}
$ exercism submit path/to/exercise.ext
For the feedback on your submission visit http://exercism.io/submissions/d3129jar13jar50fbinksc2a
{% endhighlight %}

### Nitpicking ###

Core feature of [exercism](http://exercism.io), as their front page states, is to examine, question and
review the submitted code among the peers a.k.a nitpicking.

A **nitpick** is not just a comment of the code. It should provide critical & constructive criticism about
the submission. Maybe introduce a different approach or discuss some of its aspects.

As soon as an user submits his piece, he should feel encouraged to leave "Initial Thoughts" about his own code.
(I would strongly recommend this simply because people are more likely to nitpick a submission with a commentary of the author
especially when he raises a doubt or two about his code.)

### Iteration ###

What would be the purpose of exercism if you wouldn't be allowed to change the code
over the time ?. Naturally, exercism provides concept of iteration meaning
you can *update* your code (preferably for the better) as much as you want. Nonetheless its philosophy calls it **Wash, rinse, repeat.**

It is as simple as initial submitting of an exercise :

{% highlight bash %}

$ exercism submit path/to/exercise.ext

{% endhighlight %}

Each of the iterations is viewed independently meaning it has its own page and feedbacks.

### I'm done ###

If you are done and you don't need any more feedback on your submission click *OK, I'm done. I don't need any more feedback on this.* on the submission's page and
fetch the next exercise by :

{% highlight bash %}
$ exercism fetch 
{% endhighlight %}

<hr>

Although [exercism.io](http://exercism.io) is an awesome tool for improvement and deeper code discussion, feedback does not
usually come very quickly not to mention that loads of submissions are left without any.
I do really hope I'll change in the near future.
