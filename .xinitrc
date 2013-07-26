systemd --user &

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode VGA1 1920x1080_60.00
xrandr --output LVDS1 --mode 1366x768 --pos 0x0 --output VGA1 --mode 1920x1080_60.00 --pos 1366x0

sudo sh -c 'echo bfq > /sys/block/sda/queue/scheduler' &
/usr/lib/kde4/libexec/polkit-kde-authentication-agent-1 &
#xinput set-button-map "USB Optical Mouse" 3 2 1 4 5 &
xinput set-button-map "SynPS/2 Synaptics TouchPad" 1 2 3 5 4 &

sleep 10 && qdbus org.kde.kded /kded loadModule appmenu &
xscreensaver -no-splash &
cow &
dex -a &
#nitrogen --restore &
exec ~/Scripts/wm.sh
