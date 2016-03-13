setxkbmap fr -option caps:escape
xrdb -merge .Xresources
xset +fp ~.fonts
xset fp rehash
exec ssh-agent awesome
