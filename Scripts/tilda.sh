#!/bin/sh
sleep 35
ibus-daemon --xim &
wicd-client &
tilda &
sleep 5
wakoopa &
dropbox start -i &
fusion-icon -n &
gnome-screensaver &
sleep 5
gnome-keyring-daemon --start &
/usr/bin/gnome-settings-daemon &
sleep 5
/usr/lib/gnome-session/helpers/gnome-settings-daemon-helper &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
sleep 5
/usr/lib/gnome-disk-utility/gdu-notification-daemon &

#conky -c ~/.conkyrc1 &
#conky -c ~/.conkyrc2 &
