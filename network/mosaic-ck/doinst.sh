if [ -x /usr/bin/update-desktop-database ]; then
  /usr/bin/update-desktop-database -q usr/share/applications >/dev/null 2>&1
fi

if [ -e usr/share/icons/hicolor/icon-theme.cache ]; then
  if [ -x /usr/bin/gtk-update-icon-cache ]; then
    /usr/bin/gtk-update-icon-cache usr/share/icons/hicolor >/dev/null 2>&1
  fi
fi

# If there's no Mosaic link, take over:
if [ ! -r usr/bin/Mosaic ]; then
  ( cd usr/bin ; ln -sf mosaic-ck Mosaic )
  ( cd usr/man/man1 ; ln -sf mosaic-ck.1.gz Mosaic.1.gz )
fi
