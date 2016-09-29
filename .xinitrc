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
xrdb -merge .Xresources
xset +fp ~/.local/share/fonts
xset fp rehash
urxvtd -q -f -o
xss-lock -- sxlock &
compton -bc
urxvtc &
exec awesome
