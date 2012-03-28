xrdb -merge ~/.Xresources
urxvtd -f -q -o &
dex -a &
#urxvtc &
xscreensaver -no-splash &
~/Scripts/urxvtq.sh &
#exec /home/iven/Scripts/compiz.sh
plasma-desktop &
exec ~/Scripts/wm.sh
