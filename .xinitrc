includes=/etc/X11/xinit/xinitrc.d
if [ -d "$includes" ]
then
for f in "$includes/"*
do
[ -x "$f" ] && . "$f"
done
unset f
fi
unset includes
autocutsel -fork &
autocutsel -selection PRIMARY -fork &
setxkbmap us -option caps:escape -option compose:ralt
xset +fp /usr/share/fonts/local
xset fp rehash
xrdb -merge .Xresources
urxvtd -q -f -o
compton -bc
urxvtc &
exec awesome
