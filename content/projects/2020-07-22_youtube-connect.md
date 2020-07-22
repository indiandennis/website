---
title: Youtube Connect
description: WebExtension and Backend to Control Youtube Remotely
date: 2020-07-21
tags:
  - software
  - utility
  - backend
  - frontend
---
Youtube Connect Website: [youtubeconnect.ameyathakur.com](youtubeconnect.ameyathakur.com)

### Introduction

This is a simple application I built over the summer to control a Youtube player in the browser from another device. I don't have any particular use for it but thought that it was something cool I could work on,and a feature that is interestingly missing from Youtube. I was inspired by the Spotify Connect feature which I really enjoy using and admire the implementation of. 

### Implementation

To integrate with the player in a user's browser, I need to create a WebExtension. I built it for Firefox first, and it was fairly straightforward to get it to work in Chrome after that using Mozilla's [WebExtension Polyfill](https://github.com/mozilla/webextension-polyfill). I built the extension with plain Javascript, which was a simple way to modify the Youtube DOM to add an additional settings panel for my extension. Using this approach, I was also able to use most of the Youtube styles and interact with the player through Javascript to get and set relevant data. 

Since I don't work at Youtube, I didn't want to deal with any authentication system to sync based on user credentials. Instead, I built a loginless system based on randomly generated tokens. I built the server using Go and [Gin ](https://github.com/gin-gonic/gin)(a web framework for Go). This made it very straightforward to setup an API to generate, update, delete, and get based on the tokens. An important part of the application is the ability to receive updates in the browser based on changes sent to the API from the remote. I handled this using HTML5 Server Side Events, which play nicely with Javascript and don't require any special handling on the server side (unlike websockets). I also only really needed one way communication, so this made things easier. 

I built the remote application using [Svelte](https://svelte.dev/), which I have wanted to use for some time, but I didn't really need much to create a simple interface. Front-end web development has really begun to wear on me and I just can't stand having to figure out how to center something in CSS anymore, so I kind of gave up on the styling after I got it functional. It works, it looks decent, and that's good enough for me since it's just for fun anyway. 

Deploying the extension on Mozilla Addons and the Chrome Web Store was something else I was not expecting to have to deal with. While you can sideload addons into Firefox, you must get them signed by Mozilla anyway, so I might as well submit it to their store. In Chrome, you can't sideload at all without adding an unzipped folder of the extension. As a result, I decided to just submit the extension to both stores. Mozilla approved it and published it remarkably quickly, and with a real person looking at it too (they left a comment!). Google still has not replied as of yet, which is reasonable considering it's only been a day. I wouldn't be surprised, however, if they reject it simply because it has Youtube as the first word in it's name. This policy is somewhat nonsensical to me. I understand that they want to protect their trademark, but I'm adding functionality to their application for free, and it's pretty clear that it isn't an official Youtube product. Either way, having to deal with app stores is easily my least favorite part of this process.

### Conclusion

This was one of my more challenging projects, as it required a full stack solution (extension, API server, and remote front-end), but I was, to my surprise, able to complete it in a week. Several of those days were full days of work, but I am still surprised that I was able to complete it that fast. In the end, I did end up narrowing the scope of the application from what I had desired during the middle of the project, but I still consider it a success. I learned a lot about managing the development of a somewhat complex application and the importance of structure and deliberate implementation rather than flailing around until a working solution is found (which, admittedly, I learned from my own failures on this project). I'm considering another complex application like this in the near future, but I will be sure to have a solid design in place before I begin any implementation.