---
title: Building a JAMstack Website with Netlify CMS
date: '2019-06-27'
tags:
  - web development
---
My website has undergone several changes over the years and I've never really gotten into posting regularly. To a large degree, this is due to the cumbersome interface I always had. I enjoy writing custom files in Markdown and using Github as the static site server as I did when I used the Jekyll static site generator, but it ends up becoming too time consuming to write new things, and as a result, I stop. 

To make the writing experience better, I wanted a nice CMS to use without all of the overhead and cost of Wordpress or other similar solutions. I needed something simple that I could serve statically, and preferably, for free. I considered a lot of static site generators without CMSes at first, but then I discovered Netlify CMS, which is built for JAMstack websites. I hadn't used JAMstack before (the JAM stands for Javascript, APIs, and Markup), although I suppose Jekyll is technically similar. 

The backend generator I chose was Hugo because my old website was already built using it. This was not as nice as using Gatsby, the React/GraphQL based static site generator that has better Netlify integration, but I chose to stick to the design I had, which was on Hugo. 

There were some configuration changes necessary to get this all working correctly, which you can view on the Github repo for this website [here](https://github.com/indiandennis/website). Overall, the experience of writing on Netlify CMS is good, although it is very barebones at the time of writing. However, it does what I need it to do, which is present me with a nice interface that encourages me to write more and deal with the infrastructure less, while still having a very fast and clean website. 

In the future, I'm considering changing from Hugo to Gatsby, which would require a major site rewrite. It should be worth it due to the speed increase, because Gatsby, being built on React, does not require full reloads for page changes, which dramatically increases speed. 

The future of web development looks to be back towards its roots. Static sites are making a comeback because of their speed and simplicity on the client side. Frameworks like Svelte are performing similar duties to React and Vue, but are precompiling to pure Javascript so the library does not need to be included. I'm excited to see the advancement of these technologies to make the web faster and lighter.
