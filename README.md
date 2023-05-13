# slackbuilds-current

This is a fork of [ponce](https://github.com/Ponce/slackbuilds) slackbulds repo for Slackware-current.


## DIFFS

*Slackbuild folders and script here are edided to include commands and files for*:
* slack-required
- package.dep
+ dependees-on

Also a SLACKBUILDS.TXT included.

*EVERYTHING ELSE IS EXACTLY THE SAME*

### WHY?

*Three reasons for me*.
1. test my * [sqf2dep](https://github.com/rizitis/sqf2dep) script if working
2. since its working, now more package managers can have access to "ponce" slackbuild repo for Slackware current.
3. Some Slackware based distros also can have access or even better create their own ponce fork and maintain it...

### NOTES
*ChangeLog.txt is exactly the same with ponce repo*
*I dont create new ChangeLog.txt* because I dont touch build commands in SlackBuilds or versions, etc.

*I Only add 3 lines in scripts*

`if [ -f $CWD/slack-required ]; then cat $CWD/slack-required > $PKG/install/slack-required; fi`

`if [ -f $CWD/dependees-on ]; then cat $CWD/dependees-on > $PKG/install/dependees-on; fi`

and at the end of script

`if [ -f $CWD/$PRGNAM.dep ]; then cp $CWD/$PRGNAM.dep  $OUTPUT/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.dep; fi`



### TODO
- update repo every week

### CAN YOU?
+ Can you try this repo if working with slackrepo?
+ Can you try it with the package manager you use?
+ Can you rememder that SlackBuilds required A FULL Slackware installation ?
+ Can you support [Slackware](https://www.patreon.com/slackwarelinux/posts) ?

