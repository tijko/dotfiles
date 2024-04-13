#!/bin/sh
#
# ~/.xinitrc
#
export XDG_RUNTIME_DIR="/run/user/$UID"
export DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"

# Executed by startx (run your window manager from here)
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# ...or the Window Manager of your choice
dwm &
# Normally nitrogen will run display of all images in a given directory
# It can also be used to set the X11 wallpaper by "restoring" it (~/.config/nitrogen)
nitrogen --restore &
# X compositor - X11 extension 'Composite' is setup/installed fade-in and visual effects
xcompmgr -CcfF -I-.015 -O-.03 -D6 -t-1 -l-3 -r4.2 -o.5 &
exec slstatus
