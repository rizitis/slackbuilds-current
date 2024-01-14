[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=PT+Serif&pause=1000&random=true&width=435&lines=LONG+LIVE+SLACKWARE+1993-2023;ONES+YOU+GO+SLACK+YOU+NEVER+GO+BACK;Keep+It+Simple+Stupid;Slackware+Intelligent+)](https://git.io/typing-svg)
## FORK of: 

**SBo-git - slackbuilds repository for slackware-current**
which is an unofficial fork of master branch from slackbuilds.org's
git repository (http://slackbuilds.org/cgit/slackbuilds/).

This repository updated every weekend following ponce updates.
You can use it to provide binaries with package.dep if your package manager need them.
or you can use it as local repo and build using `slapt-src`, in a Slackware current system or Slackware current based distros.
### slapt-src
To use it with `slapt-src` clone repo someware locally and edit `/etc/slapt-get/slapt-srcrc` like this, assuming you clone repo to `/tmp`
```
# official source
SOURCE=file:///tmp/slackbuilds-current
BUILDDIR=/usr/src/slapt-src
PKGEXT=txz
```
Every weekend 
```
git pull
```
and then 
```
slapt-src -u
``` 
### slackrepo

In /etc/slackrepo/slackrepo_ponce.conf

```
# URL of the remote git repo to be cloned:
INIT_GITCLONE='https://github.com/rizitis/slackbuilds-current.git'
```
and plz change 
```
# Tag for built packages.
TAG='_YOURTAG'
```
