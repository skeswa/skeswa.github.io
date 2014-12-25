---
layout: post
title: "Unnecessary background images"
date: 2014-04-29 22:56
comments: true
categories: css
keywords: css, styles, background, color, image, hover, blog
---

<link rel="stylesheet" href="https://dl.dropboxusercontent.com/u/159328383/jarjarbinks.css" type="text/css">

I still do not understand why would somebody use background **image** containing
just a plain color to appear *on hover*(not only) instead of just background color unless the author
wants to enrich an element with some witty & fancy background.

I've seen this on numerous websites and one can not very easily detect it by
noticing that `background-image` displays a little bit earlier than `background-color`.
Somehow you can feel that subtle blink of an image as it appears.


Look : 

<div class="jarjarbinks color">
  <h4>With plain <code>background-color</code></h4>
  <ul>
    <li>Home</li>
    <li>About</li>
    <li>Pricing</li>
    <li class="rightmost">Contact</li>
  </ul>
</div>

<hr>

<div class="jarjarbinks image">
  <h4>With <code>background-image</code></h4>
  <ul>
    <li>Home</li>
    <li>About</li>
    <li>Pricing</li>
    <li class="rightmost">Contact</li>
  </ul>
</div>

See ?

I'm still not quite sure whether I am missing something out and there's some rather
important aspect of `background-image` I'm not aware of. Otherwise, it's just another
asset to care about.
