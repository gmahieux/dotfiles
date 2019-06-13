
export PATH="/usr/local/go/bin:$PATH"
if [ "$DESKTOP_SESSION" = "i3-gnome" ] || [ "$DESKTOP_SESSION" = "i3" ]; then
	export LD_PRELOAD=/usr/lib/libwcwidth-icons.so 
	export TERMINAL=urxvt256c-ml
fi

