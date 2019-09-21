---
title: 'DIY Smart Home with ESP8266, SmartThings, and Google Home'
description: Modernizing my 10 year old smart home
date: '2019-09-21'
tags:
  - smart home
---
# Goal

My family bought our house around 4 years ago, and it came with a very interesting home media setup. There are 3 TVs in different rooms of the house, and one projector in the home theater. The home theater and the master bedroom also have 7.1 channel surround sound. Furthermore, the theater has a Panamorph lens which stretches the image to fit the cinemascope projector screen. The inputs and IR blasters for each of the displays connects to a centralized rack in a closet. The whole thing was setup to be controlled by Universal Remote Control remotes. The system is advanced for when it was installed (probably around 2008), but today it feels crude and overly complex. There were a few owners of the house after the system's installation, so some devices are missing or misconfigured. I've tried reprogramming the remotes in the past, but they require custom software that Universal Remote Control doesn't provide for all of the remotes. As a result, the system has remained difficult to control and has largely gone unused by my family unless I am at home to start it for them. Despite being installed a decade ago, the displays are still HD and the theater is very nice, so I wanted to modernize the system so that my family could easily use it.

# The Problem

Here is an image of the rack before I began:

It was quite a mess with loose cables and weird connections as a result of the removed devices. To make the system easier to work with, I needed to remove the unused cables and rewire the system. The rack itself consists of the following devices (from top to bottom):

* Cisco 100Mbps switch (too loud to use)
* Sony Blu-Ray Player
* Optoma projector control box
* Backyard speakers zone amplifier
* 4x4 A/V Matrix (analog)
* 4x4 HDMI Matrix
* Theater receiver
* Master bedroom receiver
* Theater subwoofer amplifier

Attached to the back of the rack are the IR zone amplifier and connecting block. The system interacts with the universal remotes by accepting RF transmissions from the remotes, sending the proprietary signal from the RF receiver to the Universal Remote IR controller, and then sending the IR signals through wires connected via 3.5mm TS connectors to the rest of the system. The IR blasters on the TVs and other devices in the rack are connected to the IR zone amp and connecting block with TS connectors. 

This whole system needed to be modified and automated so that simple commands from an intuitive interface can control any device in any room.

# Approach

My initial thought was to automate Universal Remote keypresses to control the system, but that was even more crude than the existing system. Instead, I decided to choose an intercept point for the Universal Remote signal. I could either read the signal from the RF receiver to the URC controller and then decode it somehow to repeat it later, or I could connect the IR blocks directly to a smart device and send IR codes through it. I chose the latter option because decoding the proprietary format seemed like too much work and too far out of my area of experience. 

After doing some research, I found that the ESP8266 was a cheap and low power way to
