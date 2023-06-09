.. RST source for unshieldv3(1) man page. Convert with:
..   rst2man.py unshieldv3.rst > unshieldv3.1
.. rst2man.py comes from the SBo development/docutils package.

.. |version| replace:: 0.2.1
.. |date| date::

==========
unshieldv3
==========

---------------------------------
Extract InstallShield v3 archives
---------------------------------

:Manual section: 1
:Manual group: SlackBuilds.org
:Date: |date|
:Version: |version|

SYNOPSIS
========

unshieldv3 **info** *file.z*

unshieldv3 **list** [**-v**] *file.z*

unshieldv3 **extract** *file.z* *output-dir*

DESCRIPTION
===========

**unshieldv3** is a command line tool to extract the .Z InstallShield v3
packages many old windows games were distributed as.

The files **unshieldv3** supports normally have a **.Z** extension, and can be
identified by the **file**\(1) command:

::

  $ file data.Z
  data.z: InstallShield Z archive Data

...or by the hex signature at the start of the file:

::

  $ head -c6 data.Z | xxd
  00000000: 135d 658c 3a01                           .]e.:.

If **file** says "compress'd data" or similar, your .Z file isn't an
InstallShield archive; it's compressed with the old UNIX compress
command, and can be extracted with **uncompress**\(1) or **gzip**\(1).

When extracting, **unshieldv3** preserves the directory structure
inside the archive. This is unlike **isextract**\(1), which writes all
the files in the same directory.

OPTIONS
=======

Options may not be abbreviated.

**info**
  Show archive metadata: number of files, compressed size, and
  uncompressed size.

**list**
  List contents of archive. With **-v**, shows the size and timestamp
  of each file.

**extract**
  Extract archive. *output-dir* is required, but will not be created if
  it doesn't exist. Use **.** to extract to the current directory.

COPYRIGHT
=========

See the file /usr/doc/unshieldv3-|version|/LICENSE for license information.

AUTHORS
=======

unshieldv3 was written by Wolfgang Frisch.

This man page written for the SlackBuilds.org project
by B. Watson, and is licensed under the WTFPL.

SEE ALSO
========

**isextract**\(1), **unshield**\(1), **cabextract**\(1)
