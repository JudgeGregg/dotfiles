setxkbmap fr -option caps:escape
xrdb -merge .Xresources
xset +fp ~.fonts
xset fp rehash
urtxvd -q -f -o
exec ssh-agent awesome
