**This is a weekly fork, following [ponce SlackBuilds](https://github.com/Ponce/slackbuilds) for Slackware-current.**
<ul>
  <li>Scripts here are modified for my personal use!
  <li> Some scripts are patched for my personal use!
  <li> Sometimes might included files here that are removed from ponce or SBo or never existed there, also for my personal use!
  <li> Generaly speaking, there is no reason for you to use this SlackBuilds... 
  </ul>

 **If you use SlackBuilds from here, you use it at your own risk 100%.**<br>
<p>
I use slapt-src as package manager for this repo and I have dependencies resolution.<br>
 <p>I have a local clone 
 <br>`cd /home/user_name/work_dir/ && git clone https://github.com/rizitis/slackbuilds-current`<br>
  My slapt-srcrc is like this:<br>
 cat /etc/slapt-get/slapt-srcrc<br>

 ```
# official source
SOURCE=file:///home/user_name/work_dir/slackbuilds-current/
BUILDDIR=/usr/src/slapt-src/slackbuilds
PKGEXT=txz
PKGTAG=_rtz
```

All slapt-src commands works perfect but not `slapt-src -l` ofcource... <br>
Because slapt-src was not designed for git... A small ~/.bashrc hack can make it work with git `:D` <br>
```
slapt-src() {
    if [[ "$1" == "-l" ]]; then
cd /home/user_name/work_dir/slackbuilds-current &&  git pull
    fi
}
```
NOTE: I use slapt-src **only** for this repo...


