systemd --user &

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

sudo sh -c 'echo bfq > /sys/block/sda/queue/scheduler' &
/usr/lib/kde4/libexec/polkit-kde-authentication-agent-1 &
xinput set-button-map "USB Optical Mouse" 3 2 1 4 5 &
xinput set-button-map "SynPS/2 Synaptics TouchPad" 1 2 3 5 4 &
sleep 10 && qdbus org.kde.kded /kded loadModule appmenu &
xscreensaver -no-splash &
dex -a &
#nitrogen --restore &
wm.sh
