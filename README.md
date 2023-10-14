## FORK of: 

**SBo-git - slackbuilds repository for slackware-current**
which is an unofficial fork of master branch from slackbuilds.org's
git repository (http://slackbuilds.org/cgit/slackbuilds/).

This repository updated every weekend following ponce updates.
You can use it to provide binaries with package.dep if your package manager need them.
or you can use it as local repo and build using `slapt-src`, in a Slackware current system.
### slapt-src
To use it with `slapt-src` clone repo some ware and edit `/etc/slapt-get/slapt-srcrc` like this, assuming you clone repo to `/tmp`
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
