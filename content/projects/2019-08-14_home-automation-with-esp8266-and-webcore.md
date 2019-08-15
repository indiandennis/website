---
title: Home Automation With ESP8266 and WebCoRE
description: >-
  Retrofitting 10 year old home automation equipment to integrate it with Google
  Home
date: '2019-08-14'
tags:
  - smart home
  - web development
  - esp8266
---
* Wanted to improve existing system, needed to decide on point of intercept to use esp8266
* Decided on blasting IR from ESP8266
* Used prebuilt software, modified to use additional blasters but did not need it
* Unclear vision led to some waste of money
* Old IR equipment didn't work with signal from ESP8266
* One connecting block did work
* Tried buying a new one from same manufacturer, didn't work either
* Used a single block with separation to other ports for alternate devices/multiples
* Created pistons in webcore, used many at first, converted to taking input through url
* Executed pistons through smartthings using webcore
* Mightve been easier to use direct groovy code, webcore ide too constricting, slow development
* System for adding pistons/getting external urls easy, so stuck with webcore
* Used IFTTT to connect google home with webcore url
* Google home sucks for customization, only option is google actions which is garbage compared to alexa's options, but overall I trust Google more than Amazon and google assistant has better integration to my products, so whatever
* Conclusion: This whole process can be a lot simpler. There are many levels of APIs that must be connected, but the interaction between them is clunky because they restrict you. Google doesnt let you do what you want, webcore doesn't let you do what you want, smartthings is pretty open, so is esp8266
* PS. App custom created to handle remote functionality on phone. There is no real alternative to this to simply call webhook urls with a remote format. Maybe potential to make this into a public app instead of a locally hosted website. On the other hand, this is an incredibly niche area. Possible potential to create a fully hosted service so that the entire thing from esp8266 to smartthings to webcore to remote to google is all handled. This would be a ton of work since it needs to also integrate into alternative microcontrollers, alternative hubs, alternative smart assistants in order to be production grade. Most people that would be in the target market for this are just buying off the shelf "alexa compatible" wifi devices etc, and the people who need high customizability already do this on their own. Maybe create a simple one and see if there is any interest.
