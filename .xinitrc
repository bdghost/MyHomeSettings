xrdb -merge ~/.Xresources
urxvtd -f -q -o &
dex -a &
xscreensaver -no-splash &
#~/Scripts/urxvtq.sh &
plasma-desktop &
exec ~/Scripts/wm.sh
