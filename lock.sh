#!/bin/sh

playerctl pause

B='#00000000'  # blank
C='#ffffff22'  # clear ish
#D='#ff00ffcc'  # default
D='#00c1ffee'
#T='#ee00eeee'  # text
T='#00c1ffee'  # text
W='#880000bb'  # wrong
V='#000088aa'  # verifying

i3lock \
--insidevercolor=$C   \
--ringvercolor=$V     \
\
--insidewrongcolor=$C \
--ringwrongcolor=$W   \
\
--insidecolor=$B      \
--ringcolor=$D        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$V       \
--bshlcolor=$W        \
\
--screen 1            \
--blur 8              \
--indicator	      \
--clock               \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--wrongtext="Nope!"   \

# --veriftext="Drinking verification can..."
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc

