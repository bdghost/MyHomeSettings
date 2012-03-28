xrdb -merge ~/.Xresources
urxvtd -f -q -o &
dex -a &
plasma-desktop &
exec ~/Scripts/wm.sh
