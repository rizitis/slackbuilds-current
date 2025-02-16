**This is a weekly fork, following [ponce SlackBuilds](https://github.com/Ponce/slackbuilds) for Slackware-current.**

  Scripts here **are modified** for my personal use with slpkg and [Captain-Slack](https://github.com/rizitis/captain-slack)!<br>
  Generaly speaking, there is no reason for you to use this repo and SlackBuilds...exept if you use [Captain-Slack](https://github.com/rizitis/captain-slack)<br>
  - If you use it, then you can use this repo because all SlackBuilds here are patched to copy the slack-required file in `/usr/doc/$PRGNAM-$VERSION/` folder. The same for `dependees-on` file if exist.
  - This way I can have for every installed package also its dependencies in a txt file as information. Also having `dependees-on` i can easy read which packages **need** $PACKAGE.
  - The `slack-required` and `dependees-on` files was created by me, the same for `*.dep` files and `dependees-on` as and the `CUSTOM-SLACKBUILDS.TXT`
  - Unfortunately I cant name it `SLACKBUILDS.TXT` as usual because slpkg not exept to find a `SLACKBUILDS.TXT` in **"ponce" repo** and if found it then slpkg breaks.
  - If you want to use this repo with slpkg, edit `/etc/slpkg/repositories.toml` like this:
  
 ```
 [PONCE]
 ENABLE = true
 MIRROR = "https://github.com/rizitis/slackbuilds-current.git"
 
 ```

**IMPORTANT INFO**: Captain-Slack is now part of new [Slackware-Commander](https://github.com/rizitis/Slackware-Commander)

  ---
  
## disclaimer

**Disclaimer**: This project builds packages configured for the author's system. This project is published as an example of modern way to use SlakcBuilds on a Slackware based system. This is not intended to be used by anyone else except the author. You are on your own if you choose to build and use packages from here since the author has limited time to support the project. You should also thoroughly know there is a high chance you may need to fix a broken boot or system or packages.

 > If you use SlackBuilds from here, you use it at your own risk 100%.<br>
 > Original SlackBuilds Maintainers or SlackBuilds.org or Ponce has no responsibility about this fork!
<p>
  
---
  
[CURRENT.WARNING](http://ftp.slackware.com/pub/slackware/slackware64-current/CURRENT.WARNING)

```
Standard disclaimer follows... putting this back since some folks forgot ;-)

Welcome to Slackware-current!

*** upgradepkg aaa_glibc-solibs before other      ***
*** packages. Take care not to miss new packages: ***
*** upgradepkg --install-new  is (as always) the  ***
*** safest approach.                              ***

Slackware-current is a snapshot of the active Slackware development tree.
It is intended to give developers (and other Linux gurus) a chance to test
out the latest packages for Slackware. The feedback we get will allow us
to make the next stable release better than ever.

See the ChangeLog.txt for a list of changes in Slackware-current.

Please note that the code in this directory is unstable. It might be 
inconsistent about which version of the Linux kernel is required, could be
incomplete because it's in the process of being uploaded, or might not work
for other reasons. In most cases, we know about these things and are working
to correct them, but still -- feel free to point out the bugs.

Production use is AT YOUR OWN RISK and is not recommended.

Security is NOT GUARANTEED. In -current, forward progress often takes
priority. Security fixes take time and resources, and would often have to
be done more than once. It's more efficient to build the system and secure
it as time permits and/or the development cycle nears completion.

We do not promise to issue security advisories for Slackware-current.

Slackware-current might DELETE FILES WITHOUT WARNING when packages are
upgraded. (If, for example, a directory location is replaced by a symbolic
link to a new location.) Upgrade packages carefully. Examine incoming
updates first if your machine's data is not expendable. Again, we do not
recommend using Slackware-current to store or process valuable data.
It is a system in testing, not one that is ready to go (though often it does
work just fine... BUT DON'T COUNT ON IT) 

#include BSD license warranty disclaimer here...

Enjoy! :)

---
Patrick J. Volkerding
volkerdi@slackware.com
```

