**This is a weekly fork, following [ponce SlackBuilds](https://github.com/Ponce/slackbuilds) for Slackware-current.**

  Scripts here **are modified** for my personal use with slpkg and [Captain-Slack](https://github.com/rizitis/captain-slack)!<br>
  Generaly speaking, there is no reason for you to use this repo and SlackBuilds...exept if you use [Captain-Slack](https://github.com/rizitis/captain-slack)<br>
  - If you use it, then you can use this repo because all SlackBuilds here are pathed to copy the slack-required file in `/usr/doc/$PRGNAM-$VERSION/` folder. The same for `dependees-on` file if exist.
  - This way I can have for every installed package also its dependencies in a txt file as information. Also having `dependees-on` i can easy read which packages **need** $PACKAGE.
  - The `slack-required` and `dependees-on` files was created by me, the same for `*.dep` files and `dependees-on` as and the `CUSTOM-SLACKBUILDS.TXT`
  - Unfortunately I cant name it `SLACKBUILDS.TXT` as usual because slpkg not exept to find a `SLACKBUILDS.TXT` in **"ponce" repo** so if found it slpkg breaks.
  - If you want to use this repo with slpkg, edit `/etc/slpkg/repositories.toml` like this:
  
 ```
 [PONCE]
 ENABLE = true
 MIRROR = "https://github.com/rizitis/slackbuilds-current.git"
 
 ```

  ---
  
## disclaimer

**Disclaimer**: This project builds packages configured for the author's system. This project is published as an example of modern way to use SlakcBuilds on a Slackware based system. This is not intended to be used by anyone else except the author. You are on your own if you choose to build and use packages from here since the author has limited time to support the project. You should also thoroughly know there is a high chance you may need to fix a broken boot or system or packages.

 > If you use SlackBuilds from here, you use it at your own risk 100%.<br>
 > Original SlackBuilds Maintainers or SlackBuilds.org or Ponce has no responsibility about this fork!
<p>

