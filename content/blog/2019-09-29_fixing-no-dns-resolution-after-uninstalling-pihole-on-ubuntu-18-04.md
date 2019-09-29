---
title: Fixing No DNS Resolution After Uninstalling PiHole on Ubuntu 18.04
date: '2019-09-29'
tags:
  - ''
---
I recently tried out PiHole to block ads on my smart TV at school. However, Roku's OS doesn't let you change the DNS servers, and I can't use DHCP because my school's network doesn't allow NAT. As a result, I decided to uninstall it from my linux dev board. I did this using 

```
$ pihole uninstall
```

However, after completing the uninstall and restarting, I was left without internet access. At first, I thought this was a result of my ZeroTier installation conflicting with PiHole's uninstall, because I had lots of routes that seemed strange. I later found that the dhcpcd configuration that PiHole creates to keep the IP static isn't reset after it is uninstalled. 

If you are having the same problem, check /etc/dhcpcd.conf and see if there are static configurations that you didn't set at the bottom. These configs set the DNS to 127.0.0.1, which doesn't work when PiHole is not running to handle requests.

Just thought I'd post this in case anyone else has the same problem since I couldn't find an answer online myself.
