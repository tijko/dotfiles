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
export _JAVA_AWT_WM_NONREPARENTING=1
dwm &
nitrogen --restore &
dwmblocks &
exec slstatus
wmname LG3D
