#!/bin/bash
line='if [ -f $CWD\/$PRGNAM.dep ]; then cp $CWD\/$PRGNAM.dep  $OUTPUT\/$PRGNAM-$VERSION-$ARCH-$BUILD$TAG.dep; fi'
pattern='cd $PKG'
#find . -name "*.SlackBuild" -exec sed -i '/$pattern/d' {} \;
find . -name "*.SlackBuild" -exec sed -i "s/$pattern/$line\n$pattern/g" {} \;
